-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.InfopaneWeaponPreview = registerVal1
function CoD.InfopaneWeaponPreview.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.InfopaneWeaponPreview)
	registerVal2.id = "InfopaneWeaponPreview"
	registerVal2.soundSet = "CAC_EditLoadout"
	registerVal2:setLeftRight(true, false, 0.000000, 512.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 256.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -256.000000, 256.000000)
	registerVal3:setTopBottom(false, false, -128.000000, 128.000000)
	local function __FUNC_831_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "image", true, __FUNC_831_)
	registerVal2:addElement(registerVal3)
	registerVal2.wideImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -128.000000, 128.000000)
	registerVal4:setTopBottom(false, false, -128.000000, 128.000000)
	registerVal4:setAlpha(0.000000)
	local function __FUNC_8E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "image", true, __FUNC_8E4_)
	registerVal2:addElement(registerVal4)
	registerVal2.squareImage = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -256.000000, 256.000000)
	registerVal5:setTopBottom(false, false, -128.000000, 128.000000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_998_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "emptyImage", true, __FUNC_998_)
	registerVal2:addElement(registerVal5)
	registerVal2.emptyWideImage = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -128.000000, 128.000000)
	registerVal6:setTopBottom(false, false, -128.000000, 128.000000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_A4C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "emptyImage", true, __FUNC_A4C_)
	registerVal2:addElement(registerVal6)
	registerVal2.emptySquareImage = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B00_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.wideImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.squareImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emptyWideImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emptySquareImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_B00_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_D19_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.wideImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.squareImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emptyWideImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emptySquareImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_D19_
	registerVal7.WideImage = registerVal8
	registerVal8 = {}
	local function __FUNC_F31_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.wideImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.squareImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emptyWideImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emptySquareImage:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_F31_
	registerVal7.EmptySquareImage = registerVal8
	registerVal8 = {}
	local function __FUNC_1149_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.wideImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.squareImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.emptyWideImage:setAlpha(0.150000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.emptySquareImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1149_
	registerVal7.EmptyWideImage = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_1361_(arg0)
		arg0.wideImage:close()
		arg0.squareImage:close()
		arg0.emptyWideImage:close()
		arg0.emptySquareImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1361_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

