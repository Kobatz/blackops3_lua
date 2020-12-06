-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.horizontalScrollingTextBox_20pt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Social_PlayersListButton_Presence = registerVal1
function CoD.Social_PlayersListButton_Presence.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Social_PlayersListButton_Presence)
	registerVal2.id = "Social_PlayersListButton_Presence"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 258.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = CoD.horizontalScrollingTextBox_20pt.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 3.000000, 257.000000)
	registerVal3:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3.textBox:setText(Engine.Localize(""))
	registerVal3.textBox:setTTF("fonts/default.ttf")
	registerVal3.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal3)
	registerVal2.platformPresenceScroller = registerVal3
	local registerVal4 = CoD.horizontalScrollingTextBox_20pt.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 20.000000, 148.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 22.000000)
	registerVal4.textBox:setText(Engine.Localize(""))
	registerVal4.textBox:setTTF("fonts/default.ttf")
	registerVal4.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal2:addElement(registerVal4)
	registerVal2.titlePresenceScroller = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -5.000000, 19.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_iconmodebo3"))
	registerVal2:addElement(registerVal5)
	registerVal2.titlePresenceIcon = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, true, -136.000000, -6.000000)
	registerVal6:setTopBottom(true, false, 5.000000, 21.000000)
	registerVal6:setAlpha(HideIfEmptyString(1.000000))
	registerVal6:setText(Engine.Localize(""))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.lastMet = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B25_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.platformPresenceScroller:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.titlePresenceScroller:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.titlePresenceIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_B25_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_CFB_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.platformPresenceScroller:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.titlePresenceScroller:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.titlePresenceIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_CFB_
	registerVal7.ShowPlatformPresence = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "ShowPlatformPresence"
	local function __FUNC_ECF_(arg0, arg2, arg3)
		local registerVal3 = IsInTitle(registerVal2, arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_ECF_
	registerVal9 = {registerVal10}
	registerVal2:mergeStateConditions(registerVal9)
	local function __FUNC_F23_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "activity"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "activity", true, __FUNC_F23_)
	local function __FUNC_103E_(arg0)
		arg0.platformPresenceScroller:close()
		arg0.titlePresenceScroller:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_103E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

