-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.InGamePlayerListRow = registerVal1
function CoD.InGamePlayerListRow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.InGamePlayerListRow)
	registerVal2.id = "InGamePlayerListRow"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setAlpha(0.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.teamBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.100000)
	registerVal2:addElement(registerVal4)
	registerVal2.rankBackground = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 5.000000, 25.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.rankText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 27.000000, 47.000000)
	registerVal6:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal2:addElement(registerVal6)
	registerVal2.rankImage = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 55.000000, 280.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.playerName = registerVal7
	local function __FUNC_9B4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setRGB(registerVal1)
		end
	end

	registerVal2.teamBackground:linkToElementModel(registerVal2, "teamBGColor", true, __FUNC_9B4_)
	local function __FUNC_A47_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.rankText:linkToElementModel(registerVal2, "rankText", true, __FUNC_A47_)
	local function __FUNC_AFE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.rankImage:linkToElementModel(registerVal2, "rankIcon", true, __FUNC_AFE_)
	local function __FUNC_BB0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setRGB(registerVal1)
		end
	end

	registerVal2.playerName:linkToElementModel(registerVal2, "playerNameColor", true, __FUNC_BB0_)
	local function __FUNC_C43_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(registerVal1)
		end
	end

	registerVal2.playerName:linkToElementModel(registerVal2, "playerNameText", true, __FUNC_C43_)
	local function __FUNC_CD4_(arg0)
		arg0.teamBackground:close()
		arg0.rankText:close()
		arg0.rankImage:close()
		arg0.playerName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CD4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

