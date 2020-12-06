-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.WaypointArrowWidget = registerVal1
function CoD.WaypointArrowWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.WaypointArrowWidget)
	registerVal2.id = "WaypointArrowWidget"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 32.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -13.000000, 13.000000)
	registerVal3:setTopBottom(false, false, -13.000000, 13.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.000000)
	registerVal3:setImage(RegisterImage("uie_t7_hud_waypoints_arrow_new"))
	registerVal2:addElement(registerVal3)
	registerVal2.outlineArrow = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -9.000000, 9.000000)
	registerVal4:setTopBottom(false, false, -9.000000, 9.000000)
	registerVal4:setImage(RegisterImage("uie_t7_hud_waypoints_arrow_new"))
	registerVal2:addElement(registerVal4)
	registerVal2.solidArrow = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_62D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.outlineArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.solidArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_62D_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_78D_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.outlineArrow:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.solidArrow:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_78D_
	registerVal5.SolidArrowState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

