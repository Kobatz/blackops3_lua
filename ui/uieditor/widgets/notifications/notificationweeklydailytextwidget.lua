-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.NotificationWeeklyDailyTextWidget = registerVal1
function CoD.NotificationWeeklyDailyTextWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.NotificationWeeklyDailyTextWidget)
	registerVal2.id = "NotificationWeeklyDailyTextWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 197.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 19.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -98.500000, 98.500000)
	registerVal3:setTopBottom(true, false, 0.000000, 19.000000)
	registerVal3:setText(Engine.Localize("MPUI_BM_CONTRACT_WEEKLY"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setLetterSpacing(5.600000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.WeeklyText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_666_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.WeeklyText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_666_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

