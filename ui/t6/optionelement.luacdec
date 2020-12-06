-- Decompiled with CoDLUIDecompiler by JariK

require("ui.T6.CoD9Button")
CoD.OptionElement = {}
CoD.OptionElement.HorizontalGap = 400.000000
function CoD.OptionElement.new(arg0, arg1, arg2)
	local registerVal3 = CoD.CoD9Button.new(arg2)
	if registerVal3.selectButtonImage ~= nil then
		registerVal3.selectButtonImage:close()
	end
	if arg1 == nil then
	end
	registerVal3.horizontalGap = CoD.OptionElement.HorizontalGap
	local registerVal5 = {}
	registerVal5.leftAnchor = true
	registerVal5.rightAnchor = true
	registerVal5.left = 0.000000
	registerVal5.right = 0.000000
	registerVal5.topAnchor = true
	registerVal5.bottomAnchor = true
	registerVal5.top = 0.000000
	registerVal5.bottom = 0.000000
	local registerVal4 = LUI.UIHorizontalList.new(registerVal5)
	registerVal3.horizontalList = registerVal4
	registerVal3:addElement(registerVal3.horizontalList)
	registerVal5 = {}
	registerVal5.red = CoD.ButtonTextColor.r
	registerVal5.green = CoD.ButtonTextColor.g
	registerVal5.blue = CoD.ButtonTextColor.b
	registerVal5.alpha = 1.000000
	registerVal4 = LUI.UIText.new(registerVal5)
	registerVal3.label = registerVal4
	registerVal3.label:setLeftRight(true, false, 0.000000, CoD.OptionElement.HorizontalGap)
	registerVal3.label:setTopBottom(false, false, (-CoD.CoD9Button.TextHeight / 2.000000), (CoD.CoD9Button.TextHeight / 2.000000))
	registerVal3.label:setTTF("fonts/escom.ttf")
	registerVal3.horizontalList:addElement(registerVal3.label)
	registerVal3:setLabel(arg0)
	CoD.CoD9Button.SetupTextElement(registerVal3.label)
	return registerVal3
end

