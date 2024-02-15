import 'package:flutter/material.dart';
import 'package:tunes_app/models/tune_model.dart';
import 'package:tunes_app/widgets/tune_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  final List<TuneModel> tunes = const [
    TuneModel(tuneColor: Color(0xffD4CCC1), tuneSound: 'sounds/note1.wav'),
    TuneModel(tuneColor: Color(0xffAAAE9F), tuneSound: 'sounds/note2.wav'),
    TuneModel(tuneColor: Color(0xff756E75), tuneSound: 'sounds/note3.wav'),
    TuneModel(tuneColor: Color(0xffE5B3AC), tuneSound: 'sounds/note4.wav'),
    TuneModel(tuneColor: Color(0xffF0D4D1), tuneSound: 'sounds/note5.wav'),
    TuneModel(tuneColor: Color(0xffF0E6E7), tuneSound: 'sounds/note6.wav'),
    TuneModel(
        tuneColor: Color.fromARGB(255, 154, 137, 163),
        tuneSound: 'sounds/note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff3E3137),
        title: const Text(
          'Tunes Player',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children:
            ///// Solution 2
            tunes.map((e) => TuneItem(tune: e)).toList(),
      ),

      //// Solution 1
      // body: Column(
      //   children: getTunes(tunes),
      // ),
    );
  }

  /// Solution 1
  //  List<Widget> getTunes(List<TuneModel> tunes){
  //     List<Widget> tuneItems = [];
  //     for(int i=0;i<tunes.length;i++){
  //       tuneItems.add(TuneItem(tune: tunes[i]));
  //     }
  //     return tuneItems;
  //    }
}
