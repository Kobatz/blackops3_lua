-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Rounds = registerVal1
function CoD.Rounds.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = -3.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Center)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Rounds)
	registerVal2.id = "Rounds"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 87.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -33.060000, 9.340000)
	registerVal3:setTopBottom(false, true, -23.020000, -7.020000)
	registerVal3:setText(Engine.Localize("MP_HUD_SCORE_ROUND"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.TextBox2 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, 6.340000, 18.340000)
	registerVal4:setTopBottom(false, false, -7.020000, 8.980000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.Label0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, 15.340000, 25.700000)
	registerVal5:setTopBottom(false, true, -23.020000, -7.020000)
	registerVal5:setTTF("fonts/escom.ttf")
	local function __FUNC_908_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "GameScore", "roundsPlayed", __FUNC_908_)
	registerVal2:addElement(registerVal5)
	registerVal2.TotalRoundCount0 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, false, 22.700000, 33.060000)
	registerVal6:setTopBottom(false, true, -23.020000, -7.020000)
	registerVal6:setTTF("fonts/escom.ttf")
	local function __FUNC_9C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(RoundOutOfString(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "GameScore", "roundLimit", __FUNC_9C2_)
	registerVal2:addElement(registerVal6)
	registerVal2.TextBox0 = registerVal6
	local function __FUNC_A9C_(arg0)
		arg0.TotalRoundCount0:close()
		arg0.TextBox0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A9C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

