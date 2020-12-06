-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Reticles.ChargeShot.ChargeShot_ActiveLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChargerShot_4corner_line = registerVal1
function CoD.ChargerShot_4corner_line.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChargerShot_4corner_line)
	registerVal2.id = "ChargerShot_4corner_line"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 294.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 297.000000)
	local registerVal3 = CoD.ChargeShot_ActiveLine.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, -146.890000, -95.890000)
	registerVal3:setTopBottom(false, false, -148.310000, -97.310000)
	registerVal3:setRGB(0.290000, 0.690000, 0.950000)
	registerVal2:addElement(registerVal3)
	registerVal2.ChargeShotActiveLine3 = registerVal3
	local registerVal4 = CoD.ChargeShot_ActiveLine.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, 95.890000, 146.890000)
	registerVal4:setTopBottom(false, false, 97.690000, 148.690000)
	registerVal4:setRGB(0.290000, 0.690000, 0.950000)
	registerVal4:setXRot(-180.000000)
	registerVal4:setYRot(180.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ChargeShotActiveLine1 = registerVal4
	local registerVal5 = CoD.ChargeShot_ActiveLine.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -146.390000, -95.390000)
	registerVal5:setTopBottom(false, false, 97.690000, 148.690000)
	registerVal5:setRGB(0.290000, 0.690000, 0.950000)
	registerVal5:setXRot(180.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.ChargeShotActiveLine10 = registerVal5
	local registerVal6 = CoD.ChargeShot_ActiveLine.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, 95.890000, 146.890000)
	registerVal6:setTopBottom(false, false, -148.690000, -97.690000)
	registerVal6:setRGB(0.290000, 0.690000, 0.950000)
	registerVal6:setXRot(180.000000)
	registerVal6:setZRot(180.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.ChargeShotActiveLine11 = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_8A3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.ChargeShotActiveLine11:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_8A3_
	local function __FUNC_9A9_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_DE1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(false, false, -67.910000, -16.910000)
			arg0:setTopBottom(false, false, -63.830000, -12.830000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ChargeShotActiveLine3:setLeftRight(false, false, -67.910000, -16.910000)
		registerVal2.ChargeShotActiveLine3:setTopBottom(false, false, -63.830000, -12.830000)
		registerVal2.ChargeShotActiveLine3:setAlpha(1.000000)
		__FUNC_DE1_(registerVal3, {})
		registerVal4:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setLeftRight(false, false, 14.160000, 65.160000)
		registerVal4:setTopBottom(false, false, 17.170000, 68.170000)
		registerVal4:setAlpha(1.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal5:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setLeftRight(false, false, -68.290000, -17.290000)
		registerVal5:setTopBottom(false, false, 17.830000, 68.830000)
		registerVal5:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
		registerVal6:beginAnimation("keyframe", 389.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(false, false, 14.160000, 65.160000)
		registerVal6:setTopBottom(false, false, -63.830000, -12.830000)
		registerVal6:setAlpha(1.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
	end

	registerVal8.Fire = __FUNC_9A9_
	local function __FUNC_1005_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.Cancel = __FUNC_1005_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1066_(arg0)
		arg0.ChargeShotActiveLine3:close()
		arg0.ChargeShotActiveLine1:close()
		arg0.ChargeShotActiveLine10:close()
		arg0.ChargeShotActiveLine11:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1066_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

