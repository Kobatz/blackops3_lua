-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacter_SelectedItemField")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacterCarouselItem_InfoPanel = registerVal1
function CoD.PersonalizeCharacterCarouselItem_InfoPanel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.PersonalizeCharacterCarouselItem_InfoPanel)
	registerVal2.id = "PersonalizeCharacterCarouselItem_InfoPanel"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 281.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 476.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 235.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -1.750000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.TempBackground = registerVal3
	local registerVal4 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, -46.000000)
	registerVal4:setTopBottom(false, false, -236.880000, 236.130000)
	registerVal2:addElement(registerVal4)
	registerVal2.FETitleNumBrdr1 = registerVal4
	local registerVal5 = CoD.PersonalizeCharacter_SelectedItemField.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -113.500000, 22.500000)
	registerVal5:setTopBottom(false, false, -129.380000, -44.380000)
	registerVal5.selectionName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1504_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, "selectedHeadInfo", false, __FUNC_1504_)
	registerVal2:addElement(registerVal5)
	registerVal2.selectedHead = registerVal5
	local registerVal6 = CoD.PersonalizeCharacter_SelectedItemField.new(arg0, arg1)
	registerVal6:setLeftRight(false, false, -113.500000, 22.500000)
	registerVal6:setTopBottom(false, false, -44.380000, 40.630000)
	registerVal6.selectionName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1556_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, "selectedBodyInfo", false, __FUNC_1556_)
	registerVal2:addElement(registerVal6)
	registerVal2.selectedBody = registerVal6
	local registerVal7 = CoD.PersonalizeCharacter_SelectedItemField.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -113.500000, 22.500000)
	registerVal7:setTopBottom(false, false, 40.630000, 125.630000)
	registerVal7:setAlpha(0.000000)
	registerVal7.selectionName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7.colorList:setAlpha(0.000000)
	local function __FUNC_15A6_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, "selectedShowcaseWeaponInfo", false, __FUNC_15A6_)
	registerVal2:addElement(registerVal7)
	registerVal2.selectedShowcaseWeapon = registerVal7
	local registerVal8 = CoD.PersonalizeCharacter_SelectedItemField.new(arg0, arg1)
	registerVal8:setLeftRight(false, false, -113.500000, 22.500000)
	registerVal8:setTopBottom(false, false, 97.630000, 182.630000)
	registerVal8:setAlpha(0.000000)
	registerVal8.selectionName:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8.colorList:setAlpha(0.000000)
	local function __FUNC_15F6_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, "selectedTauntInfo", false, __FUNC_15F6_)
	registerVal2:addElement(registerVal8)
	registerVal2.selectedTaunt = registerVal8
	local registerVal9 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 24.000000, 220.000000)
	registerVal9:setTopBottom(true, false, 46.000000, 80.000000)
	local function __FUNC_1646_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.weaponNameLabel:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal9:linkToElementModel(registerVal2, "name", true, __FUNC_1646_)
	registerVal2:addElement(registerVal9)
	registerVal2.CallsignWidget = registerVal9
	local registerVal10 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal10:setLeftRight(true, true, 24.000000, -196.000000)
	registerVal10:setTopBottom(false, false, -217.880000, -195.880000)
	registerVal2:addElement(registerVal10)
	registerVal2.FETitleNumBrdr0 = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 30.000000, 104.000000)
	registerVal11:setTopBottom(true, false, 22.000000, 42.000000)
	registerVal11:setRGB(1.000000, 0.460000, 0.000000)
	registerVal11:setText(Engine.Localize(LocalizeToUpperString("HEROES_CALLSIGN")))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal2:addElement(registerVal11)
	registerVal2.callsignLabel0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 245.000000, 281.000000)
	registerVal12:setTopBottom(false, false, -237.880000, -234.380000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image5 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 245.000000, 281.000000)
	registerVal13:setTopBottom(false, false, 234.380000, 237.880000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image0 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, true, 8.500000, -58.500000)
	registerVal14:setTopBottom(true, false, 180.000000, 184.000000)
	registerVal14:setAlpha(0.800000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrum"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.LeftBoxLine = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, true, 8.500000, -58.500000)
	registerVal15:setTopBottom(true, false, 266.000000, 270.000000)
	registerVal15:setAlpha(0.800000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrum"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.LeftBoxLine2 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(true, true, 8.500000, -58.500000)
	registerVal16:setTopBottom(true, false, 95.500000, 99.500000)
	registerVal16:setAlpha(0.800000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrum"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.LeftBoxLine3 = registerVal16
	local registerVal17 = {}
	local registerVal18 = {}
	local function __FUNC_1723_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal5:completeAnimation()
		registerVal2.selectedHead:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.selectedBody:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal9:completeAnimation()
		registerVal2.CallsignWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal14:completeAnimation()
		registerVal2.LeftBoxLine:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LeftBoxLine2:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_1723_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_1992_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal5:completeAnimation()
		registerVal2.selectedHead:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.selectedBody:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal14:completeAnimation()
		registerVal2.LeftBoxLine:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.LeftBoxLine2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal18.DefaultClip = __FUNC_1992_
	registerVal17.Disabled = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "Disabled"
	local function __FUNC_1BA1_(arg0, arg2, arg3)
		return IsDisabled(arg2, arg1)
	end

	registerVal20.condition = __FUNC_1BA1_
	registerVal19 = {registerVal20}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_1BF4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "disabled"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "disabled", true, __FUNC_1BF4_)
	local function __FUNC_1D12_(arg0)
		arg0.FETitleNumBrdr1:close()
		arg0.selectedHead:close()
		arg0.selectedBody:close()
		arg0.selectedShowcaseWeapon:close()
		arg0.selectedTaunt:close()
		arg0.CallsignWidget:close()
		arg0.FETitleNumBrdr0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1D12_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

