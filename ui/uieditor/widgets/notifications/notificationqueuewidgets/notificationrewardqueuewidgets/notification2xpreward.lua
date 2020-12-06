-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Notification2xpReward = registerVal1
function CoD.Notification2xpReward.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Notification2xpReward)
	registerVal2.id = "Notification2xpReward"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 48.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 48.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp_reward"))
	registerVal2:addElement(registerVal3)
	registerVal2.XpSmall = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, -76.000000, 124.000000)
	registerVal4:setTopBottom(true, false, 15.000000, 33.000000)
	registerVal4:setText(Engine.Localize(AppendLocalizeString("MENU_XP_CAPS", "2")))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.XPLabel = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_804_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.XPLabel:setLeftRight(true, false, -76.000000, 124.000000)
		registerVal2.XPLabel:setTopBottom(true, false, 15.000000, 33.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_804_
	local function __FUNC_960_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.TimeUp = __FUNC_960_
	local function __FUNC_9C2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.Combined = __FUNC_9C2_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A22_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.XPLabel:setLeftRight(true, false, -76.000000, 124.000000)
		registerVal2.XPLabel:setTopBottom(true, false, 17.000000, 31.000000)
		registerVal2.XPLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.XPLabel:setText(Engine.Localize(AppendLocalizeString("MENU_XP_CAPS", "2")))
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A22_
	registerVal5.french = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "french"
	local function __FUNC_C5E_(arg0, arg1, arg2)
		return IsCurrentLanguageFrench()
	end

	registerVal8.condition = __FUNC_C5E_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

