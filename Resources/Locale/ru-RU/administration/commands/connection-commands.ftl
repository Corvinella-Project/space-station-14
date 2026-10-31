# SPDX-FileCopyrightText: 2024 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

## Strings for the "grant_connect_bypass" command.

cmd-grant_connect_bypass-desc = Временно позволяет пользователю обойти обычные проверки подключения.
cmd-grant_connect_bypass-help = 
    Использование: grant_connect_bypass <user> [duration minutes]
    Временно позволяет пользователю обойти обычные ограничения подключения.
    Обход действует только на этом игровом сервере и по умолчанию истекает через 1 час.
    Пользователь сможет подключиться независимо от белого списка, паник-бункера или лимита игроков.

cmd-grant_connect_bypass-arg-user = <пользователь>
cmd-grant_connect_bypass-arg-duration = [длительность в минутах]

cmd-grant_connect_bypass-invalid-args = Ожидается 1 или 2 аргумента
cmd-grant_connect_bypass-unknown-user = Не удалось найти пользователя '{ $user }'
cmd-grant_connect_bypass-invalid-duration = Неверная длительность '{ $duration }'

cmd-grant_connect_bypass-success = Обход успешно добавлен пользователю '{ $user }'
