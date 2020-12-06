-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemLayerNumber = registerVal1
function CoD.EmblemLayerNumber.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.EmblemLayerNumber)
	registerVal2.id = "EmblemLayerNumber"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 72.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 16.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.topbar = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(true, false, 20.000000, 50.000000)
	registerVal4:setTopBottom(true, true, 48.000000, -48.000000)
	registerVal4:setTTF("fonts/FoundryGridnik-Bold.ttf")
	local function __FUNC_79D_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setText(Engine.Localize(registerVal1))
		end
	end

	registerVal4:linkToElementModel(registerVal2, "layerNumberString", true, __FUNC_79D_)
	registerVal2:addElement(registerVal4)
	registerVal2.layerNumber = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 0.000000, 20.000000)
	registerVal5:setTopBottom(false, false, -10.000000, 10.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_emblem_group"))
	registerVal2:addElement(registerVal5)
	registerVal2.groupIcon = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_856_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal4:completeAnimation()
		registerVal2.layerNumber:setLeftRight(true, false, 0.000000, 29.000000)
		registerVal2.layerNumber:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.layerNumber:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.groupIcon:setLeftRight(true, false, 0.000000, 20.000000)
		registerVal2.groupIcon:setTopBottom(false, false, -10.000000, 10.000000)
		registerVal2.groupIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_856_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_A93_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.topbar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.layerNumber:setLeftRight(true, false, 20.000000, 50.000000)
		registerVal2.layerNumber:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.layerNumber:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.groupIcon:setLeftRight(true, false, 0.000000, 20.000000)
		registerVal2.groupIcon:setTopBottom(false, false, -10.000000, 10.000000)
		registerVal2.groupIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_A93_
	registerVal6.GroupLayerNum = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_D23_(arg0)
		arg0.layerNumber:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D23_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

