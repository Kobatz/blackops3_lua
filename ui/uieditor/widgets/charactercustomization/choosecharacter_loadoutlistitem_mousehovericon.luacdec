-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_FocusBarContainer")
local function __FUNC_243_(arg0, arg1)
	local function __FUNC_2EA_(arg0, arg1)
		local registerVal2 = string.find(arg1.state, "Overview")
		registerVal2 = string.find(arg1.state, "ChangedCharacter")
		if not arg1 or registerVal2 then
			arg0:setState("Hidden")
			arg0.m_defaultStateInFirstTimeFlow = false
		else
			arg0:setState("DefaultState")
			arg0.m_defaultStateInFirstTimeFlow = true
		end
	end

	arg0:registerEventHandler("help_bubble_state_changed", __FUNC_2EA_)
	arg0.m_defaultStateInFirstTimeFlow = false
end

local function __FUNC_44C_(arg0, arg1)
	if CoD.isPC then
		__FUNC_243_(arg0, arg1)
	end
end

local registerVal3 = InheritFrom(LUI.UIElement)
CoD.ChooseCharacter_LoadoutListItem_MouseHoverIcon = registerVal3
local function __FUNC_4BB_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ChooseCharacter_LoadoutListItem_MouseHoverIcon)
	registerVal2.id = "ChooseCharacter_LoadoutListItem_MouseHoverIcon"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 100.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_mp_hero_mouse_hover_placeholder"))
	registerVal2:addElement(registerVal3)
	registerVal2.MouseHoverIcon = registerVal3
	local registerVal4 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal4:setLeftRight(false, false, -44.500000, 44.500000)
	registerVal4:setTopBottom(false, false, 50.000000, 46.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setZoom(1.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FocusBarB0 = registerVal4
	local registerVal5 = CoD.FE_FocusBarContainer.new(arg0, arg1)
	registerVal5:setLeftRight(false, false, -44.500000, 44.500000)
	registerVal5:setTopBottom(false, false, -46.000000, -50.000000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setZRot(180.000000)
	registerVal5:setZoom(1.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.FocusBarT = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_B31_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.MouseHoverIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B31_
	local function __FUNC_CE5_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.MouseHoverIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FocusBarB0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.FocusBarT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.Over = __FUNC_CE5_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_E9E_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.MouseHoverIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.DefaultClip = __FUNC_E9E_
	local function __FUNC_FA2_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.MouseHoverIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal7.Over = __FUNC_FA2_
	registerVal6.Hidden = registerVal7
	registerVal2.clipsPerState = registerVal6
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "Hidden"
	local function __FUNC_10A6_(arg0, arg2, arg3)
		local registerVal3 = IsPC()
		registerVal3 = IsFirstTimeSetup(arg1, Enum.eModes.MODE_MULTIPLAYER)
		if registerVal3 and registerVal3 then
			registerVal3 = PropertyIsTrue(registerVal2, "m_defaultStateInFirstTimeFlow")
		end
		return (not registerVal3)
	end

	registerVal9.condition = __FUNC_10A6_
	registerVal8 = {registerVal9}
	registerVal2:mergeStateConditions(registerVal8)
	local function __FUNC_11C7_(arg0)
		arg0.FocusBarB0:close()
		arg0.FocusBarT:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_11C7_)
	if __FUNC_44C_ then
		__FUNC_44C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.ChooseCharacter_LoadoutListItem_MouseHoverIcon.new = __FUNC_4BB_
