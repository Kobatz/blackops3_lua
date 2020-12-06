-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Party_Button_LG = registerVal1
function CoD.StartMenu_Party_Button_LG.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Party_Button_LG)
	registerVal2.id = "StartMenu_Party_Button_LG"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 349.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 130.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 8.540000, 0.000000)
	registerVal3:setTopBottom(false, true, -29.530000, -8.530000)
	registerVal3:setText(Engine.Localize("MPUI_LOBBY_PRIVACY"))
	registerVal3:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.Option = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 41.470000, 77.470000)
	registerVal4:setRGB(1.000000, 0.800000, 0.400000)
	registerVal4:setText(Engine.Localize("MENU_PARTY_PRIVACY_FRIENDS_ONLY"))
	registerVal4:setTTF("fonts/UnitedSansSmCdBd_0.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.SelectedOption = registerVal4
	local registerVal5 = CoD.Border.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Border0 = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_951_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.Border0:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_951_
	local function __FUNC_A50_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal5:completeAnimation()
		registerVal2.Border0:setRGB(1.000000, 0.660000, 0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Focus = __FUNC_A50_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_B5A_(arg0)
		arg0.Border0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B5A_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

