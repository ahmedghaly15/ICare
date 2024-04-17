import 'package:audioplayers/audioplayers.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:icare/src/features/speech_therapy/presentation/cubits/level_training/level_training_state.dart';

class LevelTrainingCubit extends Cubit<LevelTrainingState> {
  LevelTrainingCubit() : super(const LevelTrainingState.initial()) {
    audioPlayer = AudioPlayer();
    audioPlayer.onPlayerStateChanged.listen((event) {
      _convertIsPlaying();
    });
  }

  late AudioPlayer audioPlayer;
  bool isPlaying = false;

  void _convertIsPlaying() {
    isPlaying = !isPlaying;
    emit(LevelTrainingState.convertIsPlayingBool(isPlaying));
  }

  void playPauseAudio(String url) async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.play(UrlSource(url));
    }
    // _convertIsPlaying();
  }

  @override
  Future<void> close() {
    audioPlayer.dispose();
    return super.close();
  }
}
