-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PlayGoDownloadStatus = registerVal1
function CoD.PlayGoDownloadStatus.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayGoDownloadStatus)
	registerVal2.id = "PlayGoDownloadStatus"
	registerVal2.soundSet = "Special_widgets"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 4.500000, 169.500000)
	registerVal3:setTopBottom(true, false, 1.000000, 21.000000)
	registerVal3:setTTF("fonts/default.ttf")
	local function __FUNC_720_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "PlayGoDownloadProgress", "chunk", __FUNC_720_)
	registerVal2:addElement(registerVal3)
	registerVal2.ChunkName = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_7DA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChunkName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7DA_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_8D9_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.ChunkName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_8D9_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_9D4_(arg0, arg2, arg3)
		return PlayGoIsStillDownloading(arg1)
	end

	registerVal7.condition = __FUNC_9D4_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	registerVal7 = Engine.GetGlobalModel()
	registerVal6 = Engine.GetModel(registerVal7, "PlayGoDownloadProgress.progress")
	local function __FUNC_A32_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "PlayGoDownloadProgress.progress"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal6, __FUNC_A32_)
	local function __FUNC_B65_(arg0)
		arg0.ChunkName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B65_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

