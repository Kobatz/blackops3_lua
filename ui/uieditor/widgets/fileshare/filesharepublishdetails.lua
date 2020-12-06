-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.BorderBakedSolid")
require("ui.uieditor.widgets.FileShare.FileshareSlotsAvailable")
local function __FUNC_25E_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "fileshareRoot", false)
	Engine.CreateModel(registerVal2, "currentCategory", false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FilesharePublishDetails = registerVal2
local function __FUNC_345_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_25E_ then
		__FUNC_25E_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FilesharePublishDetails)
	registerVal2.id = "FilesharePublishDetails"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 474.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 268.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 474.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.800000)
	registerVal2:addElement(registerVal3)
	registerVal2.BG = registerVal3
	local registerVal4 = CoD.BorderBakedSolid.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -1.000000, 269.000000)
	registerVal4:setTopBottom(true, false, -1.000000, 475.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.BorderBakedSolid0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 12.000000, 256.000000)
	registerVal5:setTopBottom(true, false, 11.000000, 216.000000)
	registerVal5:setAlpha(0.100000)
	registerVal2:addElement(registerVal5)
	registerVal2.PublishImageBacking = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 37.500000, 230.500000)
	registerVal6:setTopBottom(true, false, 17.000000, 210.000000)
	registerVal6:setRGB(0.000000, 0.000000, 0.000000)
	registerVal6:setAlpha(0.500000)
	local function __FUNC_F49_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal6:setImage(RegisterImage(FileshareGetLargeCategoryIcon(registerVal1)))
		end
	end

	registerVal6:subscribeToGlobalModel(arg1, "FileshareRoot", "currentCategory", __FUNC_F49_)
	registerVal2:addElement(registerVal6)
	registerVal2.PublishImage = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(true, false, 12.000000, 256.000000)
	registerVal7:setTopBottom(true, false, 215.000000, 245.000000)
	registerVal7:setRGB(0.000000, 0.870000, 0.000000)
	registerVal7:setAlpha(0.700000)
	registerVal2:addElement(registerVal7)
	registerVal2.PublishBG = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(true, false, 12.500000, 42.500000)
	registerVal8:setTopBottom(true, false, 215.000000, 245.000000)
	registerVal8:setRGB(0.030000, 0.030000, 0.030000)
	registerVal8:setImage(RegisterImage("uie_t7_icon_menu_simple_publish"))
	registerVal2:addElement(registerVal8)
	registerVal2.PublishSmallIcon = registerVal8
	local registerVal9 = LUI.UITightText.new()
	registerVal9:setLeftRight(true, false, 45.000000, 248.000000)
	registerVal9:setTopBottom(true, false, 213.500000, 246.500000)
	registerVal9:setRGB(0.000000, 0.000000, 0.000000)
	registerVal9:setText(Engine.Localize("MENU_FILESHARE_PUBLISH"))
	registerVal9:setTTF("fonts/default.ttf")
	registerVal2:addElement(registerVal9)
	registerVal2.PublishLabel = registerVal9
	local registerVal10 = LUI.UIText.new()
	registerVal10:setLeftRight(true, false, 12.000000, 257.000000)
	registerVal10:setTopBottom(true, false, 250.000000, 272.000000)
	registerVal10:setRGB(0.550000, 0.550000, 0.550000)
	registerVal10:setText(Engine.Localize("MENU_FILESHARE_PUBLISH_DESCRIPTION"))
	registerVal10:setTTF("fonts/default.ttf")
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal10:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal10)
	registerVal2.PublishInstruction = registerVal10
	local registerVal11 = CoD.FileshareSlotsAvailable.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 13.500000, 270.500000)
	registerVal11:setTopBottom(true, false, 431.260000, 461.260000)
	registerVal2:addElement(registerVal11)
	registerVal2.FileshareSlotsAvailable0 = registerVal11
	local registerVal12 = {}
	local registerVal13 = {}
	local function __FUNC_102B_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setLeftRight(true, false, 0.000000, 268.000000)
		registerVal2.BG:setTopBottom(true, false, 0.000000, 474.000000)
		registerVal2.BG:setAlpha(0.800000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PublishImageBacking:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.PublishImageBacking:setAlpha(0.100000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.PublishImage:setRGB(0.000000, 0.000000, 0.000000)
		registerVal2.PublishImage:setAlpha(0.500000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PublishBG:setAlpha(0.600000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PublishSmallIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PublishLabel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PublishInstruction:setRGB(0.550000, 0.550000, 0.550000)
		registerVal2.PublishInstruction:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FileshareSlotsAvailable0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_102B_
	registerVal12.DefaultState = registerVal13
	registerVal13 = {}
	local function __FUNC_1531_()
		registerVal2:setupElementClipCounter(9.000000)
		registerVal3:completeAnimation()
		registerVal2.BG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.BorderBakedSolid0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.PublishImageBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.PublishImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.PublishBG:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.PublishSmallIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.PublishLabel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.PublishInstruction:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.FileshareSlotsAvailable0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
	end

	registerVal13.DefaultClip = __FUNC_1531_
	registerVal12.Hidden = registerVal13
	registerVal2.clipsPerState = registerVal12
	local function __FUNC_1919_(arg0)
		arg0.BorderBakedSolid0:close()
		arg0.FileshareSlotsAvailable0:close()
		arg0.PublishImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1919_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FilesharePublishDetails.new = __FUNC_345_
