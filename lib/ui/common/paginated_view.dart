import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../../core/bloc/paginated/paginated_bloc.dart';
import 'custom_empty_widget.dart';
import 'custom_error_widget.dart';
import 'custom_loading_widget.dart';

/// ListView
class PaginatedListView<
    PageKeyType extends Object?,
    ItemType extends Equatable,
    Bloc extends PaginatedBloc<PageKeyType, ItemType, PaginatedEvent,
        PaginatedState<PageKeyType, ItemType>>> extends StatefulWidget {
  const PaginatedListView({
    required this.pagingController,
    required this.itemBuilder,
    required this.separatorBuilder,
    required this.onPageRequest,
    required this.stateHandler,
    super.key,
    this.isSliver = false,
    this.padding,
    this.noItemsIcon,
    this.noItemsText,
    this.errorText,
    this.noItemsFoundIndicatorBuilder,
    this.firstPageErrorIndicatorBuilder,
    this.onRefresh,
    this.reverse = false,
  });

  final PagingController<PageKeyType, ItemType> pagingController;
  final ItemWidgetBuilder<ItemType> itemBuilder;
  final IndexedWidgetBuilder separatorBuilder;
  final void Function(PageKeyType) onPageRequest;
  final void Function(PaginatedState<PageKeyType, ItemType>) stateHandler;
  final bool isSliver;
  final EdgeInsetsGeometry? padding;
  final String? noItemsIcon;
  final String? noItemsText;
  final String? errorText;
  final WidgetBuilder? noItemsFoundIndicatorBuilder;
  final WidgetBuilder? firstPageErrorIndicatorBuilder;
  final VoidCallback? onRefresh;
  final bool reverse;

  @override
  State<PaginatedListView<PageKeyType, ItemType, Bloc>> createState() =>
      _PaginatedListViewState<PageKeyType, ItemType, Bloc>();
}

class _PaginatedListViewState<
        PageKeyType extends Object?,
        ItemType extends Equatable,
        Bloc extends PaginatedBloc<PageKeyType, ItemType, PaginatedEvent,
            PaginatedState<PageKeyType, ItemType>>>
    extends State<PaginatedListView<PageKeyType, ItemType, Bloc>> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    widget.pagingController.addPageRequestListener((pageKey) {
      widget.onPageRequest(pageKey);
    });
    super.initState();
  }

  @override
  void dispose() {
    widget.pagingController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void onRefresh() {
      widget
        ..pagingController.refresh()
        ..onRefresh?.call();
    }

    final builderDelegate = PagedChildBuilderDelegate<ItemType>(
      itemBuilder: widget.itemBuilder,
      noItemsFoundIndicatorBuilder: widget.noItemsFoundIndicatorBuilder == null
          ? (widget.noItemsIcon == null && widget.noItemsText == null)
              ? null
              : (_) => CustomEmptyWidget(
                    icon: widget.noItemsIcon,
                    emptyText: widget.noItemsText,
                    retryCallback: onRefresh,
                  )
          : widget.noItemsFoundIndicatorBuilder!,
      firstPageErrorIndicatorBuilder: widget.firstPageErrorIndicatorBuilder ??
          (_) => CustomErrorWidget(
                errorText: widget.errorText == null
                    ? widget.pagingController.error.toString()
                    : widget.errorText!,
                retryCallback: onRefresh,
              ),
      firstPageProgressIndicatorBuilder: (_) =>
          const CustomLoadingWidget.body(),
      newPageProgressIndicatorBuilder: (_) =>
          const CustomLoadingWidget.header(),
    );

    return BlocListener<Bloc, PaginatedState<PageKeyType, ItemType>>(
      listener: (context, state) {
        if (state.status == PaginatedStatus.initial) {
          if (_scrollController.hasClients) {
            _scrollController.jumpTo(0);
          }
        }
        if (state.status == PaginatedStatus.error) {
          widget.pagingController.error = state.error;
        }

        widget.stateHandler(state);
      },
      child: widget.isSliver
          ? SliverPadding(
              padding: widget.padding ?? EdgeInsets.zero,
              sliver: PagedSliverList.separated(
                pagingController: widget.pagingController,
                builderDelegate: builderDelegate,
                separatorBuilder: widget.separatorBuilder,
              ),
            )
          : PagedListView.separated(
              shrinkWrap: true,
              pagingController: widget.pagingController,
              scrollController: _scrollController,
              builderDelegate: builderDelegate,
              separatorBuilder: widget.separatorBuilder,
              padding: widget.padding ?? EdgeInsets.zero,
              reverse: widget.reverse,
            ),
    );
  }
}

/// GridView
class PaginatedGridView<
    PageKeyType extends Object?,
    ItemType extends Equatable,
    Bloc extends PaginatedBloc<PageKeyType, ItemType, PaginatedEvent,
        PaginatedState<PageKeyType, ItemType>>> extends StatefulWidget {
  const PaginatedGridView({
    required this.pagingController,
    required this.itemBuilder,
    required this.gridDelegate,
    required this.onPageRequest,
    required this.stateHandler,
    super.key,
    this.isSliver = false,
    this.padding,
    this.noItemsIcon,
    this.noItemsText,
    this.errorText,
    this.noItemsFoundIndicatorBuilder,
    this.firstPageErrorIndicatorBuilder,
    this.onRefresh,
    this.reverse = false,
  });

  final PagingController<PageKeyType, ItemType> pagingController;
  final ItemWidgetBuilder<ItemType> itemBuilder;
  final SliverGridDelegate gridDelegate;
  final void Function(PageKeyType) onPageRequest;
  final void Function(PaginatedState<PageKeyType, ItemType>) stateHandler;
  final bool isSliver;
  final EdgeInsetsGeometry? padding;
  final String? noItemsIcon;
  final String? noItemsText;
  final String? errorText;
  final WidgetBuilder? noItemsFoundIndicatorBuilder;
  final WidgetBuilder? firstPageErrorIndicatorBuilder;
  final VoidCallback? onRefresh;
  final bool reverse;

  @override
  State<PaginatedGridView<PageKeyType, ItemType, Bloc>> createState() =>
      PaginatedGridViewState<PageKeyType, ItemType, Bloc>();
}

class PaginatedGridViewState<
        PageKeyType extends Object?,
        ItemType extends Equatable,
        Bloc extends PaginatedBloc<PageKeyType, ItemType, PaginatedEvent,
            PaginatedState<PageKeyType, ItemType>>>
    extends State<PaginatedGridView<PageKeyType, ItemType, Bloc>> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    widget.pagingController.addPageRequestListener((pageKey) {
      widget.onPageRequest(pageKey);
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    widget.pagingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    void onRefresh() {
      widget
        ..pagingController.refresh()
        ..onRefresh?.call();
    }

    final builderDelegate = PagedChildBuilderDelegate<ItemType>(
      itemBuilder: widget.itemBuilder,
      noItemsFoundIndicatorBuilder: widget.noItemsFoundIndicatorBuilder == null
          ? (widget.noItemsIcon == null && widget.noItemsText == null)
              ? null
              : (_) => CustomEmptyWidget(
                    icon: widget.noItemsIcon,
                    emptyText: widget.noItemsText,
                    retryCallback: onRefresh,
                  )
          : widget.noItemsFoundIndicatorBuilder!,
      firstPageErrorIndicatorBuilder: widget.firstPageErrorIndicatorBuilder ??
          (_) => CustomErrorWidget(
                errorText: widget.errorText == null
                    ? widget.pagingController.error.toString()
                    : widget.errorText!,
                retryCallback: onRefresh,
              ),
      firstPageProgressIndicatorBuilder: (_) =>
          const CustomLoadingWidget.body(),
      newPageProgressIndicatorBuilder: (_) =>
          const CustomLoadingWidget.header(),
    );

    return BlocListener<Bloc, PaginatedState<PageKeyType, ItemType>>(
      listener: (context, state) {
        if (state.status == PaginatedStatus.initial) {
          _scrollController.jumpTo(0);
        }
        if (state.status == PaginatedStatus.error) {
          widget.pagingController.error = state.error;
        }

        widget.stateHandler(state);
      },
      child: widget.isSliver
          ? SliverPadding(
              padding: widget.padding ?? EdgeInsets.zero,
              sliver: PagedSliverGrid(
                pagingController: widget.pagingController,
                builderDelegate: builderDelegate,
                gridDelegate: widget.gridDelegate,
              ),
            )
          : PagedGridView(
              pagingController: widget.pagingController,
              builderDelegate: builderDelegate,
              gridDelegate: widget.gridDelegate,
              padding: widget.padding ?? EdgeInsets.zero,
              reverse: widget.reverse,
            ),
    );
  }
}
