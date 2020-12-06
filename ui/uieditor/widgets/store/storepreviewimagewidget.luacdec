-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StorePreviewImageWidget = registerVal1
function CoD.StorePreviewImageWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StorePreviewImageWidget)
	registerVal2.id = "StorePreviewImageWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 386.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 254.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 1.000000, 1.000000)
	registerVal3:setTopBottom(true, true, 1.000000, 1.000000)
	local function __FUNC_5F3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "productImage", true, __FUNC_5F3_)
	registerVal2:addElement(registerVal3)
	registerVal2.previewImage = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_6A4_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_6A4_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_706_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.previewImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_706_
	registerVal4.Hide = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Hide"
	local function __FUNC_808_(arg0, arg1, arg2)
		return HideProductNameAndDesc()
	end

	registerVal7.condition = __FUNC_808_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_860_(arg0)
		arg0.previewImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_860_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

