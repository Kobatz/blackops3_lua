-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CallingCards_BlackMarket_SideBetExplaination = registerVal1
function CoD.CallingCards_BlackMarket_SideBetExplaination.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CallingCards_BlackMarket_SideBetExplaination)
	registerVal2.id = "CallingCards_BlackMarket_SideBetExplaination"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 250.000000)
	local registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal3:setTopBottom(false, true, -120.000000, -95.000000)
	registerVal3:setRGB(0.160000, 1.000000, 0.930000)
	registerVal3:setText(Engine.Localize("CONTRACT_SIDE_BET"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.sideBetTitle = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(false, true, -90.000000, -70.000000)
	registerVal4:setText(Engine.Localize("CONTRACT_SIDE_BET_SET_DESCRIPTION"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.sideBetDesc = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -9.000000, 104.900000)
	registerVal5:setTopBottom(false, true, -242.380000, -108.380000)
	registerVal5:setImage(RegisterImage("uie_t7_blackmarket_contract_callingcardset_blackjackicon"))
	registerVal2:addElement(registerVal5)
	registerVal2.Image0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_930_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.sideBetTitle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.sideBetDesc:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Image0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_930_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_AE1_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.sideBetTitle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.sideBetDesc:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.DefaultClip = __FUNC_AE1_
	registerVal6.ViewingSideBetSet = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "ViewingSideBetSet"
	local function __FUNC_C3D_(arg0, arg2, arg3)
		return IsViewingSideBetCallingCardSet(arg1)
	end

	registerVal9.condition = __FUNC_C3D_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

