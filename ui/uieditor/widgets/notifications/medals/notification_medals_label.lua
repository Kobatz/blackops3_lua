-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Notifications.Medals.Notification_Medals_Backing_9Slice")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notification_Medals_Label = registerVal1
function CoD.Notification_Medals_Label.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notification_Medals_Label)
	registerVal2.id = "Notification_Medals_Label"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 201.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 40.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Notification_Medals_Backing_9Slice.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 36.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("ui_multiply"))
	registerVal2:addElement(registerVal3)
	registerVal2.NotificationMedalsBacking9Slice = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -100.500000, 99.500000)
	registerVal4:setTopBottom(true, false, 9.500000, 34.500000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_99B_(arg0, arg1)
		ScaleWidgetToLabelCenteredWrapped(registerVal2, arg0, 40.000000, 40.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setText", __FUNC_99B_)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox0 = registerVal4
	local function __FUNC_A0C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal2.TextBox0:linkToElementModel(registerVal2, "title", true, __FUNC_A0C_)
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_AC6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_AC6_
	local function __FUNC_B26_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.TimeUp = __FUNC_B26_
	local function __FUNC_B86_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Combined = __FUNC_B86_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_BE6_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_BE6_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_C46_(arg0, arg2, arg3)
		return IsVisibilityBitSet(arg1, Enum.UIVisibilityBit.BIT_GAME_ENDED)
	end

	registerVal8.condition = __FUNC_C46_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	local function __FUNC_CF7_(arg0)
		arg0.NotificationMedalsBacking9Slice:close()
		arg0.TextBox0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_CF7_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

