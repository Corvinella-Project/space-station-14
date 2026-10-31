## no reagent stuff and no trailing "." at the end
guidebook-nested-effect-description =
    {$chance ->
    [1] { $effect }
    *[other] Имеет { NATURALPERCENT($chance, 2) } шанс { $effect }
    }{ $conditionCount ->
    [0] {""}
    *[other] {" "}когда { $conditions }
    }
