-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideCommonGroupsListWidgetGroupName")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideCommonGroupsListWidget = registerVal1
function CoD.LobbySlideCommonGroupsListWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideCommonGroupsListWidget)
	registerVal2.id = "LobbySlideCommonGroupsListWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 307.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.LobbySlideCommonGroupsListWidgetGroupName.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 219.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setRGB(1.000000, 0.410000, 0.000000)
	local function __FUNC_A10_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_A10_)
	registerVal2:addElement(registerVal3)
	registerVal2.LobbySlideCommonGroupsListWidgetGroupName = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 307.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal4:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
	registerVal4:setText(Engine.Localize("GROUPS_PRIMARY_TAG"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_A62_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_loaded", __FUNC_A62_)
	registerVal2:addElement(registerVal4)
	registerVal2.PrimaryTag = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_B05_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideCommonGroupsListWidgetGroupName:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrimaryTag:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_B05_
	local function __FUNC_C9A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Active = __FUNC_C9A_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_CFA_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.LobbySlideCommonGroupsListWidgetGroupName:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.PrimaryTag:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_CFA_
	local function __FUNC_E93_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Active = __FUNC_E93_
	registerVal5.PrimaryGroup = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "PrimaryGroup"
	local function __FUNC_EF2_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "primaryGroup")
	end

	registerVal8.condition = __FUNC_EF2_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_F68_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "primaryGroup"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "primaryGroup", true, __FUNC_F68_)
	local function __FUNC_108A_(arg0)
		arg0.LobbySlideCommonGroupsListWidgetGroupName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_108A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

