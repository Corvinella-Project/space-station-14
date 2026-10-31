armor-examine-cancel-delayed-knockdown = - [color=green]Полностью отменяет[/color] отложенное оглушение дубинкой.

armor-examine-modify-delayed-knockdown-delay =
    - { $deltasign ->
    [1] [color=green]Увеличивает[/color]
    *[-1] [color=red]Уменьшает[/color]
    } задержку отложенного оглушения дубинкой на [color=lightblue]{ NATURALFIXED($amount, 2) } { $amount ->
    [1] секунду
    *[other] секунд
    }[/color].

armor-examine-modify-delayed-knockdown-time =
    - { $deltasign ->
    [1] [color=red]Увеличивает[/color]
    *[-1] [color=green]Уменьшает[/color]
    } длительность отложенного оглушения дубинкой на [color=lightblue]{ NATURALFIXED($amount, 2) } { $amount ->
    [1] секунду
    *[other] секунд
    }[/color].
