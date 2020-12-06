-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_PanelNoBlur")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.scorestreaks_BoxLabel = registerVal1
function CoD.scorestreaks_BoxLabel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.scorestreaks_BoxLabel)
	registerVal2.id = "scorestreaks_BoxLabel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 114.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	local registerVal3 = CoD.FE_PanelNoBlur.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -9.500000, 9.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.Panel = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, true, 1.500000, -1.500000)
	registerVal4:setTopBottom(false, false, -9.500000, 8.500000)
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLetterSpacing(0.500000)
	local function __FUNC_774_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(GetItemNameFromIndex(registerVal1)))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_774_)
	local function __FUNC_854_(arg0, arg1)
		ScaleWidgetToLabelWrappedUp(registerVal2, arg0, 2.000000, 2.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_854_)
	registerVal2:addElement(registerVal4)
	registerVal2.name = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8C2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_8C2_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_922_(arg0)
		arg0.Panel:close()
		arg0.name:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_922_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

