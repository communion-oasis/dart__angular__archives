import '../accordion_item/accordion_item_title.dart';

class AccordionItem
{
    final AccordionItemTitle closedTitle;
    final AccordionItemTitle openedTitle;

    AccordionItem(this.closedTitle,[AccordionItemTitle openedTitle]): openedTitle = openedTitle ?? closedTitle;
}