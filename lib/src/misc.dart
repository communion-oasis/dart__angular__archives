String monthIndexToName(int month)
{
    final table = const <String>[
        "Janvier",
        "Février",
        "Mars",
        "Avril",
        "Mai",
        "Juin",
        "Juillet",
        "Août",
        "Septembre",
        "Octobre",
        "Novembre",
        "Décembre"
    ];
    return table[month-1];
}

String getDayMonthDisplay(int day,int month)
{
    final dayDisplay = ((day<10)?"0":"")+day.toString();
    final monthDisplay = ((month<10)?"0":"")+month.toString();
    return "$dayDisplay/$monthDisplay";
}