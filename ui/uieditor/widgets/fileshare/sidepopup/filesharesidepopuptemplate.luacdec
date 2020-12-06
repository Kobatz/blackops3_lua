-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.SidePopup.FileshareSidePopupLayout")
local function __FUNC_232_(arg0, arg1)
	arg0.animateInFromOffset = 380.000000
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FileshareSidePopupTemplate = registerVal2
local function __FUNC_282_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_232_ then
		__FUNC_232_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareSidePopupTemplate)
	registerVal2.id = "FileshareSidePopupTemplate"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 380.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -354.500000, 0.500000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.040000, 0.040000, 0.040000)
	registerVal3:setAlpha(0.980000)
	registerVal2:addElement(registerVal3)
	registerVal2.leftBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, true, -354.500000, 0.500000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_tile_texture"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal4:setShaderVector(0.000000, 30.000000, 55.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.tileTexture = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, true, -355.500000, -354.500000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal5:setAlpha(0.420000)
	registerVal2:addElement(registerVal5)
	registerVal2.Border00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -355.500000, -354.500000)
	registerVal6:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal6:setAlpha(0.420000)
	registerVal2:addElement(registerVal6)
	registerVal2.Border0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 54.500000, 341.500000)
	registerVal7:setTopBottom(true, false, 96.000000, 122.000000)
	registerVal7:setRGB(1.000000, 0.390000, 0.000000)
	registerVal7:setText(Engine.Localize("MENU_ARE_YOU_SURE"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Title = registerVal7
	local registerVal8 = CoD.FileshareSidePopupLayout.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 51.000000, 329.000000)
	registerVal8:setTopBottom(true, false, 133.000000, 677.000000)
	registerVal8.hintText.ItemHintText:setText(Engine.Localize("MENU_NEW"))
	registerVal2:addElement(registerVal8)
	registerVal2.layout = registerVal8
	registerVal8.id = "layout"
	local function __FUNC_C4A_(arg0, arg1)
		local registerVal2 = arg0.layout:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_C4A_)
	local function __FUNC_D4A_(arg0)
		arg0.layout:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D4A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareSidePopupTemplate.new = __FUNC_282_
