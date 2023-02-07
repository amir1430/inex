import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:go_router/go_router.dart';
import 'package:inex/data_form/data_form.dart';
import 'package:inex/data_source/model/place.dart';
import 'package:inex/pages/places/places.dart';
import 'package:inex/sl.dart';

class AddPlaceView extends StatelessWidget {
  const AddPlaceView({super.key, this.place});

  final Place? place;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddPlaceCubit>(
      create: (context) => sl.get(param1: place),
      child: _AddPlaceBody(place: place),
    );
  }
}

class _AddPlaceBody extends StatelessWidget {
  const _AddPlaceBody({this.place});

  final Place? place;

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddPlaceCubit, AddPlaceState>(
      listener: (context, state) {
        if (state.formzStatus == FormzStatus.submissionSuccess) {
          context.pop();
          return;
        }
        if (state.formzStatus == FormzStatus.submissionFailure) {
          context.pop();
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message!)));
          return;
        }
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24, 12, 24, 4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BlocBuilder<AddPlaceCubit, AddPlaceState>(
              builder: (context, state) {
                return TextFormField(
                  initialValue: state.nameForm.value,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Name',
                    errorText: state.nameForm.invalid
                        ? NameFormError.invalid.text
                        : null,
                  ),
                  onChanged: context.read<AddPlaceCubit>().changeName,
                );
              },
            ),
            const SizedBox(height: 12),
            BlocBuilder<AddPlaceCubit, AddPlaceState>(
              builder: (context, state) {
                return TextFormField(
                  initialValue: state.descriptionForm.value,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: 'Description',
                    errorText: state.descriptionForm.invalid
                        ? DescriptionFormError.invalid.text
                        : null,
                  ),
                  onChanged: context.read<AddPlaceCubit>().changeDescription,
                );
              },
            ),
            const SizedBox(height: 12),
            Align(
              alignment: Alignment.centerRight,
              child: BlocBuilder<AddPlaceCubit, AddPlaceState>(
                builder: (context, state) {
                  return OutlinedButton(
                    onPressed: state.formzStatus.isValid
                        ? () {
                            if (place == null) {
                              context.read<AddPlaceCubit>().submitForm();
                            } else {
                              context.read<AddPlaceCubit>().updateFrom(place!);
                            }
                          }
                        : null,
                    child: Text('${state.id == null ? 'Add' : 'Edit'} Place'),
                  );
                },
              ),
            ),
            const SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
