-- Decompiled with CoDLUIDecompiler by JariK

LUI.UIAnimNumber = {}
function LUI.UIAnimNumber.new(arg0)
	local registerVal1 = LUI.UIText.new(arg0)
	registerVal1.setNumber = LUI.UIAnimNumber.SetNumber
	registerVal1.setLocalizedString = LUI.UIAnimNumber.SetLocalizedString
	registerVal1.layout = LUI.UIAnimNumber.Layout
	return registerVal1
end

function LUI.UIAnimNumber.SetNumber(arg0, arg1, arg2)
	if arg2 == nil or arg0.currentNumber == nil then
		arg0.currentNumber = arg1
		arg0:setText(arg1)
		return 
	end
	arg0.startingNumber = arg0.currentNumber
	arg0.numberChange = (arg1 - arg0.startingNumber)
	arg0.timeLeft = arg2
	arg0.duration = arg2
	arg0:setLayoutCached(false)
end

function LUI.UIAnimNumber.SetLocalizedString(arg0, arg1)
	arg0.localizedString = arg1
end

function LUI.UIAnimNumber.Layout(arg0, arg1)
	if arg0.timeLeft ~= nil then
		if (arg0.timeLeft - arg1.deltaTime) < 0.000000 then
			arg0.startingNumber = nil
			arg0.numberChange = nil
			arg0.timeLeft = nil
			arg0.duration = nil
		else
			arg0.timeLeft = (arg0.timeLeft - arg1.deltaTime)
			local registerVal6 = math.floor(((arg0.startingNumber + (arg0.numberChange * (1.000000 - ((arg0.timeLeft - arg1.deltaTime) / arg0.duration)))) + 0.500000))
		end
		if arg0.localizedString ~= nil then
			arg0:setText(Engine.Localize(arg0.localizedString, registerVal6))
		else
			arg0:setText(registerVal6)
		end
		arg0.currentNumber = registerVal6
	end
	local registerVal3 = arg0:updateElementLayout(arg1)
	arg0:layoutChildren(arg1)
	arg0:setLayoutCached((registerVal3 or registerVal6))
end

