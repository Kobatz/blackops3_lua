-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Challenges.Challenges_PercentCompleteWidget_MD")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.Challenges_Category_Title = registerVal1
function CoD.Challenges_Category_Title.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.Challenges_Category_Title)
	registerVal2.id = "Challenges_Category_Title"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 400.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 50.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 50.000000, 0.000000)
	registerVal3:setTopBottom(false, false, -17.000000, 17.000000)
	registerVal3:setText(Engine.Localize("MPUI_TITLE_CAPS"))
	registerVal3:setTTF("fonts/escom.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.titleText = registerVal3
	local registerVal4 = CoD.Challenges_PercentCompleteWidget_MD.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, -40.000000, 40.000000)
	registerVal4:setTopBottom(false, false, -40.000000, 40.000000)
	registerVal4.percentCompleteCircle:setShaderVector(0.000000, 0.500001, 0.000000, 0.000000, 0.000000)
	registerVal4.percentText:setText(Engine.Localize("50%"))
	local function __FUNC_880_(arg0, arg1)
		local registerVal2 = IsElementInState(arg0, "Complete")
		if registerVal2 then
			SetState(registerVal2, "Complete")
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal4, "setState", __FUNC_880_)
	registerVal2:addElement(registerVal4)
	registerVal2.PercentCompleteWidget = registerVal4
	local function __FUNC_912_(arg0)
		arg0.PercentCompleteWidget:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_912_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

