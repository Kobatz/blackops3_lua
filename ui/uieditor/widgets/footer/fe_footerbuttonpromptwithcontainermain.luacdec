-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Footer.fe_BTNBG")
require("ui.uieditor.widgets.Border")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.fe_FooterButtonPromptWithContainerMain = registerVal1
function CoD.fe_FooterButtonPromptWithContainerMain.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.fe_FooterButtonPromptWithContainerMain)
	registerVal2.id = "fe_FooterButtonPromptWithContainerMain"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 100.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 65.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.fe_BTNBG.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, -22.000000, 5.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.feBTNBG0 = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, true, 4.000000, -22.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setAlpha(0.350000)
	registerVal4:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_linetopandbotbg"))
	registerVal2:addElement(registerVal4)
	registerVal2.line = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, -22.000000, 4.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setAlpha(0.350000)
	registerVal5:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_left_bg"))
	registerVal2:addElement(registerVal5)
	registerVal2.left = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, true, -22.000000, 4.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setAlpha(0.350000)
	registerVal6:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_rightbg"))
	registerVal2:addElement(registerVal6)
	registerVal2.Right = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, -22.000000, 4.000000)
	registerVal7:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal7:setAlpha(0.650000)
	registerVal7:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_left"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.left0 = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, true, -22.000000, 4.000000)
	registerVal8:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal8:setAlpha(0.650000)
	registerVal8:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_right"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.Right0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, true, 4.000000, -22.000000)
	registerVal9:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal9:setAlpha(0.650000)
	registerVal9:setImage(RegisterImage("uie_t7_fe_footer_btn_frame_linetopandbot"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.line0 = registerVal9
	local registerVal10 = LUI.UIImage.new()
	registerVal10:setLeftRight(true, false, 1.000000, 25.000000)
	registerVal10:setTopBottom(true, false, 19.000000, 43.000000)
	registerVal10:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
	registerVal10:setShaderVector(0.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.buttonPromptImage = registerVal10
	local registerVal11 = LUI.UITightText.new()
	registerVal11:setLeftRight(true, false, 29.000000, 71.000000)
	registerVal11:setTopBottom(true, false, 22.000000, 40.000000)
	registerVal11:setText(Engine.Localize("Select"))
	registerVal11:setTTF("fonts/default.ttf")
	local function __FUNC_1300_(arg0, arg1)
		ScaleWidgetToLabel(registerVal2, arg0, -10.000000)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal11, "setText", __FUNC_1300_)
	registerVal2:addElement(registerVal11)
	registerVal2.label = registerVal11
	local registerVal12 = LUI.UIText.new()
	registerVal12:setLeftRight(true, false, 1.000000, 25.000000)
	registerVal12:setTopBottom(true, false, 19.000000, 44.000000)
	registerVal12:setAlpha(0.000000)
	registerVal12:setText(Engine.Localize("MENU_NEW"))
	registerVal12:setTTF("fonts/default.ttf")
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal12:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal12)
	registerVal2.keybind = registerVal12
	local registerVal13 = CoD.Border.new(arg0, arg1)
	registerVal13:setLeftRight(true, false, 0.000000, 26.000000)
	registerVal13:setTopBottom(true, false, 18.000000, 44.000000)
	registerVal13:setRGB(0.790000, 0.780000, 0.780000)
	registerVal2:addElement(registerVal13)
	registerVal2.Border = registerVal13
	local registerVal14 = {}
	local registerVal15 = {}
	local function __FUNC_1361_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.feBTNBG0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.line:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.left:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Right:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.left0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Right0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.line0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.keybind:setAlpha(0.000000)
		registerVal2.keybind:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1361_
	registerVal14.DefaultState = registerVal15
	registerVal15 = {}
	local function __FUNC_1838_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal10:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.buttonPromptImage:setAlpha(0.500000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.label:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.label:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.keybind:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1838_
	registerVal14.Disabled = registerVal15
	registerVal15 = {}
	local function __FUNC_1B88_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.feBTNBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.line:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.left:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Right:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.left0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Right0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.line0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.keybind:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_1B88_
	local function __FUNC_2017_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.feBTNBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.line:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.left:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Right:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.left0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Right0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.line0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.label:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.keybind:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal15.Over = __FUNC_2017_
	registerVal14.Enabled = registerVal15
	registerVal15 = {}
	local function __FUNC_2459_()
		registerVal2:setupElementClipCounter(4.000000)
		registerVal10:completeAnimation()
		registerVal2.buttonPromptImage:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.buttonPromptImage:setMaterial(LUI.UIImage.GetCachedMaterial("uie_saturation_normal"))
		registerVal2.buttonPromptImage:setShaderVector(0.000000, 0.000000, 0.000000, 0.000000, 0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.label:setRGB(0.500000, 0.500000, 0.500000)
		registerVal2.label:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.keybind:setAlpha(0.250000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_2459_
	registerVal14.DisabledPC = registerVal15
	registerVal15 = {}
	local function __FUNC_27AD_()
		registerVal2:setupElementClipCounter(11.000000)
		registerVal3:completeAnimation()
		registerVal2.feBTNBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.line:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.left:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Right:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.left0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Right0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.line0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.label:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.keybind:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
		registerVal13:completeAnimation()
		registerVal2.Border:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal13, {})
	end

	registerVal15.DefaultClip = __FUNC_27AD_
	local function __FUNC_2C3B_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.feBTNBG0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.line:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.left:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Right:setAlpha(0.350000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.left0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Right0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.line0:setAlpha(0.650000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.label:setRGB(0.870000, 0.370000, 0.000000)
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal15.Over = __FUNC_2C3B_
	registerVal14.EnabledPC = registerVal15
	registerVal2.clipsPerState = registerVal14
	local registerVal16 = {}
	local registerVal17 = {}
	registerVal17.stateName = "Disabled"
	local function __FUNC_3028_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal17.condition = __FUNC_3028_
	local registerVal18 = {}
	registerVal18.stateName = "Enabled"
	local function __FUNC_3075_(arg0, arg1, arg2)
		return AlwaysTrue()
	end

	registerVal18.condition = __FUNC_3075_
	local registerVal19 = {}
	registerVal19.stateName = "DisabledPC"
	local function __FUNC_30C0_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal19.condition = __FUNC_30C0_
	local registerVal20 = {}
	registerVal20.stateName = "EnabledPC"
	local function __FUNC_310D_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal20.condition = __FUNC_310D_
	registerVal16 = {registerVal17, registerVal18, registerVal19, registerVal20}
	registerVal2:mergeStateConditions(registerVal16)
	local function __FUNC_3159_(arg0)
		arg0.feBTNBG0:close()
		arg0.Border:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3159_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

