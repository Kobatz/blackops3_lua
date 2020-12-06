-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.RankUp.RankUpNotification_TitleBacking9Slice")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.RankUpNotification_Title = registerVal1
function CoD.RankUpNotification_Title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.RankUpNotification_Title)
	registerVal2.id = "RankUpNotification_Title"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 68.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.RankUpNotification_TitleBacking9Slice.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 68.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.RankUpNotificationTitleBacking9Slice0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -206.000000, 206.000000)
	registerVal4:setTopBottom(true, false, 5.000000, 35.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_870_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 40.000000, 40.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_870_)
	registerVal2:addElement(registerVal4)
	registerVal2.Text = registerVal4
	local function __FUNC_8E4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.Text:linkToElementModel(registerVal2, "title", true, __FUNC_8E4_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_99E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_99E_
	local function __FUNC_9FE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.TimeUp = __FUNC_9FE_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_A5E_(arg0)
		arg0.RankUpNotificationTitleBacking9Slice0:close()
		arg0.Text:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A5E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

