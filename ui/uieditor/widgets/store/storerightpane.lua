-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgInactive")
require("ui.uieditor.widgets.verticalScrollingTextBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StoreRightPane = registerVal1
function CoD.StoreRightPane.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StoreRightPane)
	registerVal2.id = "StoreRightPane"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 388.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 526.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_ButtonBoxLrgInactive.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal3:setTopBottom(true, true, -2.000000, 2.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BoxButtonLrgInactive = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal4:setTopBottom(false, true, -270.900000, 0.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.800000)
	registerVal2:addElement(registerVal4)
	registerVal2.productDescBg = registerVal4
	local registerVal5 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal5:setLeftRight(true, false, 1.000000, 387.000000)
	registerVal5:setTopBottom(true, false, 1.000000, 255.000000)
	local function __FUNC_BF1_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_BF1_)
	registerVal2:addElement(registerVal5)
	registerVal2.frameWidget = registerVal5
	local registerVal6 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 16.000000, 358.000000)
	registerVal6:setTopBottom(true, false, 273.000000, 508.000000)
	registerVal6.textBox:setTTF("fonts/Store.ttf")
	registerVal6.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_C42_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "desc", true, __FUNC_C42_)
	registerVal2:addElement(registerVal6)
	registerVal2.verticalScrollingTextBox = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 195.000000, 199.000000)
	registerVal7:setTopBottom(true, false, 55.000000, 457.000000)
	registerVal7:setZRot(-90.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_featuredlline"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.featlineleft = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, 173.500000, 179.000000)
	registerVal8:setTopBottom(false, false, 239.000000, 250.000000)
	registerVal8:setZRot(-90.000000)
	registerVal8:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_arrowhorz"))
	registerVal2:addElement(registerVal8)
	registerVal2.ArrowSide0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, 173.500000, 179.000000)
	registerVal9:setTopBottom(false, false, 7.000000, 18.000000)
	registerVal9:setZRot(90.000000)
	registerVal9:setImage(RegisterImage("uie_t7_mp_hud_scorestreak_arrowhorz"))
	registerVal2:addElement(registerVal9)
	registerVal2.ArrowSide00 = registerVal9
	registerVal5.id = "frameWidget"
	local function __FUNC_D17_(arg0)
		arg0.BoxButtonLrgInactive:close()
		arg0.verticalScrollingTextBox:close()
		arg0.frameWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D17_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

