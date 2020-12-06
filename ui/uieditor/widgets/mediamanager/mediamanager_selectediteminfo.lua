-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareSelectedItemPublishedTime")
require("ui.uieditor.widgets.FileShare.FileshareSelectedItemAuthor")
local function __FUNC_284_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "MediaManager", false)
	registerVal3 = Engine.CreateModel(registerVal2, "isBuyMoreSlot", false)
	local registerVal4 = Engine.CreateModel(registerVal2, "createTime", false)
	local registerVal5 = Engine.CreateModel(registerVal2, "authorName", false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MediaManager_SelectedItemInfo = registerVal2
local function __FUNC_3D2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_284_ then
		__FUNC_284_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.MediaManager_SelectedItemInfo)
	registerVal2.id = "MediaManager_SelectedItemInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.bg = registerVal3
	local registerVal4 = CoD.FileshareSelectedItemPublishedTime.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal4:setTopBottom(true, false, 30.000000, 50.000000)
	local function __FUNC_A69_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PublishTime:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "MediaManager", "createTime", __FUNC_A69_)
	registerVal2:addElement(registerVal4)
	registerVal2.FileshareSelectedItemPublishedTime = registerVal4
	local registerVal5 = CoD.FileshareSelectedItemAuthor.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 30.000000)
	local function __FUNC_B43_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.AuthorName:setText(registerVal1)
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "MediaManager", "authorName", __FUNC_B43_)
	registerVal2:addElement(registerVal5)
	registerVal2.FileshareSelectedItemAuthor = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_BF4_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileshareSelectedItemPublishedTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FileshareSelectedItemAuthor:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_BF4_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_DC7_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.bg:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileshareSelectedItemPublishedTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FileshareSelectedItemAuthor:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_DC7_
	registerVal6.Visible = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Visible"
	local function __FUNC_F9C_(arg0, arg1, arg2)
		local registerVal3 = MediaManagerIsBuyMoreSlot()
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_F9C_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	registerVal9 = Engine.GetGlobalModel()
	registerVal8 = Engine.GetModel(registerVal9, "MediaManager.isBuyMoreSlot")
	local function __FUNC_FFB_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "MediaManager.isBuyMoreSlot"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal8, __FUNC_FFB_)
	local function __FUNC_1128_(arg0)
		arg0.FileshareSelectedItemPublishedTime:close()
		arg0.FileshareSelectedItemAuthor:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1128_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MediaManager_SelectedItemInfo.new = __FUNC_3D2_
