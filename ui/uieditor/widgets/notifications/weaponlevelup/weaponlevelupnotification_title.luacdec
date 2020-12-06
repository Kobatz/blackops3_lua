-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_TitleBacking")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponLevelUpNotification_Title = registerVal1
function CoD.WeaponLevelUpNotification_Title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponLevelUpNotification_Title)
	registerVal2.id = "WeaponLevelUpNotification_Title"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 408.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponLevelUpNotification_TitleBacking.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponLevelUpNotificationTitleBacking = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -300.000000, 300.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 32.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_849_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 170.000000, 170.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_849_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local function __FUNC_8BC_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Text:linkToElementModel(registerVal2, "title", true, __FUNC_8BC_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_976_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_976_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_9D6_(arg0)
		arg0.WeaponLevelUpNotificationTitleBacking:close()
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9D6_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

