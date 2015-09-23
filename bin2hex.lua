--binary file to txt file one byte a line

local function bin2hex()
	local rf = assert(io.open("file.bin", "rb"))
	local wf = assert(io.open("write.bin", "w"))

	local block = 1 --one byte a time
	while true do
		local bytes = rf:read(block)
		if not bytes then break end
		wf:write(string.format("%02x\n", string.byte(bytes)))
	end
end

local function bin2hex_2()
--~ local rf = assert(io.open("file.bin", "rb"))
--~ local wf = assert(io.open("write.bin", "w"))
--~ local data = rf:read("*a") --read all data
--~ for i=1, string.len(data) do
--~ 	local substr = string.sub(data, i)
--~ 	--print(string.format("%02x", string.byte(substr)))
--~ 	wf:write(string.format("%02x\n", string.byte(substr)))
--~ end
end
