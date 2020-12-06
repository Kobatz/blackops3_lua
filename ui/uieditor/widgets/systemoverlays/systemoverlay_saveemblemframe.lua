-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.SystemOverlays.systemOverlay_Layout_SaveEmblem")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.systemOverlay_SaveEmblemFrame = registerVal1
function CoD.systemOverlay_SaveEmblemFrame.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.systemOverlay_SaveEmblemFrame)
	registerVal2.id = "systemOverlay_SaveEmblemFrame"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 320.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIElement.new()
	registerVal3:setLeftRight(true, false, 36.500000, 383.500000)
	registerVal3:setTopBottom(true, false, 15.000000, 228.000000)
	local function __FUNC_7BE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupEmblem(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Customization", "type", __FUNC_7BE_)
	registerVal2:addElement(registerVal3)
	registerVal2.emblem = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 36.500000, 383.500000)
	registerVal4:setTopBottom(true, false, 15.000000, 228.000000)
	registerVal4:setAlpha(0.100000)
	registerVal2:addElement(registerVal4)
	registerVal2.emblemBG = registerVal4
	local registerVal5 = CoD.systemOverlay_Layout_SaveEmblem.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 320.000000)
	local function __FUNC_854_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_854_)
	registerVal2:addElement(registerVal5)
	registerVal2.foreground = registerVal5
	registerVal5.id = "foreground"
	local function __FUNC_8A6_(arg0, arg1)
		local registerVal2 = arg0.foreground:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_8A6_)
	local function __FUNC_9AA_(arg0)
		arg0.foreground:close()
		arg0.emblem:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9AA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

