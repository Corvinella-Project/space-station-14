# SPDX-License-Identifier: AGPL-3.0-or-later

cqc-fail-notself = Вы не можете никого обучить при помощи { CAPITALIZE($manual) }.

cqc-fail-changeling = Мы вышли за пределы использования искусства.
cqc-fail-knowanother = Вы уже знаете другое боевое искусство.
cqc-fail-already = Вы уже знаете всё о боевом искусстве.
cqc-success-unblocked = Ваши навыки рукопашного боя больше не привязаны к кухне.
cqc-success-learned = Вы изучили рукопашный бой.
capoeira-success-learned = Вы освоили капоэйру. Учебник сгорает у вас в руках...
dragon-success-learned = Вы освоили стиль Дракона (Кунг-фу). Учебник сгорает у вас в руках...
ninjutsu-success-learned = Вы освоили ниндзюцу. Свиток сгорает у вас в руках...

carp-scroll-waiting = Путь в тысячу миль начинается с одного шага, а путь мудрости проходит медленно, урок за уроком.
carp-scroll-advance = Вы сделали ещё один шаг к мастерству Пути Спящего Карпа.
carp-scroll-complete = Теперь вы мастер Пути Спящего Карпа.

carp-saying-huah = ХУА!
carp-saying-hya = ХЬЯ!
carp-saying-choo = ЧУ!
carp-saying-wuo = ВУО!
carp-saying-kya = КЯ!
carp-saying-huh = ХА!
carp-saying-hiyoh = ХИЙО!
carp-saying-strike = УДАР КАРПА!
carp-saying-bite = КУСЬ КАРПА!

carp-saying-banzai = БАНЗАЙ!!
carp-saying-kiya = КИЯААА!
carp-saying-omae = ОМАЕ ВА МОУ СИНДЭИРУ!
carp-saying-see = ТЫ МЕНЯ НЕ ВИДИШЬ!
carp-saying-time = МОЁ ВРЕМЯ ПРИШЛО!!
carp-saying-cowabunga = КАВАБАНГА!

judo-saying-gold = ГОЛД!
judo-saying-en = ЭН!
judo-saying-blast = БАХ!

martial-arts-saying-generic = ХА!

krav-maga-ready = 
    { GENDER($user) ->
    [male] Вы готовите
    [female] Вы готовите
    [epicene] Вы готовите
    *[neuter] Вы готовите
    } { $action }.

martial-arts-action-sender = 
    { GENDER($user) ->
    [male] Вы ударили
    [female] Вы ударили
    [epicene] Вы ударили
    *[neuter] Вы ударили
    } { $name } { $move }.
martial-arts-action-receiver = 
    { $name } { GENDER($name) ->
    [male] ударил
    [female] ударила
    [epicene] ударили
    *[neuter] ударило
    } тебя { $move }.

martial-arts-fail-prone = Нельзя использовать этот приём в лежачем положении!
martial-arts-fail-standing = Нельзя использовать это комбо стоя!
martial-arts-fail-target-down = Нельзя использовать этот приём на лежащей цели!
martial-arts-fail-target-standing = Нельзя использовать этот приём на стоящей цели!
martial-arts-fail-target-alive = Это можно применять только к мёртвым целям!
martial-arts-fail-target-headless = У них нет головы, чтобы её оторвать!
martial-arts-fail-target-muted = Вы уже уложили их!
capoeira-fail-low-velocity = Вы слишком медленны для этого приёма!
ninjutsu-fail-loss-of-surprise = Ваши намерения раскрыты! Этот приём сейчас невозможен!

alerts-sneak-attack-name = Скрытая атака
alerts-sneak-attack-desc = Для истинного синоби первая и последняя атака — одно и то же.

alerts-loss-of-surprise-name = Потеря элемента неожиданности
alerts-loss-of-surprise-desc = Ваши намерения раскрыты! Потребуется время, чтобы снова скрытно атаковать.

cqc-slam = БАМ!
cqc-kick = БАХ!
cqc-restrain = Захват!
cqc-pressure = Шлепок!
cqc-consecutive = ПОДРЯД! C! Q! C!
cqc-leg-sweep = Хия!
spacebear-bearjaws = КУСЬ!
spacebear-pawslam = УДАР ЛАПОЙ!
spacebear-smokey = СМОУКИ!
judo-discombobulate = ДЕЗОРИЕНТАЦИЯ!
judo-eyepoke = ТЫЧОК В ГЛАЗ!
judo-throw = БРОСОК!
judo-armbar = БОЛЕВОЙ НА РУКУ!
judo-wheelthrow = БРОСОК КОЛЕСОМ!

no-martial-art = Без боевого искусства

melee-clumsy-self-hit = Вы ударили себя!
