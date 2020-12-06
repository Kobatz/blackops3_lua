-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.LayerIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemLayer = registerVal1
function CoD.EmblemLayer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemLayer)
	registerVal2.id = "EmblemLayer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 15.000000, -15.000000)
	registerVal3:setTopBottom(true, true, 15.000000, -15.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 15.000000, -15.000000)
	registerVal4:setTopBottom(true, true, 15.000000, -15.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.backgroundMask = registerVal4
	local registerVal5 = CoD.LayerIcon.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_794_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_794_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "EmptyLayer"
	local function __FUNC_7E6_(arg0, arg2, arg3)
		return IsLayerEmpty(registerVal2, arg2, arg1)
	end

	registerVal9.condition = __FUNC_7E6_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.layerIcon = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_83E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setLeftRight(true, true, 15.000000, -15.000000)
		registerVal2.background:setTopBottom(true, true, 15.000000, -15.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.layerIcon:setScale(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_83E_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_9FF_(arg0)
		arg0.layerIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9FF_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

