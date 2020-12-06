-- Decompiled with CoDLUIDecompiler by JariK

local registerVal1 = InheritFrom(LUI.UIElement)
LUI.UIStreamedImage = registerVal1
function LUI.UIStreamedImage.ImageReady(arg0, arg1)
	arg1.image = arg0
	arg0:dispatchEventToChildren(arg1)
	arg0:dispatchEventToParent(arg1)
end

local function __FUNC_2AF_(arg0, arg1)
	arg0.spinner:close()
	LUI.UIStreamedImage.ImageReady(arg0, arg1)
end

local function __FUNC_36E_(arg0, arg1, arg2, arg3)
	local registerVal4 = LUI.UIElement.new(arg0)
	if arg1 == nil then
	end
	registerVal4:setClass(LUI.UIStreamedImage)
	registerVal4:setupUIStreamedImage(0.000000)
	if arg2 then
		if arg3 then
		end
		local registerVal6 = LUI.UIImage.new()
		registerVal4.spinner = registerVal6
		registerVal4.spinner:setLeftRight(false, false, (-arg3 / 2.000000), (arg3 / 2.000000))
		registerVal4.spinner:setTopBottom(false, false, (-arg3 / 2.000000), (arg3 / 2.000000))
		registerVal4.spinner:setImage(RegisterMaterial("lui_loader"))
		registerVal4:addElement(registerVal4.spinner)
		registerVal4:registerEventHandler("streamed_image_ready", __FUNC_2AF_)
	else
		registerVal4:registerEventHandler("streamed_image_ready", LUI.UIStreamedImage.ImageReady)
	end
	return registerVal4
end

LUI.UIStreamedImage.new = __FUNC_36E_
LUI.UIStreamedImage.id = "LUIStreamedImage"
