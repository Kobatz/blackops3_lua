-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.MOTD_TextAndBG = registerVal1
function CoD.MOTD_TextAndBG.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.MOTD_TextAndBG)
	registerVal2.id = "MOTD_TextAndBG"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 452.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 22.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 3.000000, 445.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 22.000000)
	registerVal3:setAlpha(0.920000)
	registerVal3:setText(Engine.Localize(""))
	registerVal3:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.weaponDescTextBox = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_636_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_636_
	registerVal4.DefaultState = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

