-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FirstTimeLanguageSelectLanguageWidget = registerVal1
function CoD.FirstTimeLanguageSelectLanguageWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FirstTimeLanguageSelectLanguageWidget)
	registerVal2.id = "FirstTimeLanguageSelectLanguageWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 53.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 272.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 53.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_loc_choose_language_english"))
	registerVal2:addElement(registerVal3)
	registerVal2.EnglishLanguageImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 7.000000, 227.000000)
	registerVal4:setTopBottom(true, false, -4.000000, 58.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_loc_choose_language_arabic"))
	registerVal2:addElement(registerVal4)
	registerVal2.ArabicLanguageImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 189.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 53.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_loc_choose_language_simplifiedchinese"))
	registerVal2:addElement(registerVal5)
	registerVal2.ChineseLanguageImage = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_836_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.EnglishLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ArabicLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ChineseLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_836_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_A03_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.EnglishLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ArabicLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ChineseLanguageImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A03_
	registerVal6.Chinese = registerVal7
	registerVal7 = {}
	local function __FUNC_BD4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.EnglishLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ArabicLanguageImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ChineseLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_BD4_
	registerVal6.Arabic = registerVal7
	registerVal7 = {}
	local function __FUNC_DA8_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.EnglishLanguageImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ArabicLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.ChineseLanguageImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DA8_
	registerVal6.English = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Chinese"
	local function __FUNC_F7C_(arg0, arg1, arg2)
		local registerVal3 = IsChineseSku()
		if registerVal3 then
			registerVal3 = IsCurrentLanguageEnglish()
		end
		return registerVal3
	end

	registerVal9.condition = __FUNC_F7C_
	local registerVal10 = {}
	registerVal10.stateName = "Arabic"
	local function __FUNC_FFC_(arg0, arg1, arg2)
		local registerVal3 = IsArabicSku()
		if registerVal3 then
			registerVal3 = IsCurrentLanguageEnglish()
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_FFC_
	local registerVal11 = {}
	registerVal11.stateName = "English"
	local function __FUNC_107B_(arg0, arg1, arg2)
		local registerVal3 = IsCurrentLanguageEnglish()
		if not registerVal3 then
			registerVal3 = IsJapaneseSku()
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_107B_
	registerVal8 = {registerVal9, registerVal10, registerVal11}
	registerVal2:mergeStateConditions(registerVal8)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

