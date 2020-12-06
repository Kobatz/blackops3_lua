-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C3_(arg0)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.ArabicAlignTextBox = registerVal2
local function __FUNC_1EC_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ArabicAlignTextBox)
	registerVal2.id = "ArabicAlignTextBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 132.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal3:setText(Engine.Localize("+1500 XP"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_BOTTOM)
	local function __FUNC_66C_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_loaded", __FUNC_66C_)
	registerVal2:addElement(registerVal3)
	registerVal2.textBox = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_711_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_711_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if __FUNC_1C3_ then
		__FUNC_1C3_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ArabicAlignTextBox.new = __FUNC_1EC_
