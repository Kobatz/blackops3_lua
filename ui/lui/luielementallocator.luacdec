-- Decompiled with CoDLUIDecompiler by JariK

LUI.LUIElementAllocator = {}
function LUI.LUIElementAllocator.alloc(arg0)
	if arg0 ~= nil and arg0.m_pool ~= nil then
		for index1=1.000000, #arg0.m_pool, 1.000000 do
			if arg0.m_pool[index1].m_allocated == false then
				arg0.m_pool[index1].m_allocated = true
				return arg0.m_pool[index1]
			end
		end
	end
	error("LUI Element Allocator: No more free elements in the pool. Allocation failed.")
	return nil
end

function LUI.LUIElementAllocator.free(arg0, arg1)
	if arg0 ~= nil and arg0.m_pool ~= nil then
		for index2=1.000000, #arg0.m_pool, 1.000000 do
			if arg0.m_pool[index2] == arg1 then
				arg0.m_pool[index2].m_allocated = false
				return 
			end
		end
	end
	error("LUI Element Allocator: Tried to free an element that does not exist in the pool.")
end

function LUI.LUIElementAllocator.freeAll(arg0)
	if arg0 ~= nil and arg0.m_pool ~= nil then
		for index1=1.000000, #arg0.m_pool, 1.000000 do
			arg0.m_pool[index1].m_allocated = false
		end
	end
end

function LUI.LUIElementAllocator.addToPool(arg0, arg1)
	arg0.m_pool[(#arg0.m_pool + 1.000000)] = arg1
	arg0.m_pool[(#arg0.m_pool + 1.000000)].m_allocated = false
end

function LUI.LUIElementAllocator.new()
	{}.m_pool = {}
	{}.alloc = LUI.LUIElementAllocator.alloc
	{}.free = LUI.LUIElementAllocator.free
	{}.freeAll = LUI.LUIElementAllocator.freeAll
	{}.addToPool = LUI.LUIElementAllocator.addToPool
	return {}
end

