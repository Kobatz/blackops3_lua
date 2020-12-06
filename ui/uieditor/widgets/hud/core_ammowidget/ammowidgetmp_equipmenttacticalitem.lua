-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_EquipmentEmpty")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AmmoWidgetMP_EquipmentTacticalItem = registerVal1
function CoD.AmmoWidgetMP_EquipmentTacticalItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidgetMP_EquipmentTacticalItem)
	registerVal2.id = "AmmoWidgetMP_EquipmentTacticalItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 37.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 12.750000, 38.250000)
	registerVal3:setTopBottom(true, false, 5.250000, 30.750000)
	registerVal3:setRGB(0.520000, 0.520000, 0.520000)
	registerVal3:setupUIStreamedImage(0.000000)
	local function __FUNC_BC0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_BC0_)
	registerVal2:addElement(registerVal3)
	registerVal2.Tactical1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 8.750000, 34.250000)
	registerVal4:setTopBottom(true, false, 5.250000, 30.750000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	local function __FUNC_C74_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_C74_)
	registerVal2:addElement(registerVal4)
	registerVal2.Tactical2b = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 5.750000, 31.250000)
	registerVal5:setTopBottom(true, false, 3.250000, 28.750000)
	registerVal5:setRGB(0.520000, 0.520000, 0.520000)
	local function __FUNC_D28_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_D28_)
	registerVal2:addElement(registerVal5)
	registerVal2.Tactical2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 1.750000, 27.250000)
	registerVal6:setTopBottom(true, false, 3.250000, 28.750000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	local function __FUNC_DDC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_DDC_)
	registerVal2:addElement(registerVal6)
	registerVal2.Tactical3b = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -1.250000, 24.250000)
	registerVal7:setTopBottom(true, false, 1.250000, 26.750000)
	local function __FUNC_E90_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_E90_)
	registerVal2:addElement(registerVal7)
	registerVal2.Tactical3 = registerVal7
	local registerVal8 = CoD.AmmoWidget_EquipmentEmpty.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 5.500000, 31.500000)
	registerVal8:setTopBottom(true, false, 2.750000, 28.750000)
	registerVal8:setAlpha(0.000000)
	local function __FUNC_F44_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ImgIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_F44_)
	local function __FUNC_1015_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ImgIconGrow:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentSecondaryOffhand", "secondaryOffhand", __FUNC_1015_)
	registerVal2:addElement(registerVal8)
	registerVal2.TacticalEmpty = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_10E9_()
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

	registerVal10.DefaultClip = __FUNC_10E9_
	local function __FUNC_14BD_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_17E0_(arg0, arg1)
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
		__FUNC_17E0_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1A29_(arg0, arg1)
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
		__FUNC_1A29_(registerVal8, {})
	end

	registerVal10.Single = __FUNC_14BD_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1BDD_()
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

	registerVal10.DefaultClip = __FUNC_1BDD_
	local function __FUNC_1F68_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_21DE_(arg0, arg1)
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
		__FUNC_21DE_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultState = __FUNC_1F68_
	local function __FUNC_242A_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_28D8_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 10.750000, 36.250000)
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
		__FUNC_28D8_(registerVal3, {})
		local function __FUNC_2B24_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 210.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 4.750000, 30.250000)
			arg0:setTopBottom(true, false, 3.250000, 28.750000)
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
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_2B24_)
		local function __FUNC_2D49_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 0.750000, 26.250000)
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
		__FUNC_2D49_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal2.Tactical3b:setTopBottom(true, false, -0.750000, 24.750000)
		registerVal2.Tactical3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.Double = __FUNC_242A_
	registerVal9.Single = registerVal10
	registerVal10 = {}
	local function __FUNC_2F8F_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 10.750000, 36.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 0.750000, 26.250000)
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

	registerVal10.DefaultClip = __FUNC_2F8F_
	local function __FUNC_342D_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_3869_(arg0, arg1)
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
		registerVal2.Tactical1:setLeftRight(true, false, 10.750000, 36.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		__FUNC_3869_(registerVal3, {})
		local function __FUNC_3AAF_(arg0, arg1)
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
		registerVal2.Tactical2b:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		__FUNC_3AAF_(registerVal4, {})
		local function __FUNC_3CD1_(arg0, arg1)
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
		registerVal2.Tactical2:setLeftRight(true, false, 0.750000, 26.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical2:setAlpha(1.000000)
		__FUNC_3CD1_(registerVal5, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setLeftRight(true, false, -0.250000, 25.250000)
		registerVal2.Tactical3:setTopBottom(true, false, -2.750000, 22.750000)
		registerVal2.Tactical3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Single = __FUNC_342D_
	local function __FUNC_3F1E_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4488_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 12.750000, 38.250000)
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
		registerVal2.Tactical1:setLeftRight(true, false, 10.750000, 36.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		__FUNC_4488_(registerVal3, {})
		local function __FUNC_46D4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 8.750000, 34.250000)
			arg0:setTopBottom(true, false, 5.250000, 30.750000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		__FUNC_46D4_(registerVal4, {})
		local function __FUNC_48F9_(arg0, arg1)
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
		registerVal2.Tactical2:setLeftRight(true, false, 0.750000, 26.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical2:setAlpha(1.000000)
		__FUNC_48F9_(registerVal5, {})
		local function __FUNC_4B44_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 190.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 1.750000, 27.250000)
			arg0:setTopBottom(true, false, 3.250000, 28.750000)
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
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_4B44_)
		local function __FUNC_4D69_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, -1.250000, 24.250000)
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
		__FUNC_4D69_(registerVal7, {})
	end

	registerVal10.Triple = __FUNC_3F1E_
	registerVal9.Double = registerVal10
	registerVal10 = {}
	local function __FUNC_4FAF_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Tactical1:setLeftRight(true, false, 12.750000, 38.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 5.250000, 30.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 8.750000, 34.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 5.250000, 30.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tactical2:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Tactical2:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical2:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tactical3b:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal2.Tactical3b:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical3b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tactical3:setLeftRight(true, false, -1.250000, 24.250000)
		registerVal2.Tactical3:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_4FAF_
	local function __FUNC_5498_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_595A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, true, false, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 10.750000, 36.250000)
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
		registerVal2.Tactical1:setLeftRight(true, false, 12.750000, 38.250000)
		registerVal2.Tactical1:setTopBottom(true, false, 5.250000, 30.750000)
		registerVal2.Tactical1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Tactical1:setAlpha(1.000000)
		__FUNC_595A_(registerVal3, {})
		local function __FUNC_5BA4_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 4.750000, 30.250000)
			arg0:setTopBottom(true, false, 3.250000, 28.750000)
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Tactical2b:setLeftRight(true, false, 8.750000, 34.250000)
		registerVal2.Tactical2b:setTopBottom(true, false, 5.250000, 30.750000)
		registerVal2.Tactical2b:setAlpha(1.000000)
		__FUNC_5BA4_(registerVal4, {})
		local function __FUNC_5DC9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, true, CoD.TweenType.Back)
			end
			arg0:setLeftRight(true, false, 0.750000, 26.250000)
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
		__FUNC_5DC9_(registerVal5, {})
		local function __FUNC_600F_(arg0, arg1)
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
		registerVal2.Tactical3b:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal2.Tactical3b:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Tactical3b:setAlpha(1.000000)
		__FUNC_600F_(registerVal6, {})
		local function __FUNC_6231_(arg0, arg1)
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
		registerVal2.Tactical3:setLeftRight(true, false, -1.250000, 24.250000)
		registerVal2.Tactical3:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Tactical3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Tactical3:setAlpha(1.000000)
		__FUNC_6231_(registerVal7, {})
	end

	registerVal10.Double = __FUNC_5498_
	registerVal9.Triple = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_647E_(arg0)
		arg0.TacticalEmpty:close()
		arg0.Tactical1:close()
		arg0.Tactical2b:close()
		arg0.Tactical2:close()
		arg0.Tactical3b:close()
		arg0.Tactical3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_647E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

