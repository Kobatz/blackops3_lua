-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsCreateButton = registerVal1
function CoD.GroupsCreateButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsCreateButton)
	registerVal2.id = "GroupsCreateButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -26.180000, -10.180000)
	registerVal5:setTopBottom(false, false, 0.000000, 7.920000)
	registerVal5:setRGB(0.550000, 0.770000, 0.250000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_cac_equipped_16"))
	registerVal2:addElement(registerVal5)
	registerVal2.SelectedIcon = registerVal5
	local registerVal6 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal6:setTopBottom(true, false, -4.000000, 0.000000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setZoom(1.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.FocusBarT = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal7:setTopBottom(false, true, 0.000000, 4.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarB = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -12.000000, 7.000000)
	registerVal8:setTopBottom(true, false, -8.750000, 4.750000)
	registerVal8:setRGB(1.000000, 0.090000, 0.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.glitch = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -8.500000, 8.500000)
	registerVal9:setTopBottom(false, true, -6.000000, 9.000000)
	registerVal9:setRGB(1.000000, 0.150000, 0.000000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_effect_glitches_menu10"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.glitch2 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 12.000000, 51.500000)
	registerVal10:setTopBottom(true, false, 10.750000, 50.250000)
	registerVal10:setImage(RegisterImage("uie_t7_icon_menu_simple_groups_create"))
	registerVal2:addElement(registerVal10)
	registerVal2.Icon = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 63.000000, 67.000000)
	registerVal11:setTopBottom(false, false, -30.000000, 30.500000)
	registerVal11:setAlpha(0.300000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.itemImageLine = registerVal11
	local registerVal12 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 73.000000, 360.000000)
	registerVal12:setTopBottom(false, false, -9.500000, 10.500000)
	registerVal12.itemName:setText(Engine.Localize("GROUPS_CREATE_GROUP_CAPS"))
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "HasNew"
	local function __FUNC_108C_(arg0, arg2, arg3)
		return IsCACAnyCamoNew(registerVal2, arg1)
	end

	registerVal16.condition = __FUNC_108C_
	registerVal15 = {registerVal16}
	registerVal12:mergeStateConditions(registerVal15)
	registerVal2:addElement(registerVal12)
	registerVal2.LabelButton = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_10E5_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarT:setTopBottom(true, false, -4.000000, 0.000000)
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB:setLeftRight(true, true, -2.000000, 2.000000)
		registerVal2.FocusBarB:setTopBottom(false, true, 0.000000, 4.000000)
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.glitch:setLeftRight(true, true, -12.000000, 7.000000)
		registerVal2.glitch:setTopBottom(true, false, -8.750000, 4.750000)
		registerVal2.glitch:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.glitch2:setLeftRight(true, true, -8.500000, 8.500000)
		registerVal2.glitch2:setTopBottom(false, true, -6.000000, 9.000000)
		registerVal2.glitch2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal14.DefaultClip = __FUNC_10E5_
	local function __FUNC_1552_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_1828_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 90.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(0.000000)
		__FUNC_1828_(registerVal3, {})
		local function __FUNC_19DD_(arg0, arg1)
			local function __FUNC_1B34_(arg0, arg1)
				local function __FUNC_1CAF_(arg0, arg1)
					local function __FUNC_1E04_(arg0, arg1)
						local function __FUNC_1F7F_(arg0, arg1)
							local function __FUNC_20D4_(arg0, arg1)
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
								__FUNC_20D4_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_20D4_)
						end

						if arg1.interrupted then
							__FUNC_1F7F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.350000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1F7F_)
					end

					if arg1.interrupted then
						__FUNC_1E04_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1E04_)
				end

				if arg1.interrupted then
					__FUNC_1CAF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1CAF_)
			end

			if arg1.interrupted then
				__FUNC_1B34_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B34_)
		end

		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_19DD_(registerVal6, {})
		local function __FUNC_2289_(arg0, arg1)
			local function __FUNC_23E0_(arg0, arg1)
				local function __FUNC_255B_(arg0, arg1)
					local function __FUNC_26B0_(arg0, arg1)
						local function __FUNC_282B_(arg0, arg1)
							local function __FUNC_2980_(arg0, arg1)
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
								__FUNC_2980_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2980_)
						end

						if arg1.interrupted then
							__FUNC_282B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.210000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_282B_)
					end

					if arg1.interrupted then
						__FUNC_26B0_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_26B0_)
				end

				if arg1.interrupted then
					__FUNC_255B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_255B_)
			end

			if arg1.interrupted then
				__FUNC_23E0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_23E0_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_2289_(registerVal7, {})
		local function __FUNC_2B35_(arg0, arg1)
			local function __FUNC_2C8C_(arg0, arg1)
				local function __FUNC_2E07_(arg0, arg1)
					local function __FUNC_2F5C_(arg0, arg1)
						local function __FUNC_30D7_(arg0, arg1)
							local function __FUNC_322C_(arg0, arg1)
								if not arg1.interrupted then
									arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
								end
								arg0:setAlpha(0.000000)
								arg0:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
								if arg1.interrupted then
									registerVal2.clipFinished(arg0, arg1)
								else
									arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
								end
							end

							if arg1.interrupted then
								__FUNC_322C_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_322C_)
						end

						if arg1.interrupted then
							__FUNC_30D7_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_30D7_)
					end

					if arg1.interrupted then
						__FUNC_2F5C_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2F5C_)
				end

				if arg1.interrupted then
					__FUNC_2E07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2E07_)
			end

			if arg1.interrupted then
				__FUNC_2C8C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2C8C_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(1.000000)
		registerVal2.glitch:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
		__FUNC_2B35_(registerVal8, {})
		local function __FUNC_346B_(arg0, arg1)
			local function __FUNC_35C0_(arg0, arg1)
				local function __FUNC_373B_(arg0, arg1)
					local function __FUNC_3890_(arg0, arg1)
						local function __FUNC_3A0B_(arg0, arg1)
							local function __FUNC_3B60_(arg0, arg1)
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
								__FUNC_3B60_(arg0, arg1)
								return 
							end
							arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
							arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3B60_)
						end

						if arg1.interrupted then
							__FUNC_3A0B_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(1.000000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3A0B_)
					end

					if arg1.interrupted then
						__FUNC_3890_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 20.000000, false, false, CoD.TweenType.Linear)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_3890_)
				end

				if arg1.interrupted then
					__FUNC_373B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.000000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_373B_)
			end

			if arg1.interrupted then
				__FUNC_35C0_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_35C0_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(1.000000)
		__FUNC_346B_(registerVal9, {})
	end

	registerVal14.GainFocus = __FUNC_1552_
	local function __FUNC_3D15_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal14.Focus = __FUNC_3D15_
	local function __FUNC_3ECE_()
		registerVal2:setupElementClipCounter(5.000000)
		local function __FUNC_410A_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 19.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.BoxButtonLrgInactive:setAlpha(1.000000)
		__FUNC_410A_(registerVal3, {})
		local function __FUNC_42BD_(arg0, arg1)
			local function __FUNC_4437_(arg0, arg1)
				local function __FUNC_45AF_(arg0, arg1)
					local function __FUNC_4727_(arg0, arg1)
						local function __FUNC_489F_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_489F_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_489F_)
					end

					if arg1.interrupted then
						__FUNC_4727_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4727_)
				end

				if arg1.interrupted then
					__FUNC_45AF_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_45AF_)
			end

			if arg1.interrupted then
				__FUNC_4437_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4437_)
		end

		registerVal6:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_42BD_(registerVal6, {})
		local function __FUNC_4A51_(arg0, arg1)
			local function __FUNC_4BCB_(arg0, arg1)
				local function __FUNC_4D43_(arg0, arg1)
					local function __FUNC_4EBB_(arg0, arg1)
						local function __FUNC_5033_(arg0, arg1)
							if not arg1.interrupted then
								arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
							end
							arg0:setAlpha(0.000000)
							if arg1.interrupted then
								registerVal2.clipFinished(arg0, arg1)
							else
								arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
							end
						end

						if arg1.interrupted then
							__FUNC_5033_(arg0, arg1)
							return 
						end
						arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						arg0:setAlpha(0.370000)
						arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5033_)
					end

					if arg1.interrupted then
						__FUNC_4EBB_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 30.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4EBB_)
				end

				if arg1.interrupted then
					__FUNC_4D43_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.480000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4D43_)
			end

			if arg1.interrupted then
				__FUNC_4BCB_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.500000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_4BCB_)
		end

		registerVal7:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_4A51_(registerVal7, {})
		local function __FUNC_51E5_(arg0, arg1)
			local function __FUNC_535F_(arg0, arg1)
				local function __FUNC_54D7_(arg0, arg1)
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
					__FUNC_54D7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.400000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_54D7_)
			end

			if arg1.interrupted then
				__FUNC_535F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_535F_)
		end

		registerVal8:completeAnimation()
		registerVal2.glitch:setAlpha(0.000000)
		__FUNC_51E5_(registerVal8, {})
		local function __FUNC_5689_(arg0, arg1)
			local function __FUNC_5803_(arg0, arg1)
				local function __FUNC_597B_(arg0, arg1)
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
					__FUNC_597B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_597B_)
			end

			if arg1.interrupted then
				__FUNC_5803_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 59.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.430000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_5803_)
		end

		registerVal9:completeAnimation()
		registerVal2.glitch2:setAlpha(0.000000)
		__FUNC_5689_(registerVal9, {})
	end

	registerVal14.LoseFocus = __FUNC_3ECE_
	registerVal13.DefaultState = registerVal14
	registerVal2.clipsPerState = registerVal13
	local function __FUNC_5B2D_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.BoxButtonLrgIdle:close()
		arg0.FocusBarT:close()
		arg0.FocusBarB:close()
		arg0.LabelButton:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5B2D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

