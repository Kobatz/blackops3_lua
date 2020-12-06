-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorMaterialChallengeWidget = registerVal1
function CoD.EmblemEditorMaterialChallengeWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemEditorMaterialChallengeWidget)
	registerVal2.id = "EmblemEditorMaterialChallengeWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 266.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 200.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.100000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, true, -260.000000, -6.000000)
	registerVal4:setTopBottom(true, false, 44.000000, 64.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_ED6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "unlockDescription", true, __FUNC_ED6_)
	registerVal2:addElement(registerVal4)
	registerVal2.requirementDesc = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, true, -260.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 7.000000, 31.000000)
	registerVal5:setRGB(0.970000, 0.930000, 0.070000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setText(Engine.Localize("MENU_CAMO_COMPLETE"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.completedTitle = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -260.000000, -71.000000)
	registerVal6:setTopBottom(false, true, -43.500000, -29.500000)
	registerVal6:setRGB(0.170000, 0.160000, 0.160000)
	registerVal6:setAlpha(0.600000)
	registerVal2:addElement(registerVal6)
	registerVal2.progressBarBg = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -260.000000, -71.000000)
	registerVal7:setTopBottom(false, true, -43.500000, -29.500000)
	registerVal7:setRGB(0.970000, 0.930000, 0.070000)
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal7:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal7:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_F8E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal7:setShaderVector(0.000000, GetWeaponOptionProgressBar(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "unlockProgressAndTarget", true, __FUNC_F8E_)
	registerVal2:addElement(registerVal7)
	registerVal2.progressBar = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, true, -60.000000, 0.000000)
	registerVal8:setTopBottom(false, true, -49.000000, -24.000000)
	registerVal8:setTTF("fonts/default.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1114_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(GetWeaponOptionProgressText(arg1, registerVal1)))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "unlockProgressAndTarget", true, __FUNC_1114_)
	registerVal2:addElement(registerVal8)
	registerVal2.progressText = registerVal8
	local registerVal9 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 7.000000, 260.000000)
	registerVal9:setTopBottom(true, false, 4.000000, 38.000000)
	registerVal9.weaponNameLabel:setText(Engine.Localize("MENU_CAMO_REQUIREMENTS"))
	registerVal2:addElement(registerVal9)
	registerVal2.camoName = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_11FF_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.requirementDesc:setLeftRight(false, true, -317.500000, -5.000000)
		registerVal2.requirementDesc:setTopBottom(true, false, 33.500000, 53.500000)
		registerVal2.requirementDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.completedTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.progressBarBg:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.progressBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.progressText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_11FF_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_1507_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.requirementDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.completedTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.progressBarBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.progressBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.progressText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1507_
	registerVal10.NotVisible = registerVal11
	registerVal11 = {}
	local function __FUNC_1775_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal4:completeAnimation()
		registerVal2.requirementDesc:setLeftRight(false, true, -317.500000, -5.000000)
		registerVal2.requirementDesc:setTopBottom(true, false, 53.500000, 73.500000)
		registerVal2.requirementDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.completedTitle:setLeftRight(false, true, -317.500000, -5.000000)
		registerVal2.completedTitle:setTopBottom(true, false, 25.500000, 49.500000)
		registerVal2.completedTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.progressBarBg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.progressBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.progressText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal11.DefaultClip = __FUNC_1775_
	registerVal10.Completed = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_1AD4_(arg0)
		arg0.camoName:close()
		arg0.requirementDesc:close()
		arg0.progressBar:close()
		arg0.progressText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1AD4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

