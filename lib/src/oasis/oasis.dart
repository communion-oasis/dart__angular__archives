import 'package:archives/src/oasis_video/oasis_video.dart';

class Oasis
{
    final List<String> titles;
    final OasisVideo part1;
    final OasisVideo part2;
    final OasisVideo whole;

    Oasis(this.titles,String part1Id,String part2Id,String wholeId): 
        part1 = OasisVideo("Part 1",part1Id),
        part2 = OasisVideo("Part 2",part2Id),
        whole = OasisVideo("Whole",wholeId);
}
