-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_FooterBacking01")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankUpNotification_FooterLabel01 = registerVal1
function CoD.RankUpNotification_FooterLabel01.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankUpNotification_FooterLabel01)
	registerVal2.id = "RankUpNotification_FooterLabel01"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 206.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = CoD.RankUpNotification_FooterBacking01.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.RankUpNotificationFooterBacking010 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -180.000000, 180.000000)
	registerVal4:setTopBottom(true, false, 1.000000, 31.000000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8CA_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 20.000000, 20.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_8CA_)
	registerVal2:addElement(registerVal4)
	registerVal2.SubText = registerVal4
	local function __FUNC_93C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(registerVal1)
		end
	end

	registerVal2.SubText:linkToElementModel(registerVal2, "subtitle", true, __FUNC_93C_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_9D0_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_9D0_
	local function __FUNC_A32_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.TimeUp = __FUNC_A32_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A92_(arg0)
		arg0.RankUpNotificationFooterBacking010:close()
		arg0.SubText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A92_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

