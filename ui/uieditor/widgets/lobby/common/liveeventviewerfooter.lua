-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_LeftContainer_NOTLobby")
require("ui.uieditor.widgets.onOffImage")
require("ui.uieditor.widgets.Lobby.Common.LiveEventViewerStreamerCount")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LiveEventViewerFooter = registerVal1
function CoD.LiveEventViewerFooter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LiveEventViewerFooter)
	registerVal2.id = "LiveEventViewerFooter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal3:setTopBottom(false, true, -40.000000, 149.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.600000)
	registerVal2:addElement(registerVal3)
	registerVal2.blackleftBG = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, -123.000000, 131.500000)
	registerVal4:setTopBottom(false, true, -41.850000, -37.850000)
	registerVal4:setAlpha(0.550000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_featuredframeum"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LineLeft = registerVal4
	local registerVal5 = CoD.fe_LeftContainer_NOTLobby.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 15.000000, 550.000000)
	registerVal5:setTopBottom(false, true, -48.000000, -4.000000)
	local function __FUNC_BAB_(arg0)
		registerVal5:setModel(arg0, arg1)
	end

	registerVal5:linkToElementModel(registerVal2, nil, false, __FUNC_BAB_)
	registerVal2:addElement(registerVal5)
	registerVal2.feLeftContainer = registerVal5
	local registerVal6 = CoD.onOffImage.new(arg0, arg1)
	registerVal6:setLeftRight(false, true, -36.000000, -11.000000)
	registerVal6:setTopBottom(false, true, -32.000000, -7.000000)
	registerVal6.image:setImage(RegisterImage("uie_twitch_icon_white"))
	local registerVal9 = {}
	local registerVal10 = {}
	registerVal10.stateName = "On"
	local function __FUNC_BFA_(arg0, arg2, arg3)
		local registerVal3 = IsMLGStream(arg1)
		return (not registerVal3)
	end

	registerVal10.condition = __FUNC_BFA_
	registerVal9 = {registerVal10}
	registerVal6:mergeStateConditions(registerVal9)
	registerVal10 = Engine.GetGlobalModel()
	registerVal9 = Engine.GetModel(registerVal10, "liveEventViewer.stream")
	local function __FUNC_C4D_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "liveEventViewer.stream"
		arg0:updateElementState(registerVal6, registerVal4)
	end

	registerVal6:subscribeToModel(registerVal9, __FUNC_C4D_)
	registerVal2:addElement(registerVal6)
	registerVal2.twitchIcon = registerVal6
	local registerVal7 = CoD.LiveEventViewerStreamerCount.new(arg0, arg1)
	registerVal7:setLeftRight(false, true, -190.000000, -33.000000)
	registerVal7:setTopBottom(false, true, -32.500000, -7.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.LiveEventViewerStreamerCount0 = registerVal7
	local registerVal8 = {}
	registerVal9 = {}
	local function __FUNC_D78_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal9.DefaultClip = __FUNC_D78_
	registerVal8.DefaultState = registerVal9
	registerVal2.clipsPerState = registerVal8
	local function __FUNC_DDA_(arg0)
		arg0.feLeftContainer:close()
		arg0.twitchIcon:close()
		arg0.LiveEventViewerStreamerCount0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_DDA_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

