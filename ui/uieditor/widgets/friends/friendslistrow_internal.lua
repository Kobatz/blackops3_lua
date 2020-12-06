-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.uie_Border")
require("ui.uieditor.widgets.Lobby.Lists.Members.IconJoinable")
require("ui.uieditor.widgets.Lobby.Lists.Members.LobbyRank")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FriendsListRow_Internal = registerVal1
function CoD.FriendsListRow_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FriendsListRow_Internal)
	registerVal2.id = "FriendsListRow_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 500.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setImage(RegisterImage("uie_mp_cac_grad_stretch"))
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 114.000000, -28.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 29.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_CDA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "gamertag", true, __FUNC_CDA_)
	registerVal2:addElement(registerVal4)
	registerVal2.gamertag = registerVal4
	local registerVal5 = CoD.uie_Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 63.500000)
	registerVal5:setRGB(1.000000, 0.330000, 0.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.highlight = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 64.000000)
	local function __FUNC_D6C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupPlayerEmblemByXUID(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "xuid", true, __FUNC_D6C_)
	registerVal2:addElement(registerVal6)
	registerVal2.emblem = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, true, 64.000000, 0.000000)
	registerVal7:setTopBottom(false, true, -29.000000, -4.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E10_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "presence", true, __FUNC_E10_)
	registerVal2:addElement(registerVal7)
	registerVal2.presence = registerVal7
	local registerVal8 = CoD.IconJoinable.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -28.000000, -4.000000)
	registerVal8:setTopBottom(true, false, 4.000000, 28.000000)
	local function __FUNC_ECA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setAlpha(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "isJoinable", true, __FUNC_ECA_)
	registerVal2:addElement(registerVal8)
	registerVal2.IconJoinable = registerVal8
	local registerVal9 = CoD.LobbyRank.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 64.000000, 114.000000)
	registerVal9:setTopBottom(true, false, 4.000000, 29.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.rank = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_F5D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_F5D_
	local function __FUNC_FBE_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_10CC_(arg0, arg1)
			local function __FUNC_1247_(arg0, arg1)
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
				__FUNC_1247_(arg0, arg1)
				return 
			end
			arg0:beginAnimation("keyframe", 500.000000, false, false, CoD.TweenType.Linear)
			arg0:setAlpha(1.000000)
			arg0:registerEventHandler("transition_complete_keyframe", __FUNC_1247_)
		end

		registerVal5:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		__FUNC_10CC_(registerVal5, {})
		registerVal2.nextClip = "Focus"
	end

	registerVal11.Focus = __FUNC_FBE_
	local function __FUNC_13F9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.hideJoinableIcon = __FUNC_13F9_
	local function __FUNC_145A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.highlight:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal11.LoseFocus = __FUNC_145A_
	local function __FUNC_1559_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_163A_(arg0, arg1)
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
		__FUNC_163A_(registerVal5, {})
	end

	registerVal11.GainFocus = __FUNC_1559_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_17ED_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.DefaultClip = __FUNC_17ED_
	local function __FUNC_184E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal11.hide = __FUNC_184E_
	registerVal10.hideJoinableIcon = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_18AE_(arg0)
		arg0.highlight:close()
		arg0.IconJoinable:close()
		arg0.rank:close()
		arg0.gamertag:close()
		arg0.emblem:close()
		arg0.presence:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18AE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

