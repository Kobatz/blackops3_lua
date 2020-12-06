-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Perks.NotificationPerksContainer")
require("ui.uieditor.widgets.Notifications.Medals.Notification_Medals")
require("ui.uieditor.widgets.Notifications.NotificationQueue")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notification = registerVal1
function CoD.Notification.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notification)
	registerVal2.id = "Notification"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, false, -67.500000, 67.500000)
	registerVal3:setTopBottom(true, false, 299.000000, 359.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.PreMatchTimer = registerVal3
	local registerVal4 = CoD.NotificationPerksContainer.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -567.000000, -38.000000)
	registerVal4:setTopBottom(false, true, -519.000000, -323.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.NotificationPerksContainer = registerVal4
	local registerVal5 = CoD.Notification_Medals.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -256.000000, 256.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 178.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Medals = registerVal5
	local registerVal6 = CoD.NotificationQueue.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.NotificationQueueWidget = registerVal6
	local function __FUNC_822_(arg0)
		arg0.NotificationPerksContainer:close()
		arg0.Medals:close()
		arg0.NotificationQueueWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_822_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

