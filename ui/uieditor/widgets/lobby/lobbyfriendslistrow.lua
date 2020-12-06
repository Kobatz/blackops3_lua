-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.uie_Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbyFriendsListRow = registerVal1
function CoD.LobbyFriendsListRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.LobbyFriendsListRow)
	registerVal2.id = "LobbyFriendsListRow"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 616.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 616.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setImage(RegisterImage("uie_mp_cac_grad_stretch"))
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 319.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.gamertag = registerVal4
	local registerVal5 = CoD.uie_Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 616.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal5:setRGB(1.000000, 0.330000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.highlight = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 585.000000, 1.000000)
	registerVal6:setTopBottom(true, true, -0.500000, 0.500000)
	registerVal6:setImage(RegisterImage("uie_menu_mp_party_ease_icon"))
	registerVal2:addElement(registerVal6)
	registerVal2.joinableIcon = registerVal6
	local function __FUNC_A53_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.gamertag:linkToElementModel(registerVal2, "gamertag", true, __FUNC_A53_)
	local function __FUNC_B0A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setAlpha(registerVal1)
		end
	end

	registerVal2.joinableIcon:linkToElementModel(registerVal2, "isJoinable", true, __FUNC_B0A_)
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B9D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_B9D_
	local function __FUNC_BFE_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_D0C_(arg0, arg1)
			local function __FUNC_E87_(arg0, arg1)
				if not arg1.interrupted then
					arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
				end
				arg0:setAlpha(0.000000)
				if arg1.interrupted then
					registerVal2.clipFinished(arg0, arg1)
				else
					arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
				end
			end

			if arg1.interrupted then
				__FUNC_E87_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_E87_)
		end

		registerVal5:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		__FUNC_D0C_(registerVal5, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal8.Focus = __FUNC_BFE_
	local function __FUNC_1039_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.hideJoinableIcon = __FUNC_1039_
	local function __FUNC_10F3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.LoseFocus = __FUNC_10F3_
	local function __FUNC_11F1_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_12D2_(arg0, arg1)
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

		registerVal5:completeAnimation()
		registerVal2.highlight:setAlpha(1.000000)
		__FUNC_12D2_(registerVal5, {})
	end

	registerVal8.GainFocus = __FUNC_11F1_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_1485_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_1485_
	local function __FUNC_14E6_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.hide = __FUNC_14E6_
	registerVal7.hideJoinableIcon = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_159F_(arg0)
		arg0.highlight:close()
		arg0.gamertag:close()
		arg0.joinableIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_159F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

