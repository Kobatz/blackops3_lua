-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BackgroundFrames.CACBackgroundNew")
require("ui.uieditor.widgets.CAC.MenuSelectScreen.SelectionInfoWidgetNew")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.SelectMenuWidgetNew = registerVal1
function CoD.SelectMenuWidgetNew.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SelectMenuWidgetNew)
	registerVal2.id = "SelectMenuWidgetNew"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.CACBackgroundNew.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3.classAllocation:setAlpha(HideIfInPermanentUnlockMenu(1.000000))
	registerVal3.cac3dTitleIntermediary0.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	local function __FUNC_A2A_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "CustomClassMenu", nil, __FUNC_A2A_)
	registerVal2:addElement(registerVal3)
	registerVal2.background = registerVal3
	local registerVal4 = CoD.SelectionInfoWidgetNew.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 384.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 124.000000, 720.000000)
	registerVal4.itemName.weaponNameWithVariant.variantName:setAlpha(0.000000)
	registerVal4.itemName.weaponNameWithVariant.variantName.itemName:setText(Engine.Localize("WEAPON_AR_STANDARD"))
	local function __FUNC_A7A_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_A7A_)
	local function __FUNC_ACA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.itemName.weaponNameWithVariant.itemName.itemName:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "name", true, __FUNC_ACA_)
	registerVal2:addElement(registerVal4)
	registerVal2.selectionInfoWidget = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_BE3_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.selectionInfoWidget:setLeftRight(true, true, 368.000000, -62.000000)
		registerVal2.selectionInfoWidget:setTopBottom(true, false, 124.000000, 720.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_BE3_
	local function __FUNC_D48_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_E96_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 430.000000, 0.000000)
			arg0:setTopBottom(true, false, 124.000000, 720.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.selectionInfoWidget:setLeftRight(true, true, 366.000000, -64.000000)
		registerVal2.selectionInfoWidget:setTopBottom(true, false, 124.000000, 720.000000)
		__FUNC_E96_(registerVal4, {})
	end

	registerVal6.GridLayout = __FUNC_D48_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_1096_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.selectionInfoWidget:setLeftRight(true, true, 430.000000, 0.000000)
		registerVal2.selectionInfoWidget:setTopBottom(true, false, 124.000000, 720.000000)
		registerVal2.selectionInfoWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_1096_
	local function __FUNC_122A_()
		registerVal2:setupElementClipCounter(1.000000)
		local function __FUNC_1376_(arg0, arg1)
			if not arg1.interrupted then
				arg0:beginAnimation("keyframe", 200.000000, false, false, CoD.TweenType.Linear)
			end
			arg0:setLeftRight(true, true, 368.000000, -62.000000)
			arg0:setTopBottom(true, false, 124.000000, 720.000000)
			if arg1.interrupted then
				registerVal2.clipFinished(arg0, arg1)
			else
				arg0:registerEventHandler("transition_complete_keyframe", registerVal2.clipFinished)
			end
		end

		registerVal4:completeAnimation()
		registerVal2.selectionInfoWidget:setLeftRight(true, true, 430.000000, 0.000000)
		registerVal2.selectionInfoWidget:setTopBottom(true, false, 124.000000, 720.000000)
		__FUNC_1376_(registerVal4, {})
	end

	registerVal6.DefaultState = __FUNC_122A_
	registerVal5.GridLayout = registerVal6
	registerVal2.clipsPerState = registerVal5
	local function __FUNC_1576_(arg0)
		arg0.background:close()
		arg0.selectionInfoWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1576_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

