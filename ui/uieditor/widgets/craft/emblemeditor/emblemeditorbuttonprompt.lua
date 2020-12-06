-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.EmblemEditorButtonPrompt = registerVal1
function CoD.EmblemEditorButtonPrompt.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.EmblemEditorButtonPrompt)
	registerVal2.id = "EmblemEditorButtonPrompt"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, true, -24.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 24.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.buttonPromptImage = registerVal3
	local registerVal4 = LUI.UITightText.new()
	registerVal4:setLeftRight(false, true, -113.000000, -30.000000)
	registerVal4:setTopBottom(true, false, 4.000000, 20.000000)
	registerVal4:setText(Engine.Localize("Button Prompt"))
	registerVal4:setTTF("fonts/UnitedSansSmCdMd.ttf")
	registerVal2:addElement(registerVal4)
	registerVal2.label = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_631_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_631_
	local function __FUNC_78C_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.buttonPromptImage:setLeftRight(true, false, 0.000000, 32.000000)
		registerVal2.buttonPromptImage:setTopBottom(true, false, 0.000000, 31.000000)
		registerVal2.buttonPromptImage:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.label:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.Hide = __FUNC_78C_
	registerVal5.DefaultState = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

