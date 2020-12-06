-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Promo_ZMHD_CommunityWidget_TitleAndDesc = registerVal1
function CoD.Promo_ZMHD_CommunityWidget_TitleAndDesc.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Promo_ZMHD_CommunityWidget_TitleAndDesc)
	registerVal2.id = "Promo_ZMHD_CommunityWidget_TitleAndDesc"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 540.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 52.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 540.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 52.000000)
	registerVal3:setAlpha(0.800000)
	registerVal3:setText(LocalizeToUpperString("CONTRACT_COMMUNITY_CONTRACT_ZMHD_TITLE"))
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_86D_(arg0, arg1)
		UpdateWidgetHeightToMultilineText(registerVal2, arg0, 0.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal3, "setText", __FUNC_86D_)
	registerVal2:addElement(registerVal3)
	registerVal2.title = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 514.000000)
	registerVal4:setTopBottom(false, true, 7.000000, 25.000000)
	registerVal4:setAlpha(0.600000)
	registerVal4:setText(Engine.Localize("CONTRACT_COMMUNITY_CONTRACT_ZMHD_DESC"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setLineSpacing(-1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.txtDescription = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_8DC_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_9C8_(arg0, arg1)
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

		registerVal4:completeAnimation()
		registerVal2.txtDescription:setAlpha(0.600000)
		__FUNC_9C8_(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8DC_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

