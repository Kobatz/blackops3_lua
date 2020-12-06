-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ButtonPanelShader_ExposedValues")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FE_ButtonPanelShaderContainer_ExposedValues = registerVal1
function CoD.FE_ButtonPanelShaderContainer_ExposedValues.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FE_ButtonPanelShaderContainer_ExposedValues)
	registerVal2.id = "FE_ButtonPanelShaderContainer_ExposedValues"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 28.000000)
	local registerVal3 = CoD.FE_ButtonPanelShader_ExposedValues.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 24.980000, 25.000000, 0.000000, 0.000000)
	registerVal3.Full:setShaderVector(0.000000, 0.330000, 0.330000, 0.000000, 0.000000)
	registerVal3.Full:setShaderVector(1.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal3.Full:setupNineSliceShader(10.000000, 10.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEButtonPanel = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_76B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_76B_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_868_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.FEButtonPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_868_
	registerVal4.Hidden = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_96D_(arg0)
		arg0.FEButtonPanel:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_96D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

