import 'package:angular/angular.dart';
import 'package:archives/src/header/index.dart';
import 'package:archives/src/oasis/oasis.dart';
import 'package:archives/src/oasis/oasis_component.dart';

@Component(
    selector: "my-app",
    templateUrl: "app.html",
    styleUrls: ["app.css"],
    directives: [
        HeaderComponent,
        OasisComponent
    ]
)
class AppComponent 
{
    final oasis = Oasis(["Esprit Saint","Souffle Insaisissable de Dieu"],"c2pPiKDaI2Y","bqt-fsEDKAk","ID2oY4AI23M");
}