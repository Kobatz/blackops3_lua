-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.ScoreInfo.ScoreInfo_RdTri")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ScoreInfo_RdTriCont = registerVal1
function CoD.ScoreInfo_RdTriCont.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ScoreInfo_RdTriCont)
	registerVal2.id = "ScoreInfo_RdTriCont"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 85.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 94.000000, 102.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal3:setAlpha(0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Tri10 = registerVal3
	local registerVal4 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 87.000000, 95.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.Tri9 = registerVal4
	local registerVal5 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 80.000000, 88.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal5:setAlpha(0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.Tri8 = registerVal5
	local registerVal6 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal6:setLeftRight(true, false, 73.000000, 81.000000)
	registerVal6:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.Tri7 = registerVal6
	local registerVal7 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 66.000000, 74.000000)
	registerVal7:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal7:setAlpha(0.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.Tri6 = registerVal7
	local registerVal8 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal8:setLeftRight(true, false, 59.000000, 67.000000)
	registerVal8:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal8:setAlpha(0.000000)
	registerVal2:addElement(registerVal8)
	registerVal2.Tri5 = registerVal8
	local registerVal9 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal9:setLeftRight(true, false, 52.000000, 60.000000)
	registerVal9:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal9:setAlpha(0.000000)
	registerVal2:addElement(registerVal9)
	registerVal2.Tri4 = registerVal9
	local registerVal10 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal10:setLeftRight(true, false, 45.000000, 53.000000)
	registerVal10:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.Tri3 = registerVal10
	local registerVal11 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal11:setLeftRight(true, false, 38.000000, 46.000000)
	registerVal11:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal2:addElement(registerVal11)
	registerVal2.Tri2 = registerVal11
	local registerVal12 = CoD.ScoreInfo_RdTri.new(arg0, arg1)
	registerVal12:setLeftRight(true, false, 31.000000, 39.000000)
	registerVal12:setTopBottom(true, false, 0.000000, 8.000000)
	registerVal2:addElement(registerVal12)
	registerVal2.Tri1 = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_CDB_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Tri10:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tri9:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tri8:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tri7:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tri6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Tri5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Tri4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Tri3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Tri2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Tri1:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_CDB_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_10B7_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Tri10:setLeftRight(true, false, 94.000000, 102.000000)
		registerVal2.Tri10:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri10:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tri9:setLeftRight(true, false, 87.000000, 95.000000)
		registerVal2.Tri9:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri9:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tri8:setLeftRight(true, false, 80.000000, 88.000000)
		registerVal2.Tri8:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri8:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tri7:setLeftRight(true, false, 73.000000, 81.000000)
		registerVal2.Tri7:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri7:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tri6:setLeftRight(true, false, 66.000000, 74.000000)
		registerVal2.Tri6:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Tri5:setLeftRight(true, false, 59.000000, 67.000000)
		registerVal2.Tri5:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Tri4:setLeftRight(true, false, 52.000000, 60.000000)
		registerVal2.Tri4:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Tri3:setLeftRight(true, false, 45.000000, 53.000000)
		registerVal2.Tri3:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri3:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Tri2:setLeftRight(true, false, 38.000000, 46.000000)
		registerVal2.Tri2:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Tri1:setLeftRight(true, false, 31.000000, 39.000000)
		registerVal2.Tri1:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_10B7_
	registerVal13.Rnd3 = registerVal14
	registerVal14 = {}
	local function __FUNC_184D_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Tri10:setLeftRight(true, false, 98.000000, 106.000000)
		registerVal2.Tri10:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri10:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tri9:setLeftRight(true, false, 91.000000, 99.000000)
		registerVal2.Tri9:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri9:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tri8:setLeftRight(true, false, 84.000000, 92.000000)
		registerVal2.Tri8:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri8:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tri7:setLeftRight(true, false, 77.000000, 85.000000)
		registerVal2.Tri7:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri7:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tri6:setLeftRight(true, false, 70.000000, 78.000000)
		registerVal2.Tri6:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Tri5:setLeftRight(true, false, 63.000000, 71.000000)
		registerVal2.Tri5:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Tri4:setLeftRight(true, false, 56.000000, 64.000000)
		registerVal2.Tri4:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Tri3:setLeftRight(true, false, 49.000000, 57.000000)
		registerVal2.Tri3:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Tri2:setLeftRight(true, false, 42.000000, 50.000000)
		registerVal2.Tri2:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri2:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Tri1:setLeftRight(true, false, 35.000000, 43.000000)
		registerVal2.Tri1:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_184D_
	registerVal13.Rnd2 = registerVal14
	registerVal14 = {}
	local function __FUNC_1FE5_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.Tri10:setLeftRight(true, false, 101.000000, 109.000000)
		registerVal2.Tri10:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri10:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.Tri9:setLeftRight(true, false, 94.000000, 102.000000)
		registerVal2.Tri9:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri9:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.Tri8:setLeftRight(true, false, 87.000000, 95.000000)
		registerVal2.Tri8:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri8:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.Tri7:setLeftRight(true, false, 80.000000, 88.000000)
		registerVal2.Tri7:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri7:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.Tri6:setLeftRight(true, false, 73.000000, 81.000000)
		registerVal2.Tri6:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri6:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.Tri5:setLeftRight(true, false, 66.000000, 74.000000)
		registerVal2.Tri5:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri5:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.Tri4:setLeftRight(true, false, 59.000000, 67.000000)
		registerVal2.Tri4:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri4:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.Tri3:setLeftRight(true, false, 52.000000, 60.000000)
		registerVal2.Tri3:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri3:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.Tri2:setLeftRight(true, false, 45.000000, 53.000000)
		registerVal2.Tri2:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri2:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.Tri1:setLeftRight(true, false, 38.000000, 46.000000)
		registerVal2.Tri1:setTopBottom(true, false, 0.000000, 8.000000)
		registerVal2.Tri1:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1FE5_
	registerVal13.Rnd1 = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Rnd3"
	local function __FUNC_277D_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "gameScore.roundsPlayed", 3.000000)
	end

	registerVal16.condition = __FUNC_277D_
	local registerVal17 = {}
	registerVal17.stateName = "Rnd2"
	local function __FUNC_280F_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "gameScore.roundsPlayed", 2.000000)
	end

	registerVal17.condition = __FUNC_280F_
	local registerVal18 = {}
	registerVal18.stateName = "Rnd1"
	local function __FUNC_289F_(arg0, arg2, arg3)
		return IsModelValueGreaterThanOrEqualTo(arg1, "gameScore.roundsPlayed", 1.000000)
	end

	registerVal18.condition = __FUNC_289F_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal15)
	registerVal16 = Engine.GetModelForController(arg1)
	registerVal15 = Engine.GetModel(registerVal16, "gameScore.roundsPlayed")
	local function __FUNC_292F_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "gameScore.roundsPlayed"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal15, __FUNC_292F_)
	local function __FUNC_2A58_(arg0)
		arg0.Tri10:close()
		arg0.Tri9:close()
		arg0.Tri8:close()
		arg0.Tri7:close()
		arg0.Tri6:close()
		arg0.Tri5:close()
		arg0.Tri4:close()
		arg0.Tri3:close()
		arg0.Tri2:close()
		arg0.Tri1:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_2A58_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

