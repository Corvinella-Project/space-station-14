-protection = { $protect ->
    [true] снижен
    *[false] [color=red]повышен[/color]
    } на [color=lightblue]{TOSTRING($value, "F1")}%[/color].

armor-coefficient-value-trauma = - [color=yellow]{$type}[/color] урон { -protection(protect: $protect, value: $value) }

stamina-resistance-coefficient-value-trauma = - Урон по [color=lightyellow]выносливости[/color] { -protection(protect: $protect, value: $value) }

armor-damage-type-ballistic = Баллистический
