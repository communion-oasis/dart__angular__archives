import 'package:angular/angular.dart';
import './oasis_video.dart';

@Component(
  selector: "oasis-video",
  templateUrl: "oasis_video_component.html",
  styleUrls: ["oasis_video_component.css"]
)
class OasisVideoComponent
{
    @Input()
    OasisVideo video;

    void download() => video.download();
}
