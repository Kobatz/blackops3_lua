-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_FlowAnim_Top_Bg")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_FlowAnim_Middle_Bg")
require("ui.uieditor.widgets.ZM_Cookbook.Cookbook_FlowAnim_Bottom_Bg")
local function __FUNC_2BF_(arg0, arg1, arg2)
	local function __FUNC_309_(arg0)
		arg0.CookbookFlowAnimTopBg:playClip("Animate")
		arg0.CookbookFlowAnimMiddleBg:playClip("Animate")
		arg0.CookbookFlowAnimBottomBg:playClip("Animate")
	end

	arg0.AnimateAllPipes = __FUNC_309_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.Cookbook_Main = registerVal2
local function __FUNC_402_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.Cookbook_Main)
	registerVal2.id = "Cookbook_Main"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 399.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.Cookbook_FlowAnim_Top_Bg.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal3:setTopBottom(true, false, 0.200000, 153.200000)
	registerVal2:addElement(registerVal3)
	registerVal2.CookbookFlowAnimTopBg = registerVal3
	local registerVal4 = CoD.Cookbook_FlowAnim_Middle_Bg.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 21.220000, 96.220000)
	registerVal4:setTopBottom(true, false, 122.720000, 224.720000)
	registerVal2:addElement(registerVal4)
	registerVal2.CookbookFlowAnimMiddleBg = registerVal4
	local registerVal5 = CoD.Cookbook_FlowAnim_Bottom_Bg.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.220000, 96.220000)
	registerVal5:setTopBottom(true, false, 246.000000, 399.000000)
	registerVal2:addElement(registerVal5)
	registerVal2.CookbookFlowAnimBottomBg = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_905_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal7.DefaultClip = __FUNC_905_
	registerVal6.DefaultState = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_966_(arg0)
		arg0.CookbookFlowAnimTopBg:close()
		arg0.CookbookFlowAnimMiddleBg:close()
		arg0.CookbookFlowAnimBottomBg:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_966_)
	if __FUNC_2BF_ then
		__FUNC_2BF_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.Cookbook_Main.new = __FUNC_402_
