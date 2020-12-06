-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemChainIcon")
require("ui.uieditor.widgets.Craft.EmblemEditor.EmblemLayerNumber")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LayerIcon = registerVal1
function CoD.LayerIcon.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LayerIcon)
	registerVal2.id = "LayerIcon"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIElement.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setScale(0.900000)
	local function __FUNC_A68_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupDrawEmblemLayer(GetEmblemLayerAndGroupIndex(arg1, registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "layerAndGroupIndex", true, __FUNC_A68_)
	registerVal2:addElement(registerVal3)
	registerVal2.layerIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -44.000000, 44.000000)
	registerVal4:setTopBottom(false, false, -44.000000, 44.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_img_t7_menu_customclass_plus"))
	registerVal2:addElement(registerVal4)
	registerVal2.emptyLayerIcon = registerVal4
	local registerVal5 = CoD.EmblemChainIcon.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -16.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 20.000000)
	local function __FUNC_B3A_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_B3A_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Show"
	local function __FUNC_B8A_(arg0, arg2, arg3)
		local registerVal3 = Emblems_IsLayerLinked(arg2, arg1)
		if registerVal3 then
			registerVal3 = Emblem_IsLayerGrouped(arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_B8A_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_C22_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLinked"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isLinked", true, __FUNC_C22_)
	local function __FUNC_D3E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isGrouped"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "isGrouped", true, __FUNC_D3E_)
	registerVal2:addElement(registerVal5)
	registerVal2.linkIcon = registerVal5
	local registerVal6 = CoD.EmblemLayerNumber.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 4.000000, 54.000000)
	registerVal6:setTopBottom(true, false, 4.000000, 20.000000)
	local function __FUNC_E5B_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_E5B_)
	registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "GroupLayerNum"
	local function __FUNC_EAA_(arg0, arg2, arg3)
		local registerVal3 = Emblems_IsLayerLinked(arg2, arg1)
		if registerVal3 then
			registerVal3 = Emblem_IsLayerGrouped(arg2, arg1)
		end
		return registerVal3
	end

	registerVal10.condition = __FUNC_EAA_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	local function __FUNC_F3E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isLinked"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isLinked", true, __FUNC_F3E_)
	local function __FUNC_105A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isGrouped"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:linkToElementModel(registerVal6, "isGrouped", true, __FUNC_105A_)
	registerVal2:addElement(registerVal6)
	registerVal2.emblemLayerNumber = registerVal6
	local registerVal7 = {}
	registerVal8 = {}
	local function __FUNC_1177_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.layerIcon:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.layerIcon:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.layerIcon:setAlpha(1.000000)
		registerVal2.layerIcon:setScale(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emptyLayerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.linkIcon:setLeftRight(false, true, -16.000000, 4.000000)
		registerVal2.linkIcon:setTopBottom(true, false, -2.000000, 18.000000)
		registerVal2.linkIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emblemLayerNumber:setLeftRight(true, false, 0.000000, 50.000000)
		registerVal2.emblemLayerNumber:setTopBottom(true, false, -2.000000, 18.000000)
		registerVal2.emblemLayerNumber:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1177_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_14EE_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.layerIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.emptyLayerIcon:setLeftRight(false, false, -12.000000, 12.000000)
		registerVal2.emptyLayerIcon:setTopBottom(false, false, -12.000000, 12.000000)
		registerVal2.emptyLayerIcon:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.emptyLayerIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.linkIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emblemLayerNumber:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_14EE_
	registerVal7.EmptyLayer = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_17BD_(arg0)
		arg0.linkIcon:close()
		arg0.emblemLayerNumber:close()
		arg0.layerIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_17BD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

