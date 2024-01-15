part of 'paginated_bloc.dart';

enum PaginatedStatus {
  initial,
  loading,
  loaded,
  error,
}

abstract class PaginatedState<PageKeyType extends Object?,
    ItemType extends Equatable> extends Equatable {
  const PaginatedState._({
    required this.status,
    required this.currentPageKey,
    this.items = const [],
    this.isLastPage = false,
    this.error,
  });

  const PaginatedState.initial()
      : this._(
          status: PaginatedStatus.initial,
          currentPageKey: null,
        );

  const PaginatedState.loading()
      : this._(
          status: PaginatedStatus.loading,
          currentPageKey: null,
        );

  const PaginatedState.loaded(
    PageKeyType currentPageKey,
    List<ItemType> items, {
    bool isLastPage = false,
  }) : this._(
          status: PaginatedStatus.loaded,
          currentPageKey: currentPageKey,
          items: items,
          isLastPage: isLastPage,
        );

  const PaginatedState.error(
    PageKeyType currentPageKey,
    dynamic error,
  ) : this._(
          status: PaginatedStatus.error,
          currentPageKey: currentPageKey,
          error: error,
        );

  final PaginatedStatus status;
  final PageKeyType? currentPageKey;
  final List<ItemType> items;
  final bool isLastPage;
  final dynamic error;

  @override
  List<Object?> get props => [
        status,
        currentPageKey,
        items,
        isLastPage,
        error,
      ];
}
