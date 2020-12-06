-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1BE_(arg0, arg1, arg2)
	local function __FUNC_23A_(arg3)
		local registerVal3 = {}
		registerVal3.name = "update_state"
		registerVal3.controller = arg1
		registerVal3.menu = arg2
		arg0:processEvent(registerVal3)
		arg0:completeAnimation()
	end

	arg0:linkToElementModel(arg0, "hintText", true, __FUNC_23A_)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.HintTextArrow = registerVal2
local function __FUNC_30B_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.HintTextArrow)
	registerVal2.id = "HintTextArrow"
	registerVal2.soundSet = "CAC"
	registerVal2:setLeftRight(true, false, 0.000000, 10.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 10.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -11.000000, 11.000000)
	registerVal3:setTopBottom(false, false, -8.000000, 7.000000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_img_t7_menu_startmenu_option_arrow"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.arrowUp = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7AF_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_7AF_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_80E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowUp:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_80E_
	registerVal4.NoHintText = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "NoHintText"
	local function __FUNC_90B_(arg0, arg1, arg2)
		local registerVal3 = HasHintText(arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_90B_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_95D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_95D_)
	if __FUNC_1BE_ then
		__FUNC_1BE_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.HintTextArrow.new = __FUNC_30B_
