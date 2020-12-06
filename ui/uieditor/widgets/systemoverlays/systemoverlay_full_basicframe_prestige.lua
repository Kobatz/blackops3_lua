-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_GenericForeground_Full")
require("ui.uieditor.widgets.SystemOverlays.systemOverlay_supportWidget")
require("ui.uieditor.widgets.Lobby.Common.FE_TitleNumBrdr")
require("ui.uieditor.widgets.GenericPopups.SystemOverlay_WeaponPrestigeStar")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Full_BasicFrame_Prestige = registerVal1
function CoD.systemOverlay_Full_BasicFrame_Prestige.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Full_BasicFrame_Prestige)
	registerVal2.id = "systemOverlay_Full_BasicFrame_Prestige"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 58.000000, 359.400000)
	registerVal3:setTopBottom(true, true, 18.000000, -52.000000)
	registerVal3:setAlpha(0.080000)
	registerVal2:addElement(registerVal3)
	registerVal2.extracamBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 58.000000, 359.400000)
	registerVal4:setTopBottom(true, true, 18.000000, -28.000000)
	local function __FUNC_B1A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_B1A_)
	registerVal2:addElement(registerVal4)
	registerVal2.largeImage = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_GenericForeground_Full.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.categoryTypeImage:setAlpha(0.000000)
	local function __FUNC_BCC_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_BCC_)
	registerVal2:addElement(registerVal5)
	registerVal2.foreground = registerVal5
	local registerVal6 = CoD.systemOverlay_supportWidget.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 58.000000, 359.400000)
	registerVal6:setTopBottom(false, true, -52.000000, -28.000000)
	local function __FUNC_C1E_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_C1E_)
	registerVal2:addElement(registerVal6)
	registerVal2.supportInfo = registerVal6
	local registerVal7 = CoD.FE_TitleNumBrdr.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 58.000000, 359.400000)
	registerVal7:setTopBottom(true, true, 18.000000, -52.000000)
	registerVal7:setAlpha(0.600000)
	registerVal2:addElement(registerVal7)
	registerVal2.levelBoxBg = registerVal7
	local registerVal8 = CoD.SystemOverlay_WeaponPrestigeStar.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 389.250000, 411.250000)
	registerVal8:setTopBottom(true, false, 15.000000, 37.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.SystemOverlayWeaponPrestigeStar = registerVal8
	registerVal5.id = "foreground"
	local function __FUNC_C6E_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_C6E_)
	local function __FUNC_D72_(arg0)
		arg0.foreground:close()
		arg0.supportInfo:close()
		arg0.levelBoxBg:close()
		arg0.SystemOverlayWeaponPrestigeStar:close()
		arg0.largeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D72_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

