import 'dart:html';

import 'package:angular/angular.dart';
import '../accordion/accordion_component.dart';
import './accordion_item.dart';

@Component(
  selector: "accordion-item",
  templateUrl: "accordion_item_component.html",
  styleUrls: ["accordion_item_component.css"],
  directives: [
      NgIf
  ],
  changeDetection: ChangeDetectionStrategy.Default
)
class AccordionItemComponent implements OnInit,AfterChanges
{
    AccordionItemComponent(this.changeDetectorRef);

    final ChangeDetectorRef changeDetectorRef;

    void toggle()
    {
        parent.openedIndex = index;
    }

    @override
    void ngAfterChanges()
    {
        if (_lastOpened!=opened)
        {
            if (opened)
            {
                bodyDiv.style.height = wrapperDiv.clientHeight.toString()+"px";
            }
            else
            {
                bodyDiv.style.height = wrapperDiv.clientHeight.toString()+"px";
                Future.delayed(Duration.zero,() => bodyDiv.style.height = "0px");
            }
            _lastOpened = opened;
        }
    }

    void transitionEnd()
    {
        if (opened)
        {
            bodyDiv.style.height = "auto";
        }
    }

    bool _lastOpened;

    @Input()
    bool opened;

    @Input()
    AccordionItem accordionItem;

    @Input()
    AccordionComponent parent;

    @Input()
    int index;

    @Input()
    bool first = false;

    @ViewChild("wrapper")
    DivElement wrapperDiv;

    @ViewChild("body")
    DivElement bodyDiv;

    @override
    void ngOnInit() 
    {
        bodyDiv.style.height = opened?"auto":"0px";
        _lastOpened = opened;
    }
}
