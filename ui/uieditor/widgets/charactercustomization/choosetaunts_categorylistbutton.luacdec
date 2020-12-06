-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.CharacterCustomization.ChooseTaunts_CategoryListButtonText")
require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ChooseTaunts_CategoryListButton = registerVal1
function CoD.ChooseTaunts_CategoryListButton.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseTaunts_CategoryListButton)
	registerVal2.id = "ChooseTaunts_CategoryListButton"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 507.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, -307.000000)
	registerVal3:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuframenoBG0 = registerVal3
	local registerVal4 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 202.500000, -97.030000)
	registerVal4:setTopBottom(true, true, 3.000000, -3.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.StartMenuframenoBG1 = registerVal4
	local registerVal5 = CoD.ChooseTaunts_CategoryListButtonText.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 9.000000, 197.000000)
	registerVal5:setTopBottom(true, false, 16.500000, 38.500000)
	local function __FUNC_C40_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_C40_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "BreadcrumbVisible"
	local function __FUNC_C92_(arg0, arg2, arg3)
		return AreAnyTauntsGesturesInListNew(registerVal2, arg2, arg1)
	end

	registerVal9.condition = __FUNC_C92_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.Title = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, true, 210.500000, -105.500000)
	registerVal6:setTopBottom(false, false, -11.000000, 11.000000)
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_MIDDLE)
	local function __FUNC_CFB_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "selectedItem", true, __FUNC_CFB_)
	registerVal2:addElement(registerVal6)
	registerVal2.selectedTaunt = registerVal6
	local registerVal7 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 202.500000, -97.030000)
	registerVal7:setTopBottom(false, true, -7.000000, -3.000000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setZoom(1.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.FocusBarB0 = registerVal7
	registerVal8 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal8:setLeftRight(true, true, 202.500000, -97.030000)
	registerVal8:setTopBottom(true, false, 3.000000, 7.000000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setZoom(1.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.FocusBarT0 = registerVal8
	registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_DB2_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_DB2_
	local function __FUNC_F0A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal7:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FocusBarT0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.Focus = __FUNC_F0A_
	registerVal9.DefaultState = registerVal10
	registerVal2.clipsPerState = registerVal9
	local function __FUNC_1062_(arg0)
		arg0.StartMenuframenoBG0:close()
		arg0.StartMenuframenoBG1:close()
		arg0.Title:close()
		arg0.FocusBarB0:close()
		arg0.FocusBarT0:close()
		arg0.selectedTaunt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1062_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

