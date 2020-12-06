-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.LobbySlideSocialInfoJoinable = registerVal1
function CoD.LobbySlideSocialInfoJoinable.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.LobbySlideSocialInfoJoinable)
	registerVal2.id = "LobbySlideSocialInfoJoinable"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 185.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 24.000000)
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 16.000000)
	registerVal3:setTopBottom(false, false, -12.000000, 12.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_iconjoinable"))
	registerVal2:addElement(registerVal3)
	registerVal2.MasterShieldIcon = registerVal3
	local registerVal4 = LUI.UIText.new()
	registerVal4:setLeftRight(true, true, 28.000000, 0.000000)
	registerVal4:setTopBottom(true, false, 3.000000, 21.000000)
	registerVal4:setText(Engine.Localize("PRESENCE_JOINABLE"))
	registerVal4:setTTF("fonts/RefrigeratorDeluxe-Regular.ttf")
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal4:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal4)
	registerVal2.MasterPowerRating = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_781_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.MasterShieldIcon:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MasterPowerRating:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_781_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_8E7_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.MasterShieldIcon:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.MasterPowerRating:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_8E7_
	registerVal5.IsJoinable = registerVal6
	registerVal2.clipsPerState = registerVal5
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

