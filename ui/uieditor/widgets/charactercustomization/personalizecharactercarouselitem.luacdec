-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CharacterCustomization.PersonalizeCharacterCarouselItem_Internal")
local function __FUNC_24C_(arg0, arg1)
	local registerVal2, registerVal3 = arg0:getLocalSize()
	local function __FUNC_2BE_()
		if arg0.gridInfoTable then
			if arg0.gridInfoTable.parentGrid.activeWidget == arg0 then
				return registerVal2
			else
				return 90.000000
			end
		end
	end

	arg0.getWidthInList = __FUNC_2BE_
end

local registerVal2 = InheritFrom(LUI.UIElement)
CoD.PersonalizeCharacterCarouselItem = registerVal2
local function __FUNC_38E_(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.PersonalizeCharacterCarouselItem)
	registerVal2.id = "PersonalizeCharacterCarouselItem"
	registerVal2.soundSet = "none"
	registerVal2:setLeftRight(true, false, 0.000000, 816.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 500.000000)
	registerVal2:makeFocusable()
	registerVal2:setHandleMouse(true)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = CoD.PersonalizeCharacterCarouselItem_Internal.new(arg0, arg1)
	registerVal3:setLeftRight(true, true, 0.000000, 0.000000)
	registerVal3:setTopBottom(true, true, 30.000000, -30.000000)
	registerVal3.Silhouette:setAlpha(0.000000)
	registerVal3.heroNumber:setAlpha(0.000000)
	registerVal3.FocusBarT:setAlpha(0.000000)
	registerVal3.FocusBarB:setAlpha(0.000000)
	registerVal3.FETitleNumBrdr00:setAlpha(0.000000)
	local function __FUNC_959_(arg0)
		registerVal3:setModel(arg0, arg1)
	end

	registerVal3:linkToElementModel(registerVal2, nil, false, __FUNC_959_)
	registerVal2:addElement(registerVal3)
	registerVal2.item = registerVal3
	local registerVal4 = {}
	local registerVal5 = {}
	local function __FUNC_9AA_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.background:completeAnimation()
		registerVal3.apeRender:completeAnimation()
		registerVal3.ExtraCamLiveFeed:completeAnimation()
		registerVal3.Silhouette:completeAnimation()
		registerVal3.CenteredSilhouette:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.FocusBarT:completeAnimation()
		registerVal3.FocusBarB:completeAnimation()
		registerVal3.FETitleNumBrdr00:completeAnimation()
		registerVal3.infoPanel:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 30.000000, -30.000000)
		registerVal2.item.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.item.apeRender:setAlpha(1.000000)
		registerVal2.item.ExtraCamLiveFeed:setAlpha(0.000000)
		registerVal2.item.Silhouette:setAlpha(0.000000)
		registerVal2.item.CenteredSilhouette:setAlpha(0.000000)
		registerVal2.item.heroNumber:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.FocusBarT:setAlpha(0.000000)
		registerVal2.item.FocusBarB:setAlpha(0.000000)
		registerVal2.item.FETitleNumBrdr00:setAlpha(0.000000)
		registerVal2.item.infoPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_9AA_
	local function __FUNC_ED1_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.background:completeAnimation()
		registerVal3.apeRender:completeAnimation()
		registerVal3.ExtraCamLiveFeed:completeAnimation()
		registerVal3.Silhouette:completeAnimation()
		registerVal3.CenteredSilhouette:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.FocusBarT:completeAnimation()
		registerVal3.FocusBarB:completeAnimation()
		registerVal3.FETitleNumBrdr00:completeAnimation()
		registerVal3.infoPanel:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.item.background:setRGB(1.000000, 1.000000, 1.000000)
		registerVal2.item.apeRender:setAlpha(0.000000)
		registerVal2.item.ExtraCamLiveFeed:setAlpha(1.000000)
		registerVal2.item.Silhouette:setAlpha(0.000000)
		registerVal2.item.CenteredSilhouette:setAlpha(0.000000)
		registerVal2.item.heroNumber:setAlpha(1.000000)
		registerVal2.item.lockImage:setAlpha(0.000000)
		registerVal2.item.FocusBarT:setAlpha(1.000000)
		registerVal2.item.FocusBarB:setAlpha(1.000000)
		registerVal2.item.FETitleNumBrdr00:setAlpha(1.000000)
		registerVal2.item.infoPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Focus = __FUNC_ED1_
	registerVal4.DefaultState = registerVal5
	registerVal5 = {}
	local function __FUNC_13EF_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.background:completeAnimation()
		registerVal3.apeRender:completeAnimation()
		registerVal3.ExtraCamLiveFeed:completeAnimation()
		registerVal3.Silhouette:completeAnimation()
		registerVal3.CenteredSilhouette:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.infoPanel:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 30.000000, -30.000000)
		registerVal2.item.background:setRGB(0.380000, 0.380000, 0.380000)
		registerVal2.item.apeRender:setAlpha(0.000000)
		registerVal2.item.ExtraCamLiveFeed:setAlpha(0.000000)
		registerVal2.item.Silhouette:setAlpha(0.000000)
		registerVal2.item.CenteredSilhouette:setAlpha(1.000000)
		registerVal2.item.heroNumber:setAlpha(0.000000)
		registerVal2.item.lockImage:setAlpha(1.000000)
		registerVal2.item.infoPanel:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.DefaultClip = __FUNC_13EF_
	local function __FUNC_181A_()
		registerVal2:setupElementClipCounter(1.000000)
		registerVal3:completeAnimation()
		registerVal3.background:completeAnimation()
		registerVal3.apeRender:completeAnimation()
		registerVal3.ExtraCamLiveFeed:completeAnimation()
		registerVal3.Silhouette:completeAnimation()
		registerVal3.CenteredSilhouette:completeAnimation()
		registerVal3.heroNumber:completeAnimation()
		registerVal3.lockImage:completeAnimation()
		registerVal3.infoPanel:completeAnimation()
		registerVal2.item:setLeftRight(true, true, 0.000000, 0.000000)
		registerVal2.item:setTopBottom(true, true, 0.000000, 0.000000)
		registerVal2.item.background:setRGB(0.380000, 0.380000, 0.380000)
		registerVal2.item.apeRender:setAlpha(0.000000)
		registerVal2.item.ExtraCamLiveFeed:setAlpha(0.000000)
		registerVal2.item.Silhouette:setAlpha(1.000000)
		registerVal2.item.CenteredSilhouette:setAlpha(0.000000)
		registerVal2.item.heroNumber:setAlpha(1.000000)
		registerVal2.item.lockImage:setAlpha(1.000000)
		registerVal2.item.infoPanel:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
	end

	registerVal5.Focus = __FUNC_181A_
	registerVal4.Locked = registerVal5
	registerVal2.clipsPerState = registerVal4
	local registerVal6 = {}
	local registerVal7 = {}
	registerVal7.stateName = "Locked"
	local function __FUNC_1C3C_(arg0, arg2, arg3)
		return IsHeroLocked(arg2, arg1)
	end

	registerVal7.condition = __FUNC_1C3C_
	registerVal6 = {registerVal7}
	registerVal2:mergeStateConditions(registerVal6)
	local function __FUNC_1C92_(arg0)
		arg0.item:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_1C92_)
	if __FUNC_24C_ then
		__FUNC_24C_(registerVal2, arg1, arg0)
	end
	return registerVal2
end

CoD.PersonalizeCharacterCarouselItem.new = __FUNC_38E_
