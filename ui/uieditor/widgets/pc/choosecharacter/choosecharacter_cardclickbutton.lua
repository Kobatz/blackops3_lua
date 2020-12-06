-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D8_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
	arg0.m_preventFromBeingActive = true
	local function __FUNC_299_(arg0, arg2)
		if arg0.m_button then
			CoD.PCUtil.SimulateButtonPress(arg1, arg0.m_button)
		end
		return true
	end

	arg0:registerEventHandler("button_action", __FUNC_299_)
end

local function __FUNC_35C_(arg0, arg1, arg2)
	if CoD.isPC then
		__FUNC_1D8_(arg0, arg1, arg2)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_CardClickButton = registerVal3
local function __FUNC_3CF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_CardClickButton)
	registerVal2.id = "ChooseCharacter_CardClickButton"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 80.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 20.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal3:setText(Engine.Localize("MENU_NEW"))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.label = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal4:setTopBottom(true, false, 2.500000, 22.500000)
	registerVal4:setText(Engine.Localize(""))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.keyshortcut = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_93C_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_93C_
	local function __FUNC_A3A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.label:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.Over = __FUNC_A3A_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if __FUNC_35C_ then
		__FUNC_35C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacter_CardClickButton.new = __FUNC_3CF_
