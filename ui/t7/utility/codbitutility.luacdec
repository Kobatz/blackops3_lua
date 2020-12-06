-- Decompiled with CoDLUIDecompiler by JariK

CoD.BitUtility = {}
function CoD.BitUtility.IsBitSet(arg0, arg1)
	if 0.000000 >= (arg0 & (1.000000 << arg1)) then
	end
	return true
end

function CoD.BitUtility.IsBitwiseAndNonZero(arg0, arg1)
	if (arg0 & arg1) == 0.000000 then
	end
	return true
end

function CoD.BitUtility.AreAllBitsSet(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = CoD.BitUtility.IsBitSet(arg0, value6)
		if not registerVal7 then
			return false
		end
	end
	return true
end

function CoD.BitUtility.IsAnyBitSet(arg0, arg1)
	local registerVal2, registerVal3, registerVal4 = ipairs(arg1)
	for index5,value6 in registerVal2, registerVal3, registerVal4 do
		local registerVal7 = CoD.BitUtility.IsBitSet(arg0, value6)
		if registerVal7 then
			return true
		end
	end
	return false
end

