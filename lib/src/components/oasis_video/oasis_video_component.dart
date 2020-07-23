import 'package:angular/angular.dart';
import 'package:archives__data/src/video.dart';

@Component(
  selector: "oasis-video",
  templateUrl: "oasis_video_component.html",
  styleUrls: ["oasis_video_component.css"]
)
class OasisVideoComponent
{
    @Input()
    Video video;
}