import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:inex/data_form/data_form.dart';
import 'package:inex/data_source/model/place.dart';
import 'package:inex/repository/repository.dart';

part 'add_place_state.dart';
part 'add_place_cubit.freezed.dart';

class AddPlaceCubit extends Cubit<AddPlaceState> {
  AddPlaceCubit({
    required this.repository,
    Place? place,
  }) : super(
          AddPlaceState(
            id: place?.id,
            formzStatus: place == null ? FormzStatus.pure : FormzStatus.valid,
            nameForm: NameForm.pure(place?.name ?? ''),
            descriptionForm: DescriptionForm.pure(place?.description ?? ''),
          ),
        );

  final Repository repository;

  void changeName(String value) {
    final newName = NameForm.dirty(value);
    emit(
      state.copyWith(
        nameForm: newName,
        formzStatus: Formz.validate([newName, state.descriptionForm]),
      ),
    );
  }

  void changeDescription(String value) {
    final newDescription = DescriptionForm.dirty(value);
    emit(
      state.copyWith(
        descriptionForm: newDescription,
        formzStatus: Formz.validate([newDescription, state.nameForm]),
      ),
    );
  }

  Future<void> submitForm() async {
    final now = DateTime.now().millisecondsSinceEpoch;
    emit(state.copyWith(formzStatus: FormzStatus.submissionInProgress));
    try {
      await repository.addPlace(
        place: Place(
          id: DateTime.now().millisecondsSinceEpoch,
          name: state.nameForm.value,
          description: state.descriptionForm.value,
          createdAt: now,
          editedAt: now,
        ),
      );
      emit(state.copyWith(formzStatus: FormzStatus.submissionSuccess));
    } catch (e) {
      emit(
        state.copyWith(
          formzStatus: FormzStatus.submissionFailure,
          message: e.toString(),
        ),
      );
    }
  }

  Future<void> updateFrom(Place place) async {
    emit(state.copyWith(formzStatus: FormzStatus.submissionInProgress));
    try {
      await repository.addPlace(
        place: place.copyWith(
          editedAt: DateTime.now().millisecondsSinceEpoch,
          name: state.nameForm.value,
          description: state.descriptionForm.value,
          id: state.id,
        ),
      );
      emit(state.copyWith(formzStatus: FormzStatus.submissionSuccess));
    } catch (e) {
      emit(
        state.copyWith(
          formzStatus: FormzStatus.submissionFailure,
          message: e.toString(),
        ),
      );
    }
  }
}
