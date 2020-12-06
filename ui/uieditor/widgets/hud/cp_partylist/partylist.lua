-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_PartyList.PartyList_PlayerScore")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PartyList = registerVal1
function CoD.PartyList.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PartyList)
	registerVal2.id = "PartyList"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 266.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 97.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal3:makeFocusable()
	registerVal3:setLeftRight(true, false, 4.000000, 261.000000)
	registerVal3:setTopBottom(true, false, 8.000000, 90.000000)
	registerVal3:setDataSource("PlayerList")
	registerVal3:setWidgetType(CoD.PartyList_PlayerScore)
	registerVal3:setVerticalCount(4.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.playerScores = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_74D_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_74D_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_7AE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.playerScores:setLeftRight(true, false, 4.000000, 261.000000)
		registerVal2.playerScores:setTopBottom(true, false, 8.000000, 90.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7AE_
	registerVal4.PlayerCount_4 = registerVal5
	registerVal5 = {}
	local function __FUNC_90D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.playerScores:setLeftRight(true, false, 4.000000, 261.000000)
		registerVal2.playerScores:setTopBottom(true, false, 29.000000, 111.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_90D_
	registerVal4.PlayerCount_3 = registerVal5
	registerVal5 = {}
	local function __FUNC_A6D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.playerScores:setLeftRight(true, false, 4.000000, 261.000000)
		registerVal2.playerScores:setTopBottom(true, false, 50.000000, 132.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_A6D_
	registerVal4.PlayerCount_2 = registerVal5
	registerVal5 = {}
	local function __FUNC_BCD_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.playerScores:setLeftRight(true, false, 4.000000, 261.000000)
		registerVal2.playerScores:setTopBottom(true, false, 71.000000, 153.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_BCD_
	registerVal4.PlayerCount_1 = registerVal5
	registerVal2.clipsPerState = registerVal4
	registerVal3.id = "playerScores"
	local function __FUNC_D2D_(arg0)
		arg0.playerScores:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D2D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

