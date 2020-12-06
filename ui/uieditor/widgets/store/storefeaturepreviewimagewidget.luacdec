-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StoreFeaturePreviewImageWidget = registerVal1
function CoD.StoreFeaturePreviewImageWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StoreFeaturePreviewImageWidget)
	registerVal2.id = "StoreFeaturePreviewImageWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 550.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 373.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 1.000000, 549.000000)
	registerVal3:setTopBottom(true, false, 1.000000, 372.000000)
	local function __FUNC_520_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "productImage", true, __FUNC_520_)
	registerVal2:addElement(registerVal3)
	registerVal2.previewImage = registerVal3
	local function __FUNC_5D4_(arg0)
		arg0.previewImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5D4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

