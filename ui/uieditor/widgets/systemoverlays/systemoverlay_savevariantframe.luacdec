-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_SaveVariant")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.CAC.cac_ListButtonLabel")
require("ui.uieditor.widgets.horizontalScrollingTextBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_SaveVariantFrame = registerVal1
function CoD.systemOverlay_SaveVariantFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_SaveVariantFrame)
	registerVal2.id = "systemOverlay_SaveVariantFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 50.000000, 370.000000)
	registerVal3:setTopBottom(true, true, 0.000000, -4.000000)
	registerVal3:setAlpha(0.050000)
	registerVal2:addElement(registerVal3)
	registerVal2.extracamBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 50.000000, 370.000000)
	registerVal4:setTopBottom(true, true, 0.000000, -4.000000)
	local function __FUNC_C4B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupWCVariantIconExtraCamRender(GetSaveVariantExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_C4B_)
	registerVal2:addElement(registerVal4)
	registerVal2.extraCamRender = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_SaveVariant.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 320.000000)
	local function __FUNC_D2B_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_D2B_)
	registerVal2:addElement(registerVal5)
	registerVal2.foreground = registerVal5
	local registerVal6 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 50.000000, 370.000000)
	registerVal6:setTopBottom(true, false, 290.500000, 321.500000)
	registerVal6:setRGB(0.890000, 0.890000, 0.890000)
	registerVal6:setAlpha(0.600000)
	registerVal2:addElement(registerVal6)
	registerVal2.cacItemTitleGlow0 = registerVal6
	local registerVal7 = CoD.cac_ListButtonLabel.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 50.000000, 151.000000)
	registerVal7:setTopBottom(false, true, -24.000000, -4.000000)
	registerVal7:setAlpha(0.000000)
	local function __FUNC_D7A_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_D7A_)
	local function __FUNC_DCA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "weaponName", true, __FUNC_DCA_)
	registerVal2:addElement(registerVal7)
	registerVal2.LabelButton = registerVal7
	local registerVal8 = CoD.horizontalScrollingTextBox.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 53.000000, 367.000000)
	registerVal8:setTopBottom(true, false, 295.000000, 317.000000)
	registerVal8.textBox:setRGB(0.000000, 0.000000, 0.000000)
	registerVal8.textBox:setTTF("fonts/escom.ttf")
	registerVal8.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_EA0_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_EA0_)
	local function __FUNC_EF2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.textBox:setText(registerVal1)
		end
	end

	registerVal8:linkToElementModel(registerVal2, "variantName", true, __FUNC_EF2_)
	registerVal2:addElement(registerVal8)
	registerVal2.horizontalScrollingTextBox0 = registerVal8
	registerVal5.id = "foreground"
	local function __FUNC_FA1_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_FA1_)
	local function __FUNC_10A6_(arg0)
		arg0.foreground:close()
		arg0.cacItemTitleGlow0:close()
		arg0.LabelButton:close()
		arg0.horizontalScrollingTextBox0:close()
		arg0.extraCamRender:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10A6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

