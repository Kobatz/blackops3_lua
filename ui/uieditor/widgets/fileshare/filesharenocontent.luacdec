-- Decompiled with CoDLUIDecompiler by JariK

local function __FUNC_1C3_(arg0, arg1)
	local registerVal3 = Engine.GetGlobalModel()
	local registerVal2 = Engine.CreateModel(registerVal3, "fileshareRoot", false)
	Engine.CreateModel(registerVal2, "itemsCount", false)
	Engine.CreateModel(registerVal2, "PublishMode", false)
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.FileshareNoContent = registerVal2
local function __FUNC_2D9_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if __FUNC_1C3_ then
		__FUNC_1C3_(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.FileshareNoContent)
	registerVal2.id = "FileshareNoContent"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 250.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 60.000000)
	local registerVal3 = LUI.UIText.new()
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, false, 3.000000, 30.000000)
	registerVal3:setText(FileshareGetNoContentString(arg1, "MENU_FILESHARE_NO_CONTENT"))
	registerVal3:setTTF("fonts/default.ttf")
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_CENTER)
	registerVal3:setAlignment(Enum.LUIAlignment.LUI_ALIGNMENT_TOP)
	registerVal2:addElement(registerVal3)
	registerVal2.NoContentTextbox = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(true, false, 61.000000, 189.000000)
	registerVal4:setTopBottom(true, false, -88.000000, 40.000000)
	registerVal4:setRGB(1.000000, 0.630000, 0.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_loadingspinner_flipbook"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("uie_flipbook"))
	registerVal4:setShaderVector(0.000000, 28.000000, 0.000000, 0.000000, 0.000000)
	registerVal4:setShaderVector(1.000000, 22.000000, 0.000000, 0.000000, 0.000000)
	local function __FUNC_C7A_(arg0)
		local registerVal1 = Engine.GetModelValue(arg0)
		if registerVal1 then
			registerVal4:setAlpha(FileshareIsReadyAlphaReverse(registerVal1))
		end
	end

	registerVal4:subscribeToGlobalModel(arg1, "FileshareRoot", "ready", __FUNC_C7A_)
	registerVal2:addElement(registerVal4)
	registerVal2.SpinnerFlipbook = registerVal4
	local registerVal5 = {}
	local registerVal6 = {}
	local function __FUNC_D3B_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.NoContentTextbox:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_D3B_
	registerVal5.DefaultState = registerVal6
	registerVal6 = {}
	local function __FUNC_E40_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.NoContentTextbox:setAlpha(1.000000)
		registerVal2.NoContentTextbox:setText(FileshareGetNoContentString(arg1, "MENU_FILESHARE_NO_CONTENT"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_E40_
	registerVal5.Visible = registerVal6
	registerVal6 = {}
	local function __FUNC_FC4_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.NoContentTextbox:setAlpha(1.000000)
		registerVal2.NoContentTextbox:setText(FileshareGetNoContentString(arg1, "MENU_FILESHARE_NO_CONTENT"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_FC4_
	registerVal5.Publish = registerVal6
	registerVal6 = {}
	local function __FUNC_1148_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal2.NoContentTextbox:setAlpha(1.000000)
		registerVal2.NoContentTextbox:setText(FileshareGetNoContentString(arg1, "MENU_FILESHARE_NO_CONTENT"))
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal6.DefaultClip = __FUNC_1148_
	registerVal5.Loading = registerVal6
	registerVal2.clipsPerState = registerVal5
	local registerVal7 = {}
	local registerVal8 = {}
	registerVal8.stateName = "Visible"
	local function __FUNC_12CC_(arg0, arg2, arg3)
		local registerVal3 = FileshareHasContent(arg2, arg1)
		if not registerVal3 then
			registerVal3 = FileshareIsReady(arg1)
			if registerVal3 then
				registerVal3 = FileshareShowcaseIsPublishMode(arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal8.condition = __FUNC_12CC_
	local registerVal9 = {}
	registerVal9.stateName = "Publish"
	local function __FUNC_13A7_(arg0, arg2, arg3)
		local registerVal3 = FileshareHasContent(arg2, arg1)
		if not registerVal3 then
			registerVal3 = FileshareIsReady(arg1)
			if registerVal3 then
				registerVal3 = FileshareShowcaseIsPublishMode(arg2, arg1)
			else
			end
		end
		return true
	end

	registerVal9.condition = __FUNC_13A7_
	local registerVal10 = {}
	registerVal10.stateName = "Loading"
	local function __FUNC_147B_(arg0, arg2, arg3)
		local registerVal3 = FileshareHasContent(arg2, arg1)
		if not registerVal3 then
			registerVal3 = FileshareIsReady(arg1)
		else
		end
		return true
	end

	registerVal10.condition = __FUNC_147B_
	registerVal7 = {registerVal8, registerVal9, registerVal10}
	registerVal2:mergeStateConditions(registerVal7)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "fileshareRoot.itemsCount")
	local function __FUNC_1513_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.itemsCount"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_1513_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "FileshareRoot.PublishMode")
	local function __FUNC_163E_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "FileshareRoot.PublishMode"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_163E_)
	registerVal8 = Engine.GetGlobalModel()
	registerVal7 = Engine.GetModel(registerVal8, "fileshareRoot.ready")
	local function __FUNC_176B_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "fileshareRoot.ready"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:subscribeToModel(registerVal7, __FUNC_176B_)
	local function __FUNC_1891_(arg0)
		arg0.SpinnerFlipbook:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1891_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.FileshareNoContent.new = __FUNC_2D9_
