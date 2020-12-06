-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.codcaster_ScoreLogoWidget_FFA = registerVal1
function CoD.codcaster_ScoreLogoWidget_FFA.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.codcaster_ScoreLogoWidget_FFA)
	registerVal2.id = "codcaster_ScoreLogoWidget_FFA"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 210.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 67.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -107.000000, 103.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal3:setYRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_codcaster_colorback"))
	registerVal2:addElement(registerVal3)
	registerVal2.teamcolor = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 25.000000, 136.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 67.000000)
	registerVal4:setYRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_codcaster_logobottom"))
	registerVal2:addElement(registerVal4)
	registerVal2.logobacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 33.000000, 130.630000)
	registerVal5:setTopBottom(true, false, 5.000000, 63.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.emblem = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 25.000000, 131.000000)
	registerVal6:setTopBottom(true, false, 5.000000, 63.550000)
	registerVal6:setImage(RegisterImage("uie_t7_codcaster_faction2"))
	registerVal2:addElement(registerVal6)
	registerVal2.logo = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 23.000000, 138.000000)
	registerVal7:setTopBottom(true, false, 2.000000, 67.000000)
	registerVal7:setYRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_t7_codcaster_logotop"))
	registerVal2:addElement(registerVal7)
	registerVal2.logotopRight = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 115.000000, 206.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 66.000000)
	registerVal8:setYRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_codcaster_numberbacking"))
	registerVal2:addElement(registerVal8)
	registerVal2.numberbacking = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -84.000000, -58.000000)
	registerVal9:setTopBottom(true, false, 1.500000, 66.500000)
	registerVal9:setYRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_codcaster_blackbar"))
	registerVal2:addElement(registerVal9)
	registerVal2.teamiconbg = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, false, -86.000000, -60.000000)
	registerVal10:setTopBottom(true, false, 1.800000, 66.500000)
	registerVal10:setYRot(180.000000)
	registerVal10:setImage(RegisterImage("uie_t7_codcaster_blackbar"))
	registerVal2:addElement(registerVal10)
	registerVal2.teamiconbg0 = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_AF4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.teamcolor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.emblem:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.logo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal12.DefaultClip = __FUNC_AF4_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_CA0_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.teamcolor:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.teamcolor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.emblem:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.logo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal12.DefaultClip = __FUNC_CA0_
	registerVal11.NonTeamBased = registerVal12
	registerVal2.clipsPerState = registerVal11
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "NonTeamBased"
	local function __FUNC_E80_(arg0, arg1, arg2)
		local registerVal3 = IsGametypeTeambased()
		return (not registerVal3)
	end

	registerVal14.condition = __FUNC_E80_
	registerVal13 = {registerVal14}
	registerVal2:mergeStateConditions(registerVal13)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

