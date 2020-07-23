import 'package:angular/angular.dart';
import 'package:archives/src/components/oasis_text/oasis_text_component.dart';
import 'package:archives__data/src/month.dart';
import '../oasis_video/oasis_video_component.dart';

@Component(
  selector: "oasis",
  templateUrl: "oasis_component.html",
  styleUrls: ["oasis_component.css"],
  directives: [
      NgFor,
      NgClass,
      OasisVideoComponent,
      OasisTextComponent
    ]
)
class OasisComponent
{
    @Input()
    Month oasis;    
}
