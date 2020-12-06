-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_MemberBlurPanelContainer")
local function __FUNC_22C_(arg0, arg1, arg2)
	arg0:setHandleMouse(true)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.SplitscreenLobbyButtonPC = registerVal2
local function __FUNC_27C_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.SplitscreenLobbyButtonPC)
	registerVal2.id = "SplitscreenLobbyButtonPC"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 490.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 60.000000, 408.000000)
	registerVal3:setTopBottom(true, false, -0.500000, 27.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.ButtonBackGround = registerVal3
	local registerVal4 = CoD.FE_MemberBlurPanelContainer.new(arg0, arg1)
	registerVal4:setLeftRight(true, true, 60.000000, -82.000000)
	registerVal4:setTopBottom(false, false, -14.000000, 13.500000)
	registerVal4:setRGB(0.500000, 0.500000, 0.500000)
	registerVal4.FEMemberBlurPanel0:setShaderVector(0.000000, 0.000000, 3.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.FEMemberBlurPanelContainer0 = registerVal4
	local registerVal5 = LUI.UIText.new()
	registerVal5:setLeftRight(true, false, 68.000000, 401.000000)
	registerVal5:setTopBottom(true, false, 4.000000, 24.000000)
	registerVal5:setText(Engine.Localize("Splitscreen Dynamic Label"))
	registerVal5:setTTF("fonts/default.ttf")
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal5:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal5)
	registerVal2.TextLabel = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, 60.000000, -82.000000)
	registerVal6:setTopBottom(true, true, -1.000000, 1.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_featuredframefull"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal6:setShaderVector(0.000000, 0.074713, 0.620690, 0.423077, 0.388889)
	registerVal6:setupNineSliceShader(26.000000, 18.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Image = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_1283_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1283_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_149B_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_149B_
	registerVal7.Hide = registerVal8
	registerVal8 = {}
	local function __FUNC_16B3_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TextLabel:setAlpha(1.000000)
		registerVal2.TextLabel:setText(Engine.Localize("PLATFORM_SPLITSCREEN_MAP_CONTROLLER"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.DefaultClip = __FUNC_16B3_
	local function __FUNC_193C_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.TextLabel:setAlpha(1.000000)
		registerVal2.TextLabel:setText(Engine.Localize("PLATFORM_SPLITSCREEN_MAP_CONTROLLER"))
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal8.Over = __FUNC_193C_
	registerVal7.MapController = registerVal8
	registerVal8 = {}
	local function __FUNC_1C53_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TextLabel:setAlpha(1.000000)
		registerVal2.TextLabel:setText(Engine.Localize("PLATFORM_SPLITSCREEN_ACTIVATE"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image:setLeftRight(true, true, 60.000000, -82.000000)
		registerVal2.Image:setTopBottom(true, true, -1.000000, 1.000000)
		registerVal2.Image:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_1C53_
	local function __FUNC_1FDD_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.TextLabel:setAlpha(1.000000)
		registerVal2.TextLabel:setText(Engine.Localize("PLATFORM_SPLITSCREEN_ACTIVATE"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Over = __FUNC_1FDD_
	registerVal7.Available = registerVal8
	registerVal8 = {}
	local function __FUNC_2352_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TextLabel:setAlpha(1.000000)
		registerVal2.TextLabel:setText(Engine.Localize("PLATFORM_SPLITSCREEN_DEACTIVATE"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_2352_
	local function __FUNC_2654_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setRGB(ColorSet.Orange.r, ColorSet.Orange.g, ColorSet.Orange.b)
		registerVal2.TextLabel:setAlpha(1.000000)
		registerVal2.TextLabel:setText(Engine.Localize("PLATFORM_SPLITSCREEN_DEACTIVATE"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image:setRGB(1.000000, 0.410000, 0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.Over = __FUNC_2654_
	registerVal7.Active = registerVal8
	registerVal8 = {}
	local function __FUNC_29CC_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal3:completeAnimation()
		registerVal2.ButtonBackGround:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.FEMemberBlurPanelContainer0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TextLabel:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.TextLabel:setAlpha(1.000000)
		registerVal2.TextLabel:setText(Engine.Localize("PLATFORM_FEEDER_SECONDARY_CONTROLLER_PLUGIN"))
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
	end

	registerVal8.DefaultClip = __FUNC_29CC_
	registerVal7.AddController = registerVal8
	registerVal2.clipsPerState = registerVal7
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "Hide"
	local function __FUNC_2CB8_(arg0, arg2, arg3)
		return IsGlobalModelValueTrue(arg2, arg1, "lobbyRoot.inspectionView")
	end

	registerVal10.condition = __FUNC_2CB8_
	local registerVal11 = {}
	registerVal11.stateName = "MapController"
	local function __FUNC_2D3E_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal11.condition = __FUNC_2D3E_
	local registerVal12 = {}
	registerVal12.stateName = "Available"
	local function __FUNC_2D89_(arg0, arg1, arg2)
		local registerVal3 = IsSplitscreenPlayAvailable()
		registerVal3 = IsSplitscreenLobbyRoomAvailable()
		if registerVal3 and registerVal3 then
			registerVal3 = GamepadsConnectedAny()
		end
		return registerVal3
	end

	registerVal12.condition = __FUNC_2D89_
	local registerVal13 = {}
	registerVal13.stateName = "Active"
	local function __FUNC_2E4B_(arg0, arg1, arg2)
		local registerVal3 = IsSplitscreenPlayAvailable()
		if registerVal3 then
			registerVal3 = IsSplitscreenPlayerSignedIn()
		end
		return registerVal3
	end

	registerVal13.condition = __FUNC_2E4B_
	local registerVal14 = {}
	registerVal14.stateName = "AddController"
	local function __FUNC_2ED9_(arg0, arg2, arg3)
		return ShouldShowAddController(arg0, arg2, arg1)
	end

	registerVal14.condition = __FUNC_2ED9_
	registerVal9 = {registerVal10, registerVal11, registerVal12, registerVal13, registerVal14}
	registerVal2:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.inspectionView")
	local function __FUNC_2F3D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.inspectionView"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_2F3D_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.platformUpdate")
	local function __FUNC_306A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.platformUpdate"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_306A_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.gameClient.update")
	local function __FUNC_3196_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.gameClient.update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_3196_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.privateClient.update")
	local function __FUNC_32C5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.privateClient.update"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_32C5_)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "PartyPrivacy.maxPlayers")
	local function __FUNC_33F8_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "PartyPrivacy.maxPlayers"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_33F8_)
	if registerVal2.m_eventHandlers.controller_inserted then
		local function __FUNC_3525_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.controller_inserted(arg1, arg2)
		end

		registerVal2:registerEventHandler("controller_inserted", __FUNC_3525_)
	else
		registerVal2:registerEventHandler("controller_inserted", LUI.UIElement.updateState)
	end
	if registerVal2.m_eventHandlers.controller_removed then
		local function __FUNC_35AF_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.controller_removed(arg1, arg2)
		end

		registerVal2:registerEventHandler("controller_removed", __FUNC_35AF_)
	else
		registerVal2:registerEventHandler("controller_removed", LUI.UIElement.updateState)
	end
	if registerVal2.m_eventHandlers.controller_used_start then
		local function __FUNC_3637_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.controller_used_start(arg1, arg2)
		end

		registerVal2:registerEventHandler("controller_used_start", __FUNC_3637_)
	else
		registerVal2:registerEventHandler("controller_used_start", LUI.UIElement.updateState)
	end
	if registerVal2.m_eventHandlers.controller_used_stop then
		local function __FUNC_36BF_(arg1, arg2)
			if not arg2.menu then
			end
			arg2.menu = arg0
			arg1:updateState(arg2)
			return registerVal2.m_eventHandlers.controller_used_stop(arg1, arg2)
		end

		registerVal2:registerEventHandler("controller_used_stop", __FUNC_36BF_)
	else
		registerVal2:registerEventHandler("controller_used_stop", LUI.UIElement.updateState)
	end
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "lobbyRoot.lobbyNav")
	local function __FUNC_3747_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyNav"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal9, __FUNC_3747_)
	local function __FUNC_386C_(arg0)
		arg0.FEMemberBlurPanelContainer0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_386C_)
	if __FUNC_22C_ then
		__FUNC_22C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.SplitscreenLobbyButtonPC.new = __FUNC_27C_
