-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.MPHudWidgets.KillstreakProgressBarFill")
function SetProgressBarStencilTopBottom(arg0, arg1)
	arg0:setTopBottom(false, true, (-(((114.000000 - 12.000000) * arg1) - 12.000000) - 24.000000), 0.000000)
end

function AnimateProgressBar(arg0, arg1)
	if not arg0.momentumPercentage then
		arg0.momentumPercentage = 0.000000
	end
	if (arg1 - arg0.momentumPercentage) < 0.000000 then
		arg0.percentageTarget = arg1
	end
	arg0.momentumPercentage = 1.000000
	arg0:beginAnimation("update_momentum", (500.000000 * (1.000000 - arg0.momentumPercentage)))
	SetProgressBarStencilTopBottom(arg0, 1.000000)
end

function ProgressBar_TransitionCompleteUpdateMomentum(arg0)
	if arg0.percentageTarget then
		arg0.percentageTarget = nil
		if arg0.percentageTarget < arg0.momentumPercentage then
			arg0.momentumPercentage = 0.000000
			arg0:setTopBottom(false, true, 0.000000, 0.000000)
		end
		AnimateProgressBar(arg0, arg0.percentageTarget)
	end
end

local function __FUNC_566_(arg0)
	arg0.killstreakProgressBarFill:registerEventHandler("transition_complete_update_momentum", ProgressBar_TransitionCompleteUpdateMomentum)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.KillstreakProgressBar = registerVal2
local function __FUNC_650_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.KillstreakProgressBar)
	registerVal2.id = "KillstreakProgressBar"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 64.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 128.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setImage(RegisterImage("uie_hud_mp_vis_ks_bar_backing"))
	registerVal2:addElement(registerVal3)
	registerVal2.progressBarBackground = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, 1.000000, 33.000000)
	registerVal4:setTopBottom(false, false, 18.000000, 50.000000)
	registerVal4:setImage(RegisterImage("uie_hud_mp_vis_ks_prog_arrow_back"))
	registerVal2:addElement(registerVal4)
	registerVal2.progressArrowBar = registerVal4
	local registerVal5 = CoD.KillstreakProgressBarFill.new(arg0, arg1)
	registerVal5:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal5:setTopBottom(false, true, -128.000000, 0.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.killstreakProgressBarFill = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_C4B_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.progressBarBackground:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.progressBarBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressArrowBar:setLeftRight(false, false, 0.000000, 32.000000)
		registerVal2.progressArrowBar:setTopBottom(false, false, 18.000000, 50.000000)
		registerVal2.progressArrowBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.killstreakProgressBarFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_C4B_
	local function __FUNC_EDE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.progressArrowBar:setLeftRight(false, false, 6.000000, 38.000000)
		registerVal2.progressArrowBar:setTopBottom(false, false, -13.000000, 19.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Reward2 = __FUNC_EDE_
	local function __FUNC_1041_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.progressArrowBar:setLeftRight(false, false, 12.000000, 44.000000)
		registerVal2.progressArrowBar:setTopBottom(false, false, -54.000000, -22.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Reward1 = __FUNC_1041_
	local function __FUNC_11A5_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal4:completeAnimation()
		registerVal2.progressArrowBar:setLeftRight(false, false, 1.000000, 33.000000)
		registerVal2.progressArrowBar:setTopBottom(false, false, 18.000000, 50.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal7.Reward3 = __FUNC_11A5_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_1304_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.progressBarBackground:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.progressBarBackground:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressArrowBar:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.killstreakProgressBarFill:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_1304_
	registerVal6.Invisible = registerVal7
	registerVal7 = {}
	local function __FUNC_150F_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.progressBarBackground:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.progressArrowBar:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.killstreakProgressBarFill:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_150F_
	registerVal6.Show = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_16DE_(arg0)
		arg0.killstreakProgressBarFill:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_16DE_)
	if __FUNC_566_ then
		__FUNC_566_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.KillstreakProgressBar.new = __FUNC_650_
