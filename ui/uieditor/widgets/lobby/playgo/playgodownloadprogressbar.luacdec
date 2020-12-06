-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1D2_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "PlayGoDownloadProgress", false)
	registerVal3 = Engine.CreateModel(registerVal2, "progress", false)
end

local function __FUNC_2BB_(arg0, arg1, arg2)
	local registerVal3 = Engine.GetCurrentModeDownloadProgress()
	local registerVal4 = PlayGoIsStillDownloading()
	if registerVal3 < 1.000000 or registerVal4 then
		local function __FUNC_4E9_()
			local registerVal0 = Engine.GetCurrentModeDownloadProgress()
			registerVal0 = Engine.GetCurrentModeDownloadString()
			local registerVal2 = Engine.GetGlobalModel()
			local registerVal1 = Engine.CreateModel(registerVal2, "PlayGoDownloadProgress", false)
			registerVal2 = Engine.CreateModel(registerVal1, "progress", false)
			local registerVal3 = Engine.CreateModel(registerVal1, "chunk", false)
			Engine.SetModelValue(registerVal2, registerVal0)
			Engine.SetModelValue(registerVal3, registerVal0)
			local registerVal4 = PlayGoIsStillDownloading()
			if registerVal4 == false then
				Engine.SetModelValue(registerVal2, 1.000000)
				arg0.close(arg0)
			end
		end

		registerVal4 = LUI.UITimer.newElementTimer(1000.000000, false, __FUNC_4E9_, arg0)
		arg0:addElement(registerVal4)
	else
		local registerVal5 = Engine.GetGlobalModel()
		registerVal4 = Engine.CreateModel(registerVal5, "PlayGoDownloadProgress", false)
		registerVal5 = Engine.CreateModel(registerVal4, "progress", false)
		Engine.SetModelValue(registerVal5, 1.000000)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.PlayGoDownloadProgressBar = registerVal3
local function __FUNC_747_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1D2_ then
		__FUNC_1D2_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayGoDownloadProgressBar)
	registerVal2.id = "PlayGoDownloadProgressBar"
	registerVal2.soundSet = "Special_widgets"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 17.000000)
	registerVal4:setRGB(1.000000, 0.350000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_wipe_delta"))
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 0.000000, 1.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(3.000000, 0.100000, 0.100000, 0.000000, 0.000000)
	local function __FUNC_DF8_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			local registerVal8 = CoD.GetVectorComponentFromString(registerVal1, 1.000000)
			local registerVal9 = CoD.GetVectorComponentFromString(registerVal1, 2.000000)
			local registerVal10 = CoD.GetVectorComponentFromString(registerVal1, 3.000000)
			registerVal4:setShaderVector(0.000000, SwapVectorComponents(1.000000, 2.000000, registerVal8, registerVal9, registerVal10, CoD.GetVectorComponentFromString(registerVal1, 4.000000)))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "PlayGoDownloadProgress", "progress", __FUNC_DF8_)
	registerVal2:addElement(registerVal4)
	registerVal2.progress = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_F7E_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progress:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F7E_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_10CC_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(0.200000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progress:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_10CC_
	registerVal5.Visible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_1221_(arg0, arg2, arg3)
		return PlayGoIsStillDownloading(arg1)
	end

	registerVal8.condition = __FUNC_1221_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "PlayGoDownloadProgress.progress")
	local function __FUNC_127E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "PlayGoDownloadProgress.progress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_127E_)
	local function __FUNC_13B1_(arg0)
		arg0.progress:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_13B1_)
	if __FUNC_2BB_ then
		__FUNC_2BB_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PlayGoDownloadProgressBar.new = __FUNC_747_
