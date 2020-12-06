-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.PlayerStylesWidget = registerVal1
function CoD.PlayerStylesWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PlayerStylesWidget)
	registerVal2.id = "PlayerStylesWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 200.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 103.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 201.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 101.500000)
	registerVal3:setRGB(0.560000, 0.560000, 0.560000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image0 = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, false, 0.000000, 201.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 42.000000)
	registerVal4:setText(Engine.Localize("GeneralZOD"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.TextBox0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 0.000000, 201.000000)
	registerVal5:setTopBottom(true, false, 58.500000, 101.500000)
	registerVal5:setText(Engine.Localize("Gum Baller"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.TextBox1 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_7B9_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_7B9_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

