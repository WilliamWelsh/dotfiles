return {
	"glepnir/dashboard-nvim",
	event = "VimEnter",
	config = function()
		require("dashboard").setup({
			config = {
				header = {
					"                                                                                                    ",
					"                                                                                                    ",
					"                                                                                                    ",
					"                         .^!^                                           .!~:                        ",
					"                    ^!JPB&B7.                                            !&&BPJ!:                   ",
					"                ^?P#@@@@@G.                   :       :                   ~@@@@@&B5!:               ",
					"             ^JB@@@@@@@@@7                   .#~     ?G                   .&@@@@@@@@&G?:            ",
					"          .7G@@@@@@@@@@@@#!                  7@&^   ~@@^                 .5@@@@@@@@@@@@@G7.         ",
					"        .?#@@@@@@@@@@@@@@@@BY!^.             B@@&BBB&@@Y              :~Y#@@@@@@@@@@@@@@@@#?.       ",
					"       !#@@@@@@@@@@@@@@@@@@@@@@#G5Y?!~^:..  ~@@@@@@@@@@#.   ..::^!7J5B&@@@@@@@@@@@@@@@@@@@@@#!      ",
					"     .5@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&&##B#@@@@@@@@@@@BBBB##&&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@Y     ",
					"    :B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@5    ",
					"   .B@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@J   ",
					"   5@&#BGGPPPPPGGB&@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&BGGP555PPGBB#&#:  ",
					"   ^:.            .^!YB@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@&57^.            .:^.  ",
					"                       ~G@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@5:                      ",
					"                         P@@@#BGGGGB#@@@@@@@@@@@@@@@@@@@@@@@@@#BP5555PG#@@@P                        ",
					"                         :J!:.      .^!JG&@@@@@@@@@@@@@@@@#57^.        .:!5~                        ",
					"                                         :?G@@@@@@@@@@@@P!.                                         ",
					"                                            ~5@@@@@@@@5^                                            ",
					"                                              ^P@@@@G^                                              ",
					"                                                !#@?                                                ",
					"                                                 :^                                                 ",
					"                                                                                                    ",
					"                                                                                                    ",
					"                                                                                                    ",
					-- "",
					-- "⣿⠟⣽⣿⣿⣿⣿⣿⢣⠟⠋⡜⠄⢸⣿⣿⡟⣬⢁⠠⠁⣤⠄⢰⠄⠇⢻⢸",
					-- "⢏⣾⣿⣿⣿⠿⣟⢁⡴⡀⡜⣠⣶⢸⣿⣿⢃⡇⠂⢁⣶⣦⣅⠈⠇⠄⢸⢸",
					-- "⣹⣿⣿⣿⡗⣾⡟⡜⣵⠃⣴⣿⣿⢸⣿⣿⢸⠘⢰⣿⣿⣿⣿⡀⢱⠄⠨⢸",
					-- "⣿⣿⣿⣿⡇⣿⢁⣾⣿⣾⣿⣿⣿⣿⣸⣿⡎⠐⠒⠚⠛⠛⠿⢧⠄⠄⢠⣼",
					-- "⣿⣿⣿⣿⠃⠿⢸⡿⠭⠭⢽⣿⣿⣿⢂⣿⠃⣤⠄⠄⠄⠄⠄⠄⠄⠄⣿⡾",
					-- "⣼⠏⣿⡏⠄⠄⢠⣤⣶⣶⣾⣿⣿⣟⣾⣾⣼⣿⠒⠄⠄⠄⡠⣴⡄⢠⣿⣵",
					-- "⣳⠄⣿⠄⠄⢣⠸⣹⣿⡟⣻⣿⣿⣿⣿⣿⣿⡿⡻⡖⠦⢤⣔⣯⡅⣼⡿⣹",
					-- "⡿⣼⢸⠄⠄⣷⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣕⡜⡌⡝⡸⠙⣼⠟⢱⠏",
					-- "⡇⣿⣧⡰⡄⣿⣿⣿⣿⡿⠿⠿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣋⣪⣥⢠⠏⠄",
					-- "⣧⢻⣿⣷⣧⢻⣿⣿⣿⡇⠄⢀⣀⣀⡙⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠂⠄⠄",
					-- "⢹⣼⣿⣿⣿⣧⡻⣿⣿⣇⣴⣿⣿⣿⣷⢸⣿⣿⣿⣿⣿⣿⣿⣿⣰⠄⠄⠄",
					-- "⣼⡟⡟⣿⢸⣿⣿⣝⢿⣿⣾⣿⣿⣿⢟⣾⣿⣿⣿⣿⣿⣿⣿⣿⠟⠄⡀⡀",
					-- "⣿⢰⣿⢹⢸⣿⣿⣿⣷⣝⢿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠛⠉⠄⠄⣸⢰⡇",
					-- "⣿⣾⣹⣏⢸⣿⣿⣿⣿⣿⣷⣍⡻⣛⣛⣛⡉⠁⠄⠄⠄⠄⠄⠄⢀⢇⡏⠄",
					-- "",
				},
				footer = {},
				packages = { enable = false },
				project = {
					enable = false,
				},
				mru = {
					limit = 5,
				},
				shortcut = {
					{ desc = " Update", group = "@property", action = "Lazy update", key = "u" },
					{
						icon = " ",
						desc = "Files",
						group = "@property",
						action = "Telescope find_files",
						key = "f",
					},
					{
						desc = " Grep",
						group = "@property",
						action = "Telescope grep_string",
						key = "g",
					},
				},
			},
		})
	end,
}
