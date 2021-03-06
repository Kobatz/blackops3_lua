-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.VehicleGround_HashTextInternal = registerVal1
function CoD.VehicleGround_HashTextInternal.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.VehicleGround_HashTextInternal)
	registerVal2.id = "VehicleGround_HashTextInternal"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 42.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 316.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal3:setTopBottom(false, false, -8.000000, 8.000000)
	registerVal3:setRGB(0.470000, 0.510000, 0.600000)
	registerVal3:setText(Engine.Localize("550"))
	registerVal3:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal3:setLetterSpacing(1.500000)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.TextNumbers = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal4:setTopBottom(false, false, 17.000000, 33.000000)
	registerVal4:setRGB(0.470000, 0.510000, 0.600000)
	registerVal4:setText(Engine.Localize("525"))
	registerVal4:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal4:setLetterSpacing(1.500000)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TextNumbers1 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal5:setTopBottom(false, false, -33.000000, -17.000000)
	registerVal5:setRGB(0.470000, 0.510000, 0.600000)
	registerVal5:setText(Engine.Localize("575"))
	registerVal5:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal5:setLetterSpacing(1.500000)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.TextNumbers0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal6:setTopBottom(false, false, -58.000000, -42.000000)
	registerVal6:setRGB(0.470000, 0.510000, 0.600000)
	registerVal6:setText(Engine.Localize("600"))
	registerVal6:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal6:setLetterSpacing(1.500000)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.TextNumbers00 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal7:setTopBottom(false, false, -83.000000, -67.000000)
	registerVal7:setRGB(0.470000, 0.510000, 0.600000)
	registerVal7:setText(Engine.Localize("625"))
	registerVal7:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal7:setLetterSpacing(1.500000)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.TextNumbers000 = registerVal7
	local registerVal8 = LUI.UIText.new()
	registerVal8:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal8:setTopBottom(false, false, 42.000000, 58.000000)
	registerVal8:setRGB(0.470000, 0.510000, 0.600000)
	registerVal8:setText(Engine.Localize("500"))
	registerVal8:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal8:setLetterSpacing(1.500000)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal8:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal8)
	registerVal2.TextNumbers10 = registerVal8
	local registerVal9 = LUI.UIText.new()
	registerVal9:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal9:setTopBottom(false, false, 67.000000, 83.000000)
	registerVal9:setRGB(0.470000, 0.510000, 0.600000)
	registerVal9:setText(Engine.Localize("475"))
	registerVal9:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal9:setLetterSpacing(1.500000)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal9:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal9)
	registerVal2.TextNumbers100 = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal10:setTopBottom(false, false, 92.000000, 108.000000)
	registerVal10:setRGB(0.470000, 0.510000, 0.600000)
	registerVal10:setText(Engine.Localize("450"))
	registerVal10:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal10:setLetterSpacing(1.500000)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.TextNumbers1000 = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal11:setTopBottom(false, false, 117.000000, 133.000000)
	registerVal11:setRGB(0.470000, 0.510000, 0.600000)
	registerVal11:setText(Engine.Localize("425"))
	registerVal11:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal11:setLetterSpacing(1.500000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal11)
	registerVal2.TextNumbers10000 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal12:setTopBottom(false, false, 142.000000, 158.000000)
	registerVal12:setRGB(0.470000, 0.510000, 0.600000)
	registerVal12:setText(Engine.Localize("400 "))
	registerVal12:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal12:setLetterSpacing(1.500000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.TextNumbers100000 = registerVal12
	local registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal13:setTopBottom(false, false, -108.000000, -92.000000)
	registerVal13:setRGB(0.470000, 0.510000, 0.600000)
	registerVal13:setText(Engine.Localize("650"))
	registerVal13:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal13:setLetterSpacing(1.500000)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.TextNumbers0000 = registerVal13
	local registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal14:setTopBottom(false, false, -133.000000, -117.000000)
	registerVal14:setRGB(0.470000, 0.510000, 0.600000)
	registerVal14:setText(Engine.Localize("675"))
	registerVal14:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal14:setLetterSpacing(1.500000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.TextNumbers00000 = registerVal14
	local registerVal15 = LUI.UIText.new()
	registerVal15:setLeftRight(false, false, -21.000000, 21.000000)
	registerVal15:setTopBottom(false, false, -158.000000, -142.000000)
	registerVal15:setRGB(0.470000, 0.510000, 0.600000)
	registerVal15:setText(Engine.Localize("700 "))
	registerVal15:setTTF("fonts/FoundryGridnik-Medium.ttf")
	registerVal15:setLetterSpacing(1.500000)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal15:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal15)
	registerVal2.TextNumbers000000 = registerVal15
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

