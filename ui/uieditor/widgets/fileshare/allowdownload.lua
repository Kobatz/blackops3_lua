-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AllowDownload = registerVal1
function CoD.AllowDownload.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AllowDownload)
	registerVal2.id = "AllowDownload"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal3:setRGB(0.210000, 0.210000, 0.210000)
	registerVal2:addElement(registerVal3)
	registerVal2.ImgAllowDownload = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1.630000, 18.630000)
	registerVal4:setTopBottom(true, false, 2.000000, 17.000000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal2:addElement(registerVal4)
	registerVal2.Image0 = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_723_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Image0:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_723_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_824_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Image0:setRGB(0.020000, 1.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_824_
	registerVal5.AllowDownload = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "AllowDownload"
	local function __FUNC_92D_(arg0, arg1, arg2)
		return FileshareShouldAllowDownload()
	end

	registerVal8.condition = __FUNC_92D_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "fileshareRoot.publishAllowDownload")
	local function __FUNC_98A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.publishAllowDownload"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_98A_)
	local function __FUNC_AC0_(arg0)
		UpdateSelfState(registerVal2, arg1)
	end

	registerVal2:subscribeToGlobalModel(arg1, "FileshareRoot", "publishAllowDownload", __FUNC_AC0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

