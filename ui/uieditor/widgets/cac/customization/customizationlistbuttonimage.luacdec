-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CustomizationListButtonImage = registerVal1
function CoD.CustomizationListButtonImage.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CustomizationListButtonImage)
	registerVal2.id = "CustomizationListButtonImage"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 120.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 120.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setupUIStreamedImage(0.000000)
	local function __FUNC_684_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_684_)
	registerVal2:addElement(registerVal3)
	registerVal2.image = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	local function __FUNC_738_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setupWCPaintjobIconExtraCamRender(GetPaintshopExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "paintjobSlotAndIndex", true, __FUNC_738_)
	registerVal2:addElement(registerVal4)
	registerVal2.paintjobExtraCamRender = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_81A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.paintjobExtraCamRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_81A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_97E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.paintjobExtraCamRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_97E_
	registerVal5.PaintJob = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_AE2_(arg0)
		arg0.image:close()
		arg0.paintjobExtraCamRender:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AE2_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

