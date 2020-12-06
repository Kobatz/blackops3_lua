-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Global.Notif_Global_TitleBacking")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notif_Global_Title = registerVal1
function CoD.Notif_Global_Title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notif_Global_Title)
	registerVal2.id = "Notif_Global_Title"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 300.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	local registerVal3 = CoD.Notif_Global_TitleBacking.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.NotifGlobalTitleBacking0 = registerVal3
	local registerVal4 = CoD.Notif_Global_TitleBacking.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal4:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.NotifGlobalTitleBacking = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -273.000000, 273.000000)
	registerVal5:setTopBottom(true, false, 3.000000, 37.000000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8E4_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 40.000000, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal5, "setText", __FUNC_8E4_)
	registerVal2:addElement(registerVal5)
	registerVal2.SubText = registerVal5
	local function __FUNC_95D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal2.SubText:linkToElementModel(registerVal2, "title", true, __FUNC_95D_)
	local function __FUNC_9F0_(arg0)
		arg0.NotifGlobalTitleBacking0:close()
		arg0.NotifGlobalTitleBacking:close()
		arg0.SubText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9F0_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

