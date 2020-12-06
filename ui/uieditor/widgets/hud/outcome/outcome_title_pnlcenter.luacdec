-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.HUD.Outcome.Outcome_title_PnlCenterInt")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Outcome_title_PnlCenter = registerVal1
function CoD.Outcome_title_PnlCenter.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Outcome_title_PnlCenter)
	registerVal2.id = "Outcome_title_PnlCenter"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 701.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 55.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Outcome_title_PnlCenterInt.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 54.900000)
	registerVal3:setRFTMaterial(LUI.UIImage.GetCachedMaterial("uie_scene_blur_pass_2"))
	registerVal3:setShaderVector(0.000000, 10.000000, 10.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.OutcometitlePnlCenterInt = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_70F_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_70F_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_76E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_76E_
	registerVal4.VictoryGreen = registerVal5
	registerVal5 = {}
	local function __FUNC_7CE_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_7CE_
	registerVal4.DefeatRed = registerVal5
	registerVal5 = {}
	local function __FUNC_82E_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_82E_
	registerVal4.OvertimeOrange = registerVal5
	registerVal2.clipsPerState = registerVal4
	local function __FUNC_88E_(arg0)
		arg0.OutcometitlePnlCenterInt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_88E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

