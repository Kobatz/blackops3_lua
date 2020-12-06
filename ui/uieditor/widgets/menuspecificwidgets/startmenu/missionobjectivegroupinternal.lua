-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.StartMenu.MissionObjectiveItem")
require("ui.uieditor.widgets.Border")
local function __FUNC_26B_(arg0, arg1)
	local function __FUNC_329_(arg0)
		local registerVal3 = {}
		registerVal3.name = "child_size_updated"
		arg0.objectivesList:processEvent(registerVal3)
		local registerVal1, registerVal2, registerVal3, registerVal4 = arg0:getLocalRect()
		local registerVal5, registerVal6, registerVal7, registerVal8 = arg0.objectivesList:getLocalRect()
		arg0:setTopBottom(true, false, registerVal2, (registerVal2 + (registerVal8 + 5.000000)))
		return (registerVal8 + 5.000000)
	end

	arg0.getHeightInList = __FUNC_329_
	local registerVal4 = {}
	registerVal4.name = "child_size_updated"
	arg0.objectivesList:processEvent(registerVal4)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionObjectiveGroupInternal = registerVal2
local function __FUNC_439_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionObjectiveGroupInternal)
	registerVal2.id = "MissionObjectiveGroupInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 260.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 270.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal4:setRGB(0.730000, 0.740000, 0.750000)
	registerVal2:addElement(registerVal4)
	registerVal2.groupHeaderBackground = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 5.000000, -5.000000)
	registerVal5:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.groupHeaderText = registerVal5
	local registerVal6 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal6:makeFocusable()
	registerVal6:setLeftRight(true, false, 5.000000, 255.000000)
	registerVal6:setTopBottom(true, false, 35.000000, 267.000000)
	registerVal6:setDataSource("ObjectivesList")
	registerVal6:setWidgetType(CoD.MissionObjectiveItem)
	registerVal6:setVerticalCount(2.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.objectivesList = registerVal6
	local registerVal7 = CoD.Border.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setRGB(0.730000, 0.740000, 0.750000)
	registerVal2:addElement(registerVal7)
	registerVal2.border = registerVal7
	local function __FUNC_CCB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.groupHeaderText:linkToElementModel(registerVal2, "category", true, __FUNC_CCB_)
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_D82_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_D82_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_EEE_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.border:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_EEE_
	registerVal8.Active = registerVal9
	registerVal9 = {}
	local function __FUNC_105A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setRGB(0.840000, 0.840000, 0.840000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal7:completeAnimation()
		registerVal2.border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
	end

	registerVal9.DefaultClip = __FUNC_105A_
	registerVal8.Done = registerVal9
	registerVal2.clipsPerState = registerVal8
	registerVal6.id = "objectivesList"
	local function __FUNC_11CB_(arg0)
		arg0.objectivesList:close()
		arg0.border:close()
		arg0.groupHeaderText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11CB_)
	if __FUNC_26B_ then
		__FUNC_26B_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionObjectiveGroupInternal.new = __FUNC_439_
