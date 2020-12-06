-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.scorestreaksArrow = registerVal1
function CoD.scorestreaksArrow.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.scorestreaksArrow)
	registerVal2.id = "scorestreaksArrow"
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
	local function __FUNC_67D_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowUp:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_67D_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_776_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.arrowUp:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_776_
	registerVal4.NoHintText = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "NoHintText"
	local function __FUNC_873_(arg0, arg1, arg2)
		local registerVal3 = HasHintText(arg1)
		return (not registerVal3)
	end

	registerVal7.condition = __FUNC_873_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_8C5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = nil
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, nil, true, __FUNC_8C5_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

