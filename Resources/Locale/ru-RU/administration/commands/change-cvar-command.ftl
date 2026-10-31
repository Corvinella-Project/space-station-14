# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Simon <63975668+Simyon264@users.noreply.github.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-changecvar-no-arguments = Необходимо указать cvar.
cmd-changecvar-cvar-not-registered = cvar { $cvar } не зарегистрирован.
cmd-changecvar-cvar-not-allowed = Вы не можете изменить этот cvar.
cmd-changecvar-value-out-of-range = Значение выходит за допустимые пределы. Диапазон: от { $min } до { $max }.
cmd-changecvar-desc = Изменить значение cvar.
cmd-changecvar-help = Использование: changecvar <cvar | ? | search> <value>
cmd-changecvar-available-cvars = Список доступных cvar:
cmd-changecvar-no-cvars = Не найдено cvar, которые вам разрешено изменять.
cmd-changecvar-success = CVar { $cvar } изменён с "{ $old }" на "{ $value }".

cmd-changecvar-search-no-arguments = Необходимо указать поисковый запрос.
cmd-changecvar-search-no-matches = Не найдено cvar, соответствующих поисковому запросу.
cmd-changecvar-search-matches = Найдено cvar по поисковому запросу: { $count }

cmd-changecvar-arg-name = <name | ? | search>
