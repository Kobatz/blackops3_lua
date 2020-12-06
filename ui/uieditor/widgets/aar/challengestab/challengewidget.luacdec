-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChallengeWidget = registerVal1
function CoD.ChallengeWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChallengeWidget)
	registerVal2.id = "ChallengeWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 362.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 445.000000)
	local registerVal3 = CoD.Border.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 2.360000, 362.360000)
	registerVal3:setTopBottom(true, false, 0.000000, 445.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Border = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.360000, 362.360000)
	registerVal4:setTopBottom(true, false, 0.000000, 445.000000)
	registerVal4:setAlpha(0.300000)
	registerVal2:addElement(registerVal4)
	registerVal2.Bg = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 5.000000, 144.360000)
	registerVal5:setTopBottom(true, false, 397.000000, 445.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.300000)
	registerVal2:addElement(registerVal5)
	registerVal2.RewardsTextBg = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 2.360000, 144.360000)
	registerVal6:setTopBottom(true, false, 408.500000, 433.500000)
	registerVal6:setText(Engine.Localize("MPUI_REWARD_CAPS"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.RewardsText = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 147.720000, 194.720000)
	registerVal7:setTopBottom(true, false, 398.000000, 445.000000)
	registerVal7:setImage(RegisterImage("uie_t7_hud_mp_notifications_xp"))
	registerVal2:addElement(registerVal7)
	registerVal2.XpIcon = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 205.840000, 253.840000)
	registerVal8:setTopBottom(true, false, 409.000000, 434.000000)
	registerVal8:setText(Engine.Localize("2500"))
	registerVal8:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal8)
	registerVal2.XpValue = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 117.360000, 245.360000)
	registerVal9:setTopBottom(true, false, 60.980000, 188.980000)
	registerVal2:addElement(registerVal9)
	registerVal2.ChallengeImage = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 0.000000, 362.360000)
	registerVal10:setTopBottom(true, false, 222.500000, 247.500000)
	registerVal10:setText(Engine.Localize("2 of 10"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.ChallengeCount = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 0.000000, 362.360000)
	registerVal11:setTopBottom(true, false, 269.500000, 294.500000)
	registerVal11:setText(Engine.Localize("Its a trap"))
	registerVal11:setTTF("fonts/default.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.ChallengeName = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 0.000000, 362.360000)
	registerVal12:setTopBottom(true, false, 317.500000, 342.500000)
	registerVal12:setText(Engine.Localize("Play 10 games of any gametype as a Trapper."))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.ChallengeDescription = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 2.360000, 362.000000)
	registerVal13:setTopBottom(true, false, 388.000000, 390.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.Image0 = registerVal13
	local function __FUNC_E27_(arg0)
		arg0.Border:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E27_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

