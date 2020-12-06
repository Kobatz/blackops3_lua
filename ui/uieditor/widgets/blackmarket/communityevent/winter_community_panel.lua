-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.CommunityEvent.Winter_Community_Thermometer")
require("ui.uieditor.widgets.Promo.Promo_ZMHD_CommunityWidget_TitleAndDesc")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Winter_Community_Panel = registerVal1
function CoD.Winter_Community_Panel.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Winter_Community_Panel)
	registerVal2.id = "Winter_Community_Panel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Winter_Community_Thermometer.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 736.940000, 1084.940000)
	registerVal3:setTopBottom(true, false, 66.670000, 504.670000)
	registerVal3:setScale(0.900000)
	local function __FUNC_AFB_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "WinterCommunityRewardList", nil, __FUNC_AFB_)
	registerVal2:addElement(registerVal3)
	registerVal2.WinterCommunityThermometer = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 720.280000, 1135.280000)
	registerVal4:setTopBottom(true, false, 55.670000, 77.670000)
	registerVal4:setRGB(0.220000, 0.940000, 1.000000)
	registerVal4:setText(Engine.Localize("CONTRACT_COMMUNITY_WINTER_TOTAL_REQUIREMENT"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.RewardsText = registerVal4
	local registerVal5 = CoD.Promo_ZMHD_CommunityWidget_TitleAndDesc.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 100.000000, 640.000000)
	registerVal5:setTopBottom(true, false, 34.000000, 86.000000)
	registerVal5.title:setText(LocalizeToUpperString("CONTRACT_COMMUNITY_CONTRACT_WINTER_TITLE"))
	registerVal5.txtDescription:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_WINTER_DESC"))
	registerVal2:addElement(registerVal5)
	registerVal2.TitleAndDesc = registerVal5
	registerVal3.id = "WinterCommunityThermometer"
	local function __FUNC_B4A_(arg0, arg1)
		local registerVal2 = arg0.WinterCommunityThermometer:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_B4A_)
	local function __FUNC_C5E_(arg0)
		arg0.WinterCommunityThermometer:close()
		arg0.TitleAndDesc:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C5E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

