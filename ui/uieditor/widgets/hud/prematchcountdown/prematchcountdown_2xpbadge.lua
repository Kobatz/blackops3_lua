-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PrematchCountdown_2xpBadge = registerVal1
function CoD.PrematchCountdown_2xpBadge.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PrematchCountdown_2xpBadge)
	registerVal2.id = "PrematchCountdown_2xpBadge"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_mp_notifications_2xp"))
	registerVal2:addElement(registerVal3)
	registerVal2.DoubleXPIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, -36.000000, 164.000000)
	registerVal4:setTopBottom(true, false, 37.000000, 87.000000)
	registerVal4:setText(Engine.Localize(AppendLocalizeString("MENU_XP_CAPS", "2")))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal4:setShaderVector(0.000000, 0.050000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.700000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.Label = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8D1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Label:setLeftRight(true, false, -36.000000, 164.000000)
		registerVal2.Label:setTopBottom(true, false, 37.000000, 87.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8D1_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_A2A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.Label:setLeftRight(true, false, -36.000000, 164.000000)
		registerVal2.Label:setTopBottom(true, false, 44.000000, 82.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_A2A_
	registerVal5.french = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "french"
	local function __FUNC_B82_(arg0, arg1, arg2)
		return IsCurrentLanguageFrench()
	end

	registerVal8.condition = __FUNC_B82_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

