local Rule = require("nvim-autopairs.rule")
local npairs = require("nvim-autopairs")
local cond = require("nvim-autopairs.conds")
local ts_conds = require("nvim-autopairs.ts-conds")

npairs.setup {
  map_cr = true,
  enable_check_bracket_line = true,
  fast_wrap = {},
}

-- Matching angle bracket in Rust or C++
npairs.add_rule(
  Rule("<", ">", { "rust", "cpp" })
    :with_pair(cond.not_before_regex_check(" "))
)

-- Matching curly bracket in Rust, JavaScript, TypeScript and PHP strings
npairs.add_rule(
  Rule("{", "}", { "rust", "javascript", "typescript", "javascriptreact", "typescriptreact", "php" })
    :with_pair(ts_conds.is_ts_node({ "string" }))
)

npairs.add_rule(Rule("$$", "$$", { "tex", "latex" }))

npairs.get_rule("("):replace_map_cr(function() return "<cr><cr><bs><Up><C-f>" end)
