-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.AttachmentNamesDisplay = registerVal1
function CoD.AttachmentNamesDisplay.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 5.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Right)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.AttachmentNamesDisplay)
	registerVal2.id = "AttachmentNamesDisplay"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 600.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 30.000000)
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(false, true, -137.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 2.500000, 27.500000)
	registerVal3:setText(Engine.Localize("WEAPON_GRENADELAUNCHER"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal3)
	registerVal2.attachmentName1 = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, true, -231.000000, -142.000000)
	registerVal4:setTopBottom(true, false, 2.500000, 27.500000)
	registerVal4:setText(Engine.Localize("WEAPON_SILENCER"))
	registerVal4:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.attachmentName2 = registerVal4
	local registerVal5 = LUI.UITightText.new()
	registerVal5:setLeftRight(false, true, -335.000000, -236.000000)
	registerVal5:setTopBottom(true, false, 2.500000, 27.500000)
	registerVal5:setText(Engine.Localize("WEAPON_RANGEFINDER"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal5)
	registerVal2.attachmentName3 = registerVal5
	local registerVal6 = LUI.UITightText.new()
	registerVal6:setLeftRight(false, true, -438.000000, -340.000000)
	registerVal6:setTopBottom(true, false, 2.500000, 27.500000)
	registerVal6:setText(Engine.Localize("WEAPON_EXTCLIP"))
	registerVal6:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal6)
	registerVal2.attachmentName4 = registerVal6
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

