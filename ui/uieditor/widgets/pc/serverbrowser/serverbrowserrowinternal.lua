-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.PC.ServerBrowser.ServerBrowserFlag")
require("ui.uieditor.widgets.horizontalScrollingTextBox_18pt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ServerBrowserRowInternal = registerVal1
function CoD.ServerBrowserRowInternal.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 2.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ServerBrowserRowInternal)
	registerVal2.id = "ServerBrowserRowInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 700.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = CoD.ServerBrowserFlag.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 28.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.icon:setImage(RegisterImage("uie_t7_icon_serverbrowser_protected"))
	local function __FUNC_1584_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_1584_)
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "FlagOn"
	local function __FUNC_15D6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "passwordProtected")
	end

	registerVal7.condition = __FUNC_15D6_
	registerVal6 = {registerVal7}
	registerVal3:mergeStateConditions(registerVal6)
	local function __FUNC_1651_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "passwordProtected"
		arg0:updateElementState(registerVal3, registerVal4)
	end

	registerVal3:linkToElementModel(registerVal3, "passwordProtected", true, __FUNC_1651_)
	registerVal2:addElement(registerVal3)
	registerVal2.passwordFlag = registerVal3
	local registerVal4 = CoD.ServerBrowserFlag.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 30.000000, 58.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4.icon:setImage(RegisterImage("uie_t7_icon_serverbrowser_dedicated"))
	local function __FUNC_1777_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_1777_)
	registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "FlagOn"
	local function __FUNC_17C6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "dedicated")
	end

	registerVal8.condition = __FUNC_17C6_
	registerVal7 = {registerVal8}
	registerVal4:mergeStateConditions(registerVal7)
	local function __FUNC_1839_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "dedicated"
		arg0:updateElementState(registerVal4, registerVal4)
	end

	registerVal4:linkToElementModel(registerVal4, "dedicated", true, __FUNC_1839_)
	registerVal2:addElement(registerVal4)
	registerVal2.dedicatedFlag = registerVal4
	local registerVal5 = CoD.ServerBrowserFlag.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 60.000000, 88.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5.icon:setImage(RegisterImage("uie_t7_icon_serverbrowser_ranked"))
	local function __FUNC_1957_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1957_)
	registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "FlagOn"
	local function __FUNC_19A6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "ranked")
	end

	registerVal9.condition = __FUNC_19A6_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	local function __FUNC_1A16_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "ranked"
		arg0:updateElementState(registerVal5, registerVal4)
	end

	registerVal5:linkToElementModel(registerVal5, "ranked", true, __FUNC_1A16_)
	registerVal2:addElement(registerVal5)
	registerVal2.rankedFlag = registerVal5
	registerVal6 = CoD.horizontalScrollingTextBox_18pt.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 90.000000, 330.000000)
	registerVal6:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal6.textBox:setTTF("fonts/default.ttf")
	registerVal6.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1B30_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "name", true, __FUNC_1B30_)
	registerVal2:addElement(registerVal6)
	registerVal2.name = registerVal6
	registerVal7 = LUI.UIFrame.new(arg0, arg1, 0.000000, 0.000000, false)
	registerVal7:setLeftRight(true, false, 332.000000, 339.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.spacer = registerVal7
	registerVal8 = CoD.horizontalScrollingTextBox_18pt.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 341.000000, 446.000000)
	registerVal8:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal8.textBox:setTTF("fonts/default.ttf")
	registerVal8.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1C07_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8.textBox:setText(MapNameToLocalizedMapName(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "mapName", true, __FUNC_1C07_)
	registerVal2:addElement(registerVal8)
	registerVal2.map = registerVal8
	registerVal9 = CoD.ServerBrowserFlag.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 448.000000, 470.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9.icon:setImage(RegisterImage("uie_t7_icon_serverbrowser_skull"))
	local function __FUNC_1CE0_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1CE0_)
	local registerVal12 = {}
	local registerVal13 = {}
	registerVal13.stateName = "FlagOn"
	local function __FUNC_1D32_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "hardcore")
	end

	registerVal13.condition = __FUNC_1D32_
	registerVal12 = {registerVal13}
	registerVal9:mergeStateConditions(registerVal12)
	local function __FUNC_1DA4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "hardcore"
		arg0:updateElementState(registerVal9, registerVal4)
	end

	registerVal9:linkToElementModel(registerVal9, "hardcore", true, __FUNC_1DA4_)
	registerVal2:addElement(registerVal9)
	registerVal2.hardcoreFlag = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 472.000000, 591.000000)
	registerVal10:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal10:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1EC2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(Engine.Localize(GetGameTypeDisplayString(registerVal1)))
		end
	end

	registerVal10:linkToElementModel(registerVal2, "gameType", true, __FUNC_1EC2_)
	registerVal2:addElement(registerVal10)
	registerVal2.gametype = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 593.000000, 613.000000)
	registerVal11:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal11:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1FA4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal11:linkToElementModel(registerVal2, "clientCount", true, __FUNC_1FA4_)
	registerVal2:addElement(registerVal11)
	registerVal2.playerCount = registerVal11
	registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 615.000000, 624.000000)
	registerVal12:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal12:setText(Engine.Localize("/"))
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.slash = registerVal12
	registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 626.000000, 659.000000)
	registerVal13:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_205E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal13:linkToElementModel(registerVal2, "maxClients", true, __FUNC_205E_)
	registerVal2:addElement(registerVal13)
	registerVal2.maxPlayers = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 661.000000, 699.370000)
	registerVal14:setTopBottom(true, false, 2.000000, 20.000000)
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_2116_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal14:linkToElementModel(registerVal2, "ping", true, __FUNC_2116_)
	registerVal2:addElement(registerVal14)
	registerVal2.ping = registerVal14
	registerVal7.id = "spacer"
	local function __FUNC_21CE_(arg0, arg1)
		local registerVal2 = arg0.spacer:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_21CE_)
	local function __FUNC_22CE_(arg0)
		arg0.passwordFlag:close()
		arg0.dedicatedFlag:close()
		arg0.rankedFlag:close()
		arg0.name:close()
		arg0.map:close()
		arg0.hardcoreFlag:close()
		arg0.gametype:close()
		arg0.playerCount:close()
		arg0.maxPlayers:close()
		arg0.ping:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_22CE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

