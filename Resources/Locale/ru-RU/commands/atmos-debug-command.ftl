# SPDX-FileCopyrightText: 2024 PrPleGoo <PrPleGoo@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

cmd-atvrange-desc = Задаёт диапазон отладки атмосферы (два числа с плавающей точкой: начало [red] и конец [blue])
cmd-atvrange-help = Использование: { $command } <start> <end>
cmd-atvrange-error-start = Неверное значение START
cmd-atvrange-error-end = Неверное значение END
cmd-atvrange-error-zero = Масштаб не может быть нулевым, иначе в AtmosDebugOverlay произойдёт деление на ноль.

cmd-atvmode-desc = Задаёт режим отладки атмосферы. Масштаб будет автоматически сброшен.
cmd-atvmode-help = Использование: { $command } <TotalMoles/GasMoles/Temperature> [<gas ID (for GasMoles)>]
cmd-atvmode-error-invalid = Неверный режим
cmd-atvmode-error-target-gas = Для этого режима необходимо указать целевой газ.
cmd-atvmode-error-out-of-range = ID газа невозможно разобрать или он вне допустимого диапазона.
cmd-atvmode-error-info = Для этого режима дополнительная информация не требуется.

cmd-atvcbm-desc = Переключает красный/зелёный/синий на оттенки серого
cmd-atvcbm-help = Использование: { $command } <true/false>
cmd-atvcbm-error = Неверный флаг
