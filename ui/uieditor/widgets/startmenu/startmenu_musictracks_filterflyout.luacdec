-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_Options_Slider_Small")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_MusicTracks_FilterFlyout = registerVal1
function CoD.StartMenu_MusicTracks_FilterFlyout.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_MusicTracks_FilterFlyout)
	registerVal2.id = "StartMenu_MusicTracks_FilterFlyout"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 530.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 25.500000, 0.500000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.040000, 0.040000, 0.040000)
	registerVal3:setAlpha(0.980000)
	registerVal2:addElement(registerVal3)
	registerVal2.leftBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 25.500000, 0.500000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.500000)
	registerVal4:setImage(RegisterImage("uie_t7_tile_texture"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_tile_scroll"))
	registerVal4:setShaderVector(0.000000, 30.000000, 55.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.tileTexture = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 24.500000, 25.500000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.420000)
	registerVal2:addElement(registerVal5)
	registerVal2.Border00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 24.500000, 25.500000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.420000)
	registerVal2:addElement(registerVal6)
	registerVal2.Border0 = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 54.500000, 341.500000)
	registerVal7:setTopBottom(true, false, 96.000000, 122.000000)
	registerVal7:setRGB(1.000000, 0.390000, 0.000000)
	registerVal7:setText(Engine.Localize("MENU_OPTIONS"))
	registerVal7:setTTF("fonts/escom.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Title = registerVal7
	local registerVal8 = LUI.UIList.new(arg0, arg1, 2.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, false)
	registerVal8:makeFocusable()
	registerVal8:setLeftRight(true, false, 42.500000, 430.500000)
	registerVal8:setTopBottom(true, false, 137.000000, 591.000000)
	registerVal8:setWidgetType(CoD.StartMenu_Options_Slider_Small)
	registerVal8:setVerticalCount(8.000000)
	registerVal8:setDataSource("MusicTracksOptions")
	registerVal2:addElement(registerVal8)
	registerVal2.optionsList = registerVal8
	registerVal8.id = "optionsList"
	local function __FUNC_C81_(arg0, arg1)
		local registerVal2 = arg0.optionsList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_C81_)
	local function __FUNC_D87_(arg0)
		arg0.optionsList:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D87_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

