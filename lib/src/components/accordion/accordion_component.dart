import 'package:angular/angular.dart';

@Component(
  selector: "accordion",
  templateUrl: "accordion_component.html",
  styleUrls: ["accordion_component.css"]
)
class AccordionComponent
{    
    int _childCount = 0;

    int openedIndex = 0;

    int registerChild() => _childCount++;
}
