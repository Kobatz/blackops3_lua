-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.GenericPopups.SideModalButtonList")
function LUI.createMenu.SidePopup(arg0)
	local registerVal1 = CoD.Menu.NewForUIEditor("SidePopup")
	if PreLoadFunc then
		PreLoadFunc(registerVal1, arg0)
	end
	registerVal1.soundSet = "default"
	registerVal1:setOwner(arg0)
	registerVal1:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal1:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal1:playSound("menu_open", arg0)
	local registerVal3 = Engine.GetModelForController(arg0)
	local registerVal2 = Engine.CreateModel(registerVal3, "SidePopup.buttonPrompts")
	registerVal1.buttonModel = registerVal2
	registerVal1.anyChildUsesUpdateState = true
	registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 899.500000, 1280.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.900000)
	registerVal1:addElement(registerVal3)
	registerVal1.Background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 895.500000, 899.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal1:addElement(registerVal4)
	registerVal1.Border = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 892.500000, 895.500000)
	registerVal5:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal5:setAlpha(0.420000)
	registerVal1:addElement(registerVal5)
	registerVal1.Border0 = registerVal5
	local registerVal6 = CoD.SideModalButtonList.new(registerVal1, arg0)
	registerVal6:setLeftRight(true, false, 892.500000, 1206.500000)
	registerVal6:setTopBottom(true, false, 25.000000, 695.000000)
	registerVal1:addElement(registerVal6)
	registerVal1.SideModalButtonList0 = registerVal6
	local function __FUNC_92E_(arg0, arg1, arg2, arg3)
		GoBack(registerVal1, arg2)
		return true
	end

	local function __FUNC_980_(arg0, arg1, arg2)
		CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, "")
		return false
	end

	registerVal1:AddButtonCallbackFunction(registerVal1, arg0, Enum.LUIButton.LUI_KEY_XBB_PSCIRCLE, nil, __FUNC_92E_, __FUNC_980_, false)
	registerVal6.id = "SideModalButtonList0"
	local registerVal9 = {}
	registerVal9.name = "menu_loaded"
	registerVal9.controller = arg0
	registerVal1:processEvent(registerVal9)
	registerVal9 = {}
	registerVal9.name = "update_state"
	registerVal9.menu = registerVal1
	registerVal1:processEvent(registerVal9)
	local registerVal7 = registerVal1:restoreState()
	if not registerVal7 then
		registerVal9 = {}
		registerVal9.name = "gain_focus"
		registerVal9.controller = arg0
		registerVal1.SideModalButtonList0:processEvent(registerVal9)
	end
	local function __FUNC_A74_(arg1)
		arg1.SideModalButtonList0:close()
		local registerVal3 = Engine.GetModelForController(arg0)
		Engine.UnsubscribeAndFreeModel(Engine.GetModel(registerVal3, "SidePopup.buttonPrompts"))
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal1, "close", __FUNC_A74_)
	if PostLoadFunc then
		PostLoadFunc(registerVal1, arg0)
	end
	return registerVal1
end

