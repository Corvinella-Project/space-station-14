# Goobstation - Armor resisting syringe gun
melee-inject-failed-armor = { $weapon } не может вводить сквозь броню!

melee-balloon-pop = { CAPITALIZE($balloon) } лопнул!

melee-weapon-dealt-no-damage = {CAPITALIZE(THE($weapon))} не наносит урона {THE($target)}!
melee-self-weapon-dealt-no-damage = Вы не наносите урона {THE($target)}!

# MeleeBatteryHitsLeftSystem
examine-battery-hits-left = Заряда хватит на [color={$color}]{$count}[/color] { $count ->
    [one] удар
    [few] удара
    [many] ударов
    *[other] удара
    }.
