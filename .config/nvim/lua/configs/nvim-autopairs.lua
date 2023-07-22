local Rule = require("nvim-autopairs.rule")
local npairs = require("nvim-autopairs")
local cond = require("nvim-autopairs.conds")
local ts_conds = require("nvim-autopairs.ts-conds")

-- If you want insert `(` after select function or method item
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- local cmp = require('cmp')
-- cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

npairs.setup {
  map_cr = true,
  -- enable_check_bracket_line = true,
  -- fast_wrap = {},
}

npairs.add_rule(Rule("{ ", " }", "lua"))

-- Matching angle bracket in Rust or C++
npairs.add_rule(
  Rule("<", ">", { "rust", "cpp" })
    :with_pair(cond.not_before_regex_check(" "))
    :with_pair(cond.not_before_regex_check("<"))
)

-- Matching curly bracket in Rust, JavaScript, TypeScript and PHP strings
-- npairs.add_rule(
--   Rule("{", "}", { "rust", "javascript", "typescript", "javascriptreact", "typescriptreact", "php", "python" })
--     :with_pair(ts_conds.is_ts_node({ "string" }))
-- )

npairs.add_rule(Rule("{%", "%", { "html.twig" }))

npairs.add_rule(Rule("$$", "$$", { "tex", "latex" }))

-- npairs.get_rule("("):replace_map_cr(function() return "<cr><cr><bs><Up><C-f>" end)
local ft = vim.bo.filetype
-- if ft == "rust" or ft == "c" or ft == "cpp" then
-- -- if false then
-- 	npairs.get_rule("("):replace_map_cr(function() return "<cr><bs><esc>O" end)
-- end

-- npairs.remove_rule("(");
-- npairs.add_rule(Rule("(", ")"):with_cr(function() return "<cr><cr>" end))
--
vim.cmd [[
	autocmd FileType c,cpp,rust,dart,php lua require("nvim-autopairs").get_rule("("):replace_map_cr(function() return "<cr><bs><esc>O" end)
	autocmd BufEnter *.dart set cinoptions=(2s
]]
