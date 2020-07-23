import 'package:archives/data/text.dart';
import 'package:archives/data/video.dart';

class DataMonth
{
    final int month;
    final int day;
    final DataVideo part1;
    final DataVideo part2;
    final DataVideo whole;
    final DataText text;

    DataMonth(
        this.month,
        this.day,
        this.part1,
        this.part2,
        this.whole,
        this.text
    );
}