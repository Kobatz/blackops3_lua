-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Common.FE_ListHeaderGlow")
require("ui.uieditor.widgets.Lobby.LobbySlide.LobbySlideSocialInfoJoinable")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideSocialInfoWidget = registerVal1
function CoD.LobbySlideSocialInfoWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideSocialInfoWidget)
	registerVal2.id = "LobbySlideSocialInfoWidget"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 307.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 81.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 321.000000)
	registerVal3:setTopBottom(true, false, 3.750000, 61.500000)
	registerVal3:setAlpha(0.060000)
	registerVal2:addElement(registerVal3)
	registerVal2.FEListHeaderGlow1 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 313.000000, 349.000000)
	registerVal4:setTopBottom(true, false, 2.000000, 5.500000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.TickTR = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 313.000000, 349.000000)
	registerVal5:setTopBottom(true, false, 60.000000, 63.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.TickBR = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, -4.000000, 324.000000)
	registerVal6:setTopBottom(true, false, 2.000000, 6.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.LineT = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -4.000000, 324.000000)
	registerVal7:setTopBottom(true, false, 60.000000, 64.000000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_slidelineblur"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.LineB = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal8:setTopBottom(false, false, -42.750000, -39.250000)
	registerVal8:setZRot(180.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.pixelU0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, -29.000000, 7.000000)
	registerVal9:setTopBottom(false, false, 15.000000, 18.500000)
	registerVal9:setZRot(180.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_pixelist"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("uie_feather_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Image1 = registerVal9
	local registerVal10 = CoD.LobbySlideSocialInfoJoinable.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 2.000000, 220.100000)
	registerVal10:setTopBottom(true, false, 30.000000, 54.000000)
	local function __FUNC_1742_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1742_)
	local registerVal13 = {}
	local registerVal14 = {}
	registerVal14.stateName = "IsJoinable"
	local function __FUNC_1792_(arg0, arg2, arg3)
		return IsJoinable(registerVal2, arg1)
	end

	registerVal14.condition = __FUNC_1792_
	registerVal13 = {registerVal14}
	registerVal10:mergeStateConditions(registerVal13)
	local function __FUNC_17E4_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "joinable"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:linkToElementModel(registerVal10, "joinable", true, __FUNC_17E4_)
	registerVal14 = Engine.GetGlobalModel()
	registerVal13 = Engine.GetModel(registerVal14, "lobbyRoot.lobbyLockedIn")
	local function __FUNC_1902_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "lobbyRoot.lobbyLockedIn"
		arg0:updateElementState(registerVal10, registerVal4)
	end

	registerVal10:subscribeToModel(registerVal13, __FUNC_1902_)
	registerVal2:addElement(registerVal10)
	registerVal2.joinable = registerVal10
	local registerVal11 = CoD.FE_ListHeaderGlow.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 1.000000, 321.000000)
	registerVal11:setTopBottom(true, false, 4.000000, 24.750000)
	registerVal11:setAlpha(0.600000)
	registerVal2:addElement(registerVal11)
	registerVal2.FEListHeaderGlow0 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 3.000000, 317.100000)
	registerVal12:setTopBottom(true, false, 5.000000, 23.000000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal12:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1A2D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal12:linkToElementModel(registerVal2, "partyActivityString", true, __FUNC_1A2D_)
	registerVal2:addElement(registerVal12)
	registerVal2.presence = registerVal12
	registerVal13 = LUI.UIText.new()
	registerVal13:setLeftRight(true, false, 184.000000, 313.000000)
	registerVal13:setTopBottom(true, false, 5.000000, 22.000000)
	registerVal13:setRGB(0.000000, 0.200000, 0.660000)
	registerVal13:setText(Engine.Localize("MENU_GROUP_MEMBER"))
	registerVal13:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal13:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal13:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal13)
	registerVal2.GroupMember = registerVal13
	registerVal14 = LUI.UIText.new()
	registerVal14:setLeftRight(true, false, 184.000000, 313.000000)
	registerVal14:setTopBottom(true, false, 5.000000, 22.000000)
	registerVal14:setRGB(0.000000, 0.000000, 0.000000)
	registerVal14:setText(Engine.Localize("MENU_FRIEND"))
	registerVal14:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal14:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal14:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_RIGHT)
	registerVal14:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal14)
	registerVal2.Friend = registerVal14
	local registerVal15 = {}
	local registerVal16 = {}
	local function __FUNC_1AE6_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListHeaderGlow1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TickTR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TickBR:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineT:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LineB:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelU0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.joinable:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.presence:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GroupMember:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Friend:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1AE6_
	registerVal15.DefaultState = registerVal16
	registerVal16 = {}
	local function __FUNC_1F9C_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListHeaderGlow1:setAlpha(0.060000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TickTR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TickBR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LineB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelU0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.joinable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GroupMember:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Friend:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_1F9C_
	registerVal15.JapaneseFriend = registerVal16
	registerVal16 = {}
	local function __FUNC_2463_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListHeaderGlow1:setAlpha(0.060000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TickTR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TickBR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LineB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelU0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.joinable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GroupMember:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Friend:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_2463_
	registerVal15.JapaneseGroupMember = registerVal16
	registerVal16 = {}
	local function __FUNC_2927_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListHeaderGlow1:setAlpha(0.060000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TickTR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TickBR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LineB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelU0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.joinable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GroupMember:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Friend:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_2927_
	registerVal15.Friend = registerVal16
	registerVal16 = {}
	local function __FUNC_2DEB_()
		registerVal2:setupElementClipCounter(12.000000)
		registerVal3:completeAnimation()
		registerVal2.FEListHeaderGlow1:setAlpha(0.060000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.TickTR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.TickBR:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineT:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.LineB:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.pixelU0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Image1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.joinable:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FEListHeaderGlow0:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.presence:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.GroupMember:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Friend:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
	end

	registerVal16.DefaultClip = __FUNC_2DEB_
	registerVal15.GroupMember = registerVal16
	registerVal2.clipsPerState = registerVal15
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "JapaneseFriend"
	local function __FUNC_32AF_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "quickjoinListMember")
		if registerVal3 then
			registerVal3 = IsSelfModelValueNil(arg2, arg1, "xuid")
			if not registerVal3 then
				registerVal3 = IsSelfModelValueTrue(arg2, arg1, "friend")
				if registerVal3 then
					registerVal3 = IsCurrentLanguageJapanese()
				else
				end
			end
		end
		return true
	end

	registerVal18.condition = __FUNC_32AF_
	local registerVal19 = {}
	registerVal19.stateName = "JapaneseGroupMember"
	local function __FUNC_33DD_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "quickjoinListMember")
		if registerVal3 then
			registerVal3 = IsSelfModelValueNil(arg2, arg1, "xuid")
			registerVal3 = IsSelfModelValueTrue(arg2, arg1, "friend")
			if not registerVal3 and not registerVal3 then
				registerVal3 = IsCurrentLanguageJapanese()
			else
			end
		end
		return true
	end

	registerVal19.condition = __FUNC_33DD_
	local registerVal20 = {}
	registerVal20.stateName = "Friend"
	local function __FUNC_350D_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "quickjoinListMember")
		if registerVal3 then
			registerVal3 = IsSelfModelValueNil(arg2, arg1, "xuid")
			if not registerVal3 then
				registerVal3 = IsSelfModelValueTrue(arg2, arg1, "friend")
			else
			end
		end
		return true
	end

	registerVal20.condition = __FUNC_350D_
	local registerVal21 = {}
	registerVal21.stateName = "GroupMember"
	local function __FUNC_360A_(arg0, arg2, arg3)
		local registerVal3 = IsSelfModelValueTrue(arg2, arg1, "quickjoinListMember")
		if registerVal3 then
			registerVal3 = IsSelfModelValueNil(arg2, arg1, "xuid")
			if not registerVal3 then
				registerVal3 = IsSelfModelValueTrue(arg2, arg1, "friend")
			else
			end
		end
		return true
	end

	registerVal21.condition = __FUNC_360A_
	registerVal17 = {registerVal18, registerVal19, registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal17)
	local function __FUNC_370A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "quickjoinListMember"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "quickjoinListMember", true, __FUNC_370A_)
	local function __FUNC_3831_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "xuid"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "xuid", true, __FUNC_3831_)
	local function __FUNC_394A_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "friend"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "friend", true, __FUNC_394A_)
	local function __FUNC_3A64_(arg0)
		arg0.FEListHeaderGlow1:close()
		arg0.joinable:close()
		arg0.FEListHeaderGlow0:close()
		arg0.presence:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3A64_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

