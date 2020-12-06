-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.AAR.MedalsTab.MedalXpWidget")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MedalPreviewWidget = registerVal1
function CoD.MedalPreviewWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MedalPreviewWidget)
	registerVal2.id = "MedalPreviewWidget"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 366.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 468.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 369.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 469.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 71.710000, 294.290000)
	registerVal4:setTopBottom(true, false, 32.480000, 254.480000)
	registerVal4:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.MedalImageBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 71.710000, 294.290000)
	registerVal5:setTopBottom(true, false, 32.480000, 254.480000)
	registerVal5:setupUIStreamedImage(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.MedalImage = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 0.000000, 366.000000)
	registerVal6:setTopBottom(true, false, 270.480000, 306.000000)
	registerVal6:setRGB(1.000000, 0.800000, 0.400000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_E3A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(GetAARMedalHitCount(registerVal1)))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "medalTimesObtained", true, __FUNC_E3A_)
	registerVal2:addElement(registerVal6)
	registerVal2.Times = registerVal6
	local registerVal7 = CoD.MedalXpWidget.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 12.500000, 157.940000)
	registerVal7:setTopBottom(true, false, 413.350000, 459.650000)
	local function __FUNC_F17_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.XpValue:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "medalXP", true, __FUNC_F17_)
	registerVal2:addElement(registerVal7)
	registerVal2.MedalXpWidget0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 186.000000, 190.000000)
	registerVal8:setTopBottom(true, false, 118.500000, 498.500000)
	registerVal8:setZRot(-90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.featlineleft000 = registerVal8
	local registerVal9 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 11.500000, 330.000000)
	registerVal9:setTopBottom(true, false, 317.690000, 351.690000)
	registerVal2:addElement(registerVal9)
	registerVal2.EmblemName = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 12.500000, 330.500000)
	registerVal10:setTopBottom(true, false, 355.690000, 375.690000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setLetterSpacing(0.500000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.EmblemSubtitle = registerVal10
	local function __FUNC_FEB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(GetAARMedalImageBackingLarge(registerVal1)))
		end
	end

	registerVal2.MedalImageBacking:linkToElementModel(registerVal2, "medalIndex", true, __FUNC_FEB_)
	local function __FUNC_10CA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(GetAARMedalImageLarge(registerVal1)))
		end
	end

	registerVal2.MedalImage:linkToElementModel(registerVal2, "medalIndex", true, __FUNC_10CA_)
	local function __FUNC_11A3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.weaponNameLabel:setText(Engine.Localize(GetAARMedalName(registerVal1)))
		end
	end

	registerVal2.EmblemName:linkToElementModel(registerVal2, "medalIndex", true, __FUNC_11A3_)
	local function __FUNC_12A0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(GetAARMedalDesc(registerVal1)))
		end
	end

	registerVal2.EmblemSubtitle:linkToElementModel(registerVal2, "medalIndex", true, __FUNC_12A0_)
	local function __FUNC_137B_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.MedalXpWidget0:close()
		arg0.EmblemName:close()
		arg0.MedalImageBacking:close()
		arg0.MedalImage:close()
		arg0.Times:close()
		arg0.EmblemSubtitle:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_137B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

