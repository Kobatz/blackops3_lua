-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideEmblemInternalWidget = registerVal1
function CoD.LobbySlideEmblemInternalWidget.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideEmblemInternalWidget)
	registerVal2.id = "LobbySlideEmblemInternalWidget"
	registerVal2.soundSet = "ModeSelection"
	registerVal2:setLeftRight(true, false, 0.000000, 340.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 216.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 10.000000, 330.000000)
	registerVal3:setTopBottom(true, false, 10.000000, 206.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.emblem = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_53A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_53A_
	local function __FUNC_59A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SlideLeft = __FUNC_59A_
	local function __FUNC_5FA_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.SlideRight = __FUNC_5FA_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_65A_()
		registerVal2:setupElementClipCounter(0.000000)
	end

	registerVal5.DefaultClip = __FUNC_65A_
	registerVal4.Invisible = registerVal5
	registerVal2.clipsPerState = registerVal4
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

