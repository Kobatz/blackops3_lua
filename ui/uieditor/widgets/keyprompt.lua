-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local function __FUNC_1FB_(arg0, arg1)
	if CoD.isPC then
		local function __FUNC_2DE_(arg1, arg2)
			local registerVal2 = arg1:getTextWidth()
			if 0.000000 < registerVal2 then
				ScaleWidgetToLabelCentered(arg0, arg1, 8.000000)
				SetState(arg0, "DefaultState")
			else
				SetState(arg0, "Invisible")
			end
		end

		LUI.OverrideFunction_CallOriginalFirst(arg0.keybind, "setText", __FUNC_2DE_)
	end
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.KeyPrompt = registerVal2
local function __FUNC_3CF_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.KeyPrompt)
	registerVal2.id = "KeyPrompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 24.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -65.000000, 65.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal3:setText(Engine.Localize(""))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.keybind = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setRGB(0.790000, 0.780000, 0.780000)
	registerVal2:addElement(registerVal4)
	registerVal2.Border = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_929_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.keybind:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_929_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A7B_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.keybind:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A7B_
	registerVal5.Invisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_BCB_(arg0)
		arg0.Border:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_BCB_)
	if __FUNC_1FB_ then
		__FUNC_1FB_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.KeyPrompt.new = __FUNC_3CF_
