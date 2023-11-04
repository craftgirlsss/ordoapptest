import 'package:flutter/material.dart';

import 'chartpainter.dart';

class Score {
  late double value;
  late DateTime time;
  Score(this.time, this.value);
}

class ProgressChart extends StatefulWidget {
  final List<Score> scores;
  const ProgressChart({super.key, required this.scores});

  @override
  State<ProgressChart> createState() => _ProgressChartState();
}

const WeekDays = ["Mon", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"];

class _ProgressChartState extends State<ProgressChart> {
  late double _min, _max;
  late List<double> _Y;
  late List<String> _X;
  @override
  void initState() {
    super.initState();
    var min = double.maxFinite;
    var max = -double.maxFinite;
    for (var p in widget.scores) {
      min = min > p.value ? p.value : min;
      max = max < p.value ? p.value : max;
    }
    setState(() {
      _min = min;
      _max = max;
      _Y = widget.scores.map((e) => e.value).toList();
      _X = widget.scores
          .map((e) => "${WeekDays[e.time.weekday]}\n${e.time.day}")
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomPaint(
        painter: ChartPainter(_X, _Y, _min, _max),
        child: Container(),
      ),
    );
  }
}
