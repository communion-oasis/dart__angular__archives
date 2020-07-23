import 'package:angular/angular.dart';
import 'package:archives__data/src/text.dart';

@Component(
  selector: "oasis-text",
  templateUrl: "oasis_text_component.html",
  styleUrls: ["oasis_text_component.css"]
)
class OasisTextComponent
{
    @Input()
    Text text;

    String get filename
    {
        final maxLength = 25;        
        return (text.filename.length>maxLength)?text.filename.substring(0,maxLength)+"...pdf":text.filename;
    }
}