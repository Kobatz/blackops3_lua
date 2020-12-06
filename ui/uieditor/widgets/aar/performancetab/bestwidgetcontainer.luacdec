-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.AAR.PerformanceTab.BestWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.BestWidgetContainer = registerVal1
function CoD.BestWidgetContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.BestWidgetContainer)
	registerVal2.id = "BestWidgetContainer"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = CoD.BestWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 51.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 50.000000)
	local function __FUNC_5E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setAlpha(registerVal1)
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "AARPerformanceTabStats", "showBestKDRIcon", __FUNC_5E4_)
	registerVal2:addElement(registerVal3)
	registerVal2.BestIconForKDR = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_679_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_679_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_6DA_(arg0)
		arg0.BestIconForKDR:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_6DA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

