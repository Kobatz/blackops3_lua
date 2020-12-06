-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_ForegroundVLayout")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_Layout_GenericForeground_Full = registerVal1
function CoD.systemOverlay_Layout_GenericForeground_Full.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_Layout_GenericForeground_Full)
	registerVal2.id = "systemOverlay_Layout_GenericForeground_Full"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 384.000000, 414.000000)
	registerVal3:setTopBottom(true, false, 11.000000, 41.000000)
	local function __FUNC_83B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(GetCategoryIconForOverlayType(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "categoryType", true, __FUNC_83B_)
	registerVal2:addElement(registerVal3)
	registerVal2.categoryTypeImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 421.000000, 1216.000000)
	registerVal4:setTopBottom(true, false, 10.000000, 40.000000)
	registerVal4:setTTF("fonts/escom.ttf")
	local function __FUNC_91B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "title", true, __FUNC_91B_)
	registerVal2:addElement(registerVal4)
	registerVal2.title = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_ForegroundVLayout.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 421.000000, 1216.000000)
	registerVal5:setTopBottom(true, false, 41.000000, 321.000000)
	local function __FUNC_9D2_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_9D2_)
	registerVal2:addElement(registerVal5)
	registerVal2.systemOverlayLayoutForegroundVLayout0 = registerVal5
	registerVal5.id = "systemOverlayLayoutForegroundVLayout0"
	local function __FUNC_A22_(arg0, arg1)
		local registerVal2 = arg0.systemOverlayLayoutForegroundVLayout0:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_A22_)
	local function __FUNC_B41_(arg0)
		arg0.systemOverlayLayoutForegroundVLayout0:close()
		arg0.categoryTypeImage:close()
		arg0.title:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B41_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

