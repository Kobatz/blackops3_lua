-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LootDecryptionImageRarityColor = registerVal1
function CoD.LootDecryptionImageRarityColor.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LootDecryptionImageRarityColor)
	registerVal2.id = "LootDecryptionImageRarityColor"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 255.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 348.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -28.500000, 28.500000)
	registerVal3:setTopBottom(true, true, -25.000000, 25.000000)
	local function __FUNC_592_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(GetSpinImageForRarity(registerVal1)))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "rarity", true, __FUNC_592_)
	registerVal2:addElement(registerVal3)
	registerVal2.Spin = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_66B_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_66B_
	local function __FUNC_6CA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.Looping = __FUNC_6CA_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_72A_(arg0)
		arg0.Spin:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_72A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

