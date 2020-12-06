-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CallingCards.CODE.CallingCards_code_sea_subprop")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_code_sea_sub = registerVal1
function CoD.CallingCards_code_sea_sub.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_code_sea_sub)
	registerVal2.id = "CallingCards_code_sea_sub"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 512.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CallingCards_code_sea_subprop.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 200.000000, 236.000000)
	registerVal3:setTopBottom(true, false, 24.000000, 60.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CallingCardscodeseasubprop = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 512.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 128.000000)
	registerVal4:setImage(RegisterImage("uie_t7_callingcards_sea_sub"))
	registerVal2:addElement(registerVal4)
	registerVal2.sub = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_6D3_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.CallingCardscodeseasubprop:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.sub:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal2.nextClip = "DefaultClip"
	end

	registerVal6.DefaultClip = __FUNC_6D3_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_867_(arg0)
		arg0.CallingCardscodeseasubprop:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_867_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

