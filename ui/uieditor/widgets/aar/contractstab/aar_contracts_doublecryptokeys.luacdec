-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BlackMarket.BM_CryptokeyCounterIcon")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AAR_Contracts_DoubleCryptokeys = registerVal1
function CoD.AAR_Contracts_DoubleCryptokeys.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.AAR_Contracts_DoubleCryptokeys)
	registerVal2.id = "AAR_Contracts_DoubleCryptokeys"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 88.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.BM_CryptokeyCounterIcon.new(arg0, arg1)
	registerVal3:setLeftRight(false, false, 6.000000, 34.000000)
	registerVal3:setTopBottom(false, true, -62.000000, -34.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.CryptokeyIcon = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, -1.000000, 95.000000)
	registerVal4:setTopBottom(false, true, -102.000000, -14.000000)
	registerVal4:setImage(RegisterImage("uie_t7_bm_contracts_doublecrypto"))
	registerVal2:addElement(registerVal4)
	registerVal2.DoubleCryptokeys = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 106.000000, 130.000000)
	registerVal5:setTopBottom(true, false, 29.000000, 53.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_t7_bm_contracts_redbox"))
	registerVal2:addElement(registerVal5)
	registerVal2.redbox = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, 39.000000, 67.000000)
	registerVal6:setTopBottom(false, true, -56.760000, -36.760000)
	registerVal6:setRGB(0.750000, 0.750000, 0.750000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setText(DvarLocalizedIntoString("daily_contract_cryptokey_reward_count", "PERKS_ITEMTEXT"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.ContractDesc0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -7.000000, 28.000000)
	registerVal7:setTopBottom(false, true, -57.000000, -37.000000)
	registerVal7:setRGB(1.000000, 0.190000, 0.190000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setText(Engine.Localize("10"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.ContractDescREd = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 135.000000, 144.000000)
	registerVal8:setTopBottom(true, false, 37.000000, 46.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_bm_contracts_yellow_arrow"))
	registerVal2:addElement(registerVal8)
	registerVal2.arrow = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, 39.000000, 87.000000)
	registerVal9:setTopBottom(false, true, -57.000000, -37.000000)
	registerVal9:setRGB(1.000000, 0.850000, 0.330000)
	registerVal9:setText(DvarLocalizedIntoString("daily_contract_cryptokey_reward_count", "PERKS_ITEMTEXT"))
	registerVal9:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.ContractDescPromo = registerVal9
	local registerVal10 = {}
	local registerVal11 = {}
	local function __FUNC_DCD_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyIcon:setLeftRight(false, false, 6.000000, 34.000000)
		registerVal2.CryptokeyIcon:setTopBottom(false, true, -62.000000, -34.000000)
		registerVal2.CryptokeyIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DoubleCryptokeys:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.redbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ContractDesc0:setLeftRight(false, false, 39.000000, 67.000000)
		registerVal2.ContractDesc0:setTopBottom(false, true, -56.760000, -36.760000)
		registerVal2.ContractDesc0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractDescREd:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ContractDescPromo:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_DCD_
	registerVal10.DefaultState = registerVal11
	registerVal11 = {}
	local function __FUNC_11E6_()
		registerVal2:setupElementClipCounter(7.000000)
		registerVal3:completeAnimation()
		registerVal2.CryptokeyIcon:setLeftRight(false, false, 6.000000, 34.000000)
		registerVal2.CryptokeyIcon:setTopBottom(false, true, -62.000000, -34.000000)
		registerVal2.CryptokeyIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.DoubleCryptokeys:setLeftRight(true, false, -1.000000, 95.000000)
		registerVal2.DoubleCryptokeys:setTopBottom(false, true, -102.000000, -14.000000)
		registerVal2.DoubleCryptokeys:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.redbox:setLeftRight(true, false, 106.000000, 130.000000)
		registerVal2.redbox:setTopBottom(true, false, 29.000000, 53.000000)
		registerVal2.redbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ContractDesc0:setLeftRight(false, false, 39.000000, 67.000000)
		registerVal2.ContractDesc0:setTopBottom(false, true, -56.760000, -36.760000)
		registerVal2.ContractDesc0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.ContractDescREd:setLeftRight(false, false, -7.000000, 28.000000)
		registerVal2.ContractDescREd:setTopBottom(false, true, -57.000000, -37.000000)
		registerVal2.ContractDescREd:setAlpha(0.000000)
		registerVal2.ContractDescREd:setText(Engine.Localize("10"))
		registerVal2.ContractDescREd:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.arrow:setLeftRight(true, false, 135.000000, 144.000000)
		registerVal2.arrow:setTopBottom(true, false, 37.000000, 46.000000)
		registerVal2.arrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ContractDescPromo:setLeftRight(false, false, 39.000000, 87.000000)
		registerVal2.ContractDescPromo:setTopBottom(false, true, -57.000000, -37.000000)
		registerVal2.ContractDescPromo:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
	end

	registerVal11.DefaultClip = __FUNC_11E6_
	registerVal10.DoubleCryptoKeys = registerVal11
	registerVal2.clipsPerState = registerVal10
	local function __FUNC_18DE_(arg0)
		arg0.CryptokeyIcon:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_18DE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

