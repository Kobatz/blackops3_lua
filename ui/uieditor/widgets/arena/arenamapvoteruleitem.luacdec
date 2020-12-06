-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ArenaMapVoteRuleItem = registerVal1
function CoD.ArenaMapVoteRuleItem.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ArenaMapVoteRuleItem)
	registerVal2.id = "ArenaMapVoteRuleItem"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 303.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 23.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -1.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.BlackBack = registerVal3
	local registerVal4 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, -1.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 13.500000, 303.000000)
	registerVal5:setTopBottom(true, false, 3.000000, 21.000000)
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setLetterSpacing(0.500000)
	local function __FUNC_B98_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "text", true, __FUNC_B98_)
	registerVal2:addElement(registerVal5)
	registerVal2.Text = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 2.000000, 9.000000)
	registerVal6:setTopBottom(true, false, 9.500000, 13.000000)
	registerVal6:setZRot(-90.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_arrow"))
	registerVal2:addElement(registerVal6)
	registerVal2.Carat = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C2C_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBack:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Text:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Carat:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_C2C_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_E3B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.BlackBack:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Text:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Carat:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_E3B_
	registerVal7.Visible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Visible"
	local function __FUNC_104C_(arg0, arg1, arg2)
		local registerVal3 = IsArenaMode()
		if registerVal3 then
			registerVal3 = IsGameLobby()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_104C_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	if registerVal2.m_eventHandlers.<modelChangeGLobal>lobbyRoot.lobbyNav then
		local function __FUNC_10BE_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.<modelChangeGLobal>lobbyRoot.lobbyNav(arg1, arg2)
		end

		registerVal2:registerEventHandler("<modelChangeGLobal>lobbyRoot.lobbyNav", __FUNC_10BE_)
	else
		registerVal2:registerEventHandler("<modelChangeGLobal>lobbyRoot.lobbyNav", LUI.UIElement.updateState)
	end
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNav")
	local function __FUNC_1147_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_1147_)
	local function __FUNC_126C_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_126C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

