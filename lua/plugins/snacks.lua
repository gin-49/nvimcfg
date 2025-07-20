return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	opts = {
		dashboard = {
			enabled = true,
			preset = {
				header = table.concat({
                         " 𓀔𓀇𓀅𓀋𓀡𓀡𓀕𓀠𓀧𓀨𓀣𓀷𓀷𓀿𓀿𓁀𓁶𓁰𓁴𓁿𓂀𓁾𓁵𓁯𓂞𓂤  ",
                         " 𓂗𓃃𓂾𓂺𓂹𓃞𓃙𓃖𓃓𓃕𓃓𓃜𓃘𓃙𓃟𓃛𓃞𓂺𓃂𓂿𓂺𓃃𓃂𓂛𓂏𓅱  ",
                         " 𓅥𓅩𓅦𓅹𓅸𓅳𓅩𓅪𓄭𓄫𓄮𓄬𓄗𓄑𓄌𓃦𓃧𓃨𓃤𓃟𓃓𓃅𓃁𓂽𓃂𓂊  ",
                         " 𓁾𓂀𓁽𓁼𓁠𓁛𓁟𓁦𓁜𓁭𓁡𓀔𓀇𓀅𓀋𓀡𓀡𓀕𓀠𓀧𓀨𓀣𓀷𓀷𓀿𓀿  ",
                         " 𓁀𓁶𓁰𓁴𓁿𓂀𓁾𓁵𓁯𓂞𓂤𓂗𓃃𓂾𓂺𓂹𓃞𓃙𓃖𓃓𓃕𓃓𓃜𓃘𓃙𓃟  ",
                         " 𓃛𓃞𓂺𓃂𓂿𓂺𓃃𓃂𓂛𓂏𓅱𓅥𓅩𓅦𓅹𓅸𓅳𓅩𓅪𓄭𓄫𓄮𓄬𓄗𓄑𓄌  ",
                         " 𓃦𓃧𓃨𓃤𓃟𓃓𓃅𓃁𓂽𓃂𓂊𓁾𓂀𓁽𓁼𓁠𓁛𓁟𓁦𓁜𓁭𓁡𓀔𓀇𓀅𓀋  ",
                         " 𓀡𓀡𓀕𓀠𓀧𓀨𓀣𓀷𓀷𓀿𓀿𓁀𓁶𓁰𓁴𓁿𓂀𓁾𓁵𓁯𓂞𓂤𓂗𓃃𓂾𓂺  ",
                         " 𓂹𓃞𓃙𓃖𓃓𓃕𓃓𓃜𓃘𓃙𓃟𓃛𓃞𓂺𓃂𓂿𓂺𓃃𓃂𓂛𓂏𓅱𓅥     ",
                },       " \n"),
			},
		},
		bigfile = { enabled = true },
		image = { enabled = true },
		explorer = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		notifier = {
			enabled = true,
			timeout = 3000,
		},
		picker = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
		styles = {
			notification = {
				-- wo = { wrap = true } -- Wrap notifications
			},
		},
	},
}
