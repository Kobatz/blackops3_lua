-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SpecialContracts_Timer = registerVal1
function CoD.SpecialContracts_Timer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SpecialContracts_Timer)
	registerVal2.id = "SpecialContracts_Timer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 219.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 16.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal3:setRGB(0.460000, 0.800000, 0.750000)
	registerVal3:setText(Engine.Localize("MPUI_BM_PROMO_EXPIRES"))
	registerVal3:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal3:setLetterSpacing(-1.000000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_84A_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal3:registerEventHandler("menu_opened", __FUNC_84A_)
	registerVal2:addElement(registerVal3)
	registerVal2.TriplePlayTimer = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal4:setRGB(0.460000, 0.800000, 0.750000)
	registerVal4:setText(Engine.Localize("MPUI_BM_PROMO_EXPIRES"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal4:setLetterSpacing(-1.000000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8ED_(arg0, arg1)
		SetupAutoHorizontalAlignArabicText(arg0)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg1)
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("menu_opened", __FUNC_8ED_)
	registerVal2:addElement(registerVal4)
	registerVal2.GrandSlamTimer = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_991_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TriplePlayTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GrandSlamTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_991_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_AF3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TriplePlayTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GrandSlamTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_AF3_
	registerVal5.TriplePlay = registerVal6
	registerVal6 = {}
	local function __FUNC_C58_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.TriplePlayTimer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GrandSlamTimer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_C58_
	registerVal5.GrandSlam = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

