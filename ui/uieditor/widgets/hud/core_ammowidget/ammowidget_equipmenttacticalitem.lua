-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_EquipmentEmpty")
local function __FUNC_239_(arg0, arg1, arg2)
	CoD.AmmoWidgetUtility.InitTacticalEmptyPulse(arg0, arg0.TacticalEmpty, arg1, CoD.AmmoWidget_EquipmentEmpty, arg2)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_EquipmentTacticalItem = registerVal2
local function __FUNC_32E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_EquipmentTacticalItem)
	registerVal2.id = "AmmoWidget_EquipmentTacticalItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 37.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 5.750000, 31.250000)
	registerVal3:setTopBottom(true, false, 3.250000, 28.750000)
	registerVal3:setAlpha(0.930000)
	registerVal3:setupUIStreamedImage(0.000000)
	local function __FUNC_CFA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_CFA_)
	registerVal2:addElement(registerVal3)
	registerVal2.Tactical1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 5.750000, 31.250000)
	registerVal4:setTopBottom(true, false, 3.250000, 28.750000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setupUIStreamedImage(0.000000)
	local function __FUNC_DAC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_DAC_)
	registerVal2:addElement(registerVal4)
	registerVal2.Tactical2b = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 2.750000, 28.250000)
	registerVal5:setTopBottom(true, false, 0.250000, 25.750000)
	registerVal5:setRGB(0.750000, 0.750000, 0.750000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setupUIStreamedImage(0.000000)
	local function __FUNC_E60_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_E60_)
	registerVal2:addElement(registerVal5)
	registerVal2.Tactical2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -0.250000, 25.250000)
	registerVal6:setTopBottom(true, false, -2.750000, 22.750000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setupUIStreamedImage(0.000000)
	local function __FUNC_F14_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_F14_)
	registerVal2:addElement(registerVal6)
	registerVal2.Tactical3b = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -0.250000, 25.250000)
	registerVal7:setTopBottom(true, false, -2.750000, 22.750000)
	registerVal7:setRGB(0.600000, 0.600000, 0.600000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setupUIStreamedImage(0.000000)
	local function __FUNC_FC8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_FC8_)
	registerVal2:addElement(registerVal7)
	registerVal2.Tactical3 = registerVal7
	local registerVal8 = CoD.AmmoWidget_EquipmentEmpty.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 5.500000, 31.500000)
	registerVal8:setTopBottom(true, false, 2.750000, 28.750000)
	registerVal8:setAlpha(0.070000)
	local function __FUNC_107C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ImgIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_107C_)
	local function __FUNC_114D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ImgIconGrow:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_114D_)
	registerVal2:addElement(registerVal8)
	registerVal2.TacticalEmpty = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_1221_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tactical2:setRGB(0.750000, 0.750000, 0.750000)
		registerVal2.Tactical2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setRGB(0.600000, 0.600000, 0.600000)
		registerVal2.Tactical3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TacticalEmpty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1221_
	local function __FUNC_15F5_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1918_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 5.750000, 31.250000)
			arg0:setTopBottom(true, false, 3.250000, 28.750000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical1:setAlpha(0.000000)
		__FUNC_1918_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1B61_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal8:completeAnimation()
		registerVal2.TacticalEmpty:setAlpha(1.000000)
		__FUNC_1B61_(registerVal8, {})
	end

	registerVal10.Single = __FUNC_15F5_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1D15_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 2.750000, 28.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 0.250000, 25.750000)
		registerVal2.Tactical2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_1D15_
	local function __FUNC_20A0_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_2316_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, true, false, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 5.750000, 31.250000)
			arg0:setTopBottom(true, false, 3.250000, 28.750000)
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical1:setAlpha(1.000000)
		__FUNC_2316_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultState = __FUNC_20A0_
	local function __FUNC_2562_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_2A10_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 7.750000, 33.250000)
			arg0:setTopBottom(true, false, 4.250000, 29.750000)
			arg0:setRGB(0.520000, 0.520000, 0.520000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical1:setAlpha(1.000000)
		__FUNC_2A10_(registerVal3, {})
		local function __FUNC_2C5C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 4.750000, 30.250000)
			arg0:setTopBottom(true, false, 2.250000, 27.750000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 189.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setLeftRight(true, false, 3.750000, 29.250000)
		registerVal4:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_2C5C_)
		local function __FUNC_2E81_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 3.750000, 29.250000)
			arg0:setTopBottom(true, false, 1.250000, 26.750000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 2.750000, 28.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 0.250000, 25.750000)
		registerVal2.Tactical2:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Tactical2:setAlpha(0.000000)
		__FUNC_2E81_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal2.Tactical3b:setTopBottom(true, false, -0.750000, 24.750000)
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.Double = __FUNC_2562_
	registerVal9.Single = registerVal10
	registerVal10 = {}
	local function __FUNC_30C7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 7.750000, 33.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 3.750000, 29.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setLeftRight(true, false, -0.250000, 25.250000)
		registerVal2.Tactical3:setTopBottom(true, false, -2.750000, 22.750000)
		registerVal2.Tactical3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_30C7_
	local function __FUNC_3565_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_39A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 5.750000, 31.250000)
			arg0:setTopBottom(true, false, 3.250000, 28.750000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 7.750000, 33.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		__FUNC_39A1_(registerVal3, {})
		local function __FUNC_3BE7_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 2.750000, 28.250000)
			arg0:setTopBottom(true, false, 0.250000, 25.750000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		__FUNC_3BE7_(registerVal4, {})
		local function __FUNC_3E09_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, 2.750000, 28.250000)
			arg0:setTopBottom(true, false, 0.250000, 25.750000)
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 3.750000, 29.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical2:setAlpha(1.000000)
		__FUNC_3E09_(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setLeftRight(true, false, -0.250000, 25.250000)
		registerVal2.Tactical3:setTopBottom(true, false, -2.750000, 22.750000)
		registerVal2.Tactical3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Single = __FUNC_3565_
	local function __FUNC_4056_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_45C0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 9.750000, 35.250000)
			arg0:setTopBottom(true, false, 5.250000, 30.750000)
			arg0:setRGB(0.520000, 0.520000, 0.520000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 7.750000, 33.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		__FUNC_45C0_(registerVal3, {})
		local function __FUNC_480C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 6.750000, 32.250000)
			arg0:setTopBottom(true, false, 4.250000, 29.750000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		__FUNC_480C_(registerVal4, {})
		local function __FUNC_4A31_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 5.750000, 31.250000)
			arg0:setTopBottom(true, false, 3.250000, 28.750000)
			arg0:setRGB(0.520000, 0.520000, 0.520000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 3.750000, 29.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical2:setAlpha(1.000000)
		__FUNC_4A31_(registerVal5, {})
		local function __FUNC_4C7C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 2.750000, 28.250000)
			arg0:setTopBottom(true, false, 2.250000, 27.750000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 209.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal6:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_4C7C_)
		local function __FUNC_4EA1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 1.750000, 27.250000)
			arg0:setTopBottom(true, false, 1.250000, 26.750000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Tactical3:setLeftRight(true, false, -0.250000, 25.250000)
		registerVal2.Tactical3:setTopBottom(true, false, -2.750000, 22.750000)
		registerVal2.Tactical3:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Tactical3:setAlpha(0.000000)
		__FUNC_4EA1_(registerVal7, {})
	end

	registerVal10.Triple = __FUNC_4056_
	registerVal9.Double = registerVal10
	registerVal10 = {}
	local function __FUNC_50E7_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 9.750000, 35.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 5.250000, 30.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 6.750000, 32.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical2:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setLeftRight(true, false, 2.750000, 28.250000)
		registerVal2.Tactical3b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Tactical3b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal2.Tactical3:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_50E7_
	local function __FUNC_55E4_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5ABA_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 7.750000, 33.250000)
			arg0:setTopBottom(true, false, 4.250000, 29.750000)
			arg0:setRGB(0.520000, 0.520000, 0.520000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 9.750000, 35.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 5.250000, 30.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		__FUNC_5ABA_(registerVal3, {})
		local function __FUNC_5D04_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 4.750000, 30.250000)
			arg0:setTopBottom(true, false, 2.250000, 27.750000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 6.750000, 32.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		__FUNC_5D04_(registerVal4, {})
		local function __FUNC_5F29_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 3.750000, 29.250000)
			arg0:setTopBottom(true, false, 1.250000, 26.750000)
			arg0:setRGB(1.000000, 1.000000, 1.000000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical2:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical2:setAlpha(1.000000)
		__FUNC_5F29_(registerVal5, {})
		local function __FUNC_616F_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 0.750000, 26.250000)
			arg0:setTopBottom(true, false, 0.250000, 25.750000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setLeftRight(true, false, 2.750000, 28.250000)
		registerVal2.Tactical3b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Tactical3b:setAlpha(1.000000)
		__FUNC_616F_(registerVal6, {})
		local function __FUNC_6391_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Bounce)
			end
			arg0:setLeftRight(true, false, -0.250000, 25.250000)
			arg0:setTopBottom(true, false, -2.750000, 22.750000)
			arg0:setRGB(1.000000, 0.000000, 0.000000)
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.Tactical3:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal2.Tactical3:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical3:setAlpha(1.000000)
		__FUNC_6391_(registerVal7, {})
	end

	registerVal10.Double = __FUNC_55E4_
	registerVal9.Triple = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_65DE_(arg0)
		arg0.TacticalEmpty:close()
		arg0.Tactical1:close()
		arg0.Tactical2b:close()
		arg0.Tactical2:close()
		arg0.Tactical3b:close()
		arg0.Tactical3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_65DE_)
	if __FUNC_239_ then
		__FUNC_239_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_EquipmentTacticalItem.new = __FUNC_32E_
