import 'package:flutter/material.dart';
import 'package:tune_player_app/model/tune_model.dart';

class TuneItem extends StatelessWidget {
  const TuneItem({super.key, required this.tune});

  final ItemModel tune;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tune.PlaySound();
        },
        child: Container(
          color: tune.color,
        ),
      ),
    );
  }
}
