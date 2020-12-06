-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.StartMenu.StartMenu_TitleContainerLOC")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.StartMenu_TitlePopup = registerVal1
function CoD.StartMenu_TitlePopup.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StartMenu_TitlePopup)
	registerVal2.id = "StartMenu_TitlePopup"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 578.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.StartMenu_TitleContainerLOC.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 0.000000, 997.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 146.000000)
	registerVal3.StartMenu3dTitle.StartMenu3dTitleLabel.Label0:setText(Engine.Localize("WILDCARDS"))
	registerVal2:addElement(registerVal3)
	registerVal2.StartMenuTitleContainerLOC = registerVal3
	local function __FUNC_6A0_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Update")
		if registerVal2 then
			local registerVal4 = {}
			registerVal4.elementName = "FE3dTitleContainer0"
			registerVal4.clipName = "Update"
			PlayClipOnElement(registerVal2, registerVal4, arg1)
			registerVal4 = {}
			registerVal4.elementName = "fxGlitch1Main0"
			registerVal4.clipName = "GlitchSmall2"
			PlayClipOnElement(registerVal2, registerVal4, arg1)
		else
			registerVal2 = IsElementInState(arg0, "Intro")
			if registerVal2 then
				registerVal4 = {}
				registerVal4.elementName = "FE3dTitleContainer0"
				registerVal4.clipName = "Intro"
				PlayClipOnElement(registerVal2, registerVal4, arg1)
				registerVal4 = {}
				registerVal4.elementName = "fxGlitch1Main0"
				registerVal4.clipName = "GlitchLarge2"
				PlayClipOnElement(registerVal2, registerVal4, arg1)
			else
				registerVal2 = IsElementInState(arg0, "Update2")
				if registerVal2 then
					registerVal4 = {}
					registerVal4.elementName = "FE3dTitleContainer0"
					registerVal4.clipName = "Update"
					PlayClipOnElement(registerVal2, registerVal4, arg1)
					registerVal4 = {}
					registerVal4.elementName = "fxGlitch1Main0"
					registerVal4.clipName = "GlitchSmall1"
					PlayClipOnElement(registerVal2, registerVal4, arg1)
				else
					registerVal2 = IsElementInState(arg0, "Update3")
					if registerVal2 then
						registerVal4 = {}
						registerVal4.elementName = "FE3dTitleContainer0"
						registerVal4.clipName = "Update"
						PlayClipOnElement(registerVal2, registerVal4, arg1)
						registerVal4 = {}
						registerVal4.elementName = "fxGlitch1Main0"
						registerVal4.clipName = "GlitchSmall3"
						PlayClipOnElement(registerVal2, registerVal4, arg1)
					end
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_6A0_)
	local function __FUNC_942_(arg0)
		arg0.StartMenuTitleContainerLOC:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_942_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

