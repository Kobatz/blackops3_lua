-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MenuSpecificWidgets.StartMenu.MissionObjectiveStep")
local function __FUNC_23A_(arg0, arg1)
	local function __FUNC_2FC_(arg0, arg1)
		local registerVal2 = arg0:getModel(arg1, "status")
		local registerVal3 = Engine.GetModelValue(registerVal2)
		if registerVal2 and registerVal3 == "done" then
			registerVal3, registerVal4, registerVal5, registerVal6 = arg0.objectiveName:getLocalRect()
			arg0:setTopBottom(true, false, 0.000000, registerVal6)
			return registerVal6
		end
		registerVal5 = {}
		registerVal5.name = "child_size_updated"
		arg0.subobjectivesList:processEvent(registerVal5)
		registerVal3, registerVal4, registerVal5, registerVal6 = arg0.subobjectivesList:getLocalRect()
		arg0:setTopBottom(true, false, 0.000000, registerVal6)
		return registerVal6
	end

	arg0.getHeightInList = __FUNC_2FC_
	local registerVal4 = {}
	registerVal4.name = "child_size_updated"
	arg0.subobjectivesList:processEvent(registerVal4)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.MissionObjectiveItemInternal = registerVal2
local function __FUNC_4D6_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MissionObjectiveItemInternal)
	registerVal2.id = "MissionObjectiveItemInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 115.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal3:setRGB(0.570000, 0.580000, 0.590000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.objectiveName = registerVal3
	local registerVal4 = LUI.GridLayout.new(arg0, arg1, false, 0.000000, 0.000000, 0.000000, 0.000000, nil, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:setLeftRight(true, false, 2.500000, 247.500000)
	registerVal4:setTopBottom(true, false, 25.000000, 115.000000)
	registerVal4:setWidgetType(CoD.MissionObjectiveStep)
	registerVal4:setVerticalCount(3.000000)
	registerVal4:setSpacing(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.subobjectivesList = registerVal4
	local function __FUNC_B88_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.objectiveName:linkToElementModel(registerVal2, "displayText", true, __FUNC_B88_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_C42_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.objectiveName:setRGB(0.570000, 0.580000, 0.590000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.subobjectivesList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C42_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_DCB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.objectiveName:setRGB(0.730000, 0.740000, 0.750000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.subobjectivesList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_DCB_
	registerVal5.Done = registerVal6
	registerVal6 = {}
	local function __FUNC_F53_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.objectiveName:setRGB(0.570000, 0.580000, 0.590000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.subobjectivesList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_F53_
	registerVal5.Active = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_10DB_(arg0)
		arg0.subobjectivesList:close()
		arg0.objectiveName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_10DB_)
	if __FUNC_23A_ then
		__FUNC_23A_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.MissionObjectiveItemInternal.new = __FUNC_4D6_
