-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanel")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Prestige_Button_Title = registerVal1
function CoD.Prestige_Button_Title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Prestige_Button_Title)
	registerVal2.id = "Prestige_Button_Title"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 233.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = CoD.FE_ButtonPanel.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 7.000000, -7.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal4:setText(Engine.Localize("MENU_PRESTIGE_ENTER_LEVEL"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8DB_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_8DB_)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonTitle = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_939_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_939_
	local function __FUNC_99A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_99A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_9FA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_9FA_
	local function __FUNC_A5A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Focus = __FUNC_A5A_
	registerVal5.Locked = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_ABA_(arg0)
		arg0.FEButtonPanel0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_ABA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

