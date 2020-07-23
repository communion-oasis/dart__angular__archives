import 'dart:html';

import 'package:angular/angular.dart';
import 'package:archives/src/components/oasis_accordion_item/oasis_accordion_item_component.dart';
import 'package:archives__data/data.dart';
import './src/components/accordion/accordion_component.dart';
import './src/components/accordion_item/accordion_item_component.dart';
import './src/components/header/index.dart';
import './src/components/oasis/oasis_component.dart';

@Component(
    selector: "my-app",
    templateUrl: "app.html",
    styleUrls: ["app.css"],
    directives: [
        HeaderComponent,
        OasisComponent,
        AccordionComponent,
        AccordionItemComponent,
        OasisAccordionItemComponent,
        NgFor
    ]
)
class AppComponent 
{
    final data = archivesData;

    String get separator
    {
        final dash = "─";
        final length = (window.screen.width>=600)?15:8;
        return List<String>.generate(length,(index) => dash).join();
    }
}