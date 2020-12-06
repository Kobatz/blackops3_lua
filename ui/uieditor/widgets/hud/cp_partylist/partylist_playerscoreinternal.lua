-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_PartyList.PartyList_ClanContainer")
require("ui.uieditor.widgets.HUD.CP_PartyList.PartyList_ScoreRankIcon")
local function __FUNC_28B_(arg0, arg1)
	local registerVal3 = Engine.GetModelForController(arg1)
	local registerVal2 = Engine.GetModel(registerVal3, "updateClientDeadStatus")
	if registerVal2 == nil then
		local registerVal5 = Engine.GetModelForController(arg1)
		local registerVal4 = Engine.CreateModel(registerVal5, "updateClientDeadStatus")
		Engine.SetModelValue(registerVal4, 0.000000)
	end
end

local function __FUNC_3C7_(arg0, arg1)
	local function __FUNC_40A_(arg0, arg1, arg2)
		arg0.super.setModel(arg0, arg1, arg2)
		local registerVal3 = arg0:getParent()
		if registerVal3 then
			registerVal3 = arg0:getParent()
			registerVal3:updatePlayerScoreWidgetLayout()
		end
	end

	arg0.setModel = __FUNC_40A_
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PartyList_PlayerScoreInternal = registerVal3
local function __FUNC_4D7_(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 1.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if __FUNC_28B_ then
		__FUNC_28B_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PartyList_PlayerScoreInternal)
	registerVal2.id = "PartyList_PlayerScoreInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 257.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 185.000000, 257.000000)
	registerVal3:setTopBottom(true, false, 1.830000, 17.840000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setTTF("fonts/escom.ttf")
	local function __FUNC_F35_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "playerName", true, __FUNC_F35_)
	registerVal2:addElement(registerVal3)
	registerVal2.Gamertag = registerVal3
	local registerVal4 = CoD.PartyList_ClanContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 144.000000, 184.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 17.670000)
	registerVal4:setAlpha(0.800000)
	local function __FUNC_FEE_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_FEE_)
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_103E_(arg0, arg2, arg3)
		return IsSelfModelValueNonEmptyString(arg2, arg1, "clanAbbrev")
	end

	registerVal8.condition = __FUNC_103E_
	local registerVal9 = {}
	registerVal9.stateName = "Hidden"
	local function __FUNC_10BC_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal9.condition = __FUNC_10BC_
	registerVal7 = {registerVal8, registerVal9}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_1108_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "clanAbbrev"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "clanAbbrev", true, __FUNC_1108_)
	registerVal2:addElement(registerVal4)
	registerVal2.ClanContainer = registerVal4
	local registerVal5 = CoD.PartyList_ScoreRankIcon.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 129.000000, 143.000000)
	registerVal5:setTopBottom(true, false, 1.670000, 15.670000)
	local function __FUNC_1228_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.rankImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "playerRankIcon", true, __FUNC_1228_)
	registerVal8 = {}
	registerVal9 = {}
	registerVal9.stateName = "PlayerDead"
	local function __FUNC_12FB_(arg0, arg2, arg3)
		return IsPlayerDead(arg2, arg1)
	end

	registerVal9.condition = __FUNC_12FB_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "updateClientDeadStatus")
	local function __FUNC_134E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "updateClientDeadStatus"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:subscribeToModel(registerVal8, __FUNC_134E_)
	registerVal2:addElement(registerVal5)
	registerVal2.ScoreRankIcon = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 114.000000, 128.000000)
	registerVal6:setTopBottom(true, false, 1.830000, 17.840000)
	registerVal6:setAlpha(0.800000)
	registerVal6:setTTF("fonts/escom.ttf")
	local function __FUNC_1478_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(RankToLevelNumber("cp", registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "rankNum", true, __FUNC_1478_)
	registerVal2:addElement(registerVal6)
	registerVal2.LblRank = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 99.000000, 113.000000)
	registerVal7:setTopBottom(true, false, 1.830000, 15.840000)
	registerVal2:addElement(registerVal7)
	registerVal2.voipCustomElement = registerVal7
	local function __FUNC_1565_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setupVoipImage(registerVal1)
		end
	end

	registerVal2.voipCustomElement:linkToElementModel(registerVal2, "clientNum", true, __FUNC_1565_)
	registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_15FF_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ClanContainer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal6:completeAnimation()
		registerVal2.LblRank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal9.DefaultClip = __FUNC_15FF_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_17C2_(arg0)
		arg0.ClanContainer:close()
		arg0.ScoreRankIcon:close()
		arg0.Gamertag:close()
		arg0.LblRank:close()
		arg0.voipCustomElement:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_17C2_)
	if __FUNC_3C7_ then
		__FUNC_3C7_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PartyList_PlayerScoreInternal.new = __FUNC_4D7_
