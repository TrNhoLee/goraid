// ignore_for_file: file_names
import 'dart:async';
import 'package:flutter/material.dart';

class CountdownTimer extends StatefulWidget {
  final int seconds;

  const CountdownTimer({Key? key, required this.seconds}) : super(key: key);

  @override
  _CountdownTimerState createState() => _CountdownTimerState();
}

class _CountdownTimerState extends State<CountdownTimer> {
  //--------------------------------------------
  //ViewModel
  //--------------------------------------------

  //--------------------------------------------
  //Properties
  //--------------------------------------------
  late Timer _timer;
  late int _minutes;
  late int _seconds;

  //--------------------------------------------
  //Initialize
  //--------------------------------------------
  @override
  void initState() {
    _minutes = widget.seconds ~/ 60;
    _seconds = widget.seconds - widget.seconds ~/ 60 * 60;
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  //--------------------------------------------
  //Widget
  //--------------------------------------------
  @override
  Widget build(BuildContext context) {
    String minutes = _minutes.toString();
    String seconds = _seconds.toString();

    if(_minutes < 10) {
      minutes = "0" + minutes;
    }

    if(_seconds < 10) {
      seconds = "0" + seconds;
    }

    return Text('$minutes:$seconds');
  }

  //--------------------------------------------
  //Private function
  //--------------------------------------------
  _startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_minutes == 0 && _seconds == 0) {
          setState(() {
            timer.cancel();
          });
        } else {
          setState(() {
            _seconds--;

            if(_seconds < 0) {
              _minutes--;
              _seconds = 59;
            }
          });
        }
      },
    );
  }
}
