-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Promo.Promo_ZMHD_ThermometerAndRewards")
require("ui.uieditor.widgets.Promo.Promo_ZMHD_CommunityWidget_TitleAndDesc")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_ZMHD_CommunityWidget = registerVal1
function CoD.Promo_ZMHD_CommunityWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_ZMHD_CommunityWidget)
	registerVal2.id = "Promo_ZMHD_CommunityWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Promo_ZMHD_ThermometerAndRewards.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 736.940000, 1084.940000)
	registerVal3:setTopBottom(true, false, 66.670000, 504.670000)
	registerVal3:setScale(0.900000)
	registerVal2:addElement(registerVal3)
	registerVal2.PromoZMHDThermometerAndRewards = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 720.280000, 1135.280000)
	registerVal4:setTopBottom(true, false, 55.670000, 77.670000)
	registerVal4:setRGB(0.220000, 0.940000, 1.000000)
	registerVal4:setText(Engine.Localize("CONTRACT_BGB_CC_REQUIREMENT"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.RewardsText = registerVal4
	local registerVal5 = CoD.Promo_ZMHD_CommunityWidget_TitleAndDesc.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 100.000000, 640.000000)
	registerVal5:setTopBottom(true, false, 34.000000, 86.000000)
	registerVal5.title:setText(LocalizeToUpperString("CONTRACT_COMMUNITY_CONTRACT_ZMHD_TITLE"))
	registerVal5.txtDescription:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_ZMHD_DESC"))
	registerVal2:addElement(registerVal5)
	registerVal2.TitleAndDesc = registerVal5
	registerVal3.id = "PromoZMHDThermometerAndRewards"
	local function __FUNC_A80_(arg0, arg1)
		local registerVal2 = arg0.PromoZMHDThermometerAndRewards:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_A80_)
	local function __FUNC_B9A_(arg0)
		arg0.PromoZMHDThermometerAndRewards:close()
		arg0.TitleAndDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B9A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

