-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CodCasterTeamIdentityInformation = registerVal1
function CoD.CodCasterTeamIdentityInformation.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CodCasterTeamIdentityInformation)
	registerVal2.id = "CodCasterTeamIdentityInformation"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 456.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 183.000000)
	local registerVal3 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 4.000000, 213.000000)
	registerVal3:setTopBottom(true, false, 36.500000, 170.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BorderBakedSolid0 = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 239.000000, 448.000000)
	registerVal4:setTopBottom(true, false, 36.500000, 69.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedSolid00 = registerVal4
	local registerVal5 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 239.000000, 448.000000)
	registerVal5:setTopBottom(true, false, 111.000000, 143.500000)
	registerVal2:addElement(registerVal5)
	registerVal2.BorderBakedSolid1 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 6.000000, 205.000000)
	registerVal6:setTopBottom(true, false, 13.500000, 33.500000)
	registerVal6:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM1_LOGO")))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(1.000000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.TeamLogoTitle = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 6.000000, 210.000000)
	registerVal7:setTopBottom(true, false, 38.500000, 166.500000)
	local function __FUNC_1092_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "teamLogo", true, __FUNC_1092_)
	registerVal2:addElement(registerVal7)
	registerVal2.TeamLogoImage = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 241.000000, 441.000000)
	registerVal8:setTopBottom(true, false, 13.500000, 33.500000)
	registerVal8:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM1_NAME")))
	registerVal8:setTTF("fonts/escom.ttf")
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal8:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal8:setLetterSpacing(1.000000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.TeamNameTitle = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 249.000000, 441.000000)
	registerVal9:setTopBottom(true, false, 40.500000, 64.500000)
	registerVal9:setTTF("fonts/default.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1144_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "teamName", true, __FUNC_1144_)
	registerVal2:addElement(registerVal9)
	registerVal2.TeamNameText = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 241.000000, 441.000000)
	registerVal10:setTopBottom(true, false, 87.500000, 107.500000)
	registerVal10:setText(Engine.Localize(LocalizeToUpperString("CODCASTER_TEAM1_COLOR")))
	registerVal10:setTTF("fonts/escom.ttf")
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal10:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal10:setLetterSpacing(1.000000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.TeamColorTitle = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(true, false, 242.000000, 445.000000)
	registerVal11:setTopBottom(true, false, 113.000000, 141.000000)
	registerVal11:setAlpha(0.600000)
	local function __FUNC_11FE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setRGB(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "teamColor", true, __FUNC_11FE_)
	registerVal2:addElement(registerVal11)
	registerVal2.TeamColorImage = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_128F_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.TeamLogoTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeamLogoImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TeamNameTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TeamNameText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TeamColorTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TeamColorImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_128F_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1559_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal6:completeAnimation()
		registerVal2.TeamLogoTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.TeamLogoImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.TeamNameTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.TeamNameText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.TeamColorTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TeamColorImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1559_
	registerVal12.Invisible = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_1825_(arg0)
		arg0.BorderBakedSolid0:close()
		arg0.BorderBakedSolid00:close()
		arg0.BorderBakedSolid1:close()
		arg0.TeamLogoImage:close()
		arg0.TeamNameText:close()
		arg0.TeamColorImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1825_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

