return {
	night = {
		------------------------------------------------------------
		-- Base colors (primary palette)
		------------------------------------------------------------
		fg = "#a0a8b7",
		red = "#e55561",
		green = "#8ebd6b",
		blue = "#4fa6ed",
		yellow = "#e2b86b",
		orange = "#cc9057",
		cyan = "#568B74",
		purple = "#bf68d9",
		grey = "#535965",
		light_grey = "#7a818e",
		white = "#FFFFFF",

		------------------------------------------------------------
		-- Backgrounds & surfaces
		------------------------------------------------------------
		bg0 = "#0F0F0F",
		bg_context = "#131413",
		bg1 = "#282c34",
		bg2 = "#30363f",
		bg_blue = "#61afef",
		bg_yellow = "#e8c88c",

		-- Dark variants
		dark_cyan = "#266269",
		dark_red = "#8b3434",
		dark_purple = "#7e3992",

		------------------------------------------------------------
		-- Grey scale
		------------------------------------------------------------
		grey_1 = "#CCCCCC",                  -- light grey
		grey_2 = "#515151",                  -- medium grey
		grey_3 = "#323232",                  -- dim grey
		grey_4 = "#242424",                  -- dark grey
		grey_5 = "#171717",                  -- near black

		------------------------------------------------------------
		-- Diff
		------------------------------------------------------------
		diff_change = "#172a3a",
		diff_text = "#274964",

		------------------------------------------------------------
		-- Core syntax
		------------------------------------------------------------
		comment = "#3F3F3F",                 -- medium grey
		keyword = "#568B74",                 -- desaturated teal green (= cyan)
		keyword_func = "#DE6767",            -- salmon red
		keyword_import = "#DE6767",          -- salmon red (= keyword_func)
		func = "#80A665",                    -- sage green
		string = "#666666",                  -- medium grey (= comment)
		string_regex = "#CCCCCC",            -- light grey
		string_escape = "#DE6767",           -- salmon red (= keyword_func)
		string_special_symbol = "#D66262",   -- coral red
		number = "#D5B15A",                  -- golden yellow
		number_float = "#D5B15A",            -- golden yellow (= number)
		boolean = "#DE6767",                 -- salmon red (= keyword_func)
		type = "#568B74",                    -- teal (= cyan)
		type_builtin = "#B8A965",            -- olive gold
		constant = "#4D9375",                -- sea green
		constructor = "#B8A965",             -- olive gold (= type_builtin)
		identifier = "#A0ACA0",              -- sage grey
		operator = "#6D795E",                -- olive grey
		delimiters = "#666666",              -- medium grey (= comment)
		brackets = "#666666",                -- medium grey (= comment)
		tag = "#CCCCCC",                     -- light grey
		title = "#CCCCCC",                   -- light grey

		------------------------------------------------------------
		-- Variables
		------------------------------------------------------------
		variable = "#A0ACA0",                -- sage grey (= identifier)
		variable_builtin = "#C99076",        -- sandy orange
		variable_member = "#C99076",         -- sandy orange (= variable_builtin)
		variable_parameter = "#DBD7CA",      -- light beige

		------------------------------------------------------------
		-- Misc language tokens
		------------------------------------------------------------
		annotation = "#FFFFFF",              -- white
		attribute = "#80A665",               -- sage green (= func)
		character = "#FFFFFF",               -- white
		error = "#D66262",                   -- coral red
		exception = "#FFFFFF",               -- white
		field = "#FFFFFF",                   -- white
		include = "#FFFFFF",                 -- white
		label = "#FFFFFF",                   -- white
		module = "#FFFFFF",                  -- white
		namespace = "#CCCCCC",               -- light grey
		note = "#CCCCCC",                    -- light grey
		warning = "#363636",                 -- mid grey
		property = "#B8A965",                -- olive gold (= type_builtin)

		------------------------------------------------------------
		-- Lua-specific syntax
		------------------------------------------------------------
		lua_statement = "#CB7676",            -- return
		lua_property = "#698A75",             -- treesitter prop (requires)
		lua_conditional = "#4D9375",          -- if else then (= constant)
		lua_repeat = "#4D9375",              -- for in (= constant)

		------------------------------------------------------------
		-- Text hierarchy
		------------------------------------------------------------
		text_primary = "#CCCCCC",            -- light grey
		text_secondary = "#9C9C9C",          -- cool grey
		text_tertiary = "#666666",           -- medium grey (= comment)
		markup = "#CCCCCC",                  -- light grey

		------------------------------------------------------------
		-- UI elements
		------------------------------------------------------------
		class_name = "#6893BF",              -- unsaturated light blue
		line_numbers = "#444444",            -- charcoal grey
		line_separator = "#2B2B29",          -- near-black brown
		search_text = "#9CDDC1",             -- mint green
		search_background = "#4D9375",       -- sea green (= constant)
		toolbar_background = "#0F0F0F",      -- matches bg0
		indent_breakline = "#1F1F1F",        -- barely visible indent guides
		placeholder = "#CCCCCC",             -- light grey
		tildes = "#DE6767",                  -- salmon red (= keyword_func)

		------------------------------------------------------------
		-- Plugin: Barbar (buffer tabs)
		------------------------------------------------------------
		barbar_bg = "#0F0F0F",               -- inactive tab bg (= bg0)
		barbar_fg = "#7E7E7E",               -- inactive tab text
		barbar_active_bg = "#1E1E1E",        -- active tab bg
		barbar_active_fg = "#CCCCCC",        -- active tab text
		barbar_modified = "#DE6767",         -- modified indicator (= keyword_func)
		barbar_visible_bg = "#161616",       -- visible (unfocused) tab bg

		------------------------------------------------------------
		-- Plugin: Lualine
		------------------------------------------------------------
		lualine_bg_dark = "#111111",         -- section c background
		lualine_bg_mid = "#222222",          -- section b background
		lualine_normal = "#5078DE",          -- normal mode accent
		lualine_normal_text = "#DEE7FF",     -- normal mode text
		lualine_insert = "#6A6A6A",          -- insert mode accent
		lualine_insert_text = "#E6E6E6",     -- insert mode text
		lualine_visual = "#66378D",          -- visual mode accent
		lualine_visual_text = "#C886FF",     -- visual mode text
		lualine_replace = "#4B2D8C",         -- replace mode accent
		lualine_replace_text = "#B38FFF",    -- replace mode text
		lualine_command = "#AC3A3A",         -- command mode accent
		lualine_command_text = "#FF8C8C",    -- command mode text
		lualine_terminal = "#579541",        -- terminal mode accent
		lualine_terminal_text = "#234F1A",   -- terminal mode text
		lualine_inactive = "#6A6A6A",        -- inactive mode accent (= lualine_insert)
		lualine_secondary_text = "#7E7E7E",  -- section c text

		------------------------------------------------------------
		-- Plugin: Which-key & completion menus
		------------------------------------------------------------
		whichkey_background = "#202021",     -- near-black
		whichkey_letter = "#568B74",         -- teal green (= cyan)
		whichkey_arrow = "#B8A965",          -- olive gold (= type_builtin)
		whichkey_description = "#CCCCCC",    -- light grey
		whichkey_prefix = "#80A665",         -- sage green (= func)
		complete_menu_background = "#181818", -- jet black
		complete_menu_text = "#4F7E6A",      -- dusty teal
		complete_menu_predict = "#568B74",   -- teal green (= cyan)
		complete_menu_selection_background = "#2E2E2E", -- dark slate grey
		complete_menu_match_fuzzy = "#568B74", -- teal green (= cyan)
		complete_menu_deprecated = "#666666", -- medium grey (= comment)

		------------------------------------------------------------
		-- Accents
		------------------------------------------------------------
		danger = "#B12E2E",

	},

	----------------------------------------------------------------------
	-- Day: slightly lighter dark background, same syntax colors
	----------------------------------------------------------------------
	day = {
		------------------------------------------------------------
		-- Base colors (primary palette)
		------------------------------------------------------------
		fg = "#b0b8c7",
		red = "#e55561",
		green = "#8ebd6b",
		blue = "#4fa6ed",
		yellow = "#e2b86b",
		orange = "#cc9057",
		cyan = "#568B74",
		purple = "#bf68d9",
		grey = "#535965",
		light_grey = "#7a818e",
		white = "#FFFFFF",

		------------------------------------------------------------
		-- Backgrounds & surfaces
		------------------------------------------------------------
		bg0 = "#141414",
		bg_context = "#131413",
		bg1 = "#2E3340",
		bg2 = "#363C48",
		bg_blue = "#61afef",
		bg_yellow = "#e8c88c",

		-- Dark variants
		dark_cyan = "#266269",
		dark_red = "#8b3434",
		dark_purple = "#7e3992",

		------------------------------------------------------------
		-- Grey scale
		------------------------------------------------------------
		grey_1 = "#CCCCCC",                  -- light grey
		grey_2 = "#5A5A5A",                  -- medium grey
		grey_3 = "#3A3A3A",                  -- dim grey
		grey_4 = "#2C2C2C",                  -- dark grey
		grey_5 = "#222222",                  -- near black

		------------------------------------------------------------
		-- Diff
		------------------------------------------------------------
		diff_change = "#1C3040",
		diff_text = "#2D506A",

		------------------------------------------------------------
		-- Core syntax
		------------------------------------------------------------
		comment = "#3F3F3F",                 -- slightly brighter comments
		keyword = "#568B74",                 -- desaturated teal green (= cyan)
		keyword_func = "#DE6767",            -- salmon red
		keyword_import = "#DE6767",          -- salmon red (= keyword_func)
		func = "#80A665",                    -- sage green
		string = "#707070",                  -- medium grey (= comment)
		string_regex = "#CCCCCC",            -- light grey
		string_escape = "#DE6767",           -- salmon red (= keyword_func)
		string_special_symbol = "#D66262",   -- coral red
		number = "#D5B15A",                  -- golden yellow
		number_float = "#D5B15A",            -- golden yellow (= number)
		boolean = "#DE6767",                 -- salmon red (= keyword_func)
		type = "#568B74",                    -- teal (= cyan)
		type_builtin = "#B8A965",            -- olive gold
		constant = "#4D9375",                -- sea green
		constructor = "#B8A965",             -- olive gold (= type_builtin)
		identifier = "#A0ACA0",              -- sage grey
		operator = "#6D795E",                -- olive grey
		delimiters = "#707070",              -- medium grey (= comment)
		brackets = "#707070",                -- medium grey (= comment)
		tag = "#CCCCCC",                     -- light grey
		title = "#CCCCCC",                   -- light grey

		------------------------------------------------------------
		-- Variables
		------------------------------------------------------------
		variable = "#A0ACA0",                -- sage grey (= identifier)
		variable_builtin = "#C99076",        -- sandy orange
		variable_member = "#C99076",         -- sandy orange (= variable_builtin)
		variable_parameter = "#DBD7CA",      -- light beige

		------------------------------------------------------------
		-- Misc language tokens
		------------------------------------------------------------
		annotation = "#FFFFFF",              -- white
		attribute = "#80A665",               -- sage green (= func)
		character = "#FFFFFF",               -- white
		error = "#D66262",                   -- coral red
		exception = "#FFFFFF",               -- white
		field = "#FFFFFF",                   -- white
		include = "#FFFFFF",                 -- white
		label = "#FFFFFF",                   -- white
		module = "#FFFFFF",                  -- white
		namespace = "#CCCCCC",               -- light grey
		note = "#CCCCCC",                    -- light grey
		warning = "#404040",                 -- mid grey
		property = "#B8A965",                -- olive gold (= type_builtin)

		------------------------------------------------------------
		-- Lua-specific syntax
		------------------------------------------------------------
		lua_statement = "#CB7676",            -- return
		lua_property = "#698A75",             -- treesitter prop (requires)
		lua_conditional = "#4D9375",          -- if else then (= constant)
		lua_repeat = "#4D9375",              -- for in (= constant)

		------------------------------------------------------------
		-- Text hierarchy
		------------------------------------------------------------
		text_primary = "#CCCCCC",            -- light grey
		text_secondary = "#A8A8A8",          -- slightly brighter than night
		text_tertiary = "#707070",           -- medium grey (= comment)
		markup = "#CCCCCC",                  -- light grey

		------------------------------------------------------------
		-- UI elements
		------------------------------------------------------------
		class_name = "#6893BF",              -- unsaturated light blue
		line_numbers = "#4E4E4E",            -- slightly brighter line nums
		line_separator = "#333330",          -- subtle separator
		search_text = "#9CDDC1",             -- mint green
		search_background = "#4D9375",       -- sea green (= constant)
		toolbar_background = "#1A1A1A",      -- matches bg0
		indent_breakline = "#2A2A2A",        -- slightly more visible guides
		placeholder = "#CCCCCC",             -- light grey
		tildes = "#DE6767",                  -- salmon red (= keyword_func)

		------------------------------------------------------------
		-- Plugin: Barbar (buffer tabs)
		------------------------------------------------------------
		barbar_bg = "#141414",               -- inactive tab bg (= bg0)
		barbar_fg = "#7E7E7E",               -- inactive tab text
		barbar_active_bg = "#282828",        -- active tab bg
		barbar_active_fg = "#CCCCCC",        -- active tab text
		barbar_modified = "#DE6767",         -- modified indicator (= keyword_func)
		barbar_visible_bg = "#212121",       -- visible (unfocused) tab bg

		------------------------------------------------------------
		-- Plugin: Lualine
		------------------------------------------------------------
		lualine_bg_dark = "#1C1C1C",         -- section c background
		lualine_bg_mid = "#2A2A2A",          -- section b background
		lualine_normal = "#5078DE",          -- normal mode accent
		lualine_normal_text = "#DEE7FF",     -- normal mode text
		lualine_insert = "#6A6A6A",          -- insert mode accent
		lualine_insert_text = "#E6E6E6",     -- insert mode text
		lualine_visual = "#66378D",          -- visual mode accent
		lualine_visual_text = "#C886FF",     -- visual mode text
		lualine_replace = "#4B2D8C",         -- replace mode accent
		lualine_replace_text = "#B38FFF",    -- replace mode text
		lualine_command = "#AC3A3A",         -- command mode accent
		lualine_command_text = "#FF8C8C",    -- command mode text
		lualine_terminal = "#579541",        -- terminal mode accent
		lualine_terminal_text = "#234F1A",   -- terminal mode text
		lualine_inactive = "#6A6A6A",        -- inactive mode accent (= lualine_insert)
		lualine_secondary_text = "#7E7E7E",  -- section c text

		------------------------------------------------------------
		-- Plugin: Which-key & completion menus
		------------------------------------------------------------
		whichkey_background = "#262626",     -- slightly lighter than night
		whichkey_letter = "#568B74",         -- teal green (= cyan)
		whichkey_arrow = "#B8A965",          -- olive gold (= type_builtin)
		whichkey_description = "#CCCCCC",    -- light grey
		whichkey_prefix = "#80A665",         -- sage green (= func)
		complete_menu_background = "#222222", -- dark
		complete_menu_text = "#4F7E6A",      -- dusty teal
		complete_menu_predict = "#568B74",   -- teal green (= cyan)
		complete_menu_selection_background = "#383838", -- selected item
		complete_menu_match_fuzzy = "#568B74", -- teal green (= cyan)
		complete_menu_deprecated = "#707070", -- medium grey (= comment)

		------------------------------------------------------------
		-- Accents
		------------------------------------------------------------
		danger = "#B12E2E",

	},
}
