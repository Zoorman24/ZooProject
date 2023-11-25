import 'dart:async';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

String transformString(int seconds) {
  String minuteString =
      '${(seconds / 60).floor() < 10 ? 0 : ''}${(seconds / 60).floor()}';
  String secondString = '${seconds % 60 < 10 ? 0 : ''}${seconds % 60}';
  return '$minuteString:$secondString';
}

class _HomepageState extends State<Homepage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  late Timer _timer;

  double finalduration = const Duration(minutes: 5).inSeconds.toDouble();
  Duration duration = const Duration(minutes: 5);

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 7));

    _controller.repeat();
    startTimer();
  }

  startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setCountDown();
    });
  }

  void setCountDown() {
    const reduceCounter = 1;
    setState(() {
      final seconds = duration.inSeconds - reduceCounter;
      if (seconds < 0) {
        _timer.cancel();
        _controller.stop();
      } else {
        duration = Duration(seconds: seconds);
      }
    });
  }

  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              // music slider
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SliderTheme(
                      data: SliderThemeData(
                          overlayShape: SliderComponentShape.noOverlay),
                      child: Slider(
                        value: finalduration - duration.inSeconds.toDouble(),
                        min: 0.0,
                        max: finalduration,
                        onChanged: (v) => {
                          setState(() {
                            duration = Duration(
                                seconds: finalduration.toInt() - v.toInt());
                          })
                        },
                        activeColor: Colors.redAccent,
                        inactiveColor: Colors.grey,
                      )),
                  InkWell(
                    onTap: () {
                      final Player = AudioPlayer();
                      Player.play(AssetSource(''));
                      setState(() {
                        isActive
                            ? {
                                startTimer(),
                                _controller.repeat(),
                                isActive = true
                              }
                            : {
                                _timer.cancel(),
                                _controller.stop(),
                                isActive = false
                              };
                      });
                    },
                    child: Container(
                      child: Icon(
                        isActive ? Icons.play_arrow : Icons.pause,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [Text(transformString(duration.inSeconds))],
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
