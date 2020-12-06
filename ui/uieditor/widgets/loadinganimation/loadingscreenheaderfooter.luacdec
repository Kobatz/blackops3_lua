-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartGameFlow.TeamIconAndNameWidgetElemSide")
require("ui.uieditor.widgets.StartGameFlow.TipWidget")
require("ui.uieditor.widgets.StartGameFlow.GameTypeAndMapNameWidgetContainer")
require("ui.uieditor.widgets.LoadingAnimation.LoadingScreen_DoubleXPWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LoadingScreenHeaderFooter = registerVal1
function CoD.LoadingScreenHeaderFooter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LoadingScreenHeaderFooter)
	registerVal2.id = "LoadingScreenHeaderFooter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -108.000000, 101.000000)
	registerVal3:setTopBottom(false, true, -65.000000, 108.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.LoadingImage = registerVal3
	local registerVal4 = CoD.TeamIconAndNameWidgetElemSide.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -67.500000, -38.500000)
	registerVal4:setTopBottom(false, true, -46.000000, -19.000000)
	registerVal4:setYRot(-180.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.LoadingElem2 = registerVal4
	local registerVal5 = CoD.TeamIconAndNameWidgetElemSide.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 39.500000, 68.500000)
	registerVal5:setTopBottom(false, true, -46.500000, -19.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.LoadingElem1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 64.000000, -62.500000)
	registerVal6:setTopBottom(false, true, -29.000000, -21.000000)
	registerVal6:setRGB(1.000000, 0.350000, 0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_mp_menu_startflow_meterfill"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal6:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.LoadingBar = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 64.950000, -64.000000)
	registerVal7:setTopBottom(false, true, -25.000000, -17.000000)
	registerVal7:setRGB(0.900000, 0.900000, 0.900000)
	registerVal7:setAlpha(0.900000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.LoadingLine3 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, 65.450000, -64.000000)
	registerVal8:setTopBottom(false, true, -33.000000, -25.000000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setAlpha(0.900000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.LoadingLine2 = registerVal8
	local registerVal9 = CoD.TipWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 53.000000, 1333.000000)
	registerVal9:setTopBottom(false, true, -68.000000, -20.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.HeaderTip = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, true, -108.000000, 101.000000)
	registerVal10:setTopBottom(true, false, -105.000000, 68.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setAlpha(0.800000)
	registerVal2:addElement(registerVal10)
	registerVal2.HeaderImage = registerVal10
	local registerVal11 = CoD.GameTypeAndMapNameWidgetContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 121.170000, 1273.170000)
	registerVal11:setTopBottom(true, false, 12.000000, 60.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.HeaderTitle = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 64.000000, 112.340000)
	registerVal12:setTopBottom(true, false, 14.670000, 63.000000)
	local function __FUNC_1068_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal12:subscribeToGlobalModel(arg1, "LoadingScreenTeamInfo", "gameTypeIcon", __FUNC_1068_)
	registerVal2:addElement(registerVal12)
	registerVal2.GameTypeIcon = registerVal12
	local registerVal13 = CoD.LoadingScreen_DoubleXPWidget.new(arg0, arg1)
	registerVal13:setLeftRight(false, true, -208.000000, -64.000000)
	registerVal13:setTopBottom(true, false, 12.000000, 60.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.LoadingScreenDoubleXPWidget = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_111C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal15.DefaultClip = __FUNC_111C_
	local function __FUNC_117E_()
		registerVal2:setupElementClipCounter(11.000000)
		local function __FUNC_1698_(arg0, arg1)
			local function __FUNC_17F0_(arg0, arg1)
				local function __FUNC_1980_(arg0, arg1)
					local function __FUNC_1AD8_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setLeftRight(true, true, -108.000000, 101.000000)
						arg0:setTopBottom(false, true, -65.000000, 108.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_1AD8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 130.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD8_)
				end

				if arg1.interrupted then
					__FUNC_1980_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Linear)
				arg0:setTopBottom(false, true, -65.000000, 108.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1980_)
			end

			if arg1.interrupted then
				__FUNC_17F0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1809.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17F0_)
		end

		registerVal3:completeAnimation()
		registerVal2.LoadingImage:setLeftRight(true, true, -108.000000, 101.000000)
		registerVal2.LoadingImage:setTopBottom(false, true, 11.000000, 164.000000)
		__FUNC_1698_(registerVal3, {})
		local function __FUNC_1CDA_(arg0, arg1)
			local function __FUNC_1E30_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1E30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2240.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E30_)
		end

		registerVal4:completeAnimation()
		registerVal2.LoadingElem2:setAlpha(0.000000)
		__FUNC_1CDA_(registerVal4, {})
		local function __FUNC_1FE5_(arg0, arg1)
			local function __FUNC_213C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_213C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2240.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_213C_)
		end

		registerVal5:completeAnimation()
		registerVal2.LoadingElem1:setAlpha(0.000000)
		__FUNC_1FE5_(registerVal5, {})
		local function __FUNC_22F1_(arg0, arg1)
			local function __FUNC_2448_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2448_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2240.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2448_)
		end

		registerVal6:completeAnimation()
		registerVal2.LoadingBar:setAlpha(0.000000)
		__FUNC_22F1_(registerVal6, {})
		local function __FUNC_25FD_(arg0, arg1)
			local function __FUNC_2754_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2754_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2240.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2754_)
		end

		registerVal7:completeAnimation()
		registerVal2.LoadingLine3:setAlpha(0.000000)
		__FUNC_25FD_(registerVal7, {})
		local function __FUNC_2909_(arg0, arg1)
			local function __FUNC_2A60_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A60_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2240.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A60_)
		end

		registerVal8:completeAnimation()
		registerVal2.LoadingLine2:setAlpha(0.000000)
		__FUNC_2909_(registerVal8, {})
		local function __FUNC_2C15_(arg0, arg1)
			local function __FUNC_2D6C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 140.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2D6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 2099.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D6C_)
		end

		registerVal9:completeAnimation()
		registerVal2.HeaderTip:setAlpha(0.000000)
		__FUNC_2C15_(registerVal9, {})
		local function __FUNC_2F21_(arg0, arg1)
			local function __FUNC_3078_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 600.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setLeftRight(true, true, -108.000000, 101.000000)
				arg0:setTopBottom(true, false, -105.000000, 68.000000)
				arg0:setAlpha(0.800000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3078_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 310.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3078_)
		end

		registerVal10:completeAnimation()
		registerVal2.HeaderImage:setLeftRight(true, true, -108.000000, 101.000000)
		registerVal2.HeaderImage:setTopBottom(true, false, -184.000000, -12.000000)
		registerVal2.HeaderImage:setAlpha(0.800000)
		__FUNC_2F21_(registerVal10, {})
		local function __FUNC_329D_(arg0, arg1)
			local function __FUNC_33F4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_33F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_33F4_)
		end

		registerVal11:completeAnimation()
		registerVal2.HeaderTitle:setAlpha(0.000000)
		__FUNC_329D_(registerVal11, {})
		local function __FUNC_35A9_(arg0, arg1)
			local function __FUNC_3700_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 160.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3700_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 910.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3700_)
		end

		registerVal12:completeAnimation()
		registerVal2.GameTypeIcon:setAlpha(0.000000)
		__FUNC_35A9_(registerVal12, {})
		local function __FUNC_38B5_(arg0, arg1)
			local function __FUNC_3A0C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 169.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_3A0C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1070.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A0C_)
		end

		registerVal13:completeAnimation()
		registerVal2.LoadingScreenDoubleXPWidget:setAlpha(0.000000)
		__FUNC_38B5_(registerVal13, {})
	end

	registerVal15.StartLoading = __FUNC_117E_
	registerVal14.DefaultState = registerVal15
	registerVal2.clipsPerState = registerVal14
	local function __FUNC_3BC1_(arg0)
		arg0.LoadingElem2:close()
		arg0.LoadingElem1:close()
		arg0.HeaderTip:close()
		arg0.HeaderTitle:close()
		arg0.LoadingScreenDoubleXPWidget:close()
		arg0.GameTypeIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3BC1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

