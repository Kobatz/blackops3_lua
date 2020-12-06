-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
require("ui.uieditor.widgets.verticalScrollingTextBox")
require("ui.uieditor.widgets.Groups.GroupsFeaturedListSmall")
local function __FUNC_2A5_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "fileshareRoot", false)
	registerVal3 = Engine.CreateModel(registerVal2, "summaryFileUpdated", false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.GroupContentPanel = registerVal2
local function __FUNC_390_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_2A5_ then
		__FUNC_2A5_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.GroupContentPanel)
	registerVal2.id = "GroupContentPanel"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 384.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 441.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 325.000000)
	registerVal3:setTopBottom(true, false, 238.500000, 441.500000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_cac_buttonboxlrginactivefull"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("uie_nineslice_add"))
	registerVal3:setShaderVector(0.000000, 0.049231, 0.078818, 0.357143, 0.357143)
	registerVal3:setupNineSliceShader(16.000000, 16.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Image = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 3.000000, 322.000000)
	registerVal4:setTopBottom(true, false, 240.500000, 268.500000)
	registerVal4:setRGB(0.000000, 0.000000, 0.000000)
	registerVal4:setAlpha(0.450000)
	registerVal2:addElement(registerVal4)
	registerVal2.Banner = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 3.000000, 322.000000)
	registerVal5:setTopBottom(true, false, 27.000000, 53.250000)
	registerVal5:setRGB(0.000000, 0.000000, 0.000000)
	registerVal5:setAlpha(0.450000)
	registerVal2:addElement(registerVal5)
	registerVal2.Banner0 = registerVal5
	local registerVal6 = LUI.UIText.new()
	registerVal6:setLeftRight(true, false, 6.000000, 315.000000)
	registerVal6:setTopBottom(true, false, 244.500000, 264.500000)
	registerVal6:setText(Engine.Localize("GROUPS_MESSAGE_CAPS"))
	registerVal6:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal6:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal6)
	registerVal2.Message = registerVal6
	local registerVal7 = LUI.UIText.new()
	registerVal7:setLeftRight(true, false, 7.000000, 244.500000)
	registerVal7:setTopBottom(true, false, 30.630000, 50.630000)
	registerVal7:setText(Engine.Localize("GROUPS_FEATURED_CAPS"))
	registerVal7:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal7:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal7)
	registerVal2.Featured = registerVal7
	local registerVal8 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 0.000000, 325.000000)
	registerVal8:setTopBottom(true, false, 22.630000, 226.630000)
	registerVal2:addElement(registerVal8)
	registerVal2.StartMenuframenoBG000 = registerVal8
	local registerVal9 = CoD.verticalScrollingTextBox.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 10.000000, 315.000000)
	registerVal9:setTopBottom(true, false, 276.000000, 429.000000)
	registerVal9.textBox:setTTF("fonts/default.ttf")
	registerVal9.textBox:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	local function __FUNC_1090_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal9.textBox:setText(registerVal1)
		end
	end

	registerVal9:linkToElementModel(registerVal2, "message", true, __FUNC_1090_)
	registerVal2:addElement(registerVal9)
	registerVal2.verticalScrollingTextBox = registerVal9
	local registerVal10 = CoD.GroupsFeaturedListSmall.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 2.500000, 322.500000)
	registerVal10:setTopBottom(true, false, 52.630000, 226.630000)
	registerVal10.contentList:setDataSource("FilesharePublishedList")
	registerVal2:addElement(registerVal10)
	registerVal2.GroupsFeaturedListSmall = registerVal10
	local registerVal11 = {}
	local registerVal12 = {}
	local function __FUNC_1141_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Banner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Banner0:setLeftRight(true, false, 1.000000, 322.000000)
		registerVal2.Banner0:setTopBottom(true, false, 27.000000, 53.250000)
		registerVal2.Banner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Message:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Featured:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StartMenuframenoBG000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.verticalScrollingTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GroupsFeaturedListSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_1141_
	registerVal11.DefaultState = registerVal12
	registerVal12 = {}
	local function __FUNC_154F_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Image:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Banner:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Banner0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Message:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Featured:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StartMenuframenoBG000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.verticalScrollingTextBox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GroupsFeaturedListSmall:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_154F_
	registerVal11.NonMemberView = registerVal12
	registerVal12 = {}
	local function __FUNC_18CB_()
		registerVal2:setupElementClipCounter(8.000000)
		registerVal3:completeAnimation()
		registerVal2.Image:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Banner:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Banner0:setAlpha(0.450000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Message:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Featured:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.StartMenuframenoBG000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.verticalScrollingTextBox:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.GroupsFeaturedListSmall:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
	end

	registerVal12.DefaultClip = __FUNC_18CB_
	registerVal11.MemberView = registerVal12
	registerVal2.clipsPerState = registerVal11
	registerVal10.id = "GroupsFeaturedListSmall"
	local function __FUNC_1C4C_(arg0)
		arg0.StartMenuframenoBG000:close()
		arg0.verticalScrollingTextBox:close()
		arg0.GroupsFeaturedListSmall:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C4C_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.GroupContentPanel.new = __FUNC_390_
