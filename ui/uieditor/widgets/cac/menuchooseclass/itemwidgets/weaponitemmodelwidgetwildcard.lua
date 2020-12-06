-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactiveStroke")
require("ui.uieditor.widgets.CAC.cac_NewTag")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.ItemHintText")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.HintTextArrow")
require("ui.uieditor.widgets.CAC.CustomClassListScreen.Panes.CustomClassPlusSymbol")
require("ui.uieditor.widgets.CAC.cac_FocusBarContainer")
require("ui.uieditor.widgets.CAC.RestrictedItemWarning")
require("ui.uieditor.widgets.CAC.MenuChooseClass.ItemWidgets.RemoveItemButton")
local function __FUNC_4E0_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	Engine.CreateModel(registerVal3, "lobbyRoot.Pregame.Update")
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.WeaponItemModelWidgetWildcard = registerVal2
local function __FUNC_597_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_4E0_ then
		__FUNC_4E0_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponItemModelWidgetWildcard)
	registerVal2.id = "WeaponItemModelWidgetWildcard"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 129.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 165.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_blend"))
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -4.000000, 4.000000)
	registerVal4:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivediagfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.291545, 0.203390, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(24.000000, 24.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal4
	local registerVal5 = CoD.cac_ButtonBoxLrgInactiveStroke.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal5:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.BoxButtonLrgInactiveStroke = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.204290, 0.137931, 0.000000, 0.000000)
	registerVal6:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.BoxButtonLrgInactive = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal7:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal7:setShaderVector(0.000000, 0.204290, 0.137931, 0.000000, 0.000000)
	registerVal7:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.BoxButtonLrgIdle = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal8:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrgidlefull"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal8:setShaderVector(0.000000, 0.204290, 0.137931, 0.000000, 0.000000)
	registerVal8:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.BoxButtonLrgIdle0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -7.630000, 5.630000)
	registerVal9:setTopBottom(true, true, 7.000000, -7.500000)
	registerVal9:setAlpha(0.800000)
	local function __FUNC_232D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "image", true, __FUNC_232D_)
	registerVal2:addElement(registerVal9)
	registerVal2.itemImage = registerVal9
	local registerVal10 = CoD.cac_NewTag.new(arg0, arg1)
	registerVal10:setLeftRight(false, true, -19.000000, 1.000000)
	registerVal10:setTopBottom(true, false, -1.000000, 19.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.cacNewTag0 = registerVal10
	local registerVal11 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal11:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal11:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setZoom(1.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.FocusBarT = registerVal11
	local registerVal12 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal12:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal12:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setZoom(1.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.FocusBarB = registerVal12
	local registerVal13 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal13:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal13:setTopBottom(true, true, -0.500000, 0.000000)
	registerVal13:setRGB(1.000000, 0.300000, 0.000000)
	registerVal13:setAlpha(0.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.FocusBorder = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal14:setTopBottom(true, false, -9.750000, 3.750000)
	registerVal14:setRGB(1.000000, 0.090000, 0.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.glitch = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, -5.000000, 4.000000)
	registerVal15:setTopBottom(false, true, -5.000000, 10.000000)
	registerVal15:setRGB(1.000000, 0.150000, 0.000000)
	registerVal15:setAlpha(0.000000)
	registerVal15:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.glitch2 = registerVal15
	local registerVal16 = CoD.ItemHintText.new(arg0, arg1)
	registerVal16:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal16:setTopBottom(false, true, -22.000000, -2.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16.textCenterAlign:setText(Engine.Localize("MPUI_REQUIRES_DANGER_CLOSE"))
	local function __FUNC_23E0_(arg0)
		registerVal16:setModel(arg0, arg1)
	end

	registerVal16:linkToElementModel(registerVal2, nil, false, __FUNC_23E0_)
	registerVal2:addElement(registerVal16)
	registerVal2.itemHintText = registerVal16
	local registerVal17 = CoD.HintTextArrow.new(arg0, arg1)
	registerVal17:setLeftRight(false, false, -5.000000, 5.000000)
	registerVal17:setTopBottom(false, true, -32.000000, -22.000000)
	registerVal17:setAlpha(0.000000)
	local function __FUNC_2432_(arg0)
		registerVal17:setModel(arg0, arg1)
	end

	registerVal17:linkToElementModel(registerVal2, nil, false, __FUNC_2432_)
	registerVal2:addElement(registerVal17)
	registerVal2.hintArrow = registerVal17
	local registerVal18 = CoD.CustomClassPlusSymbol.new(arg0, arg1)
	registerVal18:setLeftRight(false, false, -10.000000, 10.000000)
	registerVal18:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal18:setRGB(1.000000, 0.430000, 0.090000)
	registerVal18:setAlpha(0.000000)
	registerVal2:addElement(registerVal18)
	registerVal2.plusIcon = registerVal18
	local registerVal19 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal19:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal19:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal19:setAlpha(0.000000)
	registerVal19:setZoom(1.000000)
	registerVal2:addElement(registerVal19)
	registerVal2.FocusWhiteT = registerVal19
	local registerVal20 = CoD.cac_FocusBarContainer.new(arg0, arg1)
	registerVal20:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal20:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal20:setAlpha(0.000000)
	registerVal20:setZoom(1.000000)
	registerVal2:addElement(registerVal20)
	registerVal2.FocusWhiteB = registerVal20
	local registerVal21 = CoD.RestrictedItemWarning.new(arg0, arg1)
	registerVal21:setLeftRight(true, false, -7.630000, 134.630000)
	registerVal21:setTopBottom(true, false, 7.000000, 129.850000)
	local function __FUNC_2482_(arg0)
		registerVal21:setModel(arg0, arg1)
	end

	registerVal21:linkToElementModel(registerVal2, nil, false, __FUNC_2482_)
	local registerVal24 = {}
	local registerVal25 = {}
	registerVal25.stateName = "Visible"
	local function __FUNC_24D2_(arg0, arg2, arg3)
		return ItemIsBanned(arg0, arg2, arg1)
	end

	registerVal25.condition = __FUNC_24D2_
	registerVal24 = {registerVal25}
	registerVal21:mergeStateConditions(registerVal24)
	registerVal25 = Engine.GetGlobalModel()
	registerVal24 = Engine.GetModel(registerVal25, "lobbyRoot.Pregame.Update")
	local function __FUNC_252A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.Pregame.Update"
		arg0:updateElementState(registerVal21, registerVal4)
	end

	registerVal21:subscribeToModel(registerVal24, __FUNC_252A_)
	registerVal2:addElement(registerVal21)
	registerVal2.RestrictedItemWarning = registerVal21
	local registerVal22 = CoD.RemoveItemButton.new(arg0, arg1)
	registerVal22:setLeftRight(false, true, -23.000000, -3.000000)
	registerVal22:setTopBottom(true, false, 3.750000, 23.750000)
	registerVal22:setAlpha(0.000000)
	local function __FUNC_2656_(arg0)
		registerVal22:setModel(arg0, arg1)
	end

	registerVal22:linkToElementModel(registerVal2, nil, false, __FUNC_2656_)
	registerVal2:addElement(registerVal22)
	registerVal2.removeButton = registerVal22
	local registerVal23 = {}
	registerVal24 = {}
	local function __FUNC_26A6_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BoxButtonLrgIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.DefaultClip = __FUNC_26A6_
	local function __FUNC_2D05_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_2FEF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_2FEF_(registerVal6, {})
		local function __FUNC_31A1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_31A1_(registerVal9, {})
		local function __FUNC_3355_(arg0, arg1)
			local function __FUNC_34AC_(arg0, arg1)
				local function __FUNC_3627_(arg0, arg1)
					local function __FUNC_377C_(arg0, arg1)
						local function __FUNC_38F7_(arg0, arg1)
							local function __FUNC_3A4C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_3A4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A4C_)
						end

						if arg1.interrupted then
							__FUNC_38F7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_38F7_)
					end

					if arg1.interrupted then
						__FUNC_377C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_377C_)
				end

				if arg1.interrupted then
					__FUNC_3627_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3627_)
			end

			if arg1.interrupted then
				__FUNC_34AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_34AC_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_3355_(registerVal11, {})
		local function __FUNC_3C01_(arg0, arg1)
			local function __FUNC_3D58_(arg0, arg1)
				local function __FUNC_3ED3_(arg0, arg1)
					local function __FUNC_4028_(arg0, arg1)
						local function __FUNC_41A3_(arg0, arg1)
							local function __FUNC_42F8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_42F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_42F8_)
						end

						if arg1.interrupted then
							__FUNC_41A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_41A3_)
					end

					if arg1.interrupted then
						__FUNC_4028_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4028_)
				end

				if arg1.interrupted then
					__FUNC_3ED3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3ED3_)
			end

			if arg1.interrupted then
				__FUNC_3D58_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3D58_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_3C01_(registerVal12, {})
		local function __FUNC_44AD_(arg0, arg1)
			local function __FUNC_4604_(arg0, arg1)
				local function __FUNC_477F_(arg0, arg1)
					local function __FUNC_48F7_(arg0, arg1)
						local function __FUNC_4A6F_(arg0, arg1)
							local function __FUNC_4BC4_(arg0, arg1)
								local function __FUNC_4D3F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_4D3F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D3F_)
							end

							if arg1.interrupted then
								__FUNC_4BC4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BC4_)
						end

						if arg1.interrupted then
							__FUNC_4A6F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4A6F_)
					end

					if arg1.interrupted then
						__FUNC_48F7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_48F7_)
				end

				if arg1.interrupted then
					__FUNC_477F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_477F_)
			end

			if arg1.interrupted then
				__FUNC_4604_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4604_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_44AD_(registerVal13, {})
		local function __FUNC_4EF1_(arg0, arg1)
			local function __FUNC_5048_(arg0, arg1)
				local function __FUNC_51C3_(arg0, arg1)
					local function __FUNC_5318_(arg0, arg1)
						local function __FUNC_5493_(arg0, arg1)
							local function __FUNC_55E8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_55E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_55E8_)
						end

						if arg1.interrupted then
							__FUNC_5493_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5493_)
					end

					if arg1.interrupted then
						__FUNC_5318_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5318_)
				end

				if arg1.interrupted then
					__FUNC_51C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_51C3_)
			end

			if arg1.interrupted then
				__FUNC_5048_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5048_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_4EF1_(registerVal14, {})
		local function __FUNC_579D_(arg0, arg1)
			local function __FUNC_58F4_(arg0, arg1)
				local function __FUNC_5A6F_(arg0, arg1)
					local function __FUNC_5BC4_(arg0, arg1)
						local function __FUNC_5D3F_(arg0, arg1)
							local function __FUNC_5E94_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_5E94_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5E94_)
						end

						if arg1.interrupted then
							__FUNC_5D3F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5D3F_)
					end

					if arg1.interrupted then
						__FUNC_5BC4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5BC4_)
				end

				if arg1.interrupted then
					__FUNC_5A6F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5A6F_)
			end

			if arg1.interrupted then
				__FUNC_58F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_58F4_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_579D_(registerVal15, {})
	end

	registerVal24.GainFocus = __FUNC_2D05_
	local function __FUNC_6049_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.BoxButtonLrgIdle0:setAlpha(0.750000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setLeftRight(true, true, -15.500000, 13.500000)
		registerVal2.itemImage:setTopBottom(true, true, 3.000000, -4.000000)
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cacNewTag0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.Focus = __FUNC_6049_
	local function __FUNC_6791_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_6AEB_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_6AEB_(registerVal6, {})
		registerVal8:completeAnimation()
		registerVal2.BoxButtonLrgIdle0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		local function __FUNC_6C9D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_6C9D_(registerVal9, {})
		local function __FUNC_6E51_(arg0, arg1)
			local function __FUNC_6FCB_(arg0, arg1)
				local function __FUNC_7143_(arg0, arg1)
					local function __FUNC_72BB_(arg0, arg1)
						local function __FUNC_7410_(arg0, arg1)
							local function __FUNC_758B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_758B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_758B_)
						end

						if arg1.interrupted then
							__FUNC_7410_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7410_)
					end

					if arg1.interrupted then
						__FUNC_72BB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_72BB_)
				end

				if arg1.interrupted then
					__FUNC_7143_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7143_)
			end

			if arg1.interrupted then
				__FUNC_6FCB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_6FCB_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_6E51_(registerVal11, {})
		local function __FUNC_773D_(arg0, arg1)
			local function __FUNC_78B7_(arg0, arg1)
				local function __FUNC_7A2F_(arg0, arg1)
					local function __FUNC_7BA7_(arg0, arg1)
						local function __FUNC_7CFC_(arg0, arg1)
							local function __FUNC_7E77_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_7E77_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7E77_)
						end

						if arg1.interrupted then
							__FUNC_7CFC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7CFC_)
					end

					if arg1.interrupted then
						__FUNC_7BA7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7BA7_)
				end

				if arg1.interrupted then
					__FUNC_7A2F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_7A2F_)
			end

			if arg1.interrupted then
				__FUNC_78B7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_78B7_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_773D_(registerVal12, {})
		local function __FUNC_8029_(arg0, arg1)
			local function __FUNC_8180_(arg0, arg1)
				local function __FUNC_82FB_(arg0, arg1)
					local function __FUNC_8473_(arg0, arg1)
						local function __FUNC_85EB_(arg0, arg1)
							local function __FUNC_8740_(arg0, arg1)
								local function __FUNC_88BB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_88BB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_88BB_)
							end

							if arg1.interrupted then
								__FUNC_8740_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8740_)
						end

						if arg1.interrupted then
							__FUNC_85EB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_85EB_)
					end

					if arg1.interrupted then
						__FUNC_8473_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8473_)
				end

				if arg1.interrupted then
					__FUNC_82FB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_82FB_)
			end

			if arg1.interrupted then
				__FUNC_8180_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8180_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_8029_(registerVal13, {})
		local function __FUNC_8A6D_(arg0, arg1)
			local function __FUNC_8BC4_(arg0, arg1)
				local function __FUNC_8D3F_(arg0, arg1)
					local function __FUNC_8E94_(arg0, arg1)
						local function __FUNC_900F_(arg0, arg1)
							local function __FUNC_9164_(arg0, arg1)
								local function __FUNC_92DF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_92DF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_92DF_)
							end

							if arg1.interrupted then
								__FUNC_9164_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9164_)
						end

						if arg1.interrupted then
							__FUNC_900F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_900F_)
					end

					if arg1.interrupted then
						__FUNC_8E94_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8E94_)
				end

				if arg1.interrupted then
					__FUNC_8D3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8D3F_)
			end

			if arg1.interrupted then
				__FUNC_8BC4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_8BC4_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_8A6D_(registerVal14, {})
		local function __FUNC_9491_(arg0, arg1)
			local function __FUNC_95E8_(arg0, arg1)
				local function __FUNC_9763_(arg0, arg1)
					local function __FUNC_98B8_(arg0, arg1)
						local function __FUNC_9A33_(arg0, arg1)
							local function __FUNC_9B88_(arg0, arg1)
								local function __FUNC_9D03_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_9D03_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9D03_)
							end

							if arg1.interrupted then
								__FUNC_9B88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9B88_)
						end

						if arg1.interrupted then
							__FUNC_9A33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9A33_)
					end

					if arg1.interrupted then
						__FUNC_98B8_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_98B8_)
				end

				if arg1.interrupted then
					__FUNC_9763_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_9763_)
			end

			if arg1.interrupted then
				__FUNC_95E8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_95E8_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_9491_(registerVal15, {})
	end

	registerVal24.LoseFocus = __FUNC_6791_
	registerVal23.DefaultState = registerVal24
	registerVal24 = {}
	local function __FUNC_9EB5_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.DefaultClip = __FUNC_9EB5_
	local function __FUNC_A510_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_A851_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_A851_(registerVal6, {})
		local function __FUNC_AA05_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_AA05_(registerVal9, {})
		local function __FUNC_ABB9_(arg0, arg1)
			local function __FUNC_AD10_(arg0, arg1)
				local function __FUNC_AE8B_(arg0, arg1)
					local function __FUNC_AFE0_(arg0, arg1)
						local function __FUNC_B15B_(arg0, arg1)
							local function __FUNC_B2B0_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_B2B0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B2B0_)
						end

						if arg1.interrupted then
							__FUNC_B15B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B15B_)
					end

					if arg1.interrupted then
						__FUNC_AFE0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AFE0_)
				end

				if arg1.interrupted then
					__FUNC_AE8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AE8B_)
			end

			if arg1.interrupted then
				__FUNC_AD10_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_AD10_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_ABB9_(registerVal11, {})
		local function __FUNC_B465_(arg0, arg1)
			local function __FUNC_B5BC_(arg0, arg1)
				local function __FUNC_B737_(arg0, arg1)
					local function __FUNC_B88C_(arg0, arg1)
						local function __FUNC_BA07_(arg0, arg1)
							local function __FUNC_BB5C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_BB5C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BB5C_)
						end

						if arg1.interrupted then
							__FUNC_BA07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BA07_)
					end

					if arg1.interrupted then
						__FUNC_B88C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B88C_)
				end

				if arg1.interrupted then
					__FUNC_B737_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B737_)
			end

			if arg1.interrupted then
				__FUNC_B5BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_B5BC_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_B465_(registerVal12, {})
		local function __FUNC_BD11_(arg0, arg1)
			local function __FUNC_BE68_(arg0, arg1)
				local function __FUNC_BFE3_(arg0, arg1)
					local function __FUNC_C15B_(arg0, arg1)
						local function __FUNC_C2D3_(arg0, arg1)
							local function __FUNC_C428_(arg0, arg1)
								local function __FUNC_C5A3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_C5A3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C5A3_)
							end

							if arg1.interrupted then
								__FUNC_C428_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C428_)
						end

						if arg1.interrupted then
							__FUNC_C2D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C2D3_)
					end

					if arg1.interrupted then
						__FUNC_C15B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C15B_)
				end

				if arg1.interrupted then
					__FUNC_BFE3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BFE3_)
			end

			if arg1.interrupted then
				__FUNC_BE68_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_BE68_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_BD11_(registerVal13, {})
		local function __FUNC_C755_(arg0, arg1)
			local function __FUNC_C8AC_(arg0, arg1)
				local function __FUNC_CA27_(arg0, arg1)
					local function __FUNC_CB7C_(arg0, arg1)
						local function __FUNC_CCF7_(arg0, arg1)
							local function __FUNC_CE4C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_CE4C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CE4C_)
						end

						if arg1.interrupted then
							__FUNC_CCF7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CCF7_)
					end

					if arg1.interrupted then
						__FUNC_CB7C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CB7C_)
				end

				if arg1.interrupted then
					__FUNC_CA27_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_CA27_)
			end

			if arg1.interrupted then
				__FUNC_C8AC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_C8AC_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_C755_(registerVal14, {})
		local function __FUNC_D001_(arg0, arg1)
			local function __FUNC_D158_(arg0, arg1)
				local function __FUNC_D2D3_(arg0, arg1)
					local function __FUNC_D428_(arg0, arg1)
						local function __FUNC_D5A3_(arg0, arg1)
							local function __FUNC_D6F8_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_D6F8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D6F8_)
						end

						if arg1.interrupted then
							__FUNC_D5A3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D5A3_)
					end

					if arg1.interrupted then
						__FUNC_D428_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D428_)
				end

				if arg1.interrupted then
					__FUNC_D2D3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D2D3_)
			end

			if arg1.interrupted then
				__FUNC_D158_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_D158_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_D001_(registerVal15, {})
		local function __FUNC_D8AD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.removeButton:setAlpha(0.000000)
		__FUNC_D8AD_(registerVal22, {})
	end

	registerVal24.GainFocus = __FUNC_A510_
	local function __FUNC_DA61_()
		registerVal2:setupElementClipCounter(17.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cacNewTag0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
		registerVal22:completeAnimation()
		registerVal2.removeButton:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal22, {})
	end

	registerVal24.Focus = __FUNC_DA61_
	local function __FUNC_E10F_()
		registerVal2:setupElementClipCounter(8.000000)
		local function __FUNC_E448_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 170.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_E448_(registerVal6, {})
		local function __FUNC_E5FD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_E5FD_(registerVal9, {})
		local function __FUNC_E7B1_(arg0, arg1)
			local function __FUNC_E92B_(arg0, arg1)
				local function __FUNC_EAA3_(arg0, arg1)
					local function __FUNC_EC1B_(arg0, arg1)
						local function __FUNC_ED70_(arg0, arg1)
							local function __FUNC_EEEB_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_EEEB_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EEEB_)
						end

						if arg1.interrupted then
							__FUNC_ED70_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_ED70_)
					end

					if arg1.interrupted then
						__FUNC_EC1B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EC1B_)
				end

				if arg1.interrupted then
					__FUNC_EAA3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_EAA3_)
			end

			if arg1.interrupted then
				__FUNC_E92B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E92B_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_E7B1_(registerVal11, {})
		local function __FUNC_F09D_(arg0, arg1)
			local function __FUNC_F217_(arg0, arg1)
				local function __FUNC_F38F_(arg0, arg1)
					local function __FUNC_F507_(arg0, arg1)
						local function __FUNC_F65C_(arg0, arg1)
							local function __FUNC_F7D7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_F7D7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F7D7_)
						end

						if arg1.interrupted then
							__FUNC_F65C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F65C_)
					end

					if arg1.interrupted then
						__FUNC_F507_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F507_)
				end

				if arg1.interrupted then
					__FUNC_F38F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F38F_)
			end

			if arg1.interrupted then
				__FUNC_F217_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_F217_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_F09D_(registerVal12, {})
		local function __FUNC_F989_(arg0, arg1)
			local function __FUNC_FAE0_(arg0, arg1)
				local function __FUNC_FC5B_(arg0, arg1)
					local function __FUNC_FDD3_(arg0, arg1)
						local function __FUNC_FF4B_(arg0, arg1)
							local function __FUNC_100A0_(arg0, arg1)
								local function __FUNC_1021B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1021B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1021B_)
							end

							if arg1.interrupted then
								__FUNC_100A0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_100A0_)
						end

						if arg1.interrupted then
							__FUNC_FF4B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FF4B_)
					end

					if arg1.interrupted then
						__FUNC_FDD3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FDD3_)
				end

				if arg1.interrupted then
					__FUNC_FC5B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FC5B_)
			end

			if arg1.interrupted then
				__FUNC_FAE0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_FAE0_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_F989_(registerVal13, {})
		local function __FUNC_103CD_(arg0, arg1)
			local function __FUNC_10524_(arg0, arg1)
				local function __FUNC_1069F_(arg0, arg1)
					local function __FUNC_107F4_(arg0, arg1)
						local function __FUNC_1096F_(arg0, arg1)
							local function __FUNC_10AC4_(arg0, arg1)
								local function __FUNC_10C3F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_10C3F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10C3F_)
							end

							if arg1.interrupted then
								__FUNC_10AC4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10AC4_)
						end

						if arg1.interrupted then
							__FUNC_1096F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1096F_)
					end

					if arg1.interrupted then
						__FUNC_107F4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_107F4_)
				end

				if arg1.interrupted then
					__FUNC_1069F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1069F_)
			end

			if arg1.interrupted then
				__FUNC_10524_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10524_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_103CD_(registerVal14, {})
		local function __FUNC_10DF1_(arg0, arg1)
			local function __FUNC_10F48_(arg0, arg1)
				local function __FUNC_110C3_(arg0, arg1)
					local function __FUNC_11218_(arg0, arg1)
						local function __FUNC_11393_(arg0, arg1)
							local function __FUNC_114E8_(arg0, arg1)
								local function __FUNC_11663_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_11663_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11663_)
							end

							if arg1.interrupted then
								__FUNC_114E8_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_114E8_)
						end

						if arg1.interrupted then
							__FUNC_11393_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11393_)
					end

					if arg1.interrupted then
						__FUNC_11218_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_11218_)
				end

				if arg1.interrupted then
					__FUNC_110C3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_110C3_)
			end

			if arg1.interrupted then
				__FUNC_10F48_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_10F48_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_10DF1_(registerVal15, {})
		local function __FUNC_11815_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 119.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal22:completeAnimation()
		registerVal2.removeButton:setAlpha(1.000000)
		__FUNC_11815_(registerVal22, {})
	end

	registerVal24.LoseFocus = __FUNC_E10F_
	registerVal23.Equipped = registerVal24
	registerVal24 = {}
	local function __FUNC_119C9_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.DefaultClip = __FUNC_119C9_
	local function __FUNC_11FCA_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_122B3_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_122B3_(registerVal6, {})
		local function __FUNC_12465_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.800000)
		__FUNC_12465_(registerVal9, {})
		local function __FUNC_12619_(arg0, arg1)
			local function __FUNC_12770_(arg0, arg1)
				local function __FUNC_128EB_(arg0, arg1)
					local function __FUNC_12A40_(arg0, arg1)
						local function __FUNC_12BBB_(arg0, arg1)
							local function __FUNC_12D10_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_12D10_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12D10_)
						end

						if arg1.interrupted then
							__FUNC_12BBB_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12BBB_)
					end

					if arg1.interrupted then
						__FUNC_12A40_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12A40_)
				end

				if arg1.interrupted then
					__FUNC_128EB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_128EB_)
			end

			if arg1.interrupted then
				__FUNC_12770_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_12770_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_12619_(registerVal11, {})
		local function __FUNC_12EC5_(arg0, arg1)
			local function __FUNC_1301C_(arg0, arg1)
				local function __FUNC_13197_(arg0, arg1)
					local function __FUNC_132EC_(arg0, arg1)
						local function __FUNC_13467_(arg0, arg1)
							local function __FUNC_135BC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_135BC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_135BC_)
						end

						if arg1.interrupted then
							__FUNC_13467_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13467_)
					end

					if arg1.interrupted then
						__FUNC_132EC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_132EC_)
				end

				if arg1.interrupted then
					__FUNC_13197_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13197_)
			end

			if arg1.interrupted then
				__FUNC_1301C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1301C_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_12EC5_(registerVal12, {})
		local function __FUNC_13771_(arg0, arg1)
			local function __FUNC_138C8_(arg0, arg1)
				local function __FUNC_13A43_(arg0, arg1)
					local function __FUNC_13BBB_(arg0, arg1)
						local function __FUNC_13D33_(arg0, arg1)
							local function __FUNC_13E88_(arg0, arg1)
								local function __FUNC_14003_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_14003_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14003_)
							end

							if arg1.interrupted then
								__FUNC_13E88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13E88_)
						end

						if arg1.interrupted then
							__FUNC_13D33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13D33_)
					end

					if arg1.interrupted then
						__FUNC_13BBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13BBB_)
				end

				if arg1.interrupted then
					__FUNC_13A43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_13A43_)
			end

			if arg1.interrupted then
				__FUNC_138C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_138C8_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_13771_(registerVal13, {})
		local function __FUNC_141B5_(arg0, arg1)
			local function __FUNC_1430C_(arg0, arg1)
				local function __FUNC_14487_(arg0, arg1)
					local function __FUNC_145DC_(arg0, arg1)
						local function __FUNC_14757_(arg0, arg1)
							local function __FUNC_148AC_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_148AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_148AC_)
						end

						if arg1.interrupted then
							__FUNC_14757_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14757_)
					end

					if arg1.interrupted then
						__FUNC_145DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_145DC_)
				end

				if arg1.interrupted then
					__FUNC_14487_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14487_)
			end

			if arg1.interrupted then
				__FUNC_1430C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1430C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_141B5_(registerVal14, {})
		local function __FUNC_14A61_(arg0, arg1)
			local function __FUNC_14BB8_(arg0, arg1)
				local function __FUNC_14D33_(arg0, arg1)
					local function __FUNC_14E88_(arg0, arg1)
						local function __FUNC_15003_(arg0, arg1)
							local function __FUNC_15158_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_15158_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15158_)
						end

						if arg1.interrupted then
							__FUNC_15003_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_15003_)
					end

					if arg1.interrupted then
						__FUNC_14E88_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14E88_)
				end

				if arg1.interrupted then
					__FUNC_14D33_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14D33_)
			end

			if arg1.interrupted then
				__FUNC_14BB8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_14BB8_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_14A61_(registerVal15, {})
	end

	registerVal24.GainFocus = __FUNC_11FCA_
	local function __FUNC_1530D_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cacNewTag0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.Focus = __FUNC_1530D_
	local function __FUNC_15961_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_15C46_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_15C46_(registerVal6, {})
		local function __FUNC_15DF9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.800000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(1.000000)
		__FUNC_15DF9_(registerVal9, {})
		local function __FUNC_15FAD_(arg0, arg1)
			local function __FUNC_16127_(arg0, arg1)
				local function __FUNC_1629F_(arg0, arg1)
					local function __FUNC_16417_(arg0, arg1)
						local function __FUNC_1656C_(arg0, arg1)
							local function __FUNC_166E7_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_166E7_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_166E7_)
						end

						if arg1.interrupted then
							__FUNC_1656C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1656C_)
					end

					if arg1.interrupted then
						__FUNC_16417_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16417_)
				end

				if arg1.interrupted then
					__FUNC_1629F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1629F_)
			end

			if arg1.interrupted then
				__FUNC_16127_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16127_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_15FAD_(registerVal11, {})
		local function __FUNC_16899_(arg0, arg1)
			local function __FUNC_16A13_(arg0, arg1)
				local function __FUNC_16B8B_(arg0, arg1)
					local function __FUNC_16D03_(arg0, arg1)
						local function __FUNC_16E58_(arg0, arg1)
							local function __FUNC_16FD3_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_16FD3_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16FD3_)
						end

						if arg1.interrupted then
							__FUNC_16E58_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16E58_)
					end

					if arg1.interrupted then
						__FUNC_16D03_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16D03_)
				end

				if arg1.interrupted then
					__FUNC_16B8B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16B8B_)
			end

			if arg1.interrupted then
				__FUNC_16A13_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_16A13_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_16899_(registerVal12, {})
		local function __FUNC_17185_(arg0, arg1)
			local function __FUNC_172DC_(arg0, arg1)
				local function __FUNC_17457_(arg0, arg1)
					local function __FUNC_175CF_(arg0, arg1)
						local function __FUNC_17747_(arg0, arg1)
							local function __FUNC_1789C_(arg0, arg1)
								local function __FUNC_17A17_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_17A17_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17A17_)
							end

							if arg1.interrupted then
								__FUNC_1789C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1789C_)
						end

						if arg1.interrupted then
							__FUNC_17747_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17747_)
					end

					if arg1.interrupted then
						__FUNC_175CF_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_175CF_)
				end

				if arg1.interrupted then
					__FUNC_17457_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17457_)
			end

			if arg1.interrupted then
				__FUNC_172DC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_172DC_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_17185_(registerVal13, {})
		local function __FUNC_17BC9_(arg0, arg1)
			local function __FUNC_17D20_(arg0, arg1)
				local function __FUNC_17E9B_(arg0, arg1)
					local function __FUNC_17FF0_(arg0, arg1)
						local function __FUNC_1816B_(arg0, arg1)
							local function __FUNC_182C0_(arg0, arg1)
								local function __FUNC_1843B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1843B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1843B_)
							end

							if arg1.interrupted then
								__FUNC_182C0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_182C0_)
						end

						if arg1.interrupted then
							__FUNC_1816B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1816B_)
					end

					if arg1.interrupted then
						__FUNC_17FF0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17FF0_)
				end

				if arg1.interrupted then
					__FUNC_17E9B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17E9B_)
			end

			if arg1.interrupted then
				__FUNC_17D20_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_17D20_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_17BC9_(registerVal14, {})
		local function __FUNC_185ED_(arg0, arg1)
			local function __FUNC_18744_(arg0, arg1)
				local function __FUNC_188BF_(arg0, arg1)
					local function __FUNC_18A14_(arg0, arg1)
						local function __FUNC_18B8F_(arg0, arg1)
							local function __FUNC_18CE4_(arg0, arg1)
								local function __FUNC_18E5F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_18E5F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18E5F_)
							end

							if arg1.interrupted then
								__FUNC_18CE4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18CE4_)
						end

						if arg1.interrupted then
							__FUNC_18B8F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18B8F_)
					end

					if arg1.interrupted then
						__FUNC_18A14_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18A14_)
				end

				if arg1.interrupted then
					__FUNC_188BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_188BF_)
			end

			if arg1.interrupted then
				__FUNC_18744_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_18744_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_185ED_(registerVal15, {})
	end

	registerVal24.LoseFocus = __FUNC_15961_
	registerVal23.WeaponEquipped = registerVal24
	registerVal24 = {}
	local function __FUNC_19011_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.DefaultClip = __FUNC_19011_
	local function __FUNC_1960D_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_198F1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_198F1_(registerVal6, {})
		local function __FUNC_19AA5_(arg0, arg1)
			local function __FUNC_19BFC_(arg0, arg1)
				local function __FUNC_19D77_(arg0, arg1)
					local function __FUNC_19ECC_(arg0, arg1)
						local function __FUNC_1A047_(arg0, arg1)
							local function __FUNC_1A19C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1A19C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A19C_)
						end

						if arg1.interrupted then
							__FUNC_1A047_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A047_)
					end

					if arg1.interrupted then
						__FUNC_19ECC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19ECC_)
				end

				if arg1.interrupted then
					__FUNC_19D77_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19D77_)
			end

			if arg1.interrupted then
				__FUNC_19BFC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_19BFC_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_19AA5_(registerVal11, {})
		local function __FUNC_1A351_(arg0, arg1)
			local function __FUNC_1A4A8_(arg0, arg1)
				local function __FUNC_1A623_(arg0, arg1)
					local function __FUNC_1A778_(arg0, arg1)
						local function __FUNC_1A8F3_(arg0, arg1)
							local function __FUNC_1AA48_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1AA48_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AA48_)
						end

						if arg1.interrupted then
							__FUNC_1A8F3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A8F3_)
					end

					if arg1.interrupted then
						__FUNC_1A778_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A778_)
				end

				if arg1.interrupted then
					__FUNC_1A623_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A623_)
			end

			if arg1.interrupted then
				__FUNC_1A4A8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A4A8_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_1A351_(registerVal12, {})
		local function __FUNC_1ABFD_(arg0, arg1)
			local function __FUNC_1AD54_(arg0, arg1)
				local function __FUNC_1AECF_(arg0, arg1)
					local function __FUNC_1B047_(arg0, arg1)
						local function __FUNC_1B1BF_(arg0, arg1)
							local function __FUNC_1B314_(arg0, arg1)
								local function __FUNC_1B48F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1B48F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B48F_)
							end

							if arg1.interrupted then
								__FUNC_1B314_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B314_)
						end

						if arg1.interrupted then
							__FUNC_1B1BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B1BF_)
					end

					if arg1.interrupted then
						__FUNC_1B047_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B047_)
				end

				if arg1.interrupted then
					__FUNC_1AECF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AECF_)
			end

			if arg1.interrupted then
				__FUNC_1AD54_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1AD54_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1ABFD_(registerVal13, {})
		local function __FUNC_1B641_(arg0, arg1)
			local function __FUNC_1B798_(arg0, arg1)
				local function __FUNC_1B913_(arg0, arg1)
					local function __FUNC_1BA68_(arg0, arg1)
						local function __FUNC_1BBE3_(arg0, arg1)
							local function __FUNC_1BD38_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1BD38_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BD38_)
						end

						if arg1.interrupted then
							__FUNC_1BBE3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BBE3_)
					end

					if arg1.interrupted then
						__FUNC_1BA68_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1BA68_)
				end

				if arg1.interrupted then
					__FUNC_1B913_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B913_)
			end

			if arg1.interrupted then
				__FUNC_1B798_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B798_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_1B641_(registerVal14, {})
		local function __FUNC_1BEED_(arg0, arg1)
			local function __FUNC_1C044_(arg0, arg1)
				local function __FUNC_1C1BF_(arg0, arg1)
					local function __FUNC_1C314_(arg0, arg1)
						local function __FUNC_1C48F_(arg0, arg1)
							local function __FUNC_1C5E4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1C5E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C5E4_)
						end

						if arg1.interrupted then
							__FUNC_1C48F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C48F_)
					end

					if arg1.interrupted then
						__FUNC_1C314_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C314_)
				end

				if arg1.interrupted then
					__FUNC_1C1BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C1BF_)
			end

			if arg1.interrupted then
				__FUNC_1C044_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1C044_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_1BEED_(registerVal15, {})
		local function __FUNC_1C799_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		__FUNC_1C799_(registerVal18, {})
	end

	registerVal24.GainFocus = __FUNC_1960D_
	local function __FUNC_1C94D_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cacNewTag0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_1CF9E_(arg0, arg1)
			local function __FUNC_1D0F4_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1D0F4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D0F4_)
		end

		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.900000)
		__FUNC_1CF9E_(registerVal16, {})
		local function __FUNC_1D2A9_(arg0, arg1)
			local function __FUNC_1D400_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 259.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_1D400_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1299.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1D400_)
		end

		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.900000)
		__FUNC_1D2A9_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.Focus = __FUNC_1C94D_
	local function __FUNC_1D5B5_()
		registerVal2:setupElementClipCounter(7.000000)
		local function __FUNC_1D899_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 129.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_1D899_(registerVal6, {})
		local function __FUNC_1DA4D_(arg0, arg1)
			local function __FUNC_1DBC7_(arg0, arg1)
				local function __FUNC_1DD3F_(arg0, arg1)
					local function __FUNC_1DEB7_(arg0, arg1)
						local function __FUNC_1E00C_(arg0, arg1)
							local function __FUNC_1E187_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1E187_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E187_)
						end

						if arg1.interrupted then
							__FUNC_1E00C_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E00C_)
					end

					if arg1.interrupted then
						__FUNC_1DEB7_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DEB7_)
				end

				if arg1.interrupted then
					__FUNC_1DD3F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DD3F_)
			end

			if arg1.interrupted then
				__FUNC_1DBC7_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1DBC7_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_1DA4D_(registerVal11, {})
		local function __FUNC_1E339_(arg0, arg1)
			local function __FUNC_1E4B3_(arg0, arg1)
				local function __FUNC_1E62B_(arg0, arg1)
					local function __FUNC_1E7A3_(arg0, arg1)
						local function __FUNC_1E8F8_(arg0, arg1)
							local function __FUNC_1EA73_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_1EA73_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EA73_)
						end

						if arg1.interrupted then
							__FUNC_1E8F8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E8F8_)
					end

					if arg1.interrupted then
						__FUNC_1E7A3_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E7A3_)
				end

				if arg1.interrupted then
					__FUNC_1E62B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E62B_)
			end

			if arg1.interrupted then
				__FUNC_1E4B3_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E4B3_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_1E339_(registerVal12, {})
		local function __FUNC_1EC25_(arg0, arg1)
			local function __FUNC_1ED7C_(arg0, arg1)
				local function __FUNC_1EEF7_(arg0, arg1)
					local function __FUNC_1F06F_(arg0, arg1)
						local function __FUNC_1F1E7_(arg0, arg1)
							local function __FUNC_1F33C_(arg0, arg1)
								local function __FUNC_1F4B7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1F4B7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F4B7_)
							end

							if arg1.interrupted then
								__FUNC_1F33C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F33C_)
						end

						if arg1.interrupted then
							__FUNC_1F1E7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F1E7_)
					end

					if arg1.interrupted then
						__FUNC_1F06F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F06F_)
				end

				if arg1.interrupted then
					__FUNC_1EEF7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1EEF7_)
			end

			if arg1.interrupted then
				__FUNC_1ED7C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1ED7C_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_1EC25_(registerVal13, {})
		local function __FUNC_1F669_(arg0, arg1)
			local function __FUNC_1F7C0_(arg0, arg1)
				local function __FUNC_1F93B_(arg0, arg1)
					local function __FUNC_1FA90_(arg0, arg1)
						local function __FUNC_1FC0B_(arg0, arg1)
							local function __FUNC_1FD60_(arg0, arg1)
								local function __FUNC_1FEDB_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_1FEDB_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FEDB_)
							end

							if arg1.interrupted then
								__FUNC_1FD60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FD60_)
						end

						if arg1.interrupted then
							__FUNC_1FC0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FC0B_)
					end

					if arg1.interrupted then
						__FUNC_1FA90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1FA90_)
				end

				if arg1.interrupted then
					__FUNC_1F93B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F93B_)
			end

			if arg1.interrupted then
				__FUNC_1F7C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7C0_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_1F669_(registerVal14, {})
		local function __FUNC_2008D_(arg0, arg1)
			local function __FUNC_201E4_(arg0, arg1)
				local function __FUNC_2035F_(arg0, arg1)
					local function __FUNC_204B4_(arg0, arg1)
						local function __FUNC_2062F_(arg0, arg1)
							local function __FUNC_20784_(arg0, arg1)
								local function __FUNC_208FF_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_208FF_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_208FF_)
							end

							if arg1.interrupted then
								__FUNC_20784_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20784_)
						end

						if arg1.interrupted then
							__FUNC_2062F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2062F_)
					end

					if arg1.interrupted then
						__FUNC_204B4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_204B4_)
				end

				if arg1.interrupted then
					__FUNC_2035F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2035F_)
			end

			if arg1.interrupted then
				__FUNC_201E4_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_201E4_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2008D_(registerVal15, {})
		local function __FUNC_20AB1_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(1.000000)
		__FUNC_20AB1_(registerVal18, {})
	end

	registerVal24.LoseFocus = __FUNC_1D5B5_
	registerVal23.Available = registerVal24
	registerVal24 = {}
	local function __FUNC_20C65_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.DefaultClip = __FUNC_20C65_
	local function __FUNC_21261_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_21495_(arg0, arg1)
			local function __FUNC_215EC_(arg0, arg1)
				local function __FUNC_21767_(arg0, arg1)
					local function __FUNC_218BC_(arg0, arg1)
						local function __FUNC_21A37_(arg0, arg1)
							local function __FUNC_21B8C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_21B8C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21B8C_)
						end

						if arg1.interrupted then
							__FUNC_21A37_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21A37_)
					end

					if arg1.interrupted then
						__FUNC_218BC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_218BC_)
				end

				if arg1.interrupted then
					__FUNC_21767_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21767_)
			end

			if arg1.interrupted then
				__FUNC_215EC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_215EC_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_21495_(registerVal11, {})
		local function __FUNC_21D41_(arg0, arg1)
			local function __FUNC_21E98_(arg0, arg1)
				local function __FUNC_22013_(arg0, arg1)
					local function __FUNC_22168_(arg0, arg1)
						local function __FUNC_222E3_(arg0, arg1)
							local function __FUNC_22438_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_22438_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22438_)
						end

						if arg1.interrupted then
							__FUNC_222E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_222E3_)
					end

					if arg1.interrupted then
						__FUNC_22168_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22168_)
				end

				if arg1.interrupted then
					__FUNC_22013_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22013_)
			end

			if arg1.interrupted then
				__FUNC_21E98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_21E98_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_21D41_(registerVal12, {})
		local function __FUNC_225ED_(arg0, arg1)
			local function __FUNC_22744_(arg0, arg1)
				local function __FUNC_228BF_(arg0, arg1)
					local function __FUNC_22A37_(arg0, arg1)
						local function __FUNC_22BAF_(arg0, arg1)
							local function __FUNC_22D04_(arg0, arg1)
								local function __FUNC_22E7F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_22E7F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22E7F_)
							end

							if arg1.interrupted then
								__FUNC_22D04_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22D04_)
						end

						if arg1.interrupted then
							__FUNC_22BAF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22BAF_)
					end

					if arg1.interrupted then
						__FUNC_22A37_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22A37_)
				end

				if arg1.interrupted then
					__FUNC_228BF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_228BF_)
			end

			if arg1.interrupted then
				__FUNC_22744_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_22744_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_225ED_(registerVal13, {})
		local function __FUNC_23031_(arg0, arg1)
			local function __FUNC_23188_(arg0, arg1)
				local function __FUNC_23303_(arg0, arg1)
					local function __FUNC_23458_(arg0, arg1)
						local function __FUNC_235D3_(arg0, arg1)
							local function __FUNC_23728_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_23728_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23728_)
						end

						if arg1.interrupted then
							__FUNC_235D3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_235D3_)
					end

					if arg1.interrupted then
						__FUNC_23458_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23458_)
				end

				if arg1.interrupted then
					__FUNC_23303_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23303_)
			end

			if arg1.interrupted then
				__FUNC_23188_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23188_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_23031_(registerVal14, {})
		local function __FUNC_238DD_(arg0, arg1)
			local function __FUNC_23A34_(arg0, arg1)
				local function __FUNC_23BAF_(arg0, arg1)
					local function __FUNC_23D04_(arg0, arg1)
						local function __FUNC_23E7F_(arg0, arg1)
							local function __FUNC_23FD4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_23FD4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23FD4_)
						end

						if arg1.interrupted then
							__FUNC_23E7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23E7F_)
					end

					if arg1.interrupted then
						__FUNC_23D04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23D04_)
				end

				if arg1.interrupted then
					__FUNC_23BAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23BAF_)
			end

			if arg1.interrupted then
				__FUNC_23A34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23A34_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_238DD_(registerVal15, {})
	end

	registerVal24.GainFocus = __FUNC_21261_
	local function __FUNC_24189_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cacNewTag0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_247DA_(arg0, arg1)
			local function __FUNC_24930_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_24930_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24930_)
		end

		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.900000)
		__FUNC_247DA_(registerVal16, {})
		local function __FUNC_24AE5_(arg0, arg1)
			local function __FUNC_24C3C_(arg0, arg1)
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

			if arg1.interrupted then
				__FUNC_24C3C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_24C3C_)
		end

		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.900000)
		__FUNC_24AE5_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.Focus = __FUNC_24189_
	local function __FUNC_24DF1_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_25025_(arg0, arg1)
			local function __FUNC_2519F_(arg0, arg1)
				local function __FUNC_25317_(arg0, arg1)
					local function __FUNC_2548F_(arg0, arg1)
						local function __FUNC_255E4_(arg0, arg1)
							local function __FUNC_2575F_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2575F_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2575F_)
						end

						if arg1.interrupted then
							__FUNC_255E4_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_255E4_)
					end

					if arg1.interrupted then
						__FUNC_2548F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.570000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2548F_)
				end

				if arg1.interrupted then
					__FUNC_25317_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25317_)
			end

			if arg1.interrupted then
				__FUNC_2519F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2519F_)
		end

		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_25025_(registerVal11, {})
		local function __FUNC_25911_(arg0, arg1)
			local function __FUNC_25A8B_(arg0, arg1)
				local function __FUNC_25C03_(arg0, arg1)
					local function __FUNC_25D7B_(arg0, arg1)
						local function __FUNC_25ED0_(arg0, arg1)
							local function __FUNC_2604B_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2604B_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.210000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2604B_)
						end

						if arg1.interrupted then
							__FUNC_25ED0_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25ED0_)
					end

					if arg1.interrupted then
						__FUNC_25D7B_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25D7B_)
				end

				if arg1.interrupted then
					__FUNC_25C03_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25C03_)
			end

			if arg1.interrupted then
				__FUNC_25A8B_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_25A8B_)
		end

		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_25911_(registerVal12, {})
		local function __FUNC_261FD_(arg0, arg1)
			local function __FUNC_26354_(arg0, arg1)
				local function __FUNC_264CF_(arg0, arg1)
					local function __FUNC_26647_(arg0, arg1)
						local function __FUNC_267BF_(arg0, arg1)
							local function __FUNC_26914_(arg0, arg1)
								local function __FUNC_26A8F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_26A8F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26A8F_)
							end

							if arg1.interrupted then
								__FUNC_26914_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26914_)
						end

						if arg1.interrupted then
							__FUNC_267BF_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_267BF_)
					end

					if arg1.interrupted then
						__FUNC_26647_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26647_)
				end

				if arg1.interrupted then
					__FUNC_264CF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_264CF_)
			end

			if arg1.interrupted then
				__FUNC_26354_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26354_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_261FD_(registerVal13, {})
		local function __FUNC_26C41_(arg0, arg1)
			local function __FUNC_26D98_(arg0, arg1)
				local function __FUNC_26F13_(arg0, arg1)
					local function __FUNC_27068_(arg0, arg1)
						local function __FUNC_271E3_(arg0, arg1)
							local function __FUNC_27338_(arg0, arg1)
								local function __FUNC_274B3_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_274B3_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_274B3_)
							end

							if arg1.interrupted then
								__FUNC_27338_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27338_)
						end

						if arg1.interrupted then
							__FUNC_271E3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_271E3_)
					end

					if arg1.interrupted then
						__FUNC_27068_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27068_)
				end

				if arg1.interrupted then
					__FUNC_26F13_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26F13_)
			end

			if arg1.interrupted then
				__FUNC_26D98_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26D98_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_26C41_(registerVal14, {})
		local function __FUNC_27665_(arg0, arg1)
			local function __FUNC_277BC_(arg0, arg1)
				local function __FUNC_27937_(arg0, arg1)
					local function __FUNC_27A8C_(arg0, arg1)
						local function __FUNC_27C07_(arg0, arg1)
							local function __FUNC_27D5C_(arg0, arg1)
								local function __FUNC_27ED7_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_27ED7_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27ED7_)
							end

							if arg1.interrupted then
								__FUNC_27D5C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27D5C_)
						end

						if arg1.interrupted then
							__FUNC_27C07_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27C07_)
					end

					if arg1.interrupted then
						__FUNC_27A8C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27A8C_)
				end

				if arg1.interrupted then
					__FUNC_27937_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_27937_)
			end

			if arg1.interrupted then
				__FUNC_277BC_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_277BC_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_27665_(registerVal15, {})
	end

	registerVal24.LoseFocus = __FUNC_24DF1_
	registerVal23.NotEquippable = registerVal24
	registerVal24 = {}
	local function __FUNC_28089_()
		registerVal2:setupElementClipCounter(15.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.DefaultClip = __FUNC_28089_
	local function __FUNC_2868A_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_28919_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 109.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.400000)
		__FUNC_28919_(registerVal9, {})
		local function __FUNC_28ACD_(arg0, arg1)
			local function __FUNC_28C24_(arg0, arg1)
				local function __FUNC_28D9F_(arg0, arg1)
					local function __FUNC_28F17_(arg0, arg1)
						local function __FUNC_2908F_(arg0, arg1)
							local function __FUNC_291E4_(arg0, arg1)
								local function __FUNC_2935F_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2935F_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2935F_)
							end

							if arg1.interrupted then
								__FUNC_291E4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_291E4_)
						end

						if arg1.interrupted then
							__FUNC_2908F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2908F_)
					end

					if arg1.interrupted then
						__FUNC_28F17_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28F17_)
				end

				if arg1.interrupted then
					__FUNC_28D9F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28D9F_)
			end

			if arg1.interrupted then
				__FUNC_28C24_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_28C24_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_28ACD_(registerVal13, {})
		local function __FUNC_29511_(arg0, arg1)
			local function __FUNC_29668_(arg0, arg1)
				local function __FUNC_297E3_(arg0, arg1)
					local function __FUNC_29938_(arg0, arg1)
						local function __FUNC_29AB3_(arg0, arg1)
							local function __FUNC_29C08_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_29C08_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29C08_)
						end

						if arg1.interrupted then
							__FUNC_29AB3_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29AB3_)
					end

					if arg1.interrupted then
						__FUNC_29938_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29938_)
				end

				if arg1.interrupted then
					__FUNC_297E3_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_297E3_)
			end

			if arg1.interrupted then
				__FUNC_29668_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29668_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		__FUNC_29511_(registerVal14, {})
		local function __FUNC_29DBD_(arg0, arg1)
			local function __FUNC_29F14_(arg0, arg1)
				local function __FUNC_2A08F_(arg0, arg1)
					local function __FUNC_2A1E4_(arg0, arg1)
						local function __FUNC_2A35F_(arg0, arg1)
							local function __FUNC_2A4B4_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2A4B4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A4B4_)
						end

						if arg1.interrupted then
							__FUNC_2A35F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A35F_)
					end

					if arg1.interrupted then
						__FUNC_2A1E4_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A1E4_)
				end

				if arg1.interrupted then
					__FUNC_2A08F_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A08F_)
			end

			if arg1.interrupted then
				__FUNC_29F14_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29F14_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_29DBD_(registerVal15, {})
		local function __FUNC_2A669_(arg0, arg1)
			local function __FUNC_2A7C0_(arg0, arg1)
				local function __FUNC_2A93B_(arg0, arg1)
					local function __FUNC_2AA90_(arg0, arg1)
						local function __FUNC_2AC0B_(arg0, arg1)
							local function __FUNC_2AD60_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2AD60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AD60_)
						end

						if arg1.interrupted then
							__FUNC_2AC0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AC0B_)
					end

					if arg1.interrupted then
						__FUNC_2AA90_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2AA90_)
				end

				if arg1.interrupted then
					__FUNC_2A93B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A93B_)
			end

			if arg1.interrupted then
				__FUNC_2A7C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2A7C0_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(0.000000)
		__FUNC_2A669_(registerVal19, {})
		local function __FUNC_2AF15_(arg0, arg1)
			local function __FUNC_2B06C_(arg0, arg1)
				local function __FUNC_2B1E7_(arg0, arg1)
					local function __FUNC_2B33C_(arg0, arg1)
						local function __FUNC_2B4B7_(arg0, arg1)
							local function __FUNC_2B60C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(1.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2B60C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B60C_)
						end

						if arg1.interrupted then
							__FUNC_2B4B7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B4B7_)
					end

					if arg1.interrupted then
						__FUNC_2B33C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B33C_)
				end

				if arg1.interrupted then
					__FUNC_2B1E7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.560000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B1E7_)
			end

			if arg1.interrupted then
				__FUNC_2B06C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B06C_)
		end

		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(0.000000)
		__FUNC_2AF15_(registerVal20, {})
	end

	registerVal24.GainFocus = __FUNC_2868A_
	local function __FUNC_2B7C1_()
		registerVal2:setupElementClipCounter(16.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cacNewTag0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		local function __FUNC_2BE17_(arg0, arg1)
			local function __FUNC_2BF6C_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2BF6C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2BF6C_)
		end

		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.900000)
		__FUNC_2BE17_(registerVal16, {})
		local function __FUNC_2C121_(arg0, arg1)
			local function __FUNC_2C278_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 330.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_2C278_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 1279.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C278_)
		end

		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.900000)
		__FUNC_2C121_(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal19, {})
		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal20, {})
	end

	registerVal24.Focus = __FUNC_2B7C1_
	local function __FUNC_2C42D_()
		registerVal2:setupElementClipCounter(6.000000)
		local function __FUNC_2C6BD_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 150.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.400000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.600000)
		__FUNC_2C6BD_(registerVal9, {})
		local function __FUNC_2C871_(arg0, arg1)
			local function __FUNC_2C9C8_(arg0, arg1)
				local function __FUNC_2CB43_(arg0, arg1)
					local function __FUNC_2CCBB_(arg0, arg1)
						local function __FUNC_2CE33_(arg0, arg1)
							local function __FUNC_2CF88_(arg0, arg1)
								local function __FUNC_2D103_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 230.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2D103_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.700000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D103_)
							end

							if arg1.interrupted then
								__FUNC_2CF88_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CF88_)
						end

						if arg1.interrupted then
							__FUNC_2CE33_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CE33_)
					end

					if arg1.interrupted then
						__FUNC_2CCBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.500000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CCBB_)
				end

				if arg1.interrupted then
					__FUNC_2CB43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2CB43_)
			end

			if arg1.interrupted then
				__FUNC_2C9C8_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C9C8_)
		end

		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		__FUNC_2C871_(registerVal13, {})
		local function __FUNC_2D2B5_(arg0, arg1)
			local function __FUNC_2D40C_(arg0, arg1)
				local function __FUNC_2D587_(arg0, arg1)
					local function __FUNC_2D6DC_(arg0, arg1)
						local function __FUNC_2D857_(arg0, arg1)
							local function __FUNC_2D9AC_(arg0, arg1)
								local function __FUNC_2DB27_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2DB27_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.400000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DB27_)
							end

							if arg1.interrupted then
								__FUNC_2D9AC_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D9AC_)
						end

						if arg1.interrupted then
							__FUNC_2D857_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D857_)
					end

					if arg1.interrupted then
						__FUNC_2D6DC_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D6DC_)
				end

				if arg1.interrupted then
					__FUNC_2D587_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D587_)
			end

			if arg1.interrupted then
				__FUNC_2D40C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2D40C_)
		end

		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_2D2B5_(registerVal14, {})
		local function __FUNC_2DCD9_(arg0, arg1)
			local function __FUNC_2DE30_(arg0, arg1)
				local function __FUNC_2DFAB_(arg0, arg1)
					local function __FUNC_2E100_(arg0, arg1)
						local function __FUNC_2E27B_(arg0, arg1)
							local function __FUNC_2E3D0_(arg0, arg1)
								local function __FUNC_2E54B_(arg0, arg1)
									if not arg1.interrupted then
										arg0:beginAnimation("keyframe", 80.000000, false, false, CoD.TweenType.Linear)
									end
									arg0:setAlpha(0.000000)
									if arg1.interrupted then
										registerVal2.clipFinished(arg0, arg1)
									else
										arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
									end
								end

								if arg1.interrupted then
									__FUNC_2E54B_(arg0, arg1)
									return 
								end
								arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
								arg0:setAlpha(0.570000)
								arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E54B_)
							end

							if arg1.interrupted then
								__FUNC_2E3D0_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E3D0_)
						end

						if arg1.interrupted then
							__FUNC_2E27B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E27B_)
					end

					if arg1.interrupted then
						__FUNC_2E100_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E100_)
				end

				if arg1.interrupted then
					__FUNC_2DFAB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(1.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DFAB_)
			end

			if arg1.interrupted then
				__FUNC_2DE30_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2DE30_)
		end

		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_2DCD9_(registerVal15, {})
		local function __FUNC_2E6FD_(arg0, arg1)
			local function __FUNC_2E877_(arg0, arg1)
				local function __FUNC_2E9EF_(arg0, arg1)
					local function __FUNC_2EB67_(arg0, arg1)
						local function __FUNC_2ECBC_(arg0, arg1)
							local function __FUNC_2EE37_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2EE37_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EE37_)
						end

						if arg1.interrupted then
							__FUNC_2ECBC_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2ECBC_)
					end

					if arg1.interrupted then
						__FUNC_2EB67_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2EB67_)
				end

				if arg1.interrupted then
					__FUNC_2E9EF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E9EF_)
			end

			if arg1.interrupted then
				__FUNC_2E877_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E877_)
		end

		registerVal19:completeAnimation()
		registerVal2.FocusWhiteT:setAlpha(1.000000)
		__FUNC_2E6FD_(registerVal19, {})
		local function __FUNC_2EFE9_(arg0, arg1)
			local function __FUNC_2F163_(arg0, arg1)
				local function __FUNC_2F2DB_(arg0, arg1)
					local function __FUNC_2F453_(arg0, arg1)
						local function __FUNC_2F5A8_(arg0, arg1)
							local function __FUNC_2F723_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_2F723_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
							arg0:setAlpha(0.350000)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F723_)
						end

						if arg1.interrupted then
							__FUNC_2F5A8_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F5A8_)
					end

					if arg1.interrupted then
						__FUNC_2F453_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.660000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F453_)
				end

				if arg1.interrupted then
					__FUNC_2F2DB_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F2DB_)
			end

			if arg1.interrupted then
				__FUNC_2F163_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F163_)
		end

		registerVal20:completeAnimation()
		registerVal2.FocusWhiteB:setAlpha(1.000000)
		__FUNC_2EFE9_(registerVal20, {})
	end

	registerVal24.LoseFocus = __FUNC_2C42D_
	registerVal23.NotAvailable = registerVal24
	registerVal24 = {}
	local function __FUNC_2F8D5_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.BoxButtonLrgInactiveStroke:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal9:completeAnimation()
		registerVal2.itemImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.cacNewTag0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.FocusBorder:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.itemHintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
		registerVal17:completeAnimation()
		registerVal2.hintArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal17, {})
		registerVal18:completeAnimation()
		registerVal2.plusIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal18, {})
	end

	registerVal24.DefaultClip = __FUNC_2F8D5_
	registerVal23.NotVisible = registerVal24
	registerVal2.clipsPerState = registerVal23
	registerVal25 = {}
	local registerVal26 = {}
	registerVal26.stateName = "Equipped"
	local function __FUNC_2FE72_(arg0, arg2, arg3)
		return IsCACSlotEquipped(arg0, arg2, arg1)
	end

	registerVal26.condition = __FUNC_2FE72_
	local registerVal27 = {}
	registerVal27.stateName = "WeaponEquipped"
	local function __FUNC_2FECF_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal27.condition = __FUNC_2FECF_
	local registerVal28 = {}
	registerVal28.stateName = "Available"
	local function __FUNC_2FF19_(arg0, arg2, arg3)
		return IsCACSlotAvailable(arg0, arg2, arg1)
	end

	registerVal28.condition = __FUNC_2FF19_
	local registerVal29 = {}
	registerVal29.stateName = "NotEquippable"
	local function __FUNC_2FF78_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotEquipped(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal29.condition = __FUNC_2FF78_
	local registerVal30 = {}
	registerVal30.stateName = "NotAvailable"
	local function __FUNC_2FFDB_(arg0, arg2, arg3)
		local registerVal3 = IsCACSlotAvailable(arg0, arg2, arg1)
		return (not registerVal3)
	end

	registerVal30.condition = __FUNC_2FFDB_
	local registerVal31 = {}
	registerVal31.stateName = "NotVisible"
	local function __FUNC_3003C_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal31.condition = __FUNC_3003C_
	registerVal25 = {registerVal26, registerVal27, registerVal28, registerVal29, registerVal30, registerVal31}
	registerVal2:mergeStateConditions(registerVal25)
	local function __FUNC_30089_(arg0)
		arg0.BoxButtonLrgInactiveStroke:close()
		arg0.cacNewTag0:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.FocusBorder:close()
		arg0.itemHintText:close()
		arg0.hintArrow:close()
		arg0.plusIcon:close()
		arg0.FocusWhiteT:close()
		arg0.FocusWhiteB:close()
		arg0.RestrictedItemWarning:close()
		arg0.removeButton:close()
		arg0.itemImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_30089_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.WeaponItemModelWidgetWildcard.new = __FUNC_597_
