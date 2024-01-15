import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'paginated_event.dart';
part 'paginated_state.dart';

abstract class PaginatedBloc<
        PageKeyType extends Object?,
        ItemType extends Equatable,
        Event extends PaginatedEvent,
        State extends PaginatedState<PageKeyType, ItemType>>
    extends Bloc<Event, State> {
  PaginatedBloc(super.state);
}
