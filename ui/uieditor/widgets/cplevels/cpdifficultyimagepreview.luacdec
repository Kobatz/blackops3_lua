-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CPDifficultyImagePreview = registerVal1
function CoD.CPDifficultyImagePreview.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CPDifficultyImagePreview)
	registerVal2.id = "CPDifficultyImagePreview"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 505.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 400.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -177.240000, 177.240000)
	registerVal3:setTopBottom(true, false, 18.600000, 381.400000)
	local function __FUNC_511_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_511_)
	registerVal2:addElement(registerVal3)
	registerVal2.PreviewImage = registerVal3
	local function __FUNC_5C4_(arg0)
		arg0.PreviewImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_5C4_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

