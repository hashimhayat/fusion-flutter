import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_friend_event.dart';
part 'add_friend_state.dart';

class AddFriendBloc extends Bloc<AddFriendEvent, AddFriendState> {
  AddFriendBloc() : super(AddFriendInitial()) {
    on<AddFriendEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
