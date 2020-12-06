-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.VehicleHUDs.dart.vhud_dart_CenterReticleHorizonLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_dart_reticle_roll = registerVal1
function CoD.vhud_dart_reticle_roll.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_dart_reticle_roll)
	registerVal2.id = "vhud_dart_reticle_roll"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 458.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 210.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, 88.580000, 177.580000)
	registerVal3:setTopBottom(false, false, -20.230000, 20.230000)
	registerVal3:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlehashdots"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.RightHashDot = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -177.420000, -88.420000)
	registerVal4:setTopBottom(false, false, -20.230000, 20.230000)
	registerVal4:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlehashdots"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LeftHashDot = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, 10.580000, 24.580000)
	registerVal5:setTopBottom(false, false, -3.500000, 3.500000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlecenterline"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.CenterReticleLineRight = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -24.420000, -10.420000)
	registerVal6:setTopBottom(false, false, -3.500000, 3.500000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_cp_hud_vehicle_dart_reticlecenterline"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.CenterReticleLineLeft = registerVal6
	local registerVal7 = CoD.vhud_dart_CenterReticleHorizonLine.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -229.000000, 229.000000)
	registerVal7:setTopBottom(false, false, -104.500000, 104.500000)
	registerVal2:addElement(registerVal7)
	registerVal2.vhuddartCenterReticleHorizonLine0 = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_A1A_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_D2D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
		registerVal3:setAlpha(0.000000)
		registerVal3:registerEventHandler("transition_complete_keyframe", __FUNC_D2D_)
		local function __FUNC_EE1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_EE1_)
		local function __FUNC_1095_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_1095_)
		local function __FUNC_1249_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 99.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_1249_)
		local function __FUNC_13FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 49.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
		registerVal7:setAlpha(0.000000)
		registerVal7:registerEventHandler("transition_complete_keyframe", __FUNC_13FD_)
	end

	registerVal9.DefaultClip = __FUNC_A1A_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_15AF_(arg0)
		arg0.vhuddartCenterReticleHorizonLine0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_15AF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

