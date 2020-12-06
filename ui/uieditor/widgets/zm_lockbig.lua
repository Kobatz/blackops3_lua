-- Decompiled with CoDLUIDecompiler by JariK

require("ui.uieditor.widgets.CAC.cac_lock")
require("ui.uieditor.widgets.CAC.cac_IconTokenXLarge")
local registerVal1 = InheritFrom(LUI.UIElement)
CoD.ZM_LockBig = registerVal1
function CoD.ZM_LockBig.new(arg0, arg1)
	local registerVal2 = LUI.UIElement.new()
	if PreLoadFunc then
		PreLoadFunc(registerVal2, arg1)
	end
	registerVal2:setUseStencil(false)
	registerVal2:setClass(CoD.ZM_LockBig)
	registerVal2.id = "ZM_LockBig"
	registerVal2.soundSet = "default"
	registerVal2:setLeftRight(true, false, 0.000000, 96.000000)
	registerVal2:setTopBottom(true, false, 0.000000, 670.000000)
	registerVal2.anyChildUsesUpdateState = true
	local registerVal3 = LUI.UIImage.new()
	registerVal3:setLeftRight(false, false, -4.000000, 4.000000)
	registerVal3:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal3:setZRot(90.000000)
	registerVal3:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal3:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal3)
	registerVal2.LineSide = registerVal3
	local registerVal4 = LUI.UIImage.new()
	registerVal4:setLeftRight(false, false, -4.000000, 4.000000)
	registerVal4:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal4:setZRot(90.000000)
	registerVal4:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal4:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal4)
	registerVal2.LineSide0 = registerVal4
	local registerVal5 = LUI.UIImage.new()
	registerVal5:setLeftRight(false, false, -4.000000, 4.000000)
	registerVal5:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal5:setZRot(90.000000)
	registerVal5:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal5:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal5)
	registerVal2.LineSide00 = registerVal5
	local registerVal6 = LUI.UIImage.new()
	registerVal6:setLeftRight(false, false, -4.000000, 4.000000)
	registerVal6:setTopBottom(true, true, 0.000000, 0.000000)
	registerVal6:setZRot(90.000000)
	registerVal6:setImage(RegisterImage("uie_t7_menu_frontend_lineside"))
	registerVal6:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal6)
	registerVal2.LineSide000 = registerVal6
	local registerVal7 = LUI.UIImage.new()
	registerVal7:setLeftRight(false, false, -48.000000, 48.000000)
	registerVal7:setTopBottom(false, false, -46.670000, 46.670000)
	registerVal7:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal7:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal7)
	registerVal2.circles = registerVal7
	local registerVal8 = LUI.UIImage.new()
	registerVal8:setLeftRight(false, false, -48.000000, 48.000000)
	registerVal8:setTopBottom(false, false, -46.670000, 46.670000)
	registerVal8:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal8:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal8)
	registerVal2.circles0 = registerVal8
	local registerVal9 = LUI.UIImage.new()
	registerVal9:setLeftRight(false, false, -48.000000, 48.000000)
	registerVal9:setTopBottom(false, false, -46.670000, 46.670000)
	registerVal9:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal9:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal9)
	registerVal2.circles00 = registerVal9
	local registerVal10 = CoD.cac_lock.new(arg0, arg1)
	registerVal10:setLeftRight(false, false, -16.000000, 15.000000)
	registerVal10:setTopBottom(false, false, -17.000000, 15.000000)
	registerVal10:setScale(2.300000)
	registerVal10.lockedIcon:setAlpha(0.000000)
	registerVal2:addElement(registerVal10)
	registerVal2.lockedIcon0 = registerVal10
	local registerVal11 = CoD.cac_IconTokenXLarge.new(arg0, arg1)
	registerVal11:setLeftRight(false, false, -32.250000, 32.250000)
	registerVal11:setTopBottom(false, false, -33.250000, 31.250000)
	registerVal2:addElement(registerVal11)
	registerVal2.cacIconTokenXLarge0 = registerVal11
	local registerVal12 = LUI.UIImage.new()
	registerVal12:setLeftRight(false, false, -48.000000, 48.000000)
	registerVal12:setTopBottom(false, false, -46.670000, 46.670000)
	registerVal12:setImage(RegisterImage("uie_t7_menu_frontend_titlebackcircle"))
	registerVal12:setMaterial(LUI.UIImage.GetCachedMaterial("ui_add"))
	registerVal2:addElement(registerVal12)
	registerVal2.circles000 = registerVal12
	local registerVal13 = {}
	local registerVal14 = {}
	local function __FUNC_F93_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.LineSide:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineSide0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineSide00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineSide000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.circles:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.circles0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.circles00:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacIconTokenXLarge0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.circles000:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_F93_
	registerVal13.DefaultState = registerVal14
	registerVal14 = {}
	local function __FUNC_13AC_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.LineSide:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineSide00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineSide000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.circles:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.circles0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.circles00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon0:setAlpha(1.000000)
		registerVal2.lockedIcon0:setYRot(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacIconTokenXLarge0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.circles000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_13AC_
	registerVal13.Visible = registerVal14
	registerVal14 = {}
	local function __FUNC_17FA_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.LineSide:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineSide00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineSide000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.circles:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.circles0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.circles00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon0:setAlpha(1.000000)
		registerVal2.lockedIcon0:setYRot(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacIconTokenXLarge0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.circles000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_17FA_
	registerVal13.Locked = registerVal14
	registerVal14 = {}
	local function __FUNC_1C46_()
		registerVal2:setupElementClipCounter(10.000000)
		registerVal3:completeAnimation()
		registerVal2.LineSide:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal3, {})
		registerVal4:completeAnimation()
		registerVal2.LineSide0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal4, {})
		registerVal5:completeAnimation()
		registerVal2.LineSide00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal5, {})
		registerVal6:completeAnimation()
		registerVal2.LineSide000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal6, {})
		registerVal7:completeAnimation()
		registerVal2.circles:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal7, {})
		registerVal8:completeAnimation()
		registerVal2.circles0:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal8, {})
		registerVal9:completeAnimation()
		registerVal2.circles00:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal9, {})
		registerVal10:completeAnimation()
		registerVal2.lockedIcon0:setAlpha(0.000000)
		registerVal2.clipFinished(registerVal10, {})
		registerVal11:completeAnimation()
		registerVal2.cacIconTokenXLarge0:setAlpha(1.000000)
		registerVal2.cacIconTokenXLarge0:setYRot(0.000000)
		registerVal2.clipFinished(registerVal11, {})
		registerVal12:completeAnimation()
		registerVal2.circles000:setAlpha(1.000000)
		registerVal2.clipFinished(registerVal12, {})
	end

	registerVal14.DefaultClip = __FUNC_1C46_
	registerVal13.NotAvailable = registerVal14
	registerVal2.clipsPerState = registerVal13
	local registerVal15 = {}
	local registerVal16 = {}
	registerVal16.stateName = "Visible"
	local function __FUNC_2092_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemFromDLC(arg0, arg2, arg1)
		if registerVal3 then
			registerVal3 = IsCACItemDLCPurchased(arg0, arg2, arg1)
		end
		return (not registerVal3)
	end

	registerVal16.condition = __FUNC_2092_
	local registerVal17 = {}
	registerVal17.stateName = "Locked"
	local function __FUNC_212D_(arg0, arg2, arg3)
		return IsBGBItemLocked(arg0, arg2, arg1)
	end

	registerVal17.condition = __FUNC_212D_
	local registerVal18 = {}
	registerVal18.stateName = "NotAvailable"
	local function __FUNC_2189_(arg0, arg2, arg3)
		local registerVal3 = IsCACItemPurchased(arg2, arg1)
		registerVal3 = IsCurrentMenuAttachmentMenu(arg0)
		if not registerVal3 and not registerVal3 then
			registerVal3 = IsInPermanentUnlockMenu(arg1)
		else
		end
		return true
	end

	registerVal18.condition = __FUNC_2189_
	registerVal15 = {registerVal16, registerVal17, registerVal18}
	registerVal2:mergeStateConditions(registerVal15)
	local function __FUNC_2262_(arg1)
		local registerVal4 = {}
		registerVal4.name = "model_validation"
		registerVal4.menu = arg0
		local registerVal5 = Engine.GetModelValue(arg1)
		registerVal4.modelValue = registerVal5
		registerVal4.modelName = "itemIndex"
		arg0:updateElementState(registerVal2, registerVal4)
	end

	registerVal2:linkToElementModel(registerVal2, "itemIndex", true, __FUNC_2262_)
	local function __FUNC_237F_(arg0)
		arg0.lockedIcon0:close()
		arg0.cacIconTokenXLarge0:close()
	end

	LUI.OverrideFunction_CallOriginalSecond(registerVal2, "close", __FUNC_237F_)
	if PostLoadFunc then
		PostLoadFunc(registerVal2, arg1, arg0)
	end
	return registerVal2
end

