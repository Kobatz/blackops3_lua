-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Promo.Promo_ThermometerAndRewards")
local function __FUNC_227_(arg0, arg1, arg2)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Promo_ThermometerTabWidget = registerVal2
local function __FUNC_250_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_ThermometerTabWidget)
	registerVal2.id = "Promo_ThermometerTabWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 550.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Promo_ThermometerAndRewards.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 736.940000, 1084.550000)
	registerVal3:setTopBottom(true, false, 66.670000, 504.170000)
	registerVal3:setScale(0.900000)
	local function __FUNC_B64_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "RoadToCWLRewardList", nil, __FUNC_B64_)
	registerVal2:addElement(registerVal3)
	registerVal2.ThermometerProgressWidget = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 720.280000, 1135.280000)
	registerVal4:setTopBottom(true, false, 55.670000, 77.670000)
	registerVal4:setRGB(0.220000, 0.940000, 1.000000)
	registerVal4:setText(Engine.Localize("CONTRACT_COMMUNITY_TOTAL_REQUIREMENT"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.RewardsText = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 100.000000, 640.000000)
	registerVal5:setTopBottom(true, false, 93.000000, 111.000000)
	registerVal5:setAlpha(0.600000)
	registerVal5:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_DESC"))
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setLineSpacing(-1.000000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.txtDescription = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(true, false, 100.000000, 640.000000)
	registerVal6:setTopBottom(true, false, 34.000000, 86.000000)
	registerVal6:setText(LocalizeToUpperString("CONTRACT_COMMUNITY_TITLE_ROADTOCHAMPS"))
	registerVal6:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.title = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_BB6_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_CA0_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 3000.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setAlpha(0.600000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal5:completeAnimation()
		registerVal2.txtDescription:setAlpha(0.600000)
		__FUNC_CA0_(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_BB6_
	registerVal7.DefaultState = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_E55_(arg0)
		arg0.ThermometerProgressWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_E55_)
	if __FUNC_227_ then
		__FUNC_227_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Promo_ThermometerTabWidget.new = __FUNC_250_
