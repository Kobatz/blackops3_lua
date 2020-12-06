-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.DLC_Free_TitleAndText")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.DLC_Free_weekend = registerVal1
function CoD.DLC_Free_weekend.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.DLC_Free_weekend)
	registerVal2.id = "DLC_Free_weekend"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 424.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 182.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.DLC_Free_TitleAndText.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 73.000000, 144.000000)
	registerVal3.Title:setText(Engine.Localize("MENU_DLC1_TRY_AWAKENING_FREE"))
	registerVal3.Body:setText(Engine.Localize("MENU_DLC1_TRY_AWAKENING_FREE_DESC"))
	registerVal2:addElement(registerVal3)
	registerVal2.DLCFreeTitleAndText = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_733_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DLCFreeTitleAndText:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_733_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_83B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.DLCFreeTitleAndText:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_83B_
	registerVal4.Visible = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Visible"
	local function __FUNC_93E_(arg0, arg2, arg3)
		local registerVal3 = IsDvarValueEqualTo("ui_freeDLC1", "1")
		if registerVal3 then
			registerVal3 = ShouldShowDLCWidget(arg1, "mp_rise")
		end
		return registerVal3
	end

	registerVal7.condition = __FUNC_93E_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_9FE_(arg0)
		arg0.DLCFreeTitleAndText:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_9FE_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

