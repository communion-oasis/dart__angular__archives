import 'package:angular/angular.dart';
import 'package:archives/src/oasis_video/oasis_video_component.dart';
import './oasis.dart';

@Component(
  selector: "oasis",
  templateUrl: "oasis_component.html",
  styleUrls: ["oasis_component.css"],
  directives: [
      NgFor,
      NgClass,
      OasisVideoComponent
    ]
)
class OasisComponent
{
    @Input()
    Oasis oasis;
}
