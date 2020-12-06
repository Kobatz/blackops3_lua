-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupMemberSummary")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.Groups.GroupEmblemWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Groups.GroupPrimaryWidget")
require("ui.uieditor.widgets.Groups.GroupsSummaryStatusWithJoinApproval")
require("ui.uieditor.widgets.buttonprompt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSummaryForSearch = registerVal1
function CoD.GroupsSummaryForSearch.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSummaryForSearch)
	registerVal2.id = "GroupsSummaryForSearch"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 460.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Backing = registerVal3
	local registerVal4 = CoD.GroupMemberSummary.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 18.000000, 315.000000)
	registerVal4:setTopBottom(true, false, 357.500000, 422.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4.MemberCount.Title:setText(Engine.Localize(AppendString("_CAPS", "GROUPS_MEMBERS")))
	registerVal4.PlayingCount.Title:setText(Engine.Localize(AppendString("_CAPS", "GROUPS_PLAYING")))
	registerVal4.OnlineCount.Title:setText(Engine.Localize(AppendString("_CAPS", "GROUPS_ONLINE")))
	local function __FUNC_1B5A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.MemberCount.Count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "memberCount", true, __FUNC_1B5A_)
	local function __FUNC_1C4E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PlayingCount.Count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "inTitleCount", true, __FUNC_1C4E_)
	local function __FUNC_1D43_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.OnlineCount.Count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "onlineCount", true, __FUNC_1D43_)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupMemberSummary = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 17.000000, 315.000000)
	registerVal5:setTopBottom(true, false, 247.500000, 251.500000)
	registerVal5:setAlpha(0.000000)
	registerVal5:setImage(RegisterImage("uie_img_t7_menu_cacselection_itemboxlineforeh"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.Line1 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 17.000000, 315.000000)
	registerVal6:setTopBottom(true, false, 274.500000, 278.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_cacselection_itemboxlineforeh"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Line2 = registerVal6
	local registerVal7 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 17.000000, 316.000000)
	registerVal7:setTopBottom(true, false, 5.930000, 41.990000)
	registerVal7:setRGB(0.900000, 0.900000, 0.900000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.cacItemTitleGlow0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, true, -52.000000, 50.000000)
	registerVal8:setTopBottom(false, false, -242.440000, -169.440000)
	registerVal8:setAlpha(0.000000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Glow = registerVal8
	local registerVal9 = CoD.GroupEmblemWidget.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 19.000000, 314.000000)
	registerVal9:setTopBottom(true, false, 46.500000, 227.110000)
	registerVal9:setAlpha(0.000000)
	local function __FUNC_1E36_(arg0)
		registerVal9:setModel(arg0, arg1)
	end

	registerVal9:linkToElementModel(registerVal2, nil, false, __FUNC_1E36_)
	local function __FUNC_1E86_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.GroupEmblem:setupGroupEmblem(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "groupId", true, __FUNC_1E86_)
	registerVal2:addElement(registerVal9)
	registerVal2.GroupEmblemWidget = registerVal9
	local registerVal10 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 16.000000, 317.000000)
	registerVal10:setTopBottom(true, false, 44.500000, 230.230000)
	registerVal10:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.StartMenuframenoBG00 = registerVal10
	local registerVal11 = LUI.UIText.new()
	registerVal11:setLeftRight(true, false, 21.000000, 310.000000)
	registerVal11:setTopBottom(true, false, 13.560000, 33.560000)
	registerVal11:setRGB(0.000000, 0.000000, 0.000000)
	registerVal11:setAlpha(0.000000)
	registerVal11:setTTF("fonts/escom.ttf")
	registerVal11:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal11:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal11:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal11:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1F42_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setText(registerVal1)
		end
	end

	registerVal11:linkToElementModel(registerVal2, "name", true, __FUNC_1F42_)
	registerVal2:addElement(registerVal11)
	registerVal2.GroupName = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(true, false, 16.000000, 317.000000)
	registerVal12:setTopBottom(true, false, 284.000000, 351.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal12:setShaderVector(0.000000, 0.053156, 0.238806, 0.357143, 0.357143)
	registerVal12:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.DesciptionBacking = registerVal12
	local registerVal13 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 21.000000, 310.000000)
	registerVal13:setTopBottom(true, false, 289.000000, 346.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13.textBox:setTTF("fonts/default.ttf")
	registerVal13.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1FD4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal13.textBox:setText(registerVal1)
		end
	end

	registerVal13:linkToElementModel(registerVal2, "description", true, __FUNC_1FD4_)
	registerVal2:addElement(registerVal13)
	registerVal2.Description = registerVal13
	local registerVal14 = CoD.GroupPrimaryWidget.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 9.000000, 250.000000)
	registerVal14:setTopBottom(true, false, 428.000000, 470.000000)
	registerVal14:setAlpha(0.000000)
	local function __FUNC_2085_(arg0)
		registerVal14:setModel(arg0, arg1)
	end

	registerVal14:linkToElementModel(registerVal2, nil, false, __FUNC_2085_)
	local registerVal17 = {}
	local registerVal18 = {}
	registerVal18.stateName = "Visible"
	local function __FUNC_20D6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPrimaryGroup")
	end

	registerVal18.condition = __FUNC_20D6_
	registerVal17 = {registerVal18}
	registerVal14:mergeStateConditions(registerVal17)
	local function __FUNC_214E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPrimaryGroup"
		arg0:updateElementState(registerVal14, registerVal4)
	end

	registerVal14:linkToElementModel(registerVal14, "isPrimaryGroup", true, __FUNC_214E_)
	registerVal2:addElement(registerVal14)
	registerVal2.GroupPrimaryWidget = registerVal14
	local registerVal15 = CoD.GroupsSummaryStatusWithJoinApproval.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 19.000000, 339.000000)
	registerVal15:setTopBottom(true, false, 253.500000, 273.500000)
	registerVal15:setAlpha(0.000000)
	local function __FUNC_2270_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_2270_)
	registerVal2:addElement(registerVal15)
	registerVal2.GroupsSummaryStatusWithJoinApproval = registerVal15
	local registerVal16 = CoD.buttonprompt.new(arg0, arg1)
	registerVal16:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal16:setTopBottom(true, false, 460.000000, 491.000000)
	registerVal16:setAlpha(0.000000)
	registerVal16.label:setText(Engine.Localize("GROUPS_VIEW_GROUP_FRIENDS"))
	local function __FUNC_22C2_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal16.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal16:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_22C2_)
	registerVal2:addElement(registerVal16)
	registerVal2.buttonprompt = registerVal16
	registerVal17 = {}
	registerVal18 = {}
	local function __FUNC_239B_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GroupMemberSummary:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Line1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Line2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setAlpha(0.140000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.DesciptionBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Description:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GroupPrimaryWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.GroupsSummaryStatusWithJoinApproval:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.buttonprompt:setLeftRight(true, false, 91.500000, 239.500000)
		registerVal2.buttonprompt:setTopBottom(true, false, 470.000000, 501.000000)
		registerVal2.buttonprompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_239B_
	registerVal17.DefaultState = registerVal18
	registerVal18 = {}
	local function __FUNC_29E3_()
		registerVal2:setupElementClipCounter(14.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GroupMemberSummary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Line1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Line2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.DesciptionBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Description:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GroupPrimaryWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.GroupsSummaryStatusWithJoinApproval:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.buttonprompt:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_29E3_
	registerVal17.NoGroupSelected = registerVal18
	registerVal18 = {}
	local function __FUNC_2F91_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal4:completeAnimation()
		registerVal2.GroupMemberSummary:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Line1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Line2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Glow:setAlpha(0.140000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GroupName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.DesciptionBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Description:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.GroupPrimaryWidget:setLeftRight(true, false, 9.000000, 250.000000)
		registerVal2.GroupPrimaryWidget:setTopBottom(true, false, 428.000000, 470.000000)
		registerVal2.GroupPrimaryWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.GroupsSummaryStatusWithJoinApproval:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
		registerVal16:completeAnimation()
		registerVal2.buttonprompt:setLeftRight(true, false, 88.500000, 242.500000)
		registerVal2.buttonprompt:setTopBottom(true, false, 460.000000, 491.000000)
		registerVal2.buttonprompt:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal16, {})
	end

	registerVal18.DefaultClip = __FUNC_2F91_
	registerVal17.FriendsGroups = registerVal18
	registerVal2.clipsPerState = registerVal17
	local registerVal19 = {}
	local registerVal20 = {}
	registerVal20.stateName = "NoGroupSelected"
	local function __FUNC_35E5_(arg0, arg2, arg3)
		local registerVal3 = HasSelectedGroup(arg2, arg1)
		return (not registerVal3)
	end

	registerVal20.condition = __FUNC_35E5_
	local registerVal21 = {}
	registerVal21.stateName = "FriendsGroups"
	local function __FUNC_3642_(arg0, arg2, arg3)
		local registerVal3 = IsModelValueTrue(arg1, "groups.skipViewFriendsInGroup")
		return (not registerVal3)
	end

	registerVal21.condition = __FUNC_3642_
	registerVal19 = {registerVal20, registerVal21}
	registerVal2:mergeStateConditions(registerVal19)
	local function __FUNC_36C5_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "groupId", true, __FUNC_36C5_)
	registerVal20 = Engine.GetModelForController(arg1)
	registerVal19 = Engine.GetModel(registerVal20, "groups.skipViewFriendsInGroup")
	local function __FUNC_37E1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groups.skipViewFriendsInGroup"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal19, __FUNC_37E1_)
	local function __FUNC_3913_(arg0)
		arg0.GroupMemberSummary:close()
		arg0.cacItemTitleGlow0:close()
		arg0.GroupEmblemWidget:close()
		arg0.StartMenuframenoBG00:close()
		arg0.Description:close()
		arg0.GroupPrimaryWidget:close()
		arg0.GroupsSummaryStatusWithJoinApproval:close()
		arg0.buttonprompt:close()
		arg0.GroupName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3913_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

