import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'person_details_event.dart';
part 'person_details_state.dart';

class PersonDetailsBloc extends Bloc<PersonDetailsEvent, PersonDetailsState> {
  PersonDetailsBloc() : super(PersonDetailsInitial()) {
    on<PersonDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
