import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final Color tuneColor;
  final String tuneSound;

  const TuneModel({required this.tuneColor, required this.tuneSound});

  onClick() {
    final player = AudioPlayer();
    player.play(AssetSource(tuneSound));
  }
}
