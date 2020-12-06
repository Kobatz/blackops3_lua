-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.MPHintTextContainer")
function LUI.createMenu.MPHintText(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("MPHintText")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "MPHintText.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal3 = CoD.MPHintTextContainer.new(registerVal1, arg0)
	registerVal3:setLeftRight(false, false, -576.000000, 576.000000)
	registerVal3:setTopBottom(false, true, -181.000000, -155.000000)
	registerVal1:addElement(registerVal3)
	registerVal1.MPHintTextContainer = registerVal3
	local function __FUNC_65D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3.txtHintText0:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal1.MPHintTextContainer:linkToElementModel(registerVal1, "hint_text_line", true, __FUNC_65D_)
	local registerVal6 = {}
	registerVal6.name = "menu_loaded"
	registerVal6.controller = arg0
	registerVal1:processEvent(registerVal6)
	registerVal6 = {}
	registerVal6.name = "update_state"
	registerVal6.menu = registerVal1
	registerVal1:processEvent(registerVal6)
	local function __FUNC_738_(arg1)
		arg1.MPHintTextContainer:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "MPHintText.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_738_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

