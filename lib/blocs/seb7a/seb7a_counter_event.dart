import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:m3allah/modle/azkar/seb7a_model.dart';
part 'seb7a_counter_event.freezed.dart';

@freezed
class Seb7aCounterEvent with _$Seb7aCounterEvent {
  const factory Seb7aCounterEvent.increase({required Seb7aZekr seb7aZekr}) = IncreaseSeb7aCounter;
  const factory Seb7aCounterEvent.reset({required  Seb7aZekr seb7aZekr}) = ResetSeb7aCounter;
  const factory Seb7aCounterEvent.selecteZekr({required Seb7aZekr seb7aZekr }) = SelecteSeb7aZekr;
}

@freezed
abstract class Seb7aCounterState with _$Seb7aCounterState {
  const factory Seb7aCounterState({required int counter, required  Seb7aZekr selectedZekr}) = Seb7aCounterStateLoaded;
}
// flutter pub run build_runner watch --delete-conflicting-outputs 
// flutter pub run build_runner watch --delete-conflicting-outputs 
