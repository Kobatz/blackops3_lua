-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Groups.LeaderboardMakerProgressBarSteps")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LeaderboardMakerProgressBar = registerVal1
function CoD.LeaderboardMakerProgressBar.new(arg0, arg1)
	local registerVal3 = {}
	registerVal3.left = 0.000000
	registerVal3.top = 0.000000
	registerVal3.right = 0.000000
	registerVal3.bottom = 0.000000
	registerVal3.leftAnchor = true
	registerVal3.topAnchor = true
	registerVal3.rightAnchor = true
	registerVal3.bottomAnchor = true
	registerVal3.spacing = 0.000000
	local registerVal2 = LUI.UIHorizontalList.new(registerVal3)
	registerVal2:setAlignment(LUI.Alignment.Left)
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LeaderboardMakerProgressBar)
	registerVal2.id = "LeaderboardMakerProgressBar"
	registerVal2.soundSet = "HUD"
	registerVal2:setLeftRight(true, false, 0.000000, 316.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2.anyChildUsesUpdateState = true
	registerVal3 = LUI.UITightText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 39.000000)
	registerVal3:setTopBottom(true, false, 3.500000, 21.500000)
	registerVal3:setAlpha(0.700000)
	registerVal3:setText(Engine.Localize("GROUPS_STEP_CAPS"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("sw4_2d_uie_font_cached_glow"))
	registerVal3:setShaderVector(0.000000, 0.080000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(1.000000, 0.000000, 0.000000, 0.000000, 0.000000)
	registerVal3:setShaderVector(2.000000, 1.000000, 0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.Step = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 39.000000, 56.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal4:setAlpha(0.000000)
	registerVal2:addElement(registerVal4)
	registerVal2.spacer2 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 56.000000, 63.000000)
	registerVal5:setTopBottom(true, false, 2.000000, 23.000000)
	registerVal5:setAlpha(0.500000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_featuredemblemline"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.spacer = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, false, 63.000000, 74.250000)
	registerVal6:setTopBottom(true, false, 0.000000, 27.000000)
	registerVal6:setAlpha(0.000000)
	registerVal2:addElement(registerVal6)
	registerVal2.spacer20 = registerVal6
	local registerVal7 = CoD.LeaderboardMakerProgressBarSteps.new(arg0, arg1)
	registerVal7:setLeftRight(true, false, 74.250000, 291.250000)
	registerVal7:setTopBottom(true, false, 0.000000, 25.000000)
	registerVal2:addElement(registerVal7)
	registerVal2.LeaderboardMakerProgressBarSteps = registerVal7
	local function __FUNC_B1E_(arg0)
		arg0.LeaderboardMakerProgressBarSteps:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_B1E_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

