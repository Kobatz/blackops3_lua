-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ArabicAlignTextBox")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChallengeBonusXPInfo = registerVal1
function CoD.ChallengeBonusXPInfo.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChallengeBonusXPInfo)
	registerVal2.id = "ChallengeBonusXPInfo"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 90.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 21.000000)
	registerVal3:setTopBottom(false, true, -21.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_mp_notifications_xp_blue"))
	registerVal2:addElement(registerVal3)
	registerVal2.xpIcon = registerVal3
	local registerVal4 = CoD.ArabicAlignTextBox.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 21.750000, 89.750000)
	registerVal4:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal4.textBox:setTTF("fonts/default.ttf")
	registerVal4.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	local function __FUNC_7F6_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.textBox:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "unlockReward", true, __FUNC_7F6_)
	registerVal2:addElement(registerVal4)
	registerVal2.xpRewardText = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8CB_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.xpIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.xpRewardText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8CB_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A20_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.xpIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.xpRewardText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A20_
	registerVal5.NotVisible = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_B78_(arg0)
		arg0.xpRewardText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B78_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

