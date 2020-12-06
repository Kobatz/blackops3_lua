-- Decompiled with CoDLUIDecompiler by JariK

CoD.DistFieldText = {}
CoD.DistFieldText.PulseInTime = 400.000000
CoD.DistFieldText.PulseOutTime = 150.000000
CoD.DistFieldText.WarningPulseDuration = 500.000000
CoD.DistFieldText.EdgeFuzziness = 0.070000
CoD.DistFieldText.GlowSize = 0.500000
CoD.DistFieldText.ShadowFuzziness = -1.000000
CoD.DistFieldText.GlowSpread = 0.850000
local registerVal1 = {}
registerVal1 = {1.000000, 1.000000, 1.000000, 1.000000}
CoD.DistFieldText.Color = registerVal1
registerVal1 = {}
registerVal1 = {CoD.yellowGlow.r, CoD.yellowGlow.g, CoD.yellowGlow.b, 1.000000}
CoD.DistFieldText.GlowColor = registerVal1
registerVal1 = {}
registerVal1 = {0.005000, 0.005000}
CoD.DistFieldText.ShadowOffset = registerVal1
CoD.DistFieldText.OutlineSize = 0.090000
CoD.DistFieldText.GlowFalloff = 0.400000
registerVal1 = {}
registerVal1 = {0.142000, 0.142000, 0.142000, 1.000000}
CoD.DistFieldText.ShadowColor = registerVal1
registerVal1 = {}
registerVal1 = {CoD.yellowGlow.r, CoD.yellowGlow.g, CoD.yellowGlow.b, 1.000000}
CoD.DistFieldText.OutlineColor = registerVal1
function CoD.DistFieldText.new(arg0, arg1, arg2, arg3, arg4, arg5, arg6)
	if arg1 == nil then
	end
	if arg2 == nil then
	end
	if arg3 == nil then
	end
	if arg4 == nil then
	end
	if arg5 == nil then
	end
	if arg6 == nil then
	end
	local registerVal7 = {}
	registerVal7 = {0.380000, CoD.DistFieldText.GlowSize, CoD.DistFieldText.ShadowFuzziness, 0.600000}
	local registerVal9 = {}
	registerVal9 = {1.000000, 1.000000, 1.000000, 1.000000}
	local registerVal10 = {}
	registerVal10 = {CoD.DistFieldText.ShadowOffset[1.000000], CoD.DistFieldText.ShadowOffset[2.000000], CoD.DistFieldText.OutlineSize, CoD.DistFieldText.GlowFalloff}
	local registerVal12 = {}
	registerVal12 = {1.000000, 1.000000, 1.000000, 1.000000}
	local registerVal14 = LUI.UIText.new(arg0)
	local registerVal15 = {}
	registerVal15.font = CoD.fonts.Dist
	registerVal15.shaderVector0 = registerVal7
	registerVal15.shaderVector1 = CoD.DistFieldText.Color
	registerVal15.shaderVector2 = registerVal9
	registerVal15.shaderVector3 = registerVal10
	registerVal15.shaderVector4 = CoD.DistFieldText.ShadowColor
	registerVal15.shaderVector5 = registerVal12
	registerVal15.alpha = 1.000000
	registerVal14:registerAnimationState("default_shader_state", registerVal15)
	local registerVal16 = {}
	registerVal16 = {CoD.DistFieldText.EdgeFuzziness, CoD.DistFieldText.GlowSize, CoD.DistFieldText.ShadowFuzziness, CoD.DistFieldText.GlowSpread}
	local registerVal19 = {}
	registerVal19.shaderVector0 = registerVal16
	registerVal19.shaderVector1 = CoD.DistFieldText.Color
	registerVal19.shaderVector2 = CoD.DistFieldText.GlowColor
	registerVal19.shaderVector3 = registerVal10
	registerVal19.shaderVector5 = CoD.DistFieldText.OutlineColor
	registerVal14:registerAnimationState("pulse_in", registerVal19)
	registerVal19 = {}
	registerVal19.shaderVector0 = registerVal16
	registerVal19.shaderVector1 = CoD.DistFieldText.Color
	registerVal19.shaderVector2 = CoD.DistFieldText.GlowColor
	registerVal19.shaderVector3 = registerVal10
	registerVal19.shaderVector5 = CoD.DistFieldText.OutlineColor
	registerVal19.alpha = 0.000000
	registerVal14:registerAnimationState("pulse_out", registerVal19)
	registerVal14.pulseIn = CoD.DistFieldText.PulseIn
	registerVal14.pulseOut = CoD.DistFieldText.PulseOut
	registerVal14.setupForWarningPulse = CoD.DistFieldText.SetupForWarningPulse
	registerVal14.startWarningPulse = CoD.DistFieldText.StartWarningPulse
	registerVal14:pulseIn()
	registerVal14:animateToState("default")
	return registerVal14
end

function CoD.DistFieldText.PulseIn(arg0, arg1)
	arg0:animateToState("default_shader_state")
	if arg1 == nil then
	end
	arg0:animateToState("pulse_in", CoD.DistFieldText.PulseInTime, true, true)
end

function CoD.DistFieldText.PulseOut(arg0)
	arg0:animateToState("pulse_out", CoD.DistFieldText.PulseOutTime, true, true)
end

function CoD.DistFieldText.SetupForWarningPulse(arg0)
	local registerVal4 = {}
	local registerVal5 = {}
	registerVal5 = {CoD.DistFieldText.EdgeFuzziness, CoD.DistFieldText.GlowSize, CoD.DistFieldText.ShadowFuzziness, 0.920000}
	registerVal4.shaderVector0 = registerVal5
	registerVal5 = {}
	registerVal5 = {1.000000, 0.000000, 0.000000, 1.000000}
	registerVal4.shaderVector2 = registerVal5
	registerVal5 = {}
	registerVal5 = {CoD.DistFieldText.ShadowOffset[1.000000], CoD.DistFieldText.ShadowOffset[2.000000], -1.000000, CoD.DistFieldText.GlowFalloff}
	registerVal4.shaderVector3 = registerVal5
	registerVal5 = {}
	registerVal5 = {1.000000, 1.000000, 1.000000, 0.600000}
	registerVal4.shaderVector1 = registerVal5
	arg0:registerAnimationState("warning_pulse_high", registerVal4)
	registerVal4 = {}
	registerVal5 = {}
	registerVal5 = {CoD.DistFieldText.EdgeFuzziness, CoD.DistFieldText.GlowSize, CoD.DistFieldText.ShadowFuzziness, 0.750000}
	registerVal4.shaderVector0 = registerVal5
	registerVal5 = {}
	registerVal5 = {1.000000, 0.000000, 0.000000, 1.000000}
	registerVal4.shaderVector2 = registerVal5
	registerVal5 = {}
	registerVal5 = {CoD.DistFieldText.ShadowOffset[1.000000], CoD.DistFieldText.ShadowOffset[2.000000], -1.000000, CoD.DistFieldText.GlowFalloff}
	registerVal4.shaderVector3 = registerVal5
	registerVal5 = {}
	registerVal5 = {1.000000, 1.000000, 1.000000, 0.600000}
	registerVal4.shaderVector1 = registerVal5
	arg0:registerAnimationState("warning_pulse_low", registerVal4)
	arg0:registerEventHandler("transition_complete_warning_pulse_high", CoD.DistFieldText.TransitionCompleteWarningPulseHigh)
	arg0:registerEventHandler("transition_complete_warning_pulse_low", CoD.DistFieldText.TransitionCompleteWarningPulseLow)
end

function CoD.DistFieldText.StartWarningPulse(arg0)
	arg0:animateToState("warning_pulse_low")
end

function CoD.DistFieldText.TransitionCompleteWarningPulseHigh(arg0, arg1)
	if arg1.interrupted ~= true then
		arg0:animateToState("warning_pulse_low", CoD.DistFieldText.WarningPulseDuration)
	end
end

function CoD.DistFieldText.TransitionCompleteWarningPulseLow(arg0, arg1)
	if arg1.interrupted ~= true then
		arg0:animateToState("warning_pulse_high", CoD.DistFieldText.WarningPulseDuration)
	end
end

