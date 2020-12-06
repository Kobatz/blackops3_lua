-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.core_AmmoWidget.AmmoWidget_EquipmentEmpty")
local function __FUNC_237_(arg0, arg1, arg2)
	CoD.AmmoWidgetUtility.InitLethalEmptyPulse(arg0, arg0.LethalEmpty, arg1, CoD.AmmoWidget_EquipmentEmpty)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.AmmoWidget_EquipmentLethalItem = registerVal2
local function __FUNC_322_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AmmoWidget_EquipmentLethalItem)
	registerVal2.id = "AmmoWidget_EquipmentLethalItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 37.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 7.750000, 33.250000)
	registerVal3:setTopBottom(true, false, 4.250000, 29.750000)
	registerVal3:setRGB(0.520000, 0.520000, 0.520000)
	registerVal3:setupUIStreamedImage(0.000000)
	local function __FUNC_CBC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_CBC_)
	registerVal2:addElement(registerVal3)
	registerVal2.Lethal1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 5.750000, 31.250000)
	registerVal4:setTopBottom(true, false, 3.250000, 28.750000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setupUIStreamedImage(0.000000)
	local function __FUNC_D70_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_D70_)
	registerVal2:addElement(registerVal4)
	registerVal2.Lethal2b = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 3.750000, 29.250000)
	registerVal5:setTopBottom(true, false, 1.250000, 26.750000)
	registerVal5:setupUIStreamedImage(0.000000)
	local function __FUNC_E24_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_E24_)
	registerVal2:addElement(registerVal5)
	registerVal2.Lethal2 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 5.750000, 31.250000)
	registerVal6:setTopBottom(true, false, 3.250000, 28.750000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setupUIStreamedImage(0.000000)
	local function __FUNC_ED8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_ED8_)
	registerVal2:addElement(registerVal6)
	registerVal2.Lethal3b = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 6.750000, 32.250000)
	registerVal7:setTopBottom(true, false, 4.250000, 29.750000)
	registerVal7:setRGB(0.520000, 0.520000, 0.520000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setupUIStreamedImage(0.000000)
	local function __FUNC_F8C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_F8C_)
	registerVal2:addElement(registerVal7)
	registerVal2.Lethal3 = registerVal7
	local registerVal8 = CoD.AmmoWidget_EquipmentEmpty.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 5.500000, 31.500000)
	registerVal8:setTopBottom(true, false, 2.750000, 28.750000)
	local function __FUNC_1040_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ImgIcon:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_1040_)
	local function __FUNC_1111_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.ImgIconGrow:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal8:subscribeToGlobalModel(arg1, "CurrentPrimaryOffhand", "primaryOffhand", __FUNC_1111_)
	registerVal2:addElement(registerVal8)
	registerVal2.LethalEmpty = registerVal8
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_11E5_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.Lethal1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Lethal1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Lethal2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lethal2:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lethal3:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.LethalEmpty:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_11E5_
	local function __FUNC_15A8_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_18C2_(arg0, arg1)
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
		registerVal2.Lethal1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Lethal1:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Lethal1:setAlpha(0.000000)
		__FUNC_18C2_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Lethal2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lethal3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		local function __FUNC_1B09_(arg0, arg1)
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
		registerVal2.LethalEmpty:setAlpha(1.000000)
		__FUNC_1B09_(registerVal8, {})
	end

	registerVal10.Single = __FUNC_15A8_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1CBD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Lethal1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Lethal1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Lethal2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lethal2:setLeftRight(true, false, 2.750000, 28.250000)
		registerVal2.Lethal2:setTopBottom(true, false, 0.250000, 25.750000)
		registerVal2.Lethal2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lethal3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_1CBD_
	local function __FUNC_203E_()
		registerVal2:setupElementClipCounter(3.000000)
		local function __FUNC_22AC_(arg0, arg1)
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
		registerVal2.Lethal1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Lethal1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal1:setAlpha(1.000000)
		__FUNC_22AC_(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Lethal2b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.DefaultState = __FUNC_203E_
	local function __FUNC_24FA_()
		registerVal2:setupElementClipCounter(4.000000)
		local function __FUNC_28A1_(arg0, arg1)
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
		registerVal2.Lethal1:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Lethal1:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal1:setAlpha(1.000000)
		__FUNC_28A1_(registerVal3, {})
		local function __FUNC_2AEC_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
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
		registerVal2.Lethal2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Lethal2b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Lethal2b:setAlpha(0.000000)
		__FUNC_2AEC_(registerVal4, {})
		local function __FUNC_2D11_(arg0, arg1)
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
		registerVal2.Lethal2:setLeftRight(true, false, 2.750000, 28.250000)
		registerVal2.Lethal2:setTopBottom(true, false, 0.250000, 25.750000)
		registerVal2.Lethal2:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Lethal2:setAlpha(0.000000)
		__FUNC_2D11_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal10.Double = __FUNC_24FA_
	registerVal9.Single = registerVal10
	registerVal10 = {}
	local function __FUNC_2F57_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Lethal1:setLeftRight(true, false, 7.750000, 33.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Lethal1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Lethal2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Lethal2b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Lethal2b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lethal2:setLeftRight(true, false, 3.750000, 29.250000)
		registerVal2.Lethal2:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Lethal2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setLeftRight(true, false, 0.750000, 26.250000)
		registerVal2.Lethal3b:setTopBottom(true, false, -0.750000, 24.750000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lethal3:setLeftRight(true, false, -0.250000, 25.250000)
		registerVal2.Lethal3:setTopBottom(true, false, -2.750000, 22.750000)
		registerVal2.Lethal3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_2F57_
	local function __FUNC_3433_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_391F_(arg0, arg1)
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
		registerVal2.Lethal1:setLeftRight(true, false, 7.750000, 33.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Lethal1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal1:setAlpha(1.000000)
		__FUNC_391F_(registerVal3, {})
		local function __FUNC_3B63_(arg0, arg1)
			local function __FUNC_3D4B_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
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

			if arg1.interrupted then
				__FUNC_3D4B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 3.650000, 29.150000)
			arg0:setTopBottom(true, false, 1.150000, 26.650000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D4B_)
		end

		registerVal4:completeAnimation()
		registerVal2.Lethal2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Lethal2b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Lethal2b:setAlpha(1.000000)
		__FUNC_3B63_(registerVal4, {})
		local function __FUNC_3F6D_(arg0, arg1)
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
		registerVal2.Lethal2:setLeftRight(true, false, 3.750000, 29.250000)
		registerVal2.Lethal2:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Lethal2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal2:setAlpha(1.000000)
		__FUNC_3F6D_(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setLeftRight(true, false, 0.750000, 26.250000)
		registerVal2.Lethal3b:setTopBottom(true, false, -0.750000, 24.750000)
		registerVal2.Lethal3b:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lethal3:setLeftRight(true, false, -0.250000, 25.250000)
		registerVal2.Lethal3:setTopBottom(true, false, -2.750000, 22.750000)
		registerVal2.Lethal3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.Single = __FUNC_3433_
	local function __FUNC_41BA_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_4689_(arg0, arg1)
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
		registerVal2.Lethal1:setLeftRight(true, false, 7.750000, 33.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Lethal1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal1:setAlpha(1.000000)
		__FUNC_4689_(registerVal3, {})
		local function __FUNC_48D4_(arg0, arg1)
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
		registerVal2.Lethal2b:setLeftRight(true, false, 4.750000, 30.250000)
		registerVal2.Lethal2b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Lethal2b:setAlpha(1.000000)
		__FUNC_48D4_(registerVal4, {})
		local function __FUNC_4AF9_(arg0, arg1)
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
		registerVal2.Lethal2:setLeftRight(true, false, 3.750000, 29.250000)
		registerVal2.Lethal2:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Lethal2:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal2:setAlpha(1.000000)
		__FUNC_4AF9_(registerVal5, {})
		local function __FUNC_4D44_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
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

		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setLeftRight(true, false, 0.750000, 26.250000)
		registerVal2.Lethal3b:setTopBottom(true, false, -0.750000, 24.750000)
		registerVal2.Lethal3b:setAlpha(0.000000)
		__FUNC_4D44_(registerVal6, {})
		local function __FUNC_4F69_(arg0, arg1)
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
		registerVal2.Lethal3:setLeftRight(true, false, -0.250000, 25.250000)
		registerVal2.Lethal3:setTopBottom(true, false, -2.750000, 22.750000)
		registerVal2.Lethal3:setRGB(1.000000, 0.000000, 0.000000)
		registerVal2.Lethal3:setAlpha(0.000000)
		__FUNC_4F69_(registerVal7, {})
	end

	registerVal10.Triple = __FUNC_41BA_
	registerVal9.Double = registerVal10
	registerVal10 = {}
	local function __FUNC_51AF_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.Lethal1:setLeftRight(true, false, 9.750000, 35.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 5.250000, 30.750000)
		registerVal2.Lethal1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Lethal2b:setLeftRight(true, false, 6.750000, 32.250000)
		registerVal2.Lethal2b:setTopBottom(true, false, 4.250000, 29.750000)
		registerVal2.Lethal2b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Lethal2:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Lethal2:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Lethal2:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setLeftRight(true, false, 2.750000, 28.250000)
		registerVal2.Lethal3b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Lethal3b:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Lethal3:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal2.Lethal3:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Lethal3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal10.DefaultClip = __FUNC_51AF_
	local function __FUNC_56A2_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_5B50_(arg0, arg1)
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
		registerVal2.Lethal1:setLeftRight(true, false, 9.750000, 35.250000)
		registerVal2.Lethal1:setTopBottom(true, false, 5.250000, 30.750000)
		registerVal2.Lethal1:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal1:setAlpha(1.000000)
		__FUNC_5B50_(registerVal3, {})
		local function __FUNC_5D9C_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 400.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, false, 4.750000, 30.250000)
			arg0:setTopBottom(true, false, 2.250000, 27.750000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.Lethal2b:setLeftRight(true, false, 6.750000, 32.250000)
		registerVal2.Lethal2b:setTopBottom(true, false, 4.250000, 29.750000)
		__FUNC_5D9C_(registerVal4, {})
		local function __FUNC_5F9E_(arg0, arg1)
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
		registerVal2.Lethal2:setLeftRight(true, false, 5.750000, 31.250000)
		registerVal2.Lethal2:setTopBottom(true, false, 3.250000, 28.750000)
		registerVal2.Lethal2:setRGB(0.520000, 0.520000, 0.520000)
		registerVal2.Lethal2:setAlpha(1.000000)
		__FUNC_5F9E_(registerVal5, {})
		local function __FUNC_61E3_(arg0, arg1)
			local function __FUNC_63CB_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 180.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, false, 0.750000, 26.250000)
				arg0:setTopBottom(true, false, -0.750000, 24.750000)
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_63CB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 219.000000, false, false, CoD.TweenType.Linear)
			arg0:setLeftRight(true, false, 1.650000, 27.150000)
			arg0:setTopBottom(true, false, 0.600000, 26.100000)
			arg0:setAlpha(0.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_63CB_)
		end

		registerVal6:completeAnimation()
		registerVal2.Lethal3b:setLeftRight(true, false, 2.750000, 28.250000)
		registerVal2.Lethal3b:setTopBottom(true, false, 2.250000, 27.750000)
		registerVal2.Lethal3b:setAlpha(1.000000)
		__FUNC_61E3_(registerVal6, {})
		local function __FUNC_65ED_(arg0, arg1)
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
		registerVal2.Lethal3:setLeftRight(true, false, 1.750000, 27.250000)
		registerVal2.Lethal3:setTopBottom(true, false, 1.250000, 26.750000)
		registerVal2.Lethal3:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Lethal3:setAlpha(1.000000)
		__FUNC_65ED_(registerVal7, {})
	end

	registerVal10.Double = __FUNC_56A2_
	registerVal9.Triple = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_683A_(arg0)
		arg0.LethalEmpty:close()
		arg0.Lethal1:close()
		arg0.Lethal2b:close()
		arg0.Lethal2:close()
		arg0.Lethal3b:close()
		arg0.Lethal3:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_683A_)
	if __FUNC_237_ then
		__FUNC_237_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.AmmoWidget_EquipmentLethalItem.new = __FUNC_322_
