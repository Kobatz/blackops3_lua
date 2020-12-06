-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.FileShare.FileshareSelectedItemInfo")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.WeaponNameWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_Identity_SubTitle")
require("ui.uieditor.widgets.FileShare.FileshareCustomGamesLocalGameTypeImage")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MyShowcase_PublishedCustomGameInfo = registerVal1
function CoD.MyShowcase_PublishedCustomGameInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MyShowcase_PublishedCustomGameInfo)
	registerVal2.id = "MyShowcase_PublishedCustomGameInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 482.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FileshareSelectedItemInfo.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 36.500000, 463.500000)
	registerVal3:setTopBottom(true, false, 398.000000, 482.000000)
	local function __FUNC_DD9_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_DD9_)
	registerVal2:addElement(registerVal3)
	registerVal2.FileshareSelectedItemInfo = registerVal3
	local registerVal4 = CoD.WeaponNameWidget.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 38.000000, 461.000000)
	registerVal4:setTopBottom(true, false, 285.000000, 319.000000)
	local function __FUNC_E2A_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_E2A_)
	local function __FUNC_E7A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.weaponNameLabel:setText(registerVal1)
		end
	end

	registerVal4:linkToElementModel(registerVal2, "fileName", true, __FUNC_E7A_)
	registerVal2:addElement(registerVal4)
	registerVal2.FileName = registerVal4
	local registerVal5 = CoD.StartMenu_Identity_SubTitle.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 35.500000, 463.500000)
	registerVal5:setTopBottom(true, false, 325.500000, 351.500000)
	registerVal5.SubTitle:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	local function __FUNC_F31_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.SubTitle:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "gameTypeString", true, __FUNC_F31_)
	registerVal2:addElement(registerVal5)
	registerVal2.GameTypeName = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 41.500000, 464.500000)
	registerVal6:setTopBottom(true, false, 352.500000, 374.500000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setLetterSpacing(0.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1008_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(registerVal1)
		end
	end

	registerVal6:linkToElementModel(registerVal2, "fileDescription", true, __FUNC_1008_)
	registerVal2:addElement(registerVal6)
	registerVal2.CustomGameDesc = registerVal6
	local registerVal7 = CoD.FileshareCustomGamesLocalGameTypeImage.new(arg0, arg1)
	registerVal7:setLeftRight(false, false, -214.500000, 214.500000)
	registerVal7:setTopBottom(true, false, 13.000000, 270.400000)
	local function __FUNC_109C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7.LocalGameTypeImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "gameTypeImage", true, __FUNC_109C_)
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "Hidden"
	local function __FUNC_1178_(arg0, arg2, arg3)
		local registerVal3 = FileshareShowcaseIsPublishMode(arg2, arg1)
		if not registerVal3 then
			registerVal3 = FileshareHasContent(arg2, arg1)
		else
		end
		return true
	end

	registerVal11.condition = __FUNC_1178_
	registerVal10 = {registerVal11}
	registerVal7:mergeStateConditions(registerVal10)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "FileshareRoot.PublishMode")
	local function __FUNC_1225_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1225_)
	registerVal11 = Engine.GetGlobalModel()
	registerVal10 = Engine.GetModel(registerVal11, "fileshareRoot.itemsCount")
	local function __FUNC_1353_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		arg0:updateElementState(registerVal7, registerVal4)
	end

	registerVal7:subscribeToModel(registerVal10, __FUNC_1353_)
	registerVal2:addElement(registerVal7)
	registerVal2.FileshareGameTypeImage = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_147E_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FileshareSelectedItemInfo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameTypeName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CustomGameDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FileshareGameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_147E_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_16FD_()
		registerVal2:setupElementClipCounter(5.000000)
		registerVal3:completeAnimation()
		registerVal2.FileshareSelectedItemInfo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FileName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GameTypeName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.CustomGameDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.FileshareGameTypeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_16FD_
	registerVal8.Visible = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_197D_(arg0)
		arg0.FileshareSelectedItemInfo:close()
		arg0.FileName:close()
		arg0.GameTypeName:close()
		arg0.FileshareGameTypeImage:close()
		arg0.CustomGameDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_197D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

