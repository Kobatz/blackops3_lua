-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local function __FUNC_223_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "fileshareRoot", false)
	Engine.CreateModel(registerVal2, "itemsCount", false)
	Engine.CreateModel(registerVal2, "PublishMode", false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FileshareNoContentGraphic = registerVal2
local function __FUNC_339_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_223_ then
		__FUNC_223_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareNoContentGraphic)
	registerVal2.id = "FileshareNoContentGraphic"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 749.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 478.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -3.000000, -3.000000)
	registerVal3:setTopBottom(true, true, -3.000000, -4.000000)
	registerVal3:setAlpha(0.850000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -4.000000, -3.000000)
	registerVal4:setTopBottom(true, true, -3.000000, -4.000000)
	registerVal4:setAlpha(0.450000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivediagfull"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal4:setShaderVector(0.000000, 0.032043, 0.050209, 0.000000, 0.000000)
	registerVal4:setupNineSliceShader(24.000000, 24.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgInactiveDiag = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_AA1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AA1_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_C11_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.StartMenuframenoBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgInactiveDiag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C11_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_D81_(arg0, arg2, arg3)
		local registerVal3 = FileshareHasContent(arg2, arg1)
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_D81_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "fileshareRoot.itemsCount")
	local function __FUNC_DE1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_DE1_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "FileshareRoot.PublishMode")
	local function __FUNC_F0E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_F0E_)
	local function __FUNC_103B_(arg0)
		arg0.StartMenuframenoBG0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_103B_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareNoContentGraphic.new = __FUNC_339_
