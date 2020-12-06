-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.buttonprompt")
local function __FUNC_20F_(arg0, arg1)
	local function __FUNC_29A_(arg0, arg1)
		arg0.storeMovie:setupMoviePlayback("")
	end

	arg0.StopStoreMoviePreviewPlayback = __FUNC_29A_
	local function __FUNC_316_()
		arg0.storeMovie:setupMoviePlayback("")
		arg0:close()
	end

	arg0.StopStoreMoviePreviewAndClose = __FUNC_316_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.StorePreviewMovieWidget = registerVal2
local function __FUNC_3B1_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_20F_ then
		__FUNC_20F_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.StorePreviewMovieWidget)
	registerVal2.id = "StorePreviewMovieWidget"
	registerVal2.soundSet = "ChooseDecal"
	registerVal2:setLeftRight(true, false, 0.000000, 386.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 254.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setRGB(0.000000, 0.000000, 0.000000)
	registerVal2:addElement(registerVal3)
	registerVal2.blackBg = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 0.000000, 386.000000)
	registerVal4:setTopBottom(false, false, -96.500000, 116.500000)
	registerVal4:setupMoviePlayback("")
	registerVal2:addElement(registerVal4)
	registerVal2.storeMovie = registerVal4
	local registerVal5 = CoD.buttonprompt.new(arg0, arg1)
	registerVal5:setLeftRight(true, false, 0.000000, 214.000000)
	registerVal5:setTopBottom(true, false, 0.000000, 31.000000)
	registerVal5.label:setText(Engine.Localize("MENU_VIEW_FULL_SCREEN"))
	local function __FUNC_9E0_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal5.buttonPromptImage:setImage(RegisterImage(registerVal1))
		end
	end

	registerVal5:subscribeToGlobalModel(arg1, "Controller", "alt2_button_image", __FUNC_9E0_)
	registerVal2:addElement(registerVal5)
	registerVal2.buttonPrompt = registerVal5
	local function __FUNC_ABB_(arg0)
		CallCustomElementFunction_Self(registerVal2, "StopStoreMoviePreviewPlayback", arg1)
	end

	LUI.OverrideFunction_CallOriginalFirst(registerVal2, "close", __FUNC_ABB_)
	local function __FUNC_B47_(arg0)
		local registerVal2 = IsModelValueEqualTo(arg1, "StoreRoot.isNonFeatureProductListInFocus", 0.000000)
		if registerVal2 then
			CallCustomElementFunction_Self(registerVal2, "StopStoreMoviePreviewAndClose", arg1)
		end
	end

	registerVal2:subscribeToGlobalModel(arg1, "PerController", "StoreRoot.isNonFeatureProductListInFocus", __FUNC_B47_)
	local function __FUNC_C47_(arg0)
		arg0.buttonPrompt:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_C47_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.StorePreviewMovieWidget.new = __FUNC_3B1_
