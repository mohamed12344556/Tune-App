import 'package:flutter/material.dart';
import 'package:tune_player_app/model/tune_model.dart';

import '../widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  const TuneView({super.key});


  final List<ItemModel> tunes = const [
    ItemModel(color: Color(0xffF44336), audio: 'note1.wav'),
    ItemModel(color: Color(0xffF89800), audio: 'note2.wav'),
    ItemModel(color: Color(0xffFEEB3B), audio: 'note3.wav'),
    ItemModel(color: Color(0xff4CAF50), audio: 'note4.wav'),
    ItemModel(color: Color(0xff2F9688), audio: 'note5.wav'),
    ItemModel(color: Color(0xff2896F3), audio: 'note6.wav'),
    ItemModel(color: Color(0xff9C27B0), audio: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Flutter Tune',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          backgroundColor: const Color(0xFF243139),
        ),
        body: Column(
          children: tunes
              .map((e) => TuneItem(
                    tune: e,
                  ))
              .toList(),
        ));
  }
}
