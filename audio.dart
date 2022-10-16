import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:async';

class Krish extends StatefulWidget {
  @override
  State<Krish> createState() => _Krish();
}

class _Krish extends State<Krish> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource('audio.mpeg'));
      },
      child: const Text('Play Audio'),
    );
    //         ElevatedButton(
    //             onPressed: () {
    //               player.stop();
    //             },
    //             child: const Text('Stop Audio')),
    //         ElevatedButton(
    //             onPressed: () {
    //               player.pause();
    //             },
    //             child: const Text('Pause ')),
    //         ElevatedButton(
    //             onPressed: () {
    //               player.resume();
    //             },
    //             child: const Text('Resume')),
    //       ],
    //     ),
    //   ),
    // );
  }
}
