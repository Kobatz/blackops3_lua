-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CPMapPerformanceRecord_Classified = registerVal1
function CoD.CPMapPerformanceRecord_Classified.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CPMapPerformanceRecord_Classified)
	registerVal2.id = "CPMapPerformanceRecord_Classified"
	registerVal2.soundSet = "MultiplayerMain"
	registerVal2:setLeftRight(true, false, 0.000000, 345.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 264.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 530.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 49.220000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cp_vault_sec_title_bg"))
	registerVal2:addElement(registerVal3)
	registerVal2.SecTitleBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 3.000000, 31.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 4.220000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Image30 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 3.000000, 31.000000)
	registerVal5:setTopBottom(true, false, 45.000000, 49.220000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelframe"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image301 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 39.000000, 308.000000)
	registerVal6:setTopBottom(true, false, 14.110000, 36.110000)
	registerVal6:setText(Engine.Localize("MENU_PERFORMANCE_RECORD"))
	registerVal6:setTTF("fonts/escom.ttf")
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal6:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal6:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal6:setLetterSpacing(2.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Label0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 40.000000, 165.000000)
	registerVal7:setTopBottom(true, false, 90.000000, 112.000000)
	registerVal7:setText(Engine.Localize("-"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.TextBox00 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(true, false, 194.000000, 332.000000)
	registerVal8:setTopBottom(true, false, 189.750000, 211.750000)
	registerVal8:setText(Engine.Localize("-"))
	registerVal8:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.TextBox70 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(true, false, 39.000000, 165.000000)
	registerVal9:setTopBottom(true, false, 57.250000, 79.250000)
	registerVal9:setRGB(0.950000, 0.890000, 0.030000)
	registerVal9:setText(Engine.Localize("MENU_INDIVIDUAL_SCORE"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.TextBox3 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 193.000000, 335.000000)
	registerVal10:setTopBottom(true, false, 158.000000, 180.000000)
	registerVal10:setRGB(0.950000, 0.890000, 0.030000)
	registerVal10:setText(Engine.Localize("MENU_COLLECTIBLES_FOUND"))
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.TextBox301 = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 192.000000, 335.000000)
	registerVal11:setTopBottom(true, false, 57.250000, 79.250000)
	registerVal11:setRGB(0.950000, 0.890000, 0.030000)
	registerVal11:setText(Engine.Localize("MENU_ACCOLADES"))
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.TextBox3010 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 194.000000, 332.000000)
	registerVal12:setTopBottom(true, false, 90.000000, 112.000000)
	registerVal12:setText(Engine.Localize("-"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.TextBox000 = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1124_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal8:completeAnimation()
		registerVal2.TextBox70:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal14.DefaultClip = __FUNC_1124_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1220_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal8:completeAnimation()
		registerVal2.TextBox70:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal10:completeAnimation()
		registerVal2.TextBox301:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.TextBox3010:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.TextBox000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1220_
	registerVal13.NoAccolades = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "NoAccolades"
	local function __FUNC_142A_(arg0, arg1, arg2)
		return IsCampaignZombies()
	end

	registerVal16.condition = __FUNC_142A_
	registerVal15 = {registerVal16}
	registerVal2:mergeStateConditions(registerVal15)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

