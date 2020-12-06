-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_3dTitleContainerNoLoc")
require("ui.uieditor.widgets.Effects.fxGlitch1_Main")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.cac_3dTitleIntermediary = registerVal1
function CoD.cac_3dTitleIntermediary.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.cac_3dTitleIntermediary)
	registerVal2.id = "cac_3dTitleIntermediary"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 578.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.cac_3dTitleContainerNoLoc.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 531.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal3.circles:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3.diaglrg:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3.diagsm:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3.centersquare:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MENU_MULTIPLAYER_CAPS"))
	registerVal2:addElement(registerVal3)
	registerVal2.FE3dTitleContainer0 = registerVal3
	local registerVal4 = CoD.fxGlitch1_Main.new(arg0, arg1)
	registerVal4:setLeftRight(true, false, 90.000000, 562.000000)
	registerVal4:setTopBottom(true, false, -44.180000, 157.510000)
	registerVal2:addElement(registerVal4)
	registerVal2.fxGlitch1Main0 = registerVal4
	local function __FUNC_852_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Update")
		if registerVal2 then
			local registerVal4 = {}
			registerVal4.elementName = "FE3dTitleContainer0"
			registerVal4.clipName = "Update"
			PlayClipOnElement(registerVal2, registerVal4, arg1)
		else
			registerVal2 = IsElementInState(arg0, "Intro")
			if registerVal2 then
				registerVal4 = {}
				registerVal4.elementName = "FE3dTitleContainer0"
				registerVal4.clipName = "Intro"
				PlayClipOnElement(registerVal2, registerVal4, arg1)
			else
				registerVal2 = IsElementInState(arg0, "Update2")
				if registerVal2 then
					registerVal4 = {}
					registerVal4.elementName = "FE3dTitleContainer0"
					registerVal4.clipName = "Update"
					PlayClipOnElement(registerVal2, registerVal4, arg1)
				else
					registerVal2 = IsElementInState(arg0, "Update3")
					if registerVal2 then
						registerVal4 = {}
						registerVal4.elementName = "FE3dTitleContainer0"
						registerVal4.clipName = "Update"
						PlayClipOnElement(registerVal2, registerVal4, arg1)
					end
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_852_)
	local function __FUNC_A12_(arg0)
		arg0.FE3dTitleContainer0:close()
		arg0.fxGlitch1Main0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_A12_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

