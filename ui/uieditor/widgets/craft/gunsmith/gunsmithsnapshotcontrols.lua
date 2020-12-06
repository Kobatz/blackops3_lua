-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Craft.Gunsmith.GunsmithSnapshotControlButton")
require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.Footer.fe_RightContainerWithoutRightBoxes")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GunsmithSnapshotControls = registerVal1
function CoD.GunsmithSnapshotControls.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GunsmithSnapshotControls)
	registerVal2.id = "GunsmithSnapshotControls"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -101.000000, 83.000000)
	registerVal3:setTopBottom(false, true, -40.000000, 54.000000)
	registerVal3:setRGB(ColorSet.BadgeText.r, ColorSet.BadgeText.g, ColorSet.BadgeText.b)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 0.000000, 0.000000, nil, false, false, 0.000000, 0.000000, false, true)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(false, false, -144.000000, 144.000000)
	registerVal4:setTopBottom(false, false, 225.000000, 273.000000)
	registerVal4:setAlpha(0.900000)
	registerVal4:setWidgetType(CoD.GunsmithSnapshotControlButton)
	registerVal4:setHorizontalCount(6.000000)
	registerVal4:setSpacing(0.000000)
	registerVal4:setDataSource("GunsmithSnapshotModeButtonList")
	local registerVal8 = Engine.GetGlobalModel()
	local registerVal7 = Engine.GetModel(registerVal8, "GunsmithSnapshot.ShowControls")
	local function __FUNC_1057_(arg2)
		local registerVal2 = {}
		registerVal2.controller = arg1
		registerVal2.name = "model_validation"
		local registerVal3 = Engine.GetModelValue(arg2)
		registerVal2.modelValue = registerVal3
		registerVal2.modelName = "GunsmithSnapshot.ShowControls"
		CoD.Menu.UpdateButtonShownState(registerVal4, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
	end

	registerVal4:subscribeToModel(registerVal7, __FUNC_1057_)
	local function __FUNC_1226_(arg2, arg3)
		if arg2.gainFocus then
			local registerVal3 = arg2.gainFocus(arg2, arg3)
		else
			if arg2.super.gainFocus then
				registerVal3 = arg2.super.gainFocus(arg2, arg3)
			end
		end
		CoD.Menu.UpdateButtonShownState(arg2, arg0, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS)
		return registerVal3
	end

	registerVal4:registerEventHandler("gain_focus", __FUNC_1226_)
	local function __FUNC_13B7_(arg0, arg1)
		if arg0.loseFocus then
			local registerVal3 = arg0.loseFocus(arg0, arg1)
		else
			if arg0.super.loseFocus then
				registerVal3 = arg0.super.loseFocus(arg0, arg1)
			end
		end
		return registerVal3
	end

	registerVal4:registerEventHandler("lose_focus", __FUNC_13B7_)
	local function __FUNC_1486_(arg0, arg1, arg2, arg3)
		local registerVal4 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.ShowControls", 1.000000)
		if registerVal4 then
			ProcessListAction(registerVal2, arg0, arg2)
			PlaySoundAlias("uin_paint_decal_nav")
			return true
		end
	end

	local function __FUNC_1597_(arg0, arg1, arg2)
		local registerVal3 = IsGlobalModelValueEqualTo(arg0, arg2, "GunsmithSnapshot.ShowControls", 1.000000)
		if registerVal3 then
			CoD.Menu.SetButtonLabel(arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, "")
			return false
		end
		return false
	end

	arg0:AddButtonCallbackFunction(registerVal4, arg1, Enum.LUIButton.LUI_KEY_XBA_PSCROSS, nil, __FUNC_1486_, __FUNC_1597_, false)
	registerVal2:addElement(registerVal4)
	registerVal2.ButtonList = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(false, false, -144.000000, 144.000000)
	registerVal5:setTopBottom(false, false, 189.000000, 214.000000)
	registerVal5:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.HintText = registerVal5
	local registerVal6 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal6:setLeftRight(true, true, 15.000000, -113.000000)
	registerVal6:setTopBottom(false, true, -38.000000, -4.000000)
	local function __FUNC_16FE_(arg0)
		registerVal6:setModel(arg0, arg1)
	end

	registerVal6:linkToElementModel(registerVal2, nil, false, __FUNC_16FE_)
	registerVal2:addElement(registerVal6)
	registerVal2.buttonBar = registerVal6
	registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal7:setTopBottom(false, true, -40.850000, -36.850000)
	registerVal7:setAlpha(0.550000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.LineLeft = registerVal7
	registerVal8 = CoD.fe_RightContainerWithoutRightBoxes.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -902.000000, -32.000000)
	registerVal8:setTopBottom(false, true, -36.000000, -7.000000)
	local function __FUNC_174E_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:linkToElementModel(registerVal2, nil, false, __FUNC_174E_)
	registerVal2:addElement(registerVal8)
	registerVal2.feRightContainerWithoutRightBoxes0 = registerVal8
	local function __FUNC_179E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setText(Engine.Localize(LocalizeToUpperString(registerVal1)))
		end
	end

	registerVal5:linkToElementModel(registerVal4, "description", true, __FUNC_179E_)
	local registerVal9 = {}
	local registerVal10 = {}
	local function __FUNC_187D_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ButtonList:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HintText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.buttonBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LineLeft:setAlpha(0.550000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.feRightContainerWithoutRightBoxes0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_187D_
	registerVal9.DefaultState = registerVal10
	registerVal10 = {}
	local function __FUNC_1B4E_()
		registerVal2:setupElementClipCounter(6.000000)
		registerVal3:completeAnimation()
		registerVal2.background:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.ButtonList:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.HintText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.buttonBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LineLeft:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.feRightContainerWithoutRightBoxes0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
	end

	registerVal10.DefaultClip = __FUNC_1B4E_
	registerVal9.Hide = registerVal10
	registerVal2.clipsPerState = registerVal9
	registerVal4.id = "ButtonList"
	local function __FUNC_1E19_(arg0, arg1)
		local registerVal2 = arg0.ButtonList:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_1E19_)
	local function __FUNC_1F1E_(arg0)
		arg0.ButtonList:close()
		arg0.buttonBar:close()
		arg0.feRightContainerWithoutRightBoxes0:close()
		arg0.HintText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1F1E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

