import 'package:flutter_architecture/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_state.freezed.dart';

@Freezed()
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = ProfileStateLoading;

  const factory ProfileState.loaded({
    required User user,
  }) = ProfileStateLoaded;

  const factory ProfileState.unloaded() = ProfileStateUnloaded;
}
