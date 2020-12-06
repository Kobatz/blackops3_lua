-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Freerun.FR_Checkpoint_Delta")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_Checkpoint_Internal = registerVal1
function CoD.FR_Checkpoint_Internal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_Checkpoint_Internal)
	registerVal2.id = "FR_Checkpoint_Internal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 185.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 74.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal3:setImage(RegisterImage("uie_t7_freerun_hud_infobarright_blur"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_1"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.InfoBarBlur = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -2.000000, 2.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 37.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal4:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal4)
	registerVal2.Box1 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 7.500000, 29.500000)
	registerVal5:setText(Engine.Localize("FREERUN_CHECKPOINT"))
	registerVal5:setTTF("fonts/escom.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.FaultsTextBox = registerVal5
	local registerVal6 = CoD.FR_Checkpoint_Delta.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, -11.000000, 172.000000)
	registerVal6:setTopBottom(true, false, 39.880000, 65.000000)
	local function __FUNC_BFD_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_BFD_)
	registerVal2:addElement(registerVal6)
	registerVal2.FRCheckpointDelta = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_C4E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.FRCheckpointDelta:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_C4E_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_D55_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal6:completeAnimation()
		registerVal2.FRCheckpointDelta:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D55_
	registerVal7.TimeVisible = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "TimeVisible"
	local function __FUNC_E58_(arg0, arg2, arg3)
		return ShouldShowFreerunTimeClips(arg1)
	end

	registerVal10.condition = __FUNC_E58_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetModelForController(arg1)
	registerVal9 = Engine.GetModel(registerVal10, "FreeRun.runState")
	local function __FUNC_EB8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FreeRun.runState"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_EB8_)
	local function __FUNC_FDE_(arg0)
		arg0.FRCheckpointDelta:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_FDE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

