-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.HackingBar = registerVal1
function CoD.HackingBar.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.HackingBar)
	registerVal2.id = "HackingBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 72.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 96.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 58.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 109.000000)
	registerVal3:setZRot(180.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_blackhat_bar_scanning"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal3:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(3.000000, 0.040000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_B5B_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal3:setShaderVector(2.000000, BlackhatHackingPercentageShaderValue(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "Blackhat", "perc", __FUNC_B5B_)
	registerVal2:addElement(registerVal3)
	registerVal2.BarScanning = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 58.500000)
	registerVal4:setTopBottom(true, false, 0.000000, 109.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZRot(180.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_blackhat_bar_hacking"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal4:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_CE5_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(2.000000, BlackhatHackingPercentageShaderValue(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "Blackhat", "perc", __FUNC_CE5_)
	registerVal2:addElement(registerVal4)
	registerVal2.BarHacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 58.500000)
	registerVal5:setTopBottom(true, false, 0.000000, 109.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(180.000000)
	registerVal5:setImage(RegisterImage("uie_t7_hud_blackhat_bar_breaching"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
	registerVal5:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal5:setShaderVector(3.000000, 0.030000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_E71_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal7 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal5:setShaderVector(2.000000, BlackhatHackingPercentageShaderValue(arg1, registerVal7, registerVal8, registerVal9, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Blackhat", "perc", __FUNC_E71_)
	registerVal2:addElement(registerVal5)
	registerVal2.BarBreaching = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_FFD_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_FFD_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_105E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BarScanning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BarHacking:setAlpha(1.000000)
		registerVal2.BarHacking:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		registerVal2.BarHacking:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BarHacking:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BarHacking:setShaderVector(3.000000, 0.040000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_105E_
	registerVal6.Hacking = registerVal7
	registerVal7 = {}
	local function __FUNC_12FF_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BarScanning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal5:completeAnimation()
		registerVal2.BarBreaching:setAlpha(1.000000)
		registerVal2.BarBreaching:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe"))
		registerVal2.BarBreaching:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BarBreaching:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.BarBreaching:setShaderVector(3.000000, 0.040000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_12FF_
	registerVal6.Breaching = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hacking"
	local function __FUNC_15A1_(arg0, arg2, arg3)
		return IsBlackhatHacking(arg1)
	end

	registerVal9.condition = __FUNC_15A1_
	local registerVal10 = {}
	registerVal10.stateName = "Breaching"
	local function __FUNC_15F7_(arg0, arg2, arg3)
		return IsBlackhatBreaching(arg1)
	end

	registerVal10.condition = __FUNC_15F7_
	registerVal8 = {registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetModelForController(arg1)
	registerVal8 = Engine.GetModel(registerVal9, "hudItems.blackhat.status")
	local function __FUNC_164D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hudItems.blackhat.status"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_164D_)
	local function __FUNC_177A_(arg0)
		arg0.BarScanning:close()
		arg0.BarHacking:close()
		arg0.BarBreaching:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_177A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

