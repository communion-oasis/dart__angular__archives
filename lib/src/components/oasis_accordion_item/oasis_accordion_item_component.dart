import 'package:angular/angular.dart';
import 'package:archives/src/components/accordion_item/accordion_item.dart';
import 'package:archives/src/components/accordion_item/accordion_item_component.dart';
import 'package:archives/src/components/accordion_item/accordion_item_title.dart';
import 'package:archives/src/components/oasis/oasis_component.dart';
import 'package:archives/src/components/accordion/accordion_component.dart';
import 'package:archives/src/misc.dart';
import 'package:archives__data/src/month.dart';

@Component(
  selector: "oasis-accordion-item",
  templateUrl: "oasis_accordion_item_component.html",
  styleUrls: ["oasis_accordion_item_component.css"],
  directives: [
      AccordionItemComponent,
      OasisComponent
  ]
)
class OasisAccordionItemComponent
{
    @Input()
    AccordionComponent parent;

    int _index;
    
    int get index
    {
        return _index ??= parent.registerChild();
    }
    
    @Input()
    bool first = false;

    @Input()
    Month oasis;

    AccordionItem _accordionItem;

    AccordionItem get accordionItem
    {        
        _accordionItem ??= (()
        {
            final monthDisplay = monthIndexToName(oasis.month);
            final dayMonthDisplay = getDayMonthDisplay(oasis.day,oasis.month);
            return AccordionItem(
                AccordionItemTitle(monthDisplay,"$dayMonthDisplay - ${oasis.titles[0]}"),
                AccordionItemTitle(monthDisplay,"$dayMonthDisplay")
            );
        })();
        return _accordionItem;
    }
}
