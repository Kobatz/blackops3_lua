-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LocalWarning = registerVal1
function CoD.LocalWarning.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(true)
	registerVal2:setClass(CoD.LocalWarning)
	registerVal2.id = "LocalWarning"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 500.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 20.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 0.000000, 374.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 20.000000)
	registerVal3:setAlpha(0.750000)
	registerVal3:setText(Engine.Localize("XBOXLIVE_PLAYING_LOCAL"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.txtConnWarning = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_68A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_68A_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_6EA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.txtConnWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_6EA_
	registerVal4.PlayingLive = registerVal5
	registerVal5 = {}
	local function __FUNC_7EE_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.txtConnWarning:setAlpha(0.750000)
		registerVal2.txtConnWarning:setText(Engine.Localize("XBOXLIVE_PLAYING_LOCAL"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_7EE_
	registerVal4.PlayingLocal = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

