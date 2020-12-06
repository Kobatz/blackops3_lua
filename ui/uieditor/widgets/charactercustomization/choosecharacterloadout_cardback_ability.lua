-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Border")
require("ui.uieditor.widgets.Heroes.ChooseCharacterLoadout_TabBar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_Ability = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_Ability.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_Ability)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_Ability"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 506.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 480.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -252.000000, -80.690000)
	registerVal3:setTopBottom(true, false, -1.000000, 169.130000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal3:setShaderVector(0.000000, -0.330000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_355E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "abilityCardBackIcon", true, __FUNC_355E_)
	registerVal2:addElement(registerVal3)
	registerVal2.ability = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 212.250000, 213.000000)
	registerVal4:setRGB(0.820000, 0.980000, 1.000000)
	registerVal4:setAlpha(0.700000)
	registerVal2:addElement(registerVal4)
	registerVal2.keyline = registerVal4
	local registerVal5 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 8.000000, -10.000000)
	registerVal5:setTopBottom(true, false, 215.000000, 275.000000)
	registerVal5:setRGB(0.820000, 0.980000, 1.000000)
	registerVal5:setAlpha(0.800000)
	registerVal5.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_3610_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "abilityDesc", true, __FUNC_3610_)
	registerVal2:addElement(registerVal5)
	registerVal2.abilityDesc = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, false, 306.250000, 307.000000)
	registerVal6:setRGB(0.820000, 0.980000, 1.000000)
	registerVal6:setAlpha(0.700000)
	registerVal2:addElement(registerVal6)
	registerVal2.schemaKeyline = registerVal6
	local registerVal7 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 8.000000, -10.000000)
	registerVal7:setTopBottom(true, false, 309.000000, 425.000000)
	registerVal7:setRGB(0.820000, 0.980000, 1.000000)
	registerVal7:setAlpha(0.800000)
	registerVal7.textBox:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_36E7_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "abilitySchema", true, __FUNC_36E7_)
	registerVal2:addElement(registerVal7)
	registerVal2.abilitySchema = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal8:setTopBottom(false, false, -28.750000, -25.750000)
	registerVal8:setRGB(0.820000, 0.980000, 1.000000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Image4 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal9:setTopBottom(false, false, -28.750000, -25.750000)
	registerVal9:setRGB(0.820000, 0.980000, 1.000000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image5 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(false, true, -4.000000, 21.000000)
	registerVal10:setTopBottom(false, false, -28.000000, -25.000000)
	registerVal10:setRGB(0.820000, 0.980000, 1.000000)
	registerVal10:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal10)
	registerVal2.Image6 = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, true, -4.000000, 21.000000)
	registerVal11:setTopBottom(false, false, -28.000000, -25.000000)
	registerVal11:setRGB(0.820000, 0.980000, 1.000000)
	registerVal11:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal11)
	registerVal2.Image7 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, true, -4.000000, 21.000000)
	registerVal12:setTopBottom(false, false, 65.250000, 68.250000)
	registerVal12:setRGB(0.820000, 0.980000, 1.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.Image0 = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(false, true, -4.000000, 21.000000)
	registerVal13:setTopBottom(false, false, 65.250000, 68.250000)
	registerVal13:setRGB(0.820000, 0.980000, 1.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal13)
	registerVal2.Image1 = registerVal13
	local registerVal14 = LUI.UIImage.new()
	registerVal14:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal14:setTopBottom(false, false, 65.250000, 68.250000)
	registerVal14:setRGB(0.820000, 0.980000, 1.000000)
	registerVal14:setZRot(180.000000)
	registerVal14:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal14)
	registerVal2.Image2 = registerVal14
	local registerVal15 = LUI.UIImage.new()
	registerVal15:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal15:setTopBottom(false, false, 65.250000, 68.250000)
	registerVal15:setRGB(0.820000, 0.980000, 1.000000)
	registerVal15:setZRot(180.000000)
	registerVal15:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal15:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal15)
	registerVal2.Image3 = registerVal15
	local registerVal16 = LUI.UIImage.new()
	registerVal16:setLeftRight(false, true, -337.640000, -333.640000)
	registerVal16:setTopBottom(false, true, -315.500000, -311.500000)
	registerVal16:setRGB(0.820000, 0.980000, 1.000000)
	registerVal16:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal16:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal16)
	registerVal2.Image31 = registerVal16
	local registerVal17 = LUI.UIImage.new()
	registerVal17:setLeftRight(false, true, -336.640000, -332.640000)
	registerVal17:setTopBottom(false, true, -315.500000, -311.500000)
	registerVal17:setRGB(0.820000, 0.980000, 1.000000)
	registerVal17:setYRot(180.000000)
	registerVal17:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal17:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal17)
	registerVal2.Image32 = registerVal17
	local registerVal18 = LUI.UIImage.new()
	registerVal18:setLeftRight(false, true, -336.640000, -332.640000)
	registerVal18:setTopBottom(false, true, -481.000000, -477.000000)
	registerVal18:setRGB(0.820000, 0.980000, 1.000000)
	registerVal18:setZRot(180.000000)
	registerVal18:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal18:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal18)
	registerVal2.Image33 = registerVal18
	local registerVal19 = LUI.UIImage.new()
	registerVal19:setLeftRight(false, true, -337.640000, -333.640000)
	registerVal19:setTopBottom(false, true, -481.000000, -477.000000)
	registerVal19:setRGB(0.820000, 0.980000, 1.000000)
	registerVal19:setXRot(180.000000)
	registerVal19:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal19:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal19)
	registerVal2.Image34 = registerVal19
	local registerVal20 = LUI.UIImage.new()
	registerVal20:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal20:setTopBottom(false, true, -315.500000, -311.500000)
	registerVal20:setRGB(0.820000, 0.980000, 1.000000)
	registerVal20:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal20:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal20)
	registerVal2.Image12 = registerVal20
	local registerVal21 = LUI.UIImage.new()
	registerVal21:setLeftRight(false, true, -506.000000, -502.000000)
	registerVal21:setTopBottom(false, true, -315.500000, -311.500000)
	registerVal21:setRGB(0.820000, 0.980000, 1.000000)
	registerVal21:setYRot(180.000000)
	registerVal21:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal21:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal21)
	registerVal2.Image13 = registerVal21
	local registerVal22 = LUI.UIImage.new()
	registerVal22:setLeftRight(false, true, -506.000000, -502.000000)
	registerVal22:setTopBottom(false, true, -481.000000, -477.000000)
	registerVal22:setRGB(0.820000, 0.980000, 1.000000)
	registerVal22:setZRot(180.000000)
	registerVal22:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal22:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal22)
	registerVal2.Image14 = registerVal22
	local registerVal23 = LUI.UIImage.new()
	registerVal23:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal23:setTopBottom(false, true, -481.000000, -477.000000)
	registerVal23:setRGB(0.820000, 0.980000, 1.000000)
	registerVal23:setXRot(180.000000)
	registerVal23:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal23:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal23)
	registerVal2.Image15 = registerVal23
	local registerVal24 = LUI.UIImage.new()
	registerVal24:setLeftRight(true, true, -1.000000, -1.000000)
	registerVal24:setTopBottom(true, false, 167.250000, 168.000000)
	registerVal24:setRGB(0.820000, 0.980000, 1.000000)
	registerVal24:setAlpha(0.700000)
	registerVal2:addElement(registerVal24)
	registerVal2.keyline1 = registerVal24
	local registerVal25 = LUI.UIImage.new()
	registerVal25:setLeftRight(true, true, -1.000000, -1.000000)
	registerVal25:setTopBottom(true, false, 0.650000, 0.000000)
	registerVal25:setRGB(0.820000, 0.980000, 1.000000)
	registerVal25:setAlpha(0.700000)
	registerVal2:addElement(registerVal25)
	registerVal2.keyline10 = registerVal25
	local registerVal26 = LUI.UIImage.new()
	registerVal26:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal26:setTopBottom(false, false, -73.880000, -70.880000)
	registerVal26:setRGB(0.820000, 0.980000, 1.000000)
	registerVal26:setZRot(180.000000)
	registerVal26:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal26:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal26)
	registerVal2.Image8 = registerVal26
	local registerVal27 = LUI.UIImage.new()
	registerVal27:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal27:setTopBottom(false, false, -73.880000, -70.880000)
	registerVal27:setRGB(0.820000, 0.980000, 1.000000)
	registerVal27:setZRot(180.000000)
	registerVal27:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal27:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal27)
	registerVal2.Image9 = registerVal27
	local registerVal28 = LUI.UIImage.new()
	registerVal28:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal28:setTopBottom(false, false, -242.000000, -239.000000)
	registerVal28:setRGB(0.820000, 0.980000, 1.000000)
	registerVal28:setZRot(180.000000)
	registerVal28:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal28:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal28)
	registerVal2.Image10 = registerVal28
	local registerVal29 = CoD.Border.new(arg0, arg1)
	registerVal29:setLeftRight(false, false, -253.000000, -80.690000)
	registerVal29:setTopBottom(true, false, 0.000000, 168.000000)
	registerVal29:setRGB(0.820000, 0.980000, 1.000000)
	registerVal2:addElement(registerVal29)
	registerVal2.Border1 = registerVal29
	local registerVal30 = CoD.ChooseCharacterLoadout_TabBar.new(arg0, arg1)
	registerVal30:setLeftRight(true, false, -2.000000, 508.000000)
	registerVal30:setTopBottom(true, false, 188.250000, 216.250000)
	registerVal30:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal30)
	registerVal2.TabBar3 = registerVal30
	local registerVal31 = CoD.ChooseCharacterLoadout_TabBar.new(arg0, arg1)
	registerVal31:setLeftRight(true, false, -2.000000, 508.000000)
	registerVal31:setTopBottom(true, false, 281.500000, 309.500000)
	registerVal31:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal31)
	registerVal2.TabBar1 = registerVal31
	local registerVal32 = LUI.UITightText.new()
	registerVal32:setLeftRight(true, false, 8.000000, 208.000000)
	registerVal32:setTopBottom(true, false, 286.000000, 306.000000)
	registerVal32:setRGB(0.000000, 0.000000, 0.000000)
	registerVal32:setTTF("fonts/escom.ttf")
	registerVal32:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal32:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal32:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal32:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal32:setLetterSpacing(1.000000)
	local function __FUNC_37BB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal32:setText(registerVal1)
		end
	end

	registerVal32:linkToElementModel(registerVal2, "abilitySchemaTitle", true, __FUNC_37BB_)
	registerVal2:addElement(registerVal32)
	registerVal2.schemaLabel = registerVal32
	local registerVal33 = LUI.UITightText.new()
	registerVal33:setLeftRight(true, false, 8.000000, 208.000000)
	registerVal33:setTopBottom(true, false, 192.000000, 212.000000)
	registerVal33:setRGB(0.000000, 0.000000, 0.000000)
	registerVal33:setTTF("fonts/escom.ttf")
	registerVal33:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal33:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal33:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal33:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal33:setLetterSpacing(1.000000)
	local function __FUNC_384C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal33:setText(registerVal1)
		end
	end

	registerVal33:linkToElementModel(registerVal2, "text", true, __FUNC_384C_)
	registerVal2:addElement(registerVal33)
	registerVal2.index = registerVal33
	local registerVal34 = LUI.UIImage.new()
	registerVal34:setLeftRight(true, false, -20.000000, 5.000000)
	registerVal34:setTopBottom(false, false, -242.000000, -239.000000)
	registerVal34:setRGB(0.820000, 0.980000, 1.000000)
	registerVal34:setZRot(180.000000)
	registerVal34:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal34:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal34)
	registerVal2.Image100 = registerVal34
	local registerVal35 = CoD.Border.new(arg0, arg1)
	registerVal35:setLeftRight(false, false, -254.000000, 253.000000)
	registerVal35:setTopBottom(false, false, -27.250000, 38.000000)
	registerVal35:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal35)
	registerVal2.iconBorder00 = registerVal35
	local registerVal36 = CoD.Border.new(arg0, arg1)
	registerVal36:setLeftRight(false, false, -254.000000, 253.000000)
	registerVal36:setTopBottom(false, false, 66.300000, 194.500000)
	registerVal36:setRGB(0.870000, 0.990000, 1.000000)
	registerVal2:addElement(registerVal36)
	registerVal2.Border0 = registerVal36
	local registerVal37 = LUI.UIImage.new()
	registerVal37:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal37:setTopBottom(false, true, -314.880000, -310.880000)
	registerVal37:setRGB(0.820000, 0.980000, 1.000000)
	registerVal37:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal37:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal37)
	registerVal2.Image310 = registerVal37
	local registerVal38 = LUI.UIImage.new()
	registerVal38:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal38:setTopBottom(false, true, -314.880000, -310.880000)
	registerVal38:setRGB(0.820000, 0.980000, 1.000000)
	registerVal38:setYRot(180.000000)
	registerVal38:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal38:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal38)
	registerVal2.Image320 = registerVal38
	local registerVal39 = LUI.UIImage.new()
	registerVal39:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal39:setTopBottom(false, true, -480.500000, -476.500000)
	registerVal39:setRGB(0.820000, 0.980000, 1.000000)
	registerVal39:setZRot(180.000000)
	registerVal39:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal39:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal39)
	registerVal2.Image330 = registerVal39
	local registerVal40 = LUI.UIImage.new()
	registerVal40:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal40:setTopBottom(false, true, -480.500000, -476.500000)
	registerVal40:setRGB(0.820000, 0.980000, 1.000000)
	registerVal40:setXRot(180.000000)
	registerVal40:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal40:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal40)
	registerVal2.Image340 = registerVal40
	local registerVal41 = LUI.UIImage.new()
	registerVal41:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal41:setTopBottom(false, true, -48.500000, -44.500000)
	registerVal41:setRGB(0.820000, 0.980000, 1.000000)
	registerVal41:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal41:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal41)
	registerVal2.Image30 = registerVal41
	local registerVal42 = LUI.UIImage.new()
	registerVal42:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal42:setTopBottom(false, true, -48.500000, -44.500000)
	registerVal42:setRGB(0.820000, 0.980000, 1.000000)
	registerVal42:setYRot(180.000000)
	registerVal42:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal42:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal42)
	registerVal2.Image311 = registerVal42
	local registerVal43 = LUI.UIImage.new()
	registerVal43:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal43:setTopBottom(false, true, -48.500000, -44.500000)
	registerVal43:setRGB(0.820000, 0.980000, 1.000000)
	registerVal43:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal43:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal43)
	registerVal2.Image42 = registerVal43
	local registerVal44 = LUI.UIImage.new()
	registerVal44:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal44:setTopBottom(false, true, -48.500000, -44.500000)
	registerVal44:setRGB(0.820000, 0.980000, 1.000000)
	registerVal44:setYRot(180.000000)
	registerVal44:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal44:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal44)
	registerVal2.Image43 = registerVal44
	local registerVal45 = LUI.UIImage.new()
	registerVal45:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal45:setTopBottom(false, true, -174.500000, -170.500000)
	registerVal45:setRGB(0.820000, 0.980000, 1.000000)
	registerVal45:setZRot(180.000000)
	registerVal45:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal45:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal45)
	registerVal2.Image341 = registerVal45
	local registerVal46 = LUI.UIImage.new()
	registerVal46:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal46:setTopBottom(false, true, -174.500000, -170.500000)
	registerVal46:setRGB(0.820000, 0.980000, 1.000000)
	registerVal46:setXRot(180.000000)
	registerVal46:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal46:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal46)
	registerVal2.Image35 = registerVal46
	local registerVal47 = LUI.UIImage.new()
	registerVal47:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal47:setTopBottom(false, true, -174.500000, -170.500000)
	registerVal47:setRGB(0.820000, 0.980000, 1.000000)
	registerVal47:setZRot(180.000000)
	registerVal47:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal47:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal47)
	registerVal2.Image40 = registerVal47
	local registerVal48 = LUI.UIImage.new()
	registerVal48:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal48:setTopBottom(false, true, -174.500000, -170.500000)
	registerVal48:setRGB(0.820000, 0.980000, 1.000000)
	registerVal48:setXRot(180.000000)
	registerVal48:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal48:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal48)
	registerVal2.Image41 = registerVal48
	local registerVal49 = LUI.UIImage.new()
	registerVal49:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal49:setTopBottom(false, true, -205.000000, -201.000000)
	registerVal49:setRGB(0.820000, 0.980000, 1.000000)
	registerVal49:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal49:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal49)
	registerVal2.Image28 = registerVal49
	local registerVal50 = LUI.UIImage.new()
	registerVal50:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal50:setTopBottom(false, true, -205.000000, -201.000000)
	registerVal50:setRGB(0.820000, 0.980000, 1.000000)
	registerVal50:setYRot(180.000000)
	registerVal50:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal50:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal50)
	registerVal2.Image29 = registerVal50
	local registerVal51 = LUI.UIImage.new()
	registerVal51:setLeftRight(false, true, -2.000000, 2.000000)
	registerVal51:setTopBottom(false, true, -268.500000, -264.500000)
	registerVal51:setRGB(0.820000, 0.980000, 1.000000)
	registerVal51:setZRot(180.000000)
	registerVal51:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal51:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal51)
	registerVal2.Image321 = registerVal51
	local registerVal52 = LUI.UIImage.new()
	registerVal52:setLeftRight(false, true, -3.000000, 1.000000)
	registerVal52:setTopBottom(false, true, -268.500000, -264.500000)
	registerVal52:setRGB(0.820000, 0.980000, 1.000000)
	registerVal52:setXRot(180.000000)
	registerVal52:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal52:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal52)
	registerVal2.Image331 = registerVal52
	local registerVal53 = LUI.UIImage.new()
	registerVal53:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal53:setTopBottom(false, true, -269.000000, -265.000000)
	registerVal53:setRGB(0.820000, 0.980000, 1.000000)
	registerVal53:setZRot(180.000000)
	registerVal53:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal53:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal53)
	registerVal2.Image36 = registerVal53
	local registerVal54 = LUI.UIImage.new()
	registerVal54:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal54:setTopBottom(false, true, -269.000000, -265.000000)
	registerVal54:setRGB(0.820000, 0.980000, 1.000000)
	registerVal54:setXRot(180.000000)
	registerVal54:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal54:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal54)
	registerVal2.Image37 = registerVal54
	local registerVal55 = LUI.UIImage.new()
	registerVal55:setLeftRight(false, true, -508.000000, -504.000000)
	registerVal55:setTopBottom(false, true, -205.000000, -201.000000)
	registerVal55:setRGB(0.820000, 0.980000, 1.000000)
	registerVal55:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal55:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal55)
	registerVal2.Image38 = registerVal55
	local registerVal56 = LUI.UIImage.new()
	registerVal56:setLeftRight(false, true, -507.000000, -503.000000)
	registerVal56:setTopBottom(false, true, -205.000000, -201.000000)
	registerVal56:setRGB(0.820000, 0.980000, 1.000000)
	registerVal56:setYRot(180.000000)
	registerVal56:setImage(RegisterImage("uie_t7_menu_frontend_titlenumbrdrlr"))
	registerVal56:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal56)
	registerVal2.Image39 = registerVal56
	local registerVal57 = {}
	local registerVal58 = {}
	local function __FUNC_38E0_()
		registerVal2:setupElementClipCounter(13.000000)
		local function __FUNC_3ECF_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal3:completeAnimation()
		registerVal2.ability:setAlpha(0.000000)
		__FUNC_3ECF_(registerVal3, {})
		local function __FUNC_4081_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:beginAnimation("keyframe", 70.000000, false, false, CoD.TweenType.Linear)
		registerVal4:setAlpha(0.000000)
		registerVal4:registerEventHandler("transition_complete_keyframe", __FUNC_4081_)
		local function __FUNC_4235_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal5:setAlpha(0.000000)
		registerVal5:registerEventHandler("transition_complete_keyframe", __FUNC_4235_)
		local function __FUNC_43E9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal6:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Linear)
		registerVal6:setAlpha(0.000000)
		registerVal6:registerEventHandler("transition_complete_keyframe", __FUNC_43E9_)
		local function __FUNC_459D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal24:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal24:setAlpha(0.000000)
		registerVal24:registerEventHandler("transition_complete_keyframe", __FUNC_459D_)
		local function __FUNC_4751_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(0.700000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal25:completeAnimation()
		registerVal2.keyline10:setAlpha(0.000000)
		__FUNC_4751_(registerVal25, {})
		local function __FUNC_4905_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal29:completeAnimation()
		registerVal2.Border1:setAlpha(0.000000)
		__FUNC_4905_(registerVal29, {})
		local function __FUNC_4AB9_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal30:completeAnimation()
		registerVal2.TabBar3:setAlpha(0.000000)
		__FUNC_4AB9_(registerVal30, {})
		local function __FUNC_4C6D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 79.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal31:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal31:setAlpha(0.000000)
		registerVal31:registerEventHandler("transition_complete_keyframe", __FUNC_4C6D_)
		local function __FUNC_4E21_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal32:beginAnimation("keyframe", 50.000000, false, false, CoD.TweenType.Linear)
		registerVal32:setAlpha(0.000000)
		registerVal32:registerEventHandler("transition_complete_keyframe", __FUNC_4E21_)
		local function __FUNC_4FD5_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 199.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal33:beginAnimation("keyframe", 39.000000, false, false, CoD.TweenType.Linear)
		registerVal33:setAlpha(0.000000)
		registerVal33:registerEventHandler("transition_complete_keyframe", __FUNC_4FD5_)
		local function __FUNC_5189_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal35:completeAnimation()
		registerVal2.iconBorder00:setAlpha(0.000000)
		__FUNC_5189_(registerVal35, {})
		local function __FUNC_533D_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 100.000000, false, false, CoD.TweenType.Bounce)
			end
			arg0:setAlpha(1.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal36:completeAnimation()
		registerVal2.Border0:setAlpha(0.000000)
		__FUNC_533D_(registerVal36, {})
	end

	registerVal58.DefaultClip = __FUNC_38E0_
	registerVal57.DefaultState = registerVal58
	registerVal2.clipsPerState = registerVal57
	local function __FUNC_54F1_(arg0)
		arg0.abilityDesc:close()
		arg0.abilitySchema:close()
		arg0.Border1:close()
		arg0.TabBar3:close()
		arg0.TabBar1:close()
		arg0.iconBorder00:close()
		arg0.Border0:close()
		arg0.ability:close()
		arg0.schemaLabel:close()
		arg0.index:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_54F1_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

