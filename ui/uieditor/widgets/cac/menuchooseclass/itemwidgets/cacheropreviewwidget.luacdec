-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.CACHeroPreviewPanelShader")
require("ui.uieditor.widgets.CAC.cac_CharElements")
require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderSmall")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleElemForeC")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CACHeroPreviewWidget = registerVal1
function CoD.CACHeroPreviewWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CACHeroPreviewWidget)
	registerVal2.id = "CACHeroPreviewWidget"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 1500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 138.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CACHeroPreviewPanelShader.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 1026.000000, 1426.000000)
	registerVal3:setTopBottom(true, false, -59.000000, 141.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CACHeroPreviewPanelShader0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -238.000000, -110.000000)
	registerVal4:setTopBottom(false, true, -128.000000, 0.000000)
	local function __FUNC_119D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PerController", "CACMenu.currentHeroImage", __FUNC_119D_)
	registerVal2:addElement(registerVal4)
	registerVal2.heroImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 1264.000000, 1389.000000)
	registerVal5:setTopBottom(true, false, 4.240000, 125.760000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.circles = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 1030.000000, -5.000000)
	registerVal6:setTopBottom(false, false, 24.000000, 28.000000)
	registerVal6:setAlpha(0.500000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.LineLongB = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, 1030.000000, -5.000000)
	registerVal7:setTopBottom(false, false, -34.000000, -30.000000)
	registerVal7:setAlpha(0.500000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlelinem"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.LineLongT = registerVal7
	local registerVal8 = CoD.cac_CharElements.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 1155.000000, 1780.000000)
	registerVal8:setTopBottom(true, false, 24.230000, 107.770000)
	registerVal8:setAlpha(0.600000)
	registerVal2:addElement(registerVal8)
	registerVal2.cacCharElements0 = registerVal8
	local registerVal9 = CoD.FE_ListHeaderSmall.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 1174.000000, 1272.000000)
	registerVal9:setTopBottom(true, false, 61.000000, 81.000000)
	registerVal9:setRGB(0.760000, 0.760000, 0.760000)
	local function __FUNC_1250_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.btnDisplayTextStroke:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:subscribeToGlobalModel(arg1, "PerController", "CACMenu.currentHeroLoadout", __FUNC_1250_)
	registerVal2:addElement(registerVal9)
	registerVal2.heroWeaponName = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, true, -303.750000, -233.750000)
	registerVal10:setTopBottom(false, false, -31.000000, -11.000000)
	registerVal10:setRGB(0.760000, 0.760000, 0.760000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal10:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setLetterSpacing(0.500000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1334_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal10:subscribeToGlobalModel(arg1, "PerController", "CACMenu.currentHeroName", __FUNC_1334_)
	registerVal2:addElement(registerVal10)
	registerVal2.heroName = registerVal10
	local registerVal11 = CoD.FE_TitleElemForeC.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 1155.000000, 1171.000000)
	registerVal11:setTopBottom(true, false, 33.330000, 98.670000)
	registerVal11:setAlpha(0.500000)
	registerVal2:addElement(registerVal11)
	registerVal2.ElemForeC0 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_13EE_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CACHeroPreviewPanelShader0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.heroImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.circles:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal13.DefaultClip = __FUNC_13EE_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_15AA_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.CACHeroPreviewPanelShader0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.heroImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.circles:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal13.DefaultClip = __FUNC_15AA_
	local function __FUNC_1766_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_1AAB_(arg0, arg1)
			local function __FUNC_1C00_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1C00_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C00_)
		end

		registerVal3:completeAnimation()
		registerVal2.CACHeroPreviewPanelShader0:setAlpha(0.000000)
		__FUNC_1AAB_(registerVal3, {})
		local function __FUNC_1DB5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.circles:setAlpha(0.000000)
		__FUNC_1DB5_(registerVal5, {})
		local function __FUNC_1F69_(arg0, arg1)
			local function __FUNC_20C0_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_20C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20C0_)
		end

		registerVal6:completeAnimation()
		registerVal2.LineLongB:setAlpha(0.000000)
		__FUNC_1F69_(registerVal6, {})
		local function __FUNC_2275_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.500000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal7:completeAnimation()
		registerVal2.LineLongT:setAlpha(0.000000)
		__FUNC_2275_(registerVal7, {})
		local function __FUNC_2429_(arg0, arg1)
			local function __FUNC_2580_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 299.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.600000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2580_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 409.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2580_)
		end

		registerVal8:completeAnimation()
		registerVal2.cacCharElements0:setAlpha(0.000000)
		__FUNC_2429_(registerVal8, {})
		local function __FUNC_2735_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.heroWeaponName:setAlpha(0.000000)
		__FUNC_2735_(registerVal9, {})
		local function __FUNC_28E9_(arg0, arg1)
			local function __FUNC_2A40_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(1.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2A40_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A40_)
		end

		registerVal10:completeAnimation()
		registerVal2.heroName:setAlpha(0.000000)
		__FUNC_28E9_(registerVal10, {})
		local function __FUNC_2BF5_(arg0, arg1)
			local function __FUNC_2D4C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 300.000000, false, false, CoD.TweenType.Bounce)
				end
				arg0:setAlpha(0.500000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2D4C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D4C_)
		end

		registerVal11:completeAnimation()
		registerVal2.ElemForeC0:setAlpha(0.000000)
		__FUNC_2BF5_(registerVal11, {})
	end

	registerVal13.Intro = __FUNC_1766_
	registerVal12.VisibleHero = registerVal13
	registerVal2.clipsPerState = registerVal12
	local registerVal14 = {}
	local registerVal15 = {}
	registerVal15.stateName = "VisibleHero"
	local function __FUNC_2F01_(arg0, arg1, arg2)
		return IsCurrentMenu(arg0, "CustomClass")
	end

	registerVal15.condition = __FUNC_2F01_
	registerVal14 = {registerVal15}
	registerVal2:mergeStateConditions(registerVal14)
	local function __FUNC_2F6C_(arg0)
		arg0.CACHeroPreviewPanelShader0:close()
		arg0.cacCharElements0:close()
		arg0.heroWeaponName:close()
		arg0.ElemForeC0:close()
		arg0.heroImage:close()
		arg0.heroName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2F6C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

