-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.WeaponLevelUp.WeaponLevelUpNotification_FooterBacking02")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WeaponLevelUpNotification_FooterLabel02 = registerVal1
function CoD.WeaponLevelUpNotification_FooterLabel02.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WeaponLevelUpNotification_FooterLabel02)
	registerVal2.id = "WeaponLevelUpNotification_FooterLabel02"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 206.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.WeaponLevelUpNotification_FooterBacking02.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.WeaponLevelUpNotificationFooterBacking = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -180.000000, 180.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 31.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_895_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 86.000000, 86.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_895_)
	registerVal2:addElement(registerVal4)
	registerVal2.SubText = registerVal4
	local function __FUNC_908_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal2.SubText:linkToElementModel(registerVal2, "subtitle", true, __FUNC_908_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_99C_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_99C_
	local function __FUNC_9FE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.TimeUp = __FUNC_9FE_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A5E_(arg0)
		arg0.WeaponLevelUpNotificationFooterBacking:close()
		arg0.SubText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A5E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

