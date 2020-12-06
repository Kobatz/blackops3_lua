-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.buttonprompt")
local function __FUNC_216_(arg0, arg1)
	local function __FUNC_273_(arg1, arg2)
		arg0.storeMovie:setupMoviePlayback("")
	end

	arg0.StopStoreMoviePreviewPlayback = __FUNC_273_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StoreFeaturePreviewMovieWidget = registerVal2
local function __FUNC_2F2_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_216_ then
		__FUNC_216_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StoreFeaturePreviewMovieWidget)
	registerVal2.id = "StoreFeaturePreviewMovieWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 550.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 373.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, false, 0.000000, 549.000000)
	registerVal3:setTopBottom(true, false, 0.000000, 372.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.blackBg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 1.000000, 549.000000)
	registerVal4:setTopBottom(true, false, 34.750000, 338.250000)
	registerVal4:setupMoviePlayback("")
	registerVal2:addElement(registerVal4)
	registerVal2.storeMovie = registerVal4
	local registerVal5 = CoD.buttonprompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal5.label:setText(Engine.Localize("MENU_VIEW_FULL_SCREEN"))
	local function __FUNC_940_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_940_)
	local registerVal8 = {}
	local registerVal9 = {}
	registerVal9.stateName = "CodCaster"
	local function __FUNC_A1B_(arg0, arg1, arg2)
		return AlwaysFalse()
	end

	registerVal9.condition = __FUNC_A1B_
	registerVal8 = {registerVal9}
	registerVal5:mergeStateConditions(registerVal8)
	registerVal2:addElement(registerVal5)
	registerVal2.buttonPrompt = registerVal5
	local function __FUNC_A65_(arg0)
		CallCustomElementFunction_Self(registerVal2, "StopStoreMoviePreviewPlayback", "")
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_A65_)
	local function __FUNC_AFD_(arg0)
		arg0.buttonPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_AFD_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StoreFeaturePreviewMovieWidget.new = __FUNC_2F2_
