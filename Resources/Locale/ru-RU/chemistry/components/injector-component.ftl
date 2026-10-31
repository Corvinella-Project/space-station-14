## UI

injector-volume-transfer-label = Объём: [color=white]{$currentVolume}/{$totalVolume} ед.[/color]
    Режим: [color=white]{$modeString}[/color] ([color=white]{$transferVolume} ед.[/color])
injector-volume-label = 
    Объём: [color=white]{ $currentVolume }/{ $totalVolume }[/color]
    Режим: [color=white]{ $modeString }[/color] ([color=white]{ $transferVolume } ед.[/color])
injector-toggle-verb-text = Переключить режим инъектора

## Entity

injector-component-inject-mode-name = ввод
injector-component-draw-mode-name = набор
injector-component-dynamic-mode-name = динамический
injector-component-mode-changed-text = Теперь режим: {$mode}
injector-component-transfer-success-message = Вы перемещаете { $amount } ед. в { $target }.
injector-component-transfer-success-message-self = Вы переносите {$amount} ед. в себя.
injector-component-inject-success-message = Вы вводите { $amount } ед. в { $target }!
injector-component-inject-success-message-self = Вы вводите {$amount} ед. себе!
injector-component-draw-success-message = Вы набираете { $amount } ед. из { $target }.
injector-component-draw-success-message-self = Вы набираете {$amount} ед. из себя.

## Fail Messages

injector-component-target-already-full-message = { CAPITALIZE($target) } полон!
injector-component-target-already-full-message-self = Вы уже полны!
injector-component-target-is-empty-message = { CAPITALIZE($target) } пуст!
injector-component-target-is-empty-message-self = Вы пусты!
injector-component-cannot-toggle-draw-message = Больше не набрать!
injector-component-cannot-toggle-inject-message = Нечего вводить!
injector-component-cannot-toggle-dynamic-message = Нельзя переключить динамический режим!
injector-component-empty-message = {CAPITALIZE(THE($injector))} пуст!
injector-component-blocked-user = Защитное снаряжение заблокировало вашу инъекцию!
injector-component-blocked-other = {CAPITALIZE(THE(POSS-ADJ($target)))} броня заблокировала инъекцию {THE($user)}!
injector-component-cannot-transfer-message = Вы не можете ничего переместить в { $target }!
injector-component-cannot-transfer-message-self = Вы не можете ничего перенести в себя!
injector-component-cannot-inject-message = Вы не можете ничего ввести в { $target }!
injector-component-cannot-inject-message-self = Вы не можете ничего ввести себе!
injector-component-cannot-draw-message = Вы не можете ничего набрать из { $target }!
injector-component-cannot-draw-message-self = Вы не можете ничего набрать из себя!
injector-component-ignore-mobs = Этот инъектор может взаимодействовать только с контейнерами!

## mob-inject doafter messages

injector-component-needle-injecting-user = Вы начинаете вводить иглу.
injector-component-needle-injecting-target = {CAPITALIZE(THE($user))} пытается ввести вам иглу!
injector-component-needle-drawing-user = Вы начинаете набирать с помощью иглы.
injector-component-needle-drawing-target = {CAPITALIZE(THE($user))} пытается набрать у вас с помощью иглы!
injector-component-spray-injecting-user = Вы начинаете готовить распылительную насадку.
injector-component-spray-injecting-target = {CAPITALIZE(THE($user))} пытается приставить к вам распылительную насадку!

## Target Popup Success messages
injector-component-feel-prick-message = Вы чувствуете лёгкий укол!
