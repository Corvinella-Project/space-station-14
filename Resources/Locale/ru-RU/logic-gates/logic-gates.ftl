# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

logic-gate-examine = Сейчас установлена логическая операция { $gate }.

logic-gate-cycle = Переключено на операцию { $gate }

power-sensor-examine = 
    Сейчас проверяется { $output ->
    [true] выходная
    *[false] входная
    } батарея сети.
power-sensor-voltage-examine = Сейчас проверяется сеть питания: { $voltage }.

power-sensor-switch = 
    Переключено на проверку { $output ->
    [true] выходной
    *[false] входной
    } батареи сети.
power-sensor-voltage-switch = Сеть переключена на { $voltage }!
