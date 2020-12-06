-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_MasterCallingCardWidget")
require("ui.uieditor.widgets.Challenges.Challenges_CallingCardWidget")
require("ui.uieditor.widgets.Challenges.Challenges_CallingCardProfiler_ArenaVet")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_MP_Stickerbook_ArenaVet = registerVal1
function CoD.Challenges_MP_Stickerbook_ArenaVet.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_MP_Stickerbook_ArenaVet)
	registerVal2.id = "Challenges_MP_Stickerbook_ArenaVet"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1150.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 520.000000)
	registerVal2:makeFocusable()
	registerVal2.onlyChildrenFocusable = true
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Challenges_MasterCallingCardWidget.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 8.000000, 758.000000)
	registerVal3:setTopBottom(false, true, -121.000000, -23.000000)
	local function __FUNC_AE8_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "MasterCallingCard", nil, __FUNC_AE8_)
	local function __FUNC_B3A_(arg0)
		registerVal3.MasterCallingCardIcon:setModel(arg0, arg1)
	end

	registerVal3:subscribeToGlobalModel(arg1, "MasterCallingCard", nil, __FUNC_B3A_)
	registerVal2:addElement(registerVal3)
	registerVal2.MasterCallingCardWidget = registerVal3
	local registerVal4 = LUI.UIList.new(arg0, arg1, 13.000000, 0.000000, nil, true, false, 0.000000, 0.000000, false, false)
	registerVal4:makeFocusable()
	registerVal4:setLeftRight(true, false, 10.000000, 756.000000)
	registerVal4:setTopBottom(true, false, 16.000000, 391.000000)
	registerVal4:setWidgetType(CoD.Challenges_CallingCardWidget)
	registerVal4:setHorizontalCount(3.000000)
	registerVal4:setVerticalCount(4.000000)
	registerVal4:setSpacing(13.000000)
	registerVal4:setDataSource("ArenaVetCallingCards")
	registerVal2:addElement(registerVal4)
	registerVal2.CallingCardGrid = registerVal4
	local registerVal5 = CoD.Challenges_CallingCardProfiler_ArenaVet.new(arg0, arg1)
	registerVal5:setLeftRight(false, true, -379.000000, -29.000000)
	registerVal5:setTopBottom(true, true, 14.000000, -24.000000)
	registerVal5.ArenaVetDescription:setText(Engine.Localize("MENU_CHALLENGE_CATEGORY_ARENAVET_HINT"))
	registerVal2:addElement(registerVal5)
	registerVal2.CallingCardProfiler = registerVal5
	local function __FUNC_BB5_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal4, nil, false, __FUNC_BB5_)
	registerVal4.id = "CallingCardGrid"
	local function __FUNC_C06_(arg0, arg1)
		local registerVal2 = arg0.CallingCardGrid:processEvent(arg1)
		if arg0.m_focusable and registerVal2 then
			return true
		end
		return LUI.UIElement.gainFocus(arg0, arg1)
	end

	registerVal2:registerEventHandler("gain_focus", __FUNC_C06_)
	local function __FUNC_D0F_(arg0)
		arg0.MasterCallingCardWidget:close()
		arg0.CallingCardGrid:close()
		arg0.CallingCardProfiler:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D0F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

