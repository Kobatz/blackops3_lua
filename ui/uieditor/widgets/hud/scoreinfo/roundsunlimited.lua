-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RoundsUnlimited = registerVal1
function CoD.RoundsUnlimited.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = -2.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Center)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RoundsUnlimited)
	registerVal2.id = "RoundsUnlimited"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 87.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -29.560000, 12.840000)
	registerVal3:setTopBottom(false, true, -23.020000, -7.020000)
	registerVal3:setText(Engine.Localize("MP_HUD_SCORE_ROUND"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.TextBox2 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, false, 13.320000, 23.680000)
	registerVal4:setTopBottom(false, false, -7.020000, 8.980000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox0 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, false, 21.680000, 32.050000)
	registerVal5:setTopBottom(false, true, -23.020000, -7.020000)
	registerVal5:setTTF("fonts/escom.ttf")
	local function __FUNC_865_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "GameScore", "roundLimit", __FUNC_865_)
	registerVal2:addElement(registerVal5)
	registerVal2.TotalRoundCount0 = registerVal5
	local function __FUNC_91E_(arg0)
		arg0.TotalRoundCount0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_91E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

