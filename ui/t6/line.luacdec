-- Decompiled with CoDLUIDecompiler by JariK

CoD.Line = {}
function CoD.Line.new(arg0, arg1, arg2, arg3)
	if arg3 == nil then
		local registerVal7 = {}
		registerVal7 = {1.000000, 1.000000, 1.000000, 1.000000}
	end
	for index7=1.000000, 2.000000, 1.000000 do
		if arg0[index7] < arg1[index7] then
			{}[index7] = arg0[index7]
			{}[index7] = (arg1[index7] - arg0[index7])
		else
			{}[index7] = arg1[index7]
			{}[index7] = (arg0[index7] - arg1[index7])
		end
		{}[index7] = ({}[index7] - arg2)
		{}[index7] = ({}[index7] + (arg2 * 2.000000))
	end
	registerVal7 = {}
	registerVal7 = {{}[1.000000], {}[2.000000], arg2, 1.000000}
	local registerVal8 = {}
	registerVal8 = {(arg0[1.000000] - {}[1.000000]), (arg0[2.000000] - {}[2.000000]), (arg1[1.000000] - {}[1.000000]), (arg1[2.000000] - {}[2.000000])}
	local registerVal10 = {}
	registerVal10.leftAnchor = true
	registerVal10.rightAnchor = false
	registerVal10.left = {}[1.000000]
	registerVal10.right = ({}[1.000000] + {}[1.000000])
	registerVal10.topAnchor = true
	registerVal10.bottomAnchor = false
	registerVal10.top = {}[2.000000]
	registerVal10.bottom = ({}[2.000000] + {}[2.000000])
	registerVal10.red = registerVal7[1.000000]
	registerVal10.green = registerVal7[2.000000]
	registerVal10.blue = registerVal7[3.000000]
	registerVal10.alpha = registerVal7[4.000000]
	local registerVal11 = RegisterMaterial("ui_line")
	registerVal10.material = registerVal11
	registerVal10.shaderVector0 = registerVal7
	registerVal10.shaderVector1 = registerVal8
	local registerVal9 = LUI.UIImage.new(registerVal10)
	return registerVal9
end

