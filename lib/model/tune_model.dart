import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class ItemModel {
  final Color color;
  final String audio;

 const ItemModel({required this.color, required this.audio});

  PlaySound() {
    final player = AudioPlayer();
    player.play(AssetSource(audio));
  }
}
