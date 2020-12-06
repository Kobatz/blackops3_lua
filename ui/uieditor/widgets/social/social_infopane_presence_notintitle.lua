-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_InfoPane_Presence_NotInTitle = registerVal1
function CoD.Social_InfoPane_Presence_NotInTitle.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_InfoPane_Presence_NotInTitle)
	registerVal2.id = "Social_InfoPane_Presence_NotInTitle"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 411.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 72.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 10.000000, -10.000000)
	registerVal3:setTopBottom(true, false, 43.000000, 65.000000)
	registerVal3:setText(Engine.Localize("NULL_EMPTY"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.platformPresence = registerVal3
	local registerVal4 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 1.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 1.500000, 38.500000)
	registerVal4:setRGB(0.900000, 0.900000, 0.900000)
	registerVal2:addElement(registerVal4)
	registerVal2.cacItemTitleGlow0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 10.000000, -5.000000)
	registerVal5:setTopBottom(true, false, 6.750000, 31.750000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setText(Engine.Localize("MENU_OFFLINE"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal5:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.statusText = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -57.930000, 44.070000)
	registerVal6:setTopBottom(false, false, -73.000000, 0.000000)
	registerVal6:setAlpha(0.140000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Glow = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B8D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.platformPresence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.statusText:setAlpha(1.000000)
		registerVal2.statusText:setText(Engine.Localize("MENU_ONLINE"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_B8D_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_D64_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.platformPresence:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.platformPresence:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.statusText:setAlpha(1.000000)
		registerVal2.statusText:setText(Engine.Localize("MENU_OFFLINE"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_D64_
	registerVal7.Offline = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_F76_(arg0)
		arg0.cacItemTitleGlow0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F76_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

