-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
CoD.CPDifficultyInGameChangeWarning = registerVal1
function CoD.CPDifficultyInGameChangeWarning.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.CPDifficultyInGameChangeWarning)
	registerVal2.id = "CPDifficultyInGameChangeWarning"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 297.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 112.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, false, 35.000000, 294.000000)
	registerVal3:setTopBottom(true, false, 5.000000, 25.000000)
	registerVal3:setText(Engine.Localize("CPUI_DIFFICULTY_CHANGE_INGAME_WARNING"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_LEFT)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.DifficultyWarning = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 5.500000, 27.000000)
	registerVal4:setTopBottom(false, true, -108.000000, -90.000000)
	registerVal4:setRGB(0.950000, 0.890000, 0.030000)
	registerVal4:setImage(RegisterImage("uie_warning_triangle"))
	registerVal2:addElement(registerVal4)
	registerVal2.WarningTriangle = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_815_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.DifficultyWarning:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WarningTriangle:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_815_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_97A_()
		registerVal2:setupElementClipCounter(2.000000)
		registerVal3:completeAnimation()
		registerVal2.DifficultyWarning:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.WarningTriangle:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
	end

	registerVal6.DefaultClip = __FUNC_97A_
	registerVal5.Hidden = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Hidden"
	local function __FUNC_ADE_(arg0, arg1, arg2)
		local registerVal3 = IsInGame()
		return (not registerVal3)
	end

	registerVal8.condition = __FUNC_ADE_
	registerVal7 = {registerVal8}
	registerVal2:mergeStateConditions(registerVal7)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

