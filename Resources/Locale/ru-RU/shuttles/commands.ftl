# SPDX-FileCopyrightText: 2024 IProduceWidgets <107586145+IProduceWidgets@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later

# FTLdiskburner
cmd-ftldisk-desc = Создаёт диск с координатами БФЛ для полёта к карте, на которой находится указанный EntityID
cmd-ftldisk-help = ftldisk [EntityID]

cmd-ftldisk-no-transform = У сущности { $destination } нет компонента Transform!
cmd-ftldisk-no-map = Сущность { $destination } не находится на карте!
cmd-ftldisk-no-map-comp = Сущность { $destination } почему-то находится на карте { $map } без компонента карты.
cmd-ftldisk-map-not-init = Сущность { $destination } находится на неинициализированной карте { $map }! Убедитесь, что её безопасно инициализировать, и инициализируйте карту сначала, иначе игроки застрянут на месте!
cmd-ftldisk-map-paused = Сущность { $desintation } находится на приостановленной карте { $map }! Снимите карту с паузы, иначе игроки застрянут на месте.
cmd-ftldisk-planet = Сущность { $desintation } находится на планетарной карте { $map }, для перелёта потребуется точка БФЛ. Возможно, она уже существует.
cmd-ftldisk-already-dest-not-enabled = Сущность { $destination } находится на карте { $map }, у которой уже есть FTLDestinationComponent, но он не включён! Включите его вручную для безопасности.
cmd-ftldisk-requires-ftl-point = Сущность { $destination } находится на карте { $map }, для перелёта к которой требуется точка БФЛ! Возможно, она уже существует.

cmd-ftldisk-hint = Сетевой ID карты
