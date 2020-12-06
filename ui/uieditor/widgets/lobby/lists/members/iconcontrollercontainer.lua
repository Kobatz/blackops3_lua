-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.Lobby.Lists.Members.IconController")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.IconControllerContainer = registerVal1
function CoD.IconControllerContainer.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.IconControllerContainer)
	registerVal2.id = "IconControllerContainer"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 57.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.IconController.new(arg0, arg1)
	registerVal3:setLeftRight(true, false, 24.000000, 57.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal3:setAlpha(0.000000)
	local function __FUNC_7DE_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_7DE_)
	registerVal2:addElement(registerVal3)
	registerVal2.IconController = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 25.000000, 57.000000)
	registerVal4:setTopBottom(true, false, 0.000000, 32.000000)
	registerVal4:setAlpha(0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_iconspeechback"))
	registerVal2:addElement(registerVal4)
	registerVal2.VoipBacking = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(true, false, 53.000000, 32.000000)
	registerVal5:setTopBottom(true, false, 4.500000, 27.000000)
	local function __FUNC_82E_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5:setupVoipImageByXUID(registerVal1)
		end
	end

	registerVal5:linkToElementModel(registerVal2, "xuid", true, __FUNC_82E_)
	registerVal2:addElement(registerVal5)
	registerVal2.VOIPImage = registerVal5
	local registerVal6 = {}
	local registerVal7 = {}
	local function __FUNC_8CD_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.IconController:setLeftRight(true, false, 24.000000, 57.000000)
		registerVal2.IconController:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.IconController:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VoipBacking:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.VOIPImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_8CD_
	registerVal6.DefaultState = registerVal7
	registerVal7 = {}
	local function __FUNC_B12_()
		registerVal2:setupElementClipCounter(3.000000)
		registerVal3:completeAnimation()
		registerVal2.IconController:setLeftRight(true, false, 0.000000, 33.000000)
		registerVal2.IconController:setTopBottom(true, false, 0.000000, 32.000000)
		registerVal2.IconController:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.VoipBacking:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.VOIPImage:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
	end

	registerVal7.DefaultClip = __FUNC_B12_
	registerVal6.VoipActive = registerVal7
	registerVal2.clipsPerState = registerVal6
	local function __FUNC_D51_(arg0)
		arg0.IconController:close()
		arg0.VOIPImage:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_D51_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

