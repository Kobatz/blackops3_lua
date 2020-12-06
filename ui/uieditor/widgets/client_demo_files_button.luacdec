-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.button")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.client_demo_files_button = registerVal1
function CoD.client_demo_files_button.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.client_demo_files_button)
	registerVal2.id = "client_demo_files_button"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.button.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Button = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 315.000000, 369.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.Author = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 114.000000)
	registerVal5:setTopBottom(true, false, 25.000000, 50.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.Map = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 220.000000, 255.000000)
	registerVal6:setTopBottom(true, false, 25.000000, 50.000000)
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.Gametype = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 315.000000, 399.000000)
	registerVal7:setTopBottom(true, false, 25.000000, 50.000000)
	registerVal7:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal7)
	registerVal2.CreateTime = registerVal7
	local function __FUNC_941_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.buttoninternal0.Text0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Button:linkToElementModel(registerVal2, "fileName", true, __FUNC_941_)
	local function __FUNC_A3A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Author:linkToElementModel(registerVal2, "authorName", true, __FUNC_A3A_)
	local function __FUNC_AF2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Map:linkToElementModel(registerVal2, "mapName", true, __FUNC_AF2_)
	local function __FUNC_BAA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Gametype:linkToElementModel(registerVal2, "gameType", true, __FUNC_BAA_)
	local function __FUNC_C62_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.CreateTime:linkToElementModel(registerVal2, "createTime", true, __FUNC_C62_)
	registerVal3.id = "Button"
	local function __FUNC_D1A_(arg0, arg1)
		local registerVal2 = arg0.Button:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_D1A_)
	local function __FUNC_E1A_(arg0)
		arg0.Button:close()
		arg0.Author:close()
		arg0.Map:close()
		arg0.Gametype:close()
		arg0.CreateTime:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E1A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

