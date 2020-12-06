-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleBackingLine")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notif_Global_TitleLine = registerVal1
function CoD.Notif_Global_TitleLine.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notif_Global_TitleLine)
	registerVal2.id = "Notif_Global_TitleLine"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = CoD.Notif_Global_TitleBackingLine.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.NotifGlobalTitleBackingLine = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -273.000000, 273.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 37.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_7D5_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 158.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_7D5_)
	registerVal2:addElement(registerVal4)
	registerVal2.SubText = registerVal4
	local function __FUNC_84D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal2.SubText:linkToElementModel(registerVal2, "title", true, __FUNC_84D_)
	local function __FUNC_8E0_(arg0)
		arg0.NotifGlobalTitleBackingLine:close()
		arg0.SubText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_8E0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

