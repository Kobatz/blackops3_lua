-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_PartyList.PartyList_ClanBox")
local function __FUNC_225_(arg0)
	local registerVal1, registerVal2, registerVal3, registerVal4 = arg0:getLocalRect()
	local function __FUNC_2E1_(arg0, arg1)
		if arg1 == "Hidden" then
			arg0:setWidth(0.000000)
		else
			arg0:setWidth((registerVal3 - registerVal1))
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(arg0, "setState", __FUNC_2E1_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.PartyList_ClanContainer = registerVal2
local function __FUNC_357_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PartyList_ClanContainer)
	registerVal2.id = "PartyList_ClanContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 40.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	local registerVal3 = CoD.PartyList_ClanBox.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 1.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -1.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.PartyListClanBox0 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, -15.000000, 15.000000)
	registerVal4:setTopBottom(false, true, -16.160000, -0.160000)
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_831_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "clanAbbrev", true, __FUNC_831_)
	registerVal2:addElement(registerVal4)
	registerVal2.LblClan = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8EA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PartyListClanBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LblClan:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8EA_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A46_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PartyListClanBox0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LblClan:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A46_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_BA2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.PartyListClanBox0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LblClan:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BA2_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_CFE_(arg0)
		arg0.PartyListClanBox0:close()
		arg0.LblClan:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CFE_)
	if __FUNC_225_ then
		__FUNC_225_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PartyList_ClanContainer.new = __FUNC_357_
