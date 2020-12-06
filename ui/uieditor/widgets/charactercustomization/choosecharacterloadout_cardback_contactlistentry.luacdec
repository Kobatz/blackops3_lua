-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacterLoadout_CardBack_ContactListEntry = registerVal1
function CoD.ChooseCharacterLoadout_CardBack_ContactListEntry.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacterLoadout_CardBack_ContactListEntry)
	registerVal2.id = "ChooseCharacterLoadout_CardBack_ContactListEntry"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 128.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 90.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 18.000000, 90.000000)
	local function __FUNC_7F2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal3:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal3:linkToElementModel(registerVal2, "contactIcon", true, __FUNC_7F2_)
	registerVal2:addElement(registerVal3)
	registerVal2.face = registerVal3
	local registerVal4 = CoD.Border.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, -1.000000, 1.000000)
	registerVal4:setTopBottom(true, false, 18.380000, 89.500000)
	registerVal4:setRGB(0.820000, 0.980000, 1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Border10 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 18.000000)
	registerVal5:setRGB(0.820000, 0.980000, 1.000000)
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_8A4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "contactName", true, __FUNC_8A4_)
	registerVal2:addElement(registerVal5)
	registerVal2.contact = registerVal5
	local function __FUNC_938_(arg0)
		arg0.Border10:close()
		arg0.face:close()
		arg0.contact:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_938_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

