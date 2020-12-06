-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.vhud_siegebot_missile_label = registerVal1
function CoD.vhud_siegebot_missile_label.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.vhud_siegebot_missile_label)
	registerVal2.id = "vhud_siegebot_missile_label"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 81.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -100.000000, 100.000000)
	registerVal3:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal3:setText(Engine.Localize("MENU_HUD_VEHICLE_RPM"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_aberration_cheap_blur"))
	registerVal3:setShaderVector(0.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(4.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_76E_(arg0, arg1)
		ScaleWidgetToLabelCenteredWithMinimum(registerVal2, arg0, 20.000000, 81.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_76E_)
	registerVal2:addElement(registerVal3)
	registerVal2.text = registerVal3
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

