# SPDX-FileCopyrightText: 2021 DrSmugleaf <DrSmugleaf@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 FoLoKe <36813380+FoLoKe@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Galactic Chimp <63882831+GalacticChimp@users.noreply.github.com>
# SPDX-FileCopyrightText: 2021 Pieter-Jan Briers <pieterjan.briers+git@gmail.com>
# SPDX-FileCopyrightText: 2021 Remie Richards <remierichards@gmail.com>
# SPDX-FileCopyrightText: 2021 ShadowCommander <10494922+ShadowCommander@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Flipp Syder <76629141+vulppine@users.noreply.github.com>
# SPDX-FileCopyrightText: 2022 Leon Friedrich <60421075+ElectroJr@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 Kara <lunarautomaton6@gmail.com>
# SPDX-FileCopyrightText: 2023 LankLTE <135308300+LankLTE@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <39013340+deltanedas@users.noreply.github.com>
# SPDX-FileCopyrightText: 2023 deltanedas <@deltanedas:kde.org>
# SPDX-FileCopyrightText: 2024 Eris <erisfiregamer1@gmail.com>
# SPDX-FileCopyrightText: 2025 Aiden <28298836+Aidenkrz@users.noreply.github.com>
# SPDX-FileCopyrightText: 2025 Aiden <aiden@djkraz.com>
# SPDX-FileCopyrightText: 2025 Tayrtahn <tayrtahn@gmail.com>
#
# SPDX-License-Identifier: AGPL-3.0-or-later


### Interaction Messages

# When trying to eat food without the required utensil... but you gotta hold it
food-you-need-to-hold-utensil = Чтобы это съесть, вам нужно держать {INDEFINITE($utensil)} {$utensil}!

food-nom = Ням. {$flavors}
food-swallow = Вы глотаете { THE($food) }. {$flavors}

food-has-used-storage = Вы не можете съесть { THE($food) } с предметом внутри.

food-system-remove-mask = Сначала вам нужно снять {$entity}.

## System

food-system-you-cannot-eat-any-more = Вы больше не можете есть!
food-system-you-cannot-eat-any-more-other = {CAPITALIZE(SUBJECT($target))} больше не может есть!
food-system-try-use-food-is-empty = {CAPITALIZE(THE($entity))} пуст!
food-system-wrong-utensil = Вы не можете есть {THE($food)} с помощью {INDEFINITE($utensil)} {$utensil}.
food-system-cant-digest = Вы не можете переварить {THE($entity)}!
food-system-cant-digest-other = {CAPITALIZE(SUBJECT($target))} не может переварить {THE($entity)}!

food-system-verb-eat = Есть

## Force feeding

food-system-force-feed = {CAPITALIZE(THE($user))} пытается вас чем-то накормить!
food-system-force-feed-success = {CAPITALIZE(THE($user))} заставил вас что-то съесть! {$flavors}
food-system-force-feed-success-user = Вы успешно кормите {THE($target)}
