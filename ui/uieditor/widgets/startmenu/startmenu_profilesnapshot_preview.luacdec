-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_ImageContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_ProfileSnapshot_Preview = registerVal1
function CoD.StartMenu_ProfileSnapshot_Preview.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_ProfileSnapshot_Preview)
	registerVal2.id = "StartMenu_ProfileSnapshot_Preview"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 367.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 326.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIElement.new()
	registerVal3:setLeftRight(true, true, 1.000000, -2.000000)
	registerVal3:setTopBottom(true, true, 1.000000, -1.500000)
	local function __FUNC_846_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_SCREENSHOT", registerVal1))
		end
	end

	registerVal3:subscribeToGlobalModel(arg1, "CombatRecordProfileSnapshot", "fileId", __FUNC_846_)
	registerVal2:addElement(registerVal3)
	registerVal2.screenshotImage = registerVal3
	local registerVal4 = CoD.StartMenu_ImageContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.ImageContainer = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_932_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.screenshotImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImageContainer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_932_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A98_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.screenshotImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ImageContainer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A98_
	registerVal5.Snapshot = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Snapshot"
	local function __FUNC_C00_(arg0, arg2, arg3)
		return CombatRecordProfileSnapshotShouldShowSnapshot(arg1)
	end

	registerVal8.condition = __FUNC_C00_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetModelForController(arg1)
	registerVal7 = Engine.GetModel(registerVal8, "CombatRecordProfileSnapshot.fileId")
	local function __FUNC_C73_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "CombatRecordProfileSnapshot.fileId"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_C73_)
	local function __FUNC_DA8_(arg0)
		arg0.ImageContainer:close()
		arg0.screenshotImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DA8_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

