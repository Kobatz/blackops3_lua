-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.ClassAllocation")
require("ui.uieditor.widgets.CAC.cac_3dTitleIntermediary")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CACBackgroundNoHero = registerVal1
function CoD.CACBackgroundNoHero.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CACBackgroundNoHero)
	registerVal2.id = "CACBackgroundNoHero"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 1280.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 720.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, -21.000000, 38.000000)
	registerVal3:setTopBottom(true, false, -39.000000, 83.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal3:setAlpha(0.650000)
	registerVal2:addElement(registerVal3)
	registerVal2.TitleBacking0 = registerVal3
	local registerVal4 = CoD.ClassAllocation.new(arg0, arg1)
	registerVal4:setLeftRight(false, true, -486.000000, -51.000000)
	registerVal4:setTopBottom(true, false, 35.000000, 70.000000)
	local function __FUNC_AB3_(arg0)
		registerVal4:setModel(arg0, arg1)
	end

	registerVal4:linkToElementModel(registerVal2, nil, false, __FUNC_AB3_)
	registerVal2:addElement(registerVal4)
	registerVal2.classAllocation = registerVal4
	local registerVal5 = CoD.cac_3dTitleIntermediary.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, -72.000000, 537.000000)
	registerVal5:setTopBottom(true, false, -4.000000, 142.000000)
	registerVal5.FE3dTitleContainer0.MenuTitle.TextBox1.Label0:setText(Engine.Localize("MULTIPLAYER"))
	registerVal2:addElement(registerVal5)
	registerVal2.cac3dTitleIntermediary0 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(true, true, -11.000000, 13.000000)
	registerVal6:setTopBottom(true, false, 76.000000, 84.000000)
	registerVal6:setRGB(0.900000, 0.900000, 0.900000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_cac_tabline"))
	registerVal2:addElement(registerVal6)
	registerVal2.CategoryListLine = registerVal6
	local registerVal7 = {}
	local registerVal8 = {}
	local function __FUNC_B02_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.TitleBacking0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal8.DefaultClip = __FUNC_B02_
	registerVal7.DefaultState = registerVal8
	registerVal8 = {}
	local function __FUNC_C00_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_C00_
	registerVal7.Update = registerVal8
	registerVal8 = {}
	local function __FUNC_C62_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_C62_
	registerVal7.Intro = registerVal8
	registerVal8 = {}
	local function __FUNC_CC2_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_CC2_
	registerVal7.Update2 = registerVal8
	registerVal8 = {}
	local function __FUNC_D22_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal8.DefaultClip = __FUNC_D22_
	registerVal7.Update3 = registerVal8
	registerVal2.clipsPerState = registerVal7
	local function __FUNC_D82_(arg0, arg2)
		local registerVal2 = IsElementInState(arg0, "Update")
		if registerVal2 then
			SetElementStateByElementName(registerVal2, "cac3dTitleIntermediary0", arg1, "Update")
		else
			registerVal2 = IsElementInState(arg0, "Update2")
			if registerVal2 then
				SetElementStateByElementName(registerVal2, "cac3dTitleIntermediary0", arg1, "Update2")
			else
				registerVal2 = IsElementInState(arg0, "Update3")
				if registerVal2 then
					SetElementStateByElementName(registerVal2, "cac3dTitleIntermediary0", arg1, "Update3")
				else
					registerVal2 = IsElementInState(arg0, "Intro")
					if registerVal2 then
						SetElementStateByElementName(registerVal2, "cac3dTitleIntermediary0", arg1, "Intro")
						local registerVal4 = {}
						registerVal4.elementName = "heroPreview"
						registerVal4.clipName = "Intro"
						PlayClipOnElement(registerVal2, registerVal4, arg1)
					end
				end
			end
		end
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "setState", __FUNC_D82_)
	local function __FUNC_F8D_(arg0)
		arg0.classAllocation:close()
		arg0.cac3dTitleIntermediary0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_F8D_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

