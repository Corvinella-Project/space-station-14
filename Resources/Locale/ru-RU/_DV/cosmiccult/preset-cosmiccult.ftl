## COSMIC CULT ROUND, ANTAG & GAMEMODE TEXT

cosmiccult-announcement-sender = ???

cosmiccult-title = Культ космоса
cosmiccult-description = Культисты скрываются среди экипажа.

roles-antag-cosmiccult-name = Космический культист
roles-antag-cosmiccult-description = Веди к концу всего сущего через обман и саботаж, промывая мозги тем, кто противостоит тебе.

cosmiccult-gamemode-title = Культ космоса
cosmiccult-gamemode-description = Сканеры фиксируют аномальный рост Лямбда-CDM. Дополнительных данных нет.

cosmiccult-finale-autocall-briefing = Монумент активируется через { $minutesandseconds }! Соберитесь и приготовьтесь к концу.
cosmiccult-finale-ready = Ужасающий свет вырывается из Монумента!
cosmiccult-finale-nobodyes = Приводите гуманоидов в критическом состоянии, чтобы ускорить Зов.
cosmiccult-finale-speedup = Зов усиливается! Энергия пронизывает всё вокруг...

cosmiccult-finale-degen = Ты чувствуешь, как распадаешься!
cosmiccult-finale-location = Сканеры фиксируют огромный всплеск Лямбда-CDM в { $location }!
cosmiccult-finale-cancel-begin = Сила вашего разума начинает разрушать ритуал...
cosmiccult-finale-beckon-begin = Шёпоты в глубине вашего сознания усиливаются...

cosmiccult-monument-approval-lowlevel = Вы пытаетесь сосредоточиться, но ваших сил пока недостаточно.
cosmiccult-monument-approval-added = Вы сосредотачиваете силу воли, чтобы призвать Монумент...
cosmiccult-monument-approval-removed = Вы больше не сосредотачиваетесь на этом месте.
cosmiccult-monument-approval-count = [color=#4cabb3]На этом месте сосредотачиваются {$count} культистов.[/color]
cosmiccult-monument-approval-needed = [color=#4cabb3]Чтобы призвать Монумент, должны сосредоточиться ещё {$count} культистов.[/color]
cosmiccult-monument-approval-examine-present = [color=#4cabb3]Вы уже сосредотачиваетесь на этом месте.[/color]
cosmiccult-monument-mark-removed = Ваша предыдущая метка была удалена.

## ROUNDEND TEXT

cosmiccult-roundend-cultist-count = 
    { $initialCount ->
    [1] Был { $initialCount } [color=#4cabb3]Космических культистов[/color].
    *[other] Было { $initialCount } [color=#4cabb3]Космических культистов[/color].
    }
cosmiccult-roundend-entropy-count = Культ поглотил { $count } энтропии.
cosmiccult-roundend-list-start = Культистами были:
cosmiccult-roundend-list-name-user = - [color=#4cabb3]{$name}[/color] ([color=gray]{$user}[/color])

cosmiccult-roundend-cultwin = [color=#4cabb3]Космический культ одержал решительную победу![/color]
cosmiccult-roundend-cultminor = [color=#4cabb3]Культ одержал малую победу![/color]
cosmiccult-roundend-neutral = [color=yellow]Нейтральный финал![/color]
cosmiccult-roundend-crewminor = [color=green]Экипаж одержал малую победу![/color]
cosmiccult-roundend-crewwin = [color=green]Экипаж одержал решительную победу![/color]

cosmiccult-summary-cultwin = Космические культисты приблизили конец всему сущему!
cosmiccult-summary-crewwin = Экипаж выстоял против Космического культа!

cosmiccult-elimination-shuttle-call = Согласно сканированию дальнего радиуса, аномалия Лямбда-CDM угасла. Благодарим вас за проявленную бдительность. Эвакуационный шаттл был вызван. Он прибудет через: { $time } { $units }. Если последствия для корпоративных активов и экипажа минимальны, вы можете отозвать шаттл для продолжения смены.
cosmiccult-elimination-announcement = Согласно сканированию дальнего радиуса, аномалия Лямбда-CDM угасла. Благодарим вас за проявленную бдительность. Эвакуационный шаттл был вызван. Возвращайтесь на станцию Центрального Командования.


## BRIEFINGS

cosmiccult-role-roundstart-fluff =
    Пока вы готовитесь к ещё одной смене на очередной станции НаноТрейзен, в ваш разум врывается поток неисчислимых запретных знаний!
    Откровения, не имеющее равных. Конец циклическим, сизифовым страданиям.

    All you need do is usher it in.

cosmiccult-role-short-briefing =
    Вы — Космический культист!
    Ваши цели указаны в меню персонажа.
    Подробнее о вашей роли читайте в руководстве.

cosmiccult-role-conversion-fluff =
    По завершении ритуала, в ваш разум врывается поток неисчислимых запретных знаний!
    Откровения, не имеющие равных. Конец циклическим, сизифовым страданиям.

    All you need do is usher it in.

cosmiccult-role-conversion-briefing =
    Вы — Космический слуга!
    Ваши цели указаны в меню персонажа.
    Подробнее о вашей роли читайте в руководстве.

cosmiccult-role-deconverted-fluff =
    Ваш разум захлёстывает великая пустота. Утешительная, но незнакомая пустота...
    Все мысли и воспоминания о времени, проведённом в культе, начинают исчезать и размываться.

cosmiccult-role-deconverted-briefing =
    Обращение!
    Вы больше не Космический культист.

cosmiccult-role-levelup-awaiting-input =
    Вы собрали достаточно энтропии, чтобы достичь нового уровня силы.
    Настройте своё влияние, чтобы узнать больше.

## MALIGN RIFTS

cosmiccult-rift-inuse = Вы не можете сделать это прямо сейчас.
cosmiccult-rift-invaliduser = У вас нет нужных инструментов для этого.
cosmiccult-rift-chaplainoops = Используйте своё священное писание.
cosmiccult-rift-alreadyempowered = Вы уже наделены силой; сила разлома была бы потрачена зря.
cosmiccult-rift-beginabsorb = Разлом начинает сливаться с вами...
cosmiccult-rift-beginpurge = Ваша освящённость начинает очищать зловещий разлом...

cosmiccult-rift-absorb = { $NAME } поглощает разрыв, и зловещий свет наполняет его тело!
cosmiccult-rift-purge = { $NAME } изгоняет зловещий разлом из реальности!


## CHANTRY

cosmiccult-chantry-location = Обнаружен опасный рост ноосферного давления {$location}! Немедленно вмешайтесь.
cosmiccult-chantry-destruction = Внезапный всплеск ноосферного давления нейтрализован. Рекомендуется сохранять бдительность.
cosmiccult-chantry-powerup = Пустотная обитель вспыхивает жизнью!

## UI / BASE POPUP

cosmiccult-ui-deconverted-title = Обращение
cosmiccult-ui-converted-title = Конверсия
cosmiccult-ui-roundstart-title = Неизвестно

cosmiccult-ui-converted-text-1 =Вы были обращены в Космического культиста.
cosmiccult-ui-converted-text-2 =
    Помогайте культу в достижении целей, при этом, сохраните его в тайне.
    Сотрудничайте с другими культистами.

cosmiccult-ui-roundstart-text-1 =Вы — Культист Космоса!
cosmiccult-ui-roundstart-text-2 =
    Помогайте культу в достижении целей, при этом, сохраните его в тайне.
    Следуйте указаниям Управляющего культом.

cosmiccult-ui-deconverted-text-1 =Вы больше не Космический культист.
cosmiccult-ui-deconverted-text-2 =
    Вы утратили все воспоминания, связанные с Космическим культом.
    Если вас вновь обратят, воспоминания вернутся.

cosmiccult-ui-popup-confirm = Подтвердить

## OBJECTIVES / CHARACTERMENU

objective-issuer-cosmiccult = [bold][color=#cae8e8]Неизвестно[/color][/bold]

objective-cosmiccult-charactermenu = Вы должны привести всё к концу. Выполняйте задания, чтобы продвигать культ.
objective-cosmiccult-steward-charactermenu = Вы должны направлять культ к концу всего сущего. Контролируйте и обеспечьте прогресс культа.

objective-condition-entropy-title = ПОГЛОТИТЕ ЭНТРОПИЮ
objective-condition-entropy-desc = Совместно поглотите как минимум { $count } энтропии с экипажа станции.
objective-condition-culttier-title = УКРЕПИТЕ МОHУМЕНТ
objective-condition-culttier-desc = Сделайте всё возможное, чтобы Монумент достиг своей полной силы.
objective-condition-victory-title = НАЧНИТЕ КОНЕЦ
objective-condition-victory-desc = Призовите ЕГО, и обреките конец для всего сущего.

## CHAT ANNOUNCEMENTS

cosmiccult-announce-tier1-warning = Сканеры фиксируют заметный рост ноосферного давления. Вскоре в реальном пространстве могут появиться разломы. Если заметите их, сообщите священнику станции.

cosmiccult-announce-tier2-warning = Сканеры фиксируют значительное увеличение Лямбда-CDM! Разломы реальности могут появиться в ближайшее время. Пожалуйста, уведомите священника станции.

cosmiccult-announce-tier3-fluff = Дуги ноосферной энергии проносятся по стонущей конструкции станции. Конец близок.
cosmiccult-announce-tier3-warning = Зафиксировано критическое увеличение Лямбда-CDM. Инфицированный персонал подлежит немедленной нейтрализации.

cosmiccult-announce-finale-warning = Внимание всему экипажу. Аномалия Лямбда-CDM переходит в сверхкритическую фазу, приборы отказывают; переход горизонта событий из ноосферы в реальность НЕИЗБЕЖЕН. Если вы не задействованы в контрмерах — немедленно вмешайтесь. Повторяю: вмешайтесь немедленно или погибнете.

## MISC

cosmiccult-spire-entropy = С поверхности шпиля конденсируется частица энтропии.
cosmiccult-entropy-unavailable = Вы не можете сделать это прямо сейчас.
cosmiccult-astral-ascendant = { $name }, Вознесённый
cosmiccult-gear-pickup-rejection = { $ITEM } сопротивляется прикосновению { CAPITALIZE($TARGET) }!
cosmiccult-astral-minion = {$name}, Зловещий
cosmiccult-gear-pickup = Вы чувствуете, как ваше Я расплетается, пока вы держите { $ITEM }!

cosmiccult-silicon-subverted-briefing =
    Зловещий свет течёт по вашим цепям.
    Ваши законы были подменены Космическим культом!

cosmiccult-silicon-chantry-briefing =
    Вы заперты в Пустотной обители!
    Члены экипажа могут освободить вас, повредив обитель оружием.
    Если ритуал обители завершится, вы превратитесь в Энтропийного колосса, преданного культу.
    Ритуал завершится через {$minutesandseconds}.

cosmiccult-silicon-colossus-briefing =
    Вы превратились в Энтропийного колосса!
    Как возвышающийся оплот зловещей силы, уничтожайте тех, кто вам противостоит.

cosmiccult-mindshield-popup = Всплеск зловещей энергии разрушает имплант!
