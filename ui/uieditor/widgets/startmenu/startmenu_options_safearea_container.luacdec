-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_Options_SafeArea_Container = registerVal1
function CoD.StartMenu_Options_SafeArea_Container.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_Options_SafeArea_Container)
	registerVal2.id = "StartMenu_Options_SafeArea_Container"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.700000)
	registerVal2:addElement(registerVal3)
	registerVal2.backgroundImage = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 64.000000)
	registerVal4:setZRot(270.000000)
	registerVal4:setImage(RegisterImage("uie_safe_area_arrow"))
	registerVal2:addElement(registerVal4)
	registerVal2.upArrow = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -32.000000, 32.000000)
	registerVal5:setTopBottom(false, true, -64.000000, 0.000000)
	registerVal5:setZRot(90.000000)
	registerVal5:setImage(RegisterImage("uie_safe_area_arrow"))
	registerVal2:addElement(registerVal5)
	registerVal2.downArrow = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal6:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal6:setImage(RegisterImage("uie_safe_area_arrow"))
	registerVal2:addElement(registerVal6)
	registerVal2.leftArrow = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, true, -64.000000, 0.000000)
	registerVal7:setTopBottom(false, false, -32.000000, 32.000000)
	registerVal7:setZRot(180.000000)
	registerVal7:setImage(RegisterImage("uie_safe_area_arrow"))
	registerVal2:addElement(registerVal7)
	registerVal2.rightArrow = registerVal7
	local registerVal8 = {}
	local registerVal9 = {}
	local function __FUNC_871_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.backgroundImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal9.DefaultClip = __FUNC_871_
	registerVal8.DefaultState = registerVal9
	registerVal9 = {}
	local function __FUNC_977_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.backgroundImage:setAlpha(0.700000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal9.DefaultClip = __FUNC_977_
	registerVal8.FirstTime = registerVal9
	registerVal2.clipsPerState = registerVal8
	local registerVal10 = {}
	local registerVal11 = {}
	registerVal11.stateName = "FirstTime"
	local function __FUNC_A7B_(arg0, arg2, arg3)
		return IsMainFirstTimeSetup(arg1)
	end

	registerVal11.condition = __FUNC_A7B_
	registerVal10 = {registerVal11}
	registerVal2:mergeStateConditions(registerVal10)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

