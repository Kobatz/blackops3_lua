-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.CP_DamageWidget.DamageWidget_Panel")
require("ui.uieditor.widgets.HUD.CP_PartyList.PartyList_PlayerScoreInternal")
local function __FUNC_27F_(arg0)
	local function __FUNC_2D7_(arg0)
		local function __FUNC_4EE_(arg0)
			local registerVal1, registerVal2, registerVal3, registerVal4 = arg0:getLocalRect()
		end

		local function __FUNC_54F_(arg0)
			local registerVal2 = arg0:getTextWidth()
		end

		local registerVal4 = arg0.ScoreInternal.ClanContainer.LblClan:getTextWidth()
		if 0.000000 < registerVal4 then
			__FUNC_4EE_(arg0.ScoreInternal.ClanContainer)
		end
		__FUNC_4EE_(arg0.ScoreInternal.ScoreRankIcon)
		__FUNC_4EE_(arg0.ScoreInternal.voipCustomElement)
		__FUNC_54F_(arg0.ScoreInternal.Gamertag)
		__FUNC_54F_(arg0.ScoreInternal.LblRank)
		arg0.Panel:setLeftRight(false, true, (-0.000000 - 5.000000), 4.000000)
	end

	arg0.updatePlayerScoreWidgetLayout = __FUNC_2D7_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.PartyList_PlayerScore = registerVal2
local function __FUNC_5AB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PartyList_PlayerScore)
	registerVal2.id = "PartyList_PlayerScore"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 257.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.DamageWidget_Panel.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 89.390000, 258.390000)
	registerVal3:setTopBottom(true, false, -1.670000, 22.000000)
	registerVal3:setRGB(0.790000, 0.820000, 0.850000)
	registerVal3:setZoom(-3.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = CoD.PartyList_PlayerScoreInternal.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -3.000000, 254.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 18.670000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_no_blur"))
	registerVal4:setShaderVector(0.000000, 0.100000, 0.500000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_CBA_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_CBA_)
	registerVal2:addElement(registerVal4)
	registerVal2.ScoreInternal = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_D0A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Gamertag:completeAnimation()
		registerVal4.ClanContainer:completeAnimation()
		registerVal4.LblRank:completeAnimation()
		registerVal2.ScoreInternal:setAlpha(1.000000)
		registerVal2.ScoreInternal.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreInternal.ClanContainer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreInternal.LblRank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_D0A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_F82_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Gamertag:completeAnimation()
		registerVal4.ClanContainer:completeAnimation()
		registerVal4.LblRank:completeAnimation()
		registerVal2.ScoreInternal:setAlpha(1.000000)
		registerVal2.ScoreInternal.Gamertag:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreInternal.ClanContainer:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreInternal.LblRank:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F82_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_11FA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ScoreInternal:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_11FA_
	registerVal5.Hidden = registerVal6
	registerVal6 = {}
	local function __FUNC_1350_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.Panel:setLeftRight(true, false, 89.390000, 258.390000)
		registerVal2.Panel:setTopBottom(true, false, -1.670000, 22.000000)
		registerVal2.Panel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal4.Gamertag:completeAnimation()
		registerVal4.ClanContainer:completeAnimation()
		registerVal4.LblRank:completeAnimation()
		registerVal2.ScoreInternal:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.ScoreInternal:setAlpha(1.000000)
		registerVal2.ScoreInternal:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_normal"))
		registerVal2.ScoreInternal.Gamertag:setRGB(0.990000, 0.830000, 0.030000)
		registerVal2.ScoreInternal.ClanContainer:setRGB(0.990000, 0.830000, 0.030000)
		registerVal2.ScoreInternal.LblRank:setRGB(0.990000, 0.830000, 0.030000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1350_
	registerVal5.IsSelf = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_172D_(arg0)
		arg0.Panel:close()
		arg0.ScoreInternal:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_172D_)
	if __FUNC_27F_ then
		__FUNC_27F_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PartyList_PlayerScore.new = __FUNC_5AB_
