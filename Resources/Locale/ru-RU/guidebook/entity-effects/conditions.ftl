entity-condition-guidebook-total-damage =
    { $max ->
    [2147483648] у цели как минимум {NATURALFIXED($min, 2)} общего урона
    *[other] { $min ->
    [0] у цели максимум {NATURALFIXED($max, 2)} общего урона
    *[other] у цели от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} общего урона
    }
    }

entity-condition-guidebook-type-damage =
    { $max ->
    [2147483648] у цели как минимум {NATURALFIXED($min, 2)} урона типа {$type}
    *[other] { $min ->
    [0] у цели максимум {NATURALFIXED($max, 2)} урона типа {$type}
    *[other] у цели от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} урона типа {$type}
    }
    }

entity-condition-guidebook-group-damage =
    { $max ->
    [2147483648] у цели как минимум {NATURALFIXED($min, 2)} урона типа {$type}.
    *[other] { $min ->
    [0] у цели максимум {NATURALFIXED($max, 2)} урона типа {$type}.
    *[other] у цели от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} урона типа {$type}
    }
    }

entity-condition-guidebook-total-satiation =
    { $max ->
    [2147483648] у цели как минимум {NATURALFIXED($min, 2)} общего уровня {$type}
    *[other] { $min ->
    [0] у цели максимум {NATURALFIXED($max, 2)} общего уровня {$type}
    *[other] у цели от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} общего уровня {$type}
    }
    }

entity-condition-guidebook-reagent-threshold =
    { $max ->
    [2147483648] в организме как минимум {NATURALFIXED($min, 2)} ед. {$reagent}
    *[other] { $min ->
    [0] в организме максимум {NATURALFIXED($max, 2)} ед. {$reagent}
    *[other] в организме от {NATURALFIXED($min, 2)} до {NATURALFIXED($max, 2)} ед. {$reagent}
    }
    }

entity-condition-guidebook-mob-state-condition =
    существо { $state }

entity-condition-guidebook-job-condition =
    должность цели — { $job }

entity-condition-guidebook-solution-temperature =
    температура раствора составляет { $max ->
    [2147483648] как минимум {NATURALFIXED($min, 2)}k
    *[other] { $min ->
    [0] максимум {NATURALFIXED($max, 2)}k
    *[other] от {NATURALFIXED($min, 2)}k до {NATURALFIXED($max, 2)}k
    }
    }

entity-condition-guidebook-body-temperature =
    температура тела составляет { $max ->
    [2147483648] как минимум {NATURALFIXED($min, 2)}k
    *[other] { $min ->
    [0] максимум {NATURALFIXED($max, 2)}k
    *[other] от {NATURALFIXED($min, 2)}k до {NATURALFIXED($max, 2)}k
    }
    }

entity-condition-guidebook-organ-type =
    метаболизирующий орган { $shouldhave ->
    [true] — это
    *[false] — не
    } {INDEFINITE($name)} {$name}

entity-condition-guidebook-has-tag =
    цель { $invert ->
    [true] не имеет
    *[false] имеет
    } тег {$tag}

entity-condition-guidebook-this-reagent = этот реагент

entity-condition-guidebook-breathing =
    метаболизатор { $isBreathing ->
    [true] дышит нормально
    *[false] задыхается
    }

entity-condition-guidebook-internals =
    метаболизатор { $usingInternals ->
    [true] использует внутреннюю подачу воздуха
    *[false] дышит атмосферным воздухом
    }

entity-condition-guidebook-mouth-uncovered-condition =
    рот существа не прикрыт
