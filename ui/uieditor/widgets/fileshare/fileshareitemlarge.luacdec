-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_ButtonBoxLrgIdle")
require("ui.uieditor.widgets.StartMenu.StartMenu_frame_noBG")
local function __FUNC_25E_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "fileshareRoot", false)
	Engine.CreateModel(registerVal2, "isNormalSize", false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FileshareItemLarge = registerVal2
local function __FUNC_342_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_25E_ then
		__FUNC_25E_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareItemLarge)
	registerVal2.id = "FileshareItemLarge"
	registerVal2.soundSet = "Paintshop"
	registerVal2:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 350.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 290.000000)
	registerVal3:setRGB(0.400000, 0.400000, 0.400000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.cac_ButtonBoxLrgIdle.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -2.000000, 352.000000)
	registerVal4:setTopBottom(true, false, -2.000000, 324.500000)
	registerVal4:setAlpha(0.400000)
	registerVal2:addElement(registerVal4)
	registerVal2.BoxButtonLrgIdle = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal5:setTopBottom(false, true, -350.000000, -60.000000)
	local function __FUNC_10CF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupWCFileshareIconExtraCamRender(GetFileshareExtraCamParameters(arg1, registerVal1))
		end
	end

	registerVal5:linkToElementModel(registerVal2, "fileId", true, __FUNC_10CF_)
	registerVal2:addElement(registerVal5)
	registerVal2.WCFileshareIconExtraCamRender = registerVal5
	local registerVal6 = LUI.UIElement.new()
	registerVal6:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal6:setTopBottom(false, true, -350.000000, -153.130000)
	registerVal6:setAlpha(0.000000)
	local function __FUNC_11AF_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setupImageViewer(GetImageViewerParams("UI_SCREENSHOT_TYPE_THUMBNAIL", registerVal1))
		end
	end

	registerVal6:linkToElementModel(registerVal2, "fileId", true, __FUNC_11AF_)
	registerVal2:addElement(registerVal6)
	registerVal2.ImageViewer = registerVal6
	local registerVal7 = LUI.UITightText.new()
	registerVal7:setLeftRight(true, false, 2.500000, 350.000000)
	registerVal7:setTopBottom(true, false, 325.000000, 350.000000)
	registerVal7:setTTF("fonts/default.ttf")
	local function __FUNC_1299_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal7:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal7:linkToElementModel(registerVal2, "weaponName", true, __FUNC_1299_)
	registerVal2:addElement(registerVal7)
	registerVal2.WeaponName = registerVal7
	local registerVal8 = LUI.UITightText.new()
	registerVal8:setLeftRight(true, false, 2.500000, 350.000000)
	registerVal8:setTopBottom(true, false, 325.000000, 350.000000)
	registerVal8:setTTF("fonts/default.ttf")
	local function __FUNC_1352_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal8:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal8:linkToElementModel(registerVal2, "fileCreateTime", true, __FUNC_1352_)
	registerVal2:addElement(registerVal8)
	registerVal2.FileCreateTime = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(true, false, 0.000000, 350.000000)
	registerVal9:setTopBottom(true, false, 290.000000, 322.000000)
	registerVal9:setAlpha(0.800000)
	registerVal2:addElement(registerVal9)
	registerVal2.ItemNameBg = registerVal9
	local registerVal10 = LUI.UITightText.new()
	registerVal10:setLeftRight(true, false, 2.500000, 350.000000)
	registerVal10:setTopBottom(true, false, 292.000000, 322.000000)
	registerVal10:setRGB(0.000000, 0.000000, 0.000000)
	registerVal10:setTTF("fonts/default.ttf")
	local function __FUNC_140A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal10:setText(registerVal1)
		end
	end

	registerVal10:linkToElementModel(registerVal2, "fileName", true, __FUNC_140A_)
	registerVal2:addElement(registerVal10)
	registerVal2.ItemName = registerVal10
	local registerVal11 = LUI.UIImage.new()
	registerVal11:setLeftRight(false, false, -135.000000, 135.000000)
	registerVal11:setTopBottom(false, false, -170.000000, 100.000000)
	registerVal11:setAlpha(0.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.GameTypeImage = registerVal11
	local registerVal12 = CoD.StartMenu_frame_noBG.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, -2.500000, 352.000000)
	registerVal12:setTopBottom(true, false, -1.000000, 352.000000)
	registerVal12:setAlpha(0.850000)
	registerVal2:addElement(registerVal12)
	registerVal2.StartMenuframenoBG0 = registerVal12
	local function __FUNC_149C_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal11:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal2.GameTypeImage:linkToElementModel(registerVal2, "gameTypeImage", true, __FUNC_149C_)
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_1550_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.BG:setTopBottom(true, false, 0.000000, 290.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, false, -2.000000, 352.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, false, -2.000000, 324.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.WCFileshareIconExtraCamRender:setTopBottom(false, true, -350.000000, -60.000000)
		registerVal2.WCFileshareIconExtraCamRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImageViewer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.WeaponName:setTopBottom(true, false, 325.000000, 350.000000)
		registerVal2.WeaponName:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FileCreateTime:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.FileCreateTime:setTopBottom(true, false, 325.000000, 350.000000)
		registerVal2.FileCreateTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ItemNameBg:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.ItemNameBg:setTopBottom(true, false, 290.000000, 322.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ItemName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.ItemName:setTopBottom(true, false, 292.000000, 322.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, -2.500000, 352.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, -1.000000, 352.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1550_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_1BF0_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.BG:setTopBottom(true, false, 0.000000, 290.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, false, -2.000000, 352.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, false, -2.000000, 228.880000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.WCFileshareIconExtraCamRender:setTopBottom(false, true, -350.000000, -60.000000)
		registerVal2.WCFileshareIconExtraCamRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImageViewer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.WeaponName:setTopBottom(true, false, 325.000000, 350.000000)
		registerVal2.WeaponName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FileCreateTime:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.FileCreateTime:setTopBottom(true, false, 231.880000, 256.880000)
		registerVal2.FileCreateTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ItemNameBg:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.ItemNameBg:setTopBottom(true, false, 196.880000, 228.880000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ItemName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.ItemName:setTopBottom(true, false, 198.880000, 228.880000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, true, -2.500000, 2.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, true, -1.000000, -88.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1BF0_
	registerVal13.ScreenShot = registerVal14
	registerVal14 = {}
	local function __FUNC_22A4_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.BG:setTopBottom(true, false, 0.000000, 290.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, false, -2.000000, 352.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, false, -2.000000, 324.500000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.WCFileshareIconExtraCamRender:setTopBottom(false, true, -350.000000, -60.000000)
		registerVal2.WCFileshareIconExtraCamRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImageViewer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.WeaponName:setTopBottom(true, false, 325.000000, 350.000000)
		registerVal2.WeaponName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FileCreateTime:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.FileCreateTime:setTopBottom(true, false, 325.000000, 350.000000)
		registerVal2.FileCreateTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ItemNameBg:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.ItemNameBg:setTopBottom(true, false, 290.000000, 322.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ItemName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.ItemName:setTopBottom(true, false, 292.000000, 322.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, false, -2.500000, 352.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, false, -1.000000, 352.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_22A4_
	registerVal13.GameType = registerVal14
	registerVal14 = {}
	local function __FUNC_2944_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.BG:setTopBottom(true, false, 0.000000, 215.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, false, -2.000000, 352.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, false, -2.000000, 247.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.WCFileshareIconExtraCamRender:setTopBottom(false, true, -350.000000, -135.000000)
		registerVal2.WCFileshareIconExtraCamRender:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImageViewer:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FileCreateTime:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.FileCreateTime:setTopBottom(true, false, 325.000000, 350.000000)
		registerVal2.FileCreateTime:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ItemNameBg:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.ItemNameBg:setTopBottom(true, false, 215.000000, 247.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ItemName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.ItemName:setTopBottom(true, false, 217.000000, 247.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, true, -2.500000, 2.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, true, -1.000000, -101.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2944_
	registerVal13.Short = registerVal14
	registerVal14 = {}
	local function __FUNC_2F99_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.BG:setTopBottom(true, false, 0.000000, 290.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BoxButtonLrgIdle:setLeftRight(true, false, -2.000000, 352.000000)
		registerVal2.BoxButtonLrgIdle:setTopBottom(true, false, -2.000000, 228.880000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.WCFileshareIconExtraCamRender:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.WCFileshareIconExtraCamRender:setTopBottom(false, true, -350.000000, -60.000000)
		registerVal2.WCFileshareIconExtraCamRender:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.ImageViewer:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.WeaponName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.WeaponName:setTopBottom(true, false, 325.000000, 350.000000)
		registerVal2.WeaponName:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.FileCreateTime:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.FileCreateTime:setTopBottom(true, false, 231.880000, 256.880000)
		registerVal2.FileCreateTime:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.ItemNameBg:setLeftRight(true, false, 0.000000, 350.000000)
		registerVal2.ItemNameBg:setTopBottom(true, false, 196.880000, 228.880000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.ItemName:setLeftRight(true, false, 2.500000, 350.000000)
		registerVal2.ItemName:setTopBottom(true, false, 198.880000, 228.880000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.GameTypeImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.StartMenuframenoBG0:setLeftRight(true, true, -2.500000, 2.000000)
		registerVal2.StartMenuframenoBG0:setTopBottom(true, true, -1.000000, -88.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_2F99_
	registerVal13.Clip = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "ScreenShot"
	local function __FUNC_364C_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg1, "fileshareRoot.currentCategory", "screenshot")
	end

	registerVal16.condition = __FUNC_364C_
	local registerVal17 = {}
	registerVal17.stateName = "Clip"
	local function __FUNC_36F2_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg1, "fileshareRoot.currentCategory", "clip")
	end

	registerVal17.condition = __FUNC_36F2_
	local registerVal18 = {}
	registerVal18.stateName = "GameType"
	local function __FUNC_3790_(arg0, arg2, arg3)
		return IsGlobalModelValueEqualTo(arg2, arg1, "fileshareRoot.currentCategory", "customgame")
	end

	registerVal18.condition = __FUNC_3790_
	local registerVal19 = {}
	registerVal19.stateName = "Short"
	local function __FUNC_3836_(arg0, arg2, arg3)
		local registerVal3 = FileshareShowNormalSizeIcons(arg2, arg1)
		return (not registerVal3)
	end

	registerVal19.condition = __FUNC_3836_
	registerVal15 = {registerVal16, registerVal17, registerVal18, registerVal19}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "fileshareRoot.currentCategory")
	local function __FUNC_389E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.currentCategory"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_389E_)
	registerVal16 = Engine.GetGlobalModel()
	registerVal15 = Engine.GetModel(registerVal16, "fileshareRoot.isNormalSize")
	local function __FUNC_39CF_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.isNormalSize"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_39CF_)
	local function __FUNC_3AFC_(arg0)
		arg0.BoxButtonLrgIdle:close()
		arg0.StartMenuframenoBG0:close()
		arg0.WCFileshareIconExtraCamRender:close()
		arg0.ImageViewer:close()
		arg0.WeaponName:close()
		arg0.FileCreateTime:close()
		arg0.ItemName:close()
		arg0.GameTypeImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_3AFC_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareItemLarge.new = __FUNC_342_
