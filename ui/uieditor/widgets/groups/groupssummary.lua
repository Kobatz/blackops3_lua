-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.GroupMemberSummary")
require("ui.uieditor.widgets.Groups.GroupsSummaryStatus")
require("ui.uieditor.widgets.CAC.cac_ItemTitleGlow")
require("ui.uieditor.widgets.Groups.GroupEmblemWidget")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Groups.GroupPrimaryWidget")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GroupsSummary = registerVal1
function CoD.GroupsSummary.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupsSummary)
	registerVal2.id = "GroupsSummary"
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
	local function __FUNC_18FA_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.MemberCount.Count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "memberCount", true, __FUNC_18FA_)
	local function __FUNC_19EE_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.PlayingCount.Count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "inTitleCount", true, __FUNC_19EE_)
	local function __FUNC_1AE3_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4.OnlineCount.Count:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "onlineCount", true, __FUNC_1AE3_)
	registerVal2:addElement(registerVal4)
	registerVal2.GroupMemberSummary = registerVal4
	local registerVal5 = CoD.GroupsSummaryStatus.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 18.000000, 312.000000)
	registerVal5:setTopBottom(true, false, 253.500000, 270.500000)
	registerVal5:setAlpha(0.000000)
	local function __FUNC_1BD6_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_1BD6_)
	registerVal2:addElement(registerVal5)
	registerVal2.GroupsSummaryStatus0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 17.000000, 315.000000)
	registerVal6:setTopBottom(true, false, 247.500000, 251.500000)
	registerVal6:setAlpha(0.000000)
	registerVal6:setImage(RegisterImage("uie_img_t7_menu_cacselection_itemboxlineforeh"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.Line1 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 17.000000, 315.000000)
	registerVal7:setTopBottom(true, false, 274.500000, 278.500000)
	registerVal7:setAlpha(0.000000)
	registerVal7:setImage(RegisterImage("uie_img_t7_menu_cacselection_itemboxlineforeh"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.Line2 = registerVal7
	local registerVal8 = CoD.cac_ItemTitleGlow.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 17.000000, 316.000000)
	registerVal8:setTopBottom(true, false, 5.930000, 41.990000)
	registerVal8:setRGB(0.900000, 0.900000, 0.900000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.cacItemTitleGlow0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, -52.000000, 50.000000)
	registerVal9:setTopBottom(false, false, -242.440000, -169.440000)
	registerVal9:setAlpha(0.000000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_cac_glow"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.Glow = registerVal9
	local registerVal10 = CoD.GroupEmblemWidget.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 19.000000, 314.000000)
	registerVal10:setTopBottom(true, false, 46.500000, 227.110000)
	registerVal10:setAlpha(0.000000)
	local function __FUNC_1C26_(arg0)
		registerVal10:setModel(arg0, arg1)
	end

	registerVal10:linkToElementModel(registerVal2, nil, false, __FUNC_1C26_)
	local function __FUNC_1C76_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10.GroupEmblem:setupGroupEmblem(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "groupId", true, __FUNC_1C76_)
	registerVal2:addElement(registerVal10)
	registerVal2.GroupEmblemWidget = registerVal10
	local registerVal11 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 16.000000, 317.000000)
	registerVal11:setTopBottom(true, false, 44.500000, 230.230000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.StartMenuframenoBG00 = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 21.000000, 310.000000)
	registerVal12:setTopBottom(true, false, 13.560000, 33.560000)
	registerVal12:setRGB(0.000000, 0.000000, 0.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setTTF("fonts/escom.ttf")
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal12:setShaderVector(0.000000, 0.060000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(1.000000, 0.020000, 0.000000, 0.000000, 0.000000)
	registerVal12:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	local function __FUNC_1D32_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal12:setText(registerVal1)
		end
	end

	registerVal12:linkToElementModel(registerVal2, "name", true, __FUNC_1D32_)
	registerVal2:addElement(registerVal12)
	registerVal2.GroupName = registerVal12
	local registerVal13 = LUI.UIImage.new()
	registerVal13:setLeftRight(true, false, 16.000000, 317.000000)
	registerVal13:setTopBottom(true, false, 284.000000, 351.000000)
	registerVal13:setAlpha(0.000000)
	registerVal13:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal13:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal13:setShaderVector(0.000000, 0.053156, 0.238806, 0.357143, 0.357143)
	registerVal13:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal13)
	registerVal2.DesciptionBacking = registerVal13
	local registerVal14 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal14:setLeftRight(true, false, 21.000000, 310.000000)
	registerVal14:setTopBottom(true, false, 289.000000, 346.000000)
	registerVal14:setAlpha(0.000000)
	registerVal14.textBox:setTTF("fonts/default.ttf")
	registerVal14.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1DC4_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal14.textBox:setText(registerVal1)
		end
	end

	registerVal14:linkToElementModel(registerVal2, "description", true, __FUNC_1DC4_)
	registerVal2:addElement(registerVal14)
	registerVal2.Description = registerVal14
	local registerVal15 = CoD.GroupPrimaryWidget.new(arg0, arg1)
	registerVal15:setLeftRight(true, false, 9.000000, 250.000000)
	registerVal15:setTopBottom(true, false, 428.000000, 470.000000)
	registerVal15:setAlpha(0.000000)
	local function __FUNC_1E75_(arg0)
		registerVal15:setModel(arg0, arg1)
	end

	registerVal15:linkToElementModel(registerVal2, nil, false, __FUNC_1E75_)
	local registerVal18 = {}
	local registerVal19 = {}
	registerVal19.stateName = "Visible"
	local function __FUNC_1EC6_(arg0, arg2, arg3)
		return IsSelfModelValueTrue(arg2, arg1, "isPrimaryGroup")
	end

	registerVal19.condition = __FUNC_1EC6_
	registerVal18 = {registerVal19}
	registerVal15:mergeStateConditions(registerVal18)
	local function __FUNC_1F3E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "isPrimaryGroup"
		arg0:updateElementState(registerVal15, registerVal4)
	end

	registerVal15:linkToElementModel(registerVal15, "isPrimaryGroup", true, __FUNC_1F3E_)
	registerVal2:addElement(registerVal15)
	registerVal2.GroupPrimaryWidget = registerVal15
	local registerVal16 = {}
	local registerVal17 = {}
	local function __FUNC_2060_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GroupMemberSummary:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GroupsSummaryStatus0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Line1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Line2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Glow:setAlpha(0.140000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GroupName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DesciptionBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Description:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.GroupPrimaryWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2060_
	registerVal16.DefaultState = registerVal17
	registerVal17 = {}
	local function __FUNC_25B2_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GroupMemberSummary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GroupsSummaryStatus0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Line1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Line2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Glow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GroupName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DesciptionBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Description:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.GroupPrimaryWidget:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_25B2_
	registerVal16.NoGroupSelected = registerVal17
	registerVal17 = {}
	local function __FUNC_2AF8_()
		registerVal2:setupElementClipCounter(13.000000)
		registerVal3:completeAnimation()
		registerVal2.Backing:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.GroupMemberSummary:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.GroupsSummaryStatus0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Line1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Line2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.cacItemTitleGlow0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Glow:setAlpha(0.140000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GroupEmblemWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.StartMenuframenoBG00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.GroupName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.DesciptionBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal13, {})
		registerVal14:completeAnimation()
		registerVal2.Description:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal14, {})
		registerVal15:completeAnimation()
		registerVal2.GroupPrimaryWidget:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal15, {})
	end

	registerVal17.DefaultClip = __FUNC_2AF8_
	registerVal16.InvitesGroupSummary = registerVal17
	registerVal2.clipsPerState = registerVal16
	registerVal18 = {}
	registerVal19 = {}
	registerVal19.stateName = "NoGroupSelected"
	local function __FUNC_304A_(arg0, arg2, arg3)
		local registerVal3 = HasSelectedGroup(arg2, arg1)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_304A_
	local registerVal20 = {}
	registerVal20.stateName = "InvitesGroupSummary"
	local function __FUNC_30A6_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_30A6_
	registerVal18 = {registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal18)
	local function __FUNC_30F1_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "groupId"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "groupId", true, __FUNC_30F1_)
	local function __FUNC_320D_(arg0)
		arg0.GroupMemberSummary:close()
		arg0.GroupsSummaryStatus0:close()
		arg0.cacItemTitleGlow0:close()
		arg0.GroupEmblemWidget:close()
		arg0.StartMenuframenoBG00:close()
		arg0.Description:close()
		arg0.GroupPrimaryWidget:close()
		arg0.GroupName:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_320D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

