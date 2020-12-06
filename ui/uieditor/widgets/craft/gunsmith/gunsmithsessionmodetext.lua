-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithSessionModeText = registerVal1
function CoD.GunsmithSessionModeText.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithSessionModeText)
	registerVal2.id = "GunsmithSessionModeText"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 85.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, -0.060000, 85.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal3:setTTF("fonts/default.ttf")
	local function __FUNC_5B8_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_5B8_)
	registerVal2:addElement(registerVal3)
	registerVal2.modeText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_619_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_619_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

