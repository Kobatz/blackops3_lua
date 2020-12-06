-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cyberCoreTiles = registerVal1
function CoD.cyberCoreTiles.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cyberCoreTiles)
	registerVal2.id = "cyberCoreTiles"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 293.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 3.000000)
	registerVal3:setTopBottom(true, true, -3.000000, 3.000000)
	registerVal3:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleGlow1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -53.430000, 48.570000)
	registerVal4:setTopBottom(false, false, -30.000000, 43.000000)
	registerVal4:setAlpha(0.370000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.Glow = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 4.000000, 297.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize(LocalizeToUpperString("MENU_CYBERNETICS_CORE")))
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_A4E_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_A4E_)
	registerVal2:addElement(registerVal5)
	registerVal2.cybercoreSubHeader = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_AAD_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_AAD_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_B0E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_B0E_
	registerVal6.Multicore = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Multicore"
	local function __FUNC_B6E_(arg0, arg2, arg3)
		return IsMulticoreActivated(arg1)
	end

	registerVal9.condition = __FUNC_B6E_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_BC6_(arg0)
		arg0.TitleGlow1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BC6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

