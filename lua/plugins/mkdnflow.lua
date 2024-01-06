function RandomStr(length)
    math.randomseed(os.time()^5)
    local chars = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
	local res = ""
	for _ = 1, length do
        local n = math.random(#chars)
        local random_char = chars:sub(n, n)
		res = res .. random_char
	end
	return res
end


return {
    "jakewvincent/mkdnflow.nvim",
    config = function()
        require("mkdnflow").setup {
            modules = {
                cmp = true,
            },
            links = {
                conceal = true,
                transform_explicit = function (text)
                    text = text:gsub(" ", "_"):lower()
                    return os.date("%Y%m%d_") .. RandomStr(8)
                end,
            },
            to_do = {
                symbols = {' ', '⧖', '✓'},
            },
        }
    end
}
