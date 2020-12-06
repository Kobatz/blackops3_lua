-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.FR_RetriesNumbersBox = registerVal1
function CoD.FR_RetriesNumbersBox.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FR_RetriesNumbersBox)
	registerVal2.id = "FR_RetriesNumbersBox"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 50.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 37.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.490000)
	registerVal3:setTopBottom(true, true, 0.000000, -0.300000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.200000)
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_edges"))
	registerVal3:setShaderVector(0.000000, 0.020000, 0.020000, 0.020000, 0.020000)
	registerVal2:addElement(registerVal3)
	registerVal2.Box4 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 12.490000, -12.010000)
	registerVal4:setTopBottom(true, true, 4.850000, -7.150000)
	registerVal4:setText(Engine.Localize("4"))
	registerVal4:setTTF("fonts/escom.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.RetriesNumber = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_7B5_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.DefaultClip = __FUNC_7B5_
	local function __FUNC_816_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal6.FaultAnim = __FUNC_816_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

