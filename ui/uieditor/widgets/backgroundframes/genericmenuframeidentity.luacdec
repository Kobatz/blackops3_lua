-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
require("ui.uieditor.widgets.Footer.fe_FooterContainer_NOTLobby")
require("ui.uieditor.widgets.playercard.SelfIdentityBadge")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.GenericMenuFrameIdentity = registerVal1
function CoD.GenericMenuFrameIdentity.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GenericMenuFrameIdentity)
	registerVal2.id = "GenericMenuFrameIdentity"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -52.000000, 51.000000)
	registerVal3:setTopBottom(true, false, -51.000000, 85.500000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.400000)
	registerVal2:addElement(registerVal3)
	registerVal2.topBorder = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 57.000000, 134.000000)
	registerVal4:setTopBottom(true, false, 31.500000, 79.500000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setText(Engine.Localize("MENU_NEW"))
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.titleLabel = registerVal4
	local registerVal5 = CoD.cac_3dTitleIntermediary.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -78.000000, 531.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal5.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize(""))
	registerVal2:addElement(registerVal5)
	registerVal2.cac3dTitleIntermediary0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -12.000000, 12.000000)
	registerVal6:setTopBottom(true, false, 79.500000, 89.000000)
	registerVal6:setRGB(0.900000, 0.900000, 0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal6)
	registerVal2.CategoryListLine = registerVal6
	local registerVal7 = CoD.fe_FooterContainer_NOTLobby.new(arg0, arg1)
	registerVal7:setLeftRight(true, true, 1.000000, -1.000000)
	registerVal7:setTopBottom(false, true, -67.000000, 0.000000)
	local function __FUNC_CA3_(arg0)
		registerVal7:setModel(arg0, arg1)
	end

	registerVal7:linkToElementModel(registerVal2, nil, false, __FUNC_CA3_)
	local function __FUNC_CF2_(arg0, arg2)
		SizeToSafeArea(arg0, arg1)
		if not nil then
			local registerVal3 = arg0:dispatchEventToChildren(arg2)
		end
		return registerVal3
	end

	registerVal7:registerEventHandler("menu_loaded", __FUNC_CF2_)
	registerVal2:addElement(registerVal7)
	registerVal2.feFooterContainerNOTLobby = registerVal7
	local registerVal8 = CoD.SelfIdentityBadge.new(arg0, arg1)
	registerVal8:setLeftRight(false, true, -435.000000, -92.000000)
	registerVal8:setTopBottom(true, false, 23.000000, 83.000000)
	local function __FUNC_D85_(arg0)
		registerVal8:setModel(arg0, arg1)
	end

	registerVal8:subscribeToGlobalModel(arg1, "PerController", "identityBadge", __FUNC_D85_)
	local function __FUNC_DD6_(arg0)
		registerVal8.CallingCard.CallingCardsFrameWidget:setModel(arg0, arg1)
	end

	registerVal8:subscribeToGlobalModel(arg1, "PerController", nil, __FUNC_DD6_)
	registerVal2:addElement(registerVal8)
	registerVal2.SelfIdentityBadge = registerVal8
	local function __FUNC_E74_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Update")
		if registerVal2 then
			SetElementStateByElementName(registerVal2, "cac3dTitleIntermediary0", arg1, "Update")
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_E74_)
	local function __FUNC_F41_(arg0)
		arg0.cac3dTitleIntermediary0:close()
		arg0.feFooterContainerNOTLobby:close()
		arg0.SelfIdentityBadge:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F41_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

