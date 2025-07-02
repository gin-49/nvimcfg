---@diagnostic disable: undefined-global

-- This is the `get_visual` function I've been talking about.
-- ----------------------------------------------------------------------------
-- Summary: When `LS_SELECT_RAW` is populated with a visual selection, the function
-- returns an insert node whose initial text is set to the visual selection.
-- When `LS_SELECT_RAW` is empty, the function simply returns an empty insert node.
local get_visual = function(args, parent)
	if #parent.snippet.env.LS_SELECT_RAW > 0 then
		return sn(nil, i(1, parent.snippet.env.LS_SELECT_RAW))
	else -- If LS_SELECT_RAW is empty, return a blank insert node
		return sn(nil, i(1))
	end
end
-- ----------------------------------------------------------------------------

return {
	-- A snippet that expands the trigger "hi" into the string "Hello, world!".
	require("luasnip").snippet({ trig = "hi" }, { t("Hello, world!") }),

	-- To return multiple snippets, use one `return` statement per snippet file
	-- and return a table of Lua snippets.
	require("luasnip").snippet({ trig = "foo" }, { t("Another snippet.") }),
}
