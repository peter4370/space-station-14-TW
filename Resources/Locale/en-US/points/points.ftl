point-scoreboard-winner = The winner was [color=lime]{$player}![/color]
point-scoreboard-header = [粗體]比分板[/粗體]
point-scoreboard-list =
    { $place }. [bold][color=cyan]{ $name }[/color][/bold] scored [color=yellow]{ $points ->
        [one] { $points } point
       *[other] { $points } points
    }.[/color]
