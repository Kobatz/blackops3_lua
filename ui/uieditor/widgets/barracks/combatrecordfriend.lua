-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CombatRecordFriend = registerVal1
function CoD.CombatRecordFriend.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CombatRecordFriend)
	registerVal2.id = "CombatRecordFriend"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setImage(RegisterImage("uie_mp_cac_grad_stretch"))
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, -2.000000, 1.000000)
	registerVal4:setAlpha(0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 101.000000, 22.000000)
	registerVal5:setTopBottom(false, false, -12.500000, 12.500000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_CFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "identityBadge.gamertag", true, __FUNC_CFB_)
	registerVal2:addElement(registerVal5)
	registerVal2.gamertag = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal6:setTopBottom(false, false, -32.000000, 32.000000)
	local function __FUNC_D8C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "identityBadge.xuid", true, __FUNC_D8C_)
	registerVal2:addElement(registerVal6)
	registerVal2.emblem = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 95.000000, 99.000000)
	registerVal7:setTopBottom(false, false, -32.000000, 33.000000)
	registerVal7:setAlpha(0.300000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.itemImageLine = registerVal7
	local registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -3.500000, 0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarB = registerVal8
	local registerVal9 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal9:setLeftRight(true, true, -1.000000, 0.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 4.000000)
	registerVal9:setZoom(1.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.FocusBarT = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_E30_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_E30_
	local function __FUNC_F88_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_113B_(arg0, arg1)
			local function __FUNC_1290_(arg0, arg1)
				local function __FUNC_140B_(arg0, arg1)
					local function __FUNC_1583_(arg0, arg1)
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
						__FUNC_1583_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.210000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1583_)
				end

				if arg1.interrupted then
					__FUNC_140B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_140B_)
			end

			if arg1.interrupted then
				__FUNC_1290_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1290_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(0.000000)
		__FUNC_113B_(registerVal8, {})
		local function __FUNC_1735_(arg0, arg1)
			local function __FUNC_188C_(arg0, arg1)
				local function __FUNC_1A07_(arg0, arg1)
					local function __FUNC_1B7F_(arg0, arg1)
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
						__FUNC_1B7F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.350000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1B7F_)
				end

				if arg1.interrupted then
					__FUNC_1A07_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1A07_)
			end

			if arg1.interrupted then
				__FUNC_188C_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_188C_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		__FUNC_1735_(registerVal9, {})
	end

	registerVal11.GainFocus = __FUNC_F88_
	local function __FUNC_1D31_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.Focus = __FUNC_1D31_
	local function __FUNC_1EEB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal4, {})
		local function __FUNC_209B_(arg0, arg1)
			local function __FUNC_2213_(arg0, arg1)
				local function __FUNC_238B_(arg0, arg1)
					local function __FUNC_2503_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2503_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2503_)
				end

				if arg1.interrupted then
					__FUNC_238B_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.660000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_238B_)
			end

			if arg1.interrupted then
				__FUNC_2213_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.210000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2213_)
		end

		registerVal8:completeAnimation()
		registerVal2.FocusBarB:setAlpha(1.000000)
		__FUNC_209B_(registerVal8, {})
		local function __FUNC_26B5_(arg0, arg1)
			local function __FUNC_282F_(arg0, arg1)
				local function __FUNC_29A7_(arg0, arg1)
					local function __FUNC_2B1F_(arg0, arg1)
						if not arg1.interrupted then
							arg0:beginAnimation("keyframe", 29.000000, false, false, CoD.TweenType.Linear)
						end
						arg0:setAlpha(0.000000)
						if arg1.interrupted then
							registerVal2.clipFinished(arg0, arg1)
						else
							arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
						end
					end

					if arg1.interrupted then
						__FUNC_2B1F_(arg0, arg1)
						return 
					end
					arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
					arg0:setAlpha(0.000000)
					arg0:registerEventHandler("transition_complete_keyframe", __FUNC_2B1F_)
				end

				if arg1.interrupted then
					__FUNC_29A7_(arg0, arg1)
					return 
				end
				arg0:beginAnimation("keyframe", 10.000000, false, false, CoD.TweenType.Linear)
				arg0:setAlpha(0.570000)
				arg0:registerEventHandler("transition_complete_keyframe", __FUNC_29A7_)
			end

			if arg1.interrupted then
				__FUNC_282F_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 9.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(0.350000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_282F_)
		end

		registerVal9:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		__FUNC_26B5_(registerVal9, {})
	end

	registerVal11.LoseFocus = __FUNC_1EEB_
	registerVal10.DefaultState = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_2CD1_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.FocusBarB:close()
		arg0.FocusBarT:close()
		arg0.gamertag:close()
		arg0.emblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2CD1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

