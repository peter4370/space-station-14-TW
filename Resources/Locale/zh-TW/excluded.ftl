air-alarm-ui-window-listing-title = { $address } : { -air-alarm-state-name(state:$state) }
air-alarm-ui-window-alarm-state = [color={ $color }]{ -air-alarm-state-name(state:$state) }[/color]
air-alarm-ui-window-alarm-state-indicator = Status: [color={ $color }]{ -air-alarm-state-name(state:$state) }[/color]

examinable-solution-on-examine-volume = The contained solution is { $fillLevel ->
    [exact] holding [color=white]{ $current }/{ $max }u[/color].
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

examinable-solution-on-examine-volume-no-max = The contained solution is { $fillLevel ->
    [exact] holding [color=white]{ $current }u[/color].
   *[other] [bold]{ -solution-vague-fill-level(fillLevel: $fillLevel) }[/bold].
}

damage-popup-component-switched = Target set to type: { -damage-popup-component-type(setting: $setting) }
set-game-preset-decoy-error = If argument 3 is provided it must be a valid preset. Unable to find game preset "{ $preset }"

#set-game-preset-preset-set = Set game preset to "{$preset}"
edible-nom = Nom. { $flavors }{ -edible-satiated(satiated: $satiated, verb: "eat") }
edible-slurp = Slurp. { $flavors }{ -edible-satiated(satiated: $satiated, verb: "drink") }
edible-swallow = You swallow { THE($food) }.{ -edible-satiated(satiated: $satiated, verb: "swallow") }
edible-force-feed-success = { CAPITALIZE(THE($user)) } forced you to { $verb } something! { $flavors }{ -edible-satiated(satiated: $satiated, verb: $verb) }
markings-limits = { $required ->
    [true] { $count ->
        [-1] Select at least one marking.
        [0] You cannot select any markings, but somehow, you have to? This is a bug.
        [one] Select one marking.
       *[other] Select at least one marking and up to { $count } markings. { -markings-selection(selectable: $selectable) }
    }
   *[false] { $count ->
        [-1] Select any number of markings.
        [0] You cannot select any markings.
        [one] Select up to one marking.
       *[other] Select up to { $count } markings. { -markings-selection(selectable: $selectable) }
    }
}
﻿# Used internally by the THE() function.
zzzz-the = { PROPER($ent) ->
    *[false] the { $ent }
     [true] { $ent }
    }

# Used internally by the SUBJECT() function.
﻿# Loc strings for various entity state & client-side PVS related commands

cmd-reset-ent-help = Usage: {$command} <Entity UID>
﻿### Localization for engine console commands

cmd-hint-float = [float]

## generic command errors

﻿debug-builtin-connection-screen-invalid-username-with-reason = The given username is invalid: {$invalidreason}
debug-builtin-connection-screen-invalid-username = Invalid Username.
﻿## "Textures" dev window tab

dev-window-tab-textures-title = Textures
﻿# Playback Commands

cmd-replay-play-desc = Resume replay playback.
﻿command-help-usage =
    Usage:
command-help-invertible =
    The behaviour of this command can be inverted using the "not" prefix.
ent-{'values': ['GasPressurePump', 'GasPressurePumpAlt1', 'GasPressurePumpAlt2']} = gas pump
    .desc = A pump that moves gas by pressure.
ent-{'values': ['GasVolumePump', 'GasVolumePumpAlt1', 'GasVolumePumpAlt2']} = volumetric gas pump
    .desc = A pump that moves gas by volume.
ent-{'values': ['GasPressureRegulator', 'GasPressureRegulatorAlt1', 'GasPressureRegulatorAlt2']} = inlet pressure regulator
    .desc = A valve that releases gas when the inlet pressure exceeds a certain threshold.
ent-{'values': ['GasPassiveGate', 'GasPassiveGateAlt1', 'GasPassiveGateAlt2']} = passive gate
    .desc = A one-way air valve that does not require power.
ent-{'values': ['GasValve', 'GasValveAlt1', 'GasValveAlt2']} = manual valve
    .desc = A pipe with a valve that can be used to disable the flow of gas through it.
ent-{'values': ['SignalControlledValve', 'SignalControlledValveAlt1', 'SignalControlledValveAlt2']} = signal valve
    .desc = A pipe with a valve that can be controlled with signals.
ent-{'values': ['GasPort', 'GasPortAlt1', 'GasPortAlt2']} = connector port
    .desc = For connecting portable devices related to atmospherics control.
ent-{'values': ['GasDualPortVentPump', 'GasDualPortVentPumpAlt1', 'GasDualPortVentPumpAlt2']} = dual-port air vent
    .desc = Has a valve and a pump attached to it. There are two ports, one is an input for releasing air, the other is an output when siphoning.
ent-{'values': ['GasRecycler', 'GasRecyclerAlt1', 'GasRecyclerAlt2']} = gas recycler
    .desc = Recycles carbon dioxide and nitrous oxide. Heater and compressor not included.
ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']} = gas pipe sensor
    .desc = Reports on the status of the gas in the attached pipe network.
ent-{'values': ['GasPipeSensorDistribution', 'GasPipeSensorDistributionAlt1', 'GasPipeSensorDistributionAlt2']} = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']} }
    .desc = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']}.desc }
    .suffix = Distribution
ent-{'values': ['GasPipeSensorWaste', 'GasPipeSensorWasteAlt1', 'GasPipeSensorWasteAlt2']} = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']} }
    .desc = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']}.desc }
    .suffix = Waste
ent-{'values': ['GasPipeSensorMixedAir', 'GasPipeSensorMixedAirAlt1', 'GasPipeSensorMixedAirAlt2']} = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']} }
    .desc = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']}.desc }
    .suffix = Mixed air
ent-{'values': ['GasPipeSensorTEGHot', 'GasPipeSensorTEGHotAlt1', 'GasPipeSensorTEGHotAlt2']} = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']} }
    .desc = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']}.desc }
    .suffix = TEG hot
ent-{'values': ['GasPipeSensorTEGCold', 'GasPipeSensorTEGColdAlt1', 'GasPipeSensorTEGColdAlt2']} = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']} }
    .desc = { ent-{'values': ['GasPipeSensor', 'GasPipeSensorAlt1', 'GasPipeSensorAlt2']}.desc }
    .suffix = TEG cold
ent-{'values': ['GasPipeHalf', 'GasPipeHalfAlt1', 'GasPipeHalfAlt2']} = { ent-GasPipeBase }
    .desc = { ent-GasPipeBase.desc }
    .suffix = Half
ent-{'values': ['GasPipeStraight', 'GasPipeStraightAlt1', 'GasPipeStraightAlt2']} = { ent-GasPipeBase }
    .desc = { ent-GasPipeBase.desc }
    .suffix = Straight
ent-{'values': ['GasPipeBend', 'GasPipeBendAlt1', 'GasPipeBendAlt2']} = { ent-GasPipeBase }
    .desc = { ent-GasPipeBase.desc }
    .suffix = Bend
ent-{'values': ['GasPipeTJunction', 'GasPipeTJunctionAlt1', 'GasPipeTJunctionAlt2']} = { ent-GasPipeBase }
    .desc = { ent-GasPipeBase.desc }
    .suffix = TJunction
ent-{'values': ['GasPipeFourway', 'GasPipeFourwayAlt1', 'GasPipeFourwayAlt2']} = { ent-GasPipeBase }
    .desc = { ent-GasPipeBase.desc }
    .suffix = Fourway
ent-{'values': ['GasFilter', 'GasFilterAlt1', 'GasFilterAlt2']} = gas filter
    .desc = Very useful for filtering gases.
ent-{'values': ['GasFilterFlipped', 'GasFilterFlippedAlt1', 'GasFilterFlippedAlt2']} = gas filter
    .desc = { ent-GasFilter.desc }
    .suffix = Flipped
ent-{'values': ['GasMixer', 'GasMixerAlt1', 'GasMixerAlt2']} = gas mixer
    .desc = Very useful for mixing gases.
ent-{'values': ['GasMixerFlipped', 'GasMixerFlippedAlt1', 'GasMixerFlippedAlt2']} = gas mixer
    .desc = { ent-GasMixer.desc }
    .suffix = Flipped
ent-{'values': ['PressureControlledValve', 'PressureControlledValveAlt1', 'PressureControlledValveAlt2']} = pneumatic valve
    .desc = A bidirectional valve controlled by pressure. Opens if the output pipe is lower than the pressure of the control pipe by 101.325 kPa.
ent-{'values': ['GasVentPump', 'GasVentPumpAlt1', 'GasVentPumpAlt2']} = air vent
    .desc = Has a valve and a pump attached to it.
ent-{'values': ['GasPassiveVent', 'GasPassiveVentAlt1', 'GasPassiveVentAlt2']} = passive vent
    .desc = It's an open vent.
ent-{'values': ['GasVentScrubber', 'GasVentScrubberAlt1', 'GasVentScrubberAlt2']} = air scrubber
    .desc = Has a valve and pump attached to it.
ent-{'values': ['GasOutletInjector', 'GasOutletInjectorAlt1', 'GasOutletInjectorAlt2']} = air injector
    .desc = Has a valve and pump attached to it.
ent-{'values': ['GasThermoMachineFreezer', 'GasThermoMachineFreezerAlt1', 'GasThermoMachineFreezerAlt2']} = freezer
    .desc = Cools gas in connected pipes.
ent-{'values': ['GasThermoMachineFreezerEnabled', 'GasThermoMachineFreezerEnabledAlt1', 'GasThermoMachineFreezerEnabledAlt2']} = { ent-{'values': ['GasThermoMachineFreezer', 'GasThermoMachineFreezerAlt1', 'GasThermoMachineFreezerAlt2']} }
    .desc = { ent-{'values': ['GasThermoMachineFreezer', 'GasThermoMachineFreezerAlt1', 'GasThermoMachineFreezerAlt2']}.desc }
    .suffix = Enabled
ent-{'values': ['GasThermoMachineHeater', 'GasThermoMachineHeaterAlt1', 'GasThermoMachineHeaterAlt2']} = heater
    .desc = Heats gas in connected pipes.
ent-{'values': ['GasThermoMachineHeaterEnabled', 'GasThermoMachineHeaterEnabledAlt1', 'GasThermoMachineHeaterEnabledAlt2']} = { ent-{'values': ['GasThermoMachineHeater', 'GasThermoMachineHeaterAlt1', 'GasThermoMachineHeaterAlt2']} }
    .desc = { ent-{'values': ['GasThermoMachineHeater', 'GasThermoMachineHeaterAlt1', 'GasThermoMachineHeaterAlt2']}.desc }
    .suffix = Enabled
ent-{'values': ['GasThermoMachineHellfireFreezer', 'GasThermoMachineHellfireFreezerAlt1', 'GasThermoMachineHellfireFreezerAlt2']} = hellfire freezer
    .desc = An advanced machine that cools gas in connected pipes. Has the side effect of chilling the surrounding area. Cold as Hell!
ent-{'values': ['GasThermoMachineHellfireHeater', 'GasThermoMachineHellfireHeaterAlt1', 'GasThermoMachineHellfireHeaterAlt2']} = hellfire heater
    .desc = An advanced machine that heats gas in connected pipes. Has the side effect of leaking heat into the surrounding area. Hot as Hell!
ent-{'values': ['BaseGasCondenser', 'BaseGasCondenserAlt1', 'BaseGasCondenserAlt2']} = condenser
    .desc = Condenses gases into liquids. Now we just need some plumbing.
ent-{'values': ['GasVentPumpFreezer', 'GasVentPumpFreezerAlt1', 'GasVentPumpFreezerAlt2']} = { ent-{'sequences': [['AirSensorFreezerBase', 'GasVentPump'], ['AirSensorFreezerBase', 'GasVentPumpAlt1'], ['AirSensorFreezerBase', 'GasVentPumpAlt2']]} }
    .desc = { ent-{'sequences': [['AirSensorFreezerBase', 'GasVentPump'], ['AirSensorFreezerBase', 'GasVentPumpAlt1'], ['AirSensorFreezerBase', 'GasVentPumpAlt2']]}.desc }
ent-{'values': ['GasVentScrubberFreezer', 'GasVentScrubberFreezerAlt1', 'GasVentScrubberFreezerAlt2']} = { ent-{'sequences': [['AirSensorFreezerBase', 'GasVentScrubber'], ['AirSensorFreezerBase', 'GasVentScrubberAlt1'], ['AirSensorFreezerBase', 'GasVentScrubberAlt2']]} }
    .desc = { ent-{'sequences': [['AirSensorFreezerBase', 'GasVentScrubber'], ['AirSensorFreezerBase', 'GasVentScrubberAlt1'], ['AirSensorFreezerBase', 'GasVentScrubberAlt2']]}.desc }
ent-{'values': ['GasVentPumpVox', 'GasVentPumpVoxAlt1', 'GasVentPumpVoxAlt2']} = { ent-{'sequences': [['AirSensorVoxBase', 'GasVentPump'], ['AirSensorVoxBase', 'GasVentPumpAlt1'], ['AirSensorVoxBase', 'GasVentPumpAlt2']]} }
    .desc = { ent-{'sequences': [['AirSensorVoxBase', 'GasVentPump'], ['AirSensorVoxBase', 'GasVentPumpAlt1'], ['AirSensorVoxBase', 'GasVentPumpAlt2']]}.desc }
ent-{'values': ['GasVentScrubberVox', 'GasVentScrubberVoxAlt1', 'GasVentScrubberVoxAlt2']} = { ent-{'sequences': [['AirSensorVoxBase', 'GasVentScrubber'], ['AirSensorVoxBase', 'GasVentScrubberAlt1'], ['AirSensorVoxBase', 'GasVentScrubberAlt2']]} }
    .desc = { ent-{'sequences': [['AirSensorVoxBase', 'GasVentScrubber'], ['AirSensorVoxBase', 'GasVentScrubberAlt1'], ['AirSensorVoxBase', 'GasVentScrubberAlt2']]}.desc }
entity-heater-switch-setting = Switch to { -entity-heater-setting-name(setting: $setting) }
entity-heater-switched-setting = Switched to { -entity-heater-setting-name(setting: $setting) }.
examinable-solution-on-examine-volume-puddle = The puddle is { $fillLevel ->
    [exact] [color=white]{ $current }u[/color].
    [full] huge and overflowing!
    [mostlyfull] huge and overflowing!
    [halffull] deep and flowing.
    [halfempty] very deep.
   *[mostlyempty] pooling together.
    [empty] forming multiple small pools.
}

-solution-vague-fill-level =
    { $fillLevel ->
        [full] [color=white]Full[/color]
        [mostlyfull] [color=#DFDFDF]Mostly Full[/color]
        [halffull] [color=#C8C8C8]Half Full[/color]
        [halfempty] [color=#C8C8C8]Half Empty[/color]
        [mostlyempty] [color=#A4A4A4]Mostly Empty[/color]
       *[empty] [color=gray]Empty[/color]
    }
