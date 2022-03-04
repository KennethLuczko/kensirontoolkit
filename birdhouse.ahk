; OPENOSRS CLIENT RESOLUTION 1520X900
SendMode Input
#NoEnv
#include WindHumanMouse.ahk
CoordMode, Pixel, Window

Random, short_sleep, 3200, 4800

Z::
{
	set_screen()
	open_bank()
	Sleep, short_sleep
	click_main_bank_tab()
	click_reddye_bank_tab()
	withdraw_birdhouse_supplies()
	close_bank()
	open_spellbook()
	home_teleport()
	home_digsite_pendant()
	house_on_the_hill_magic_mushtree()
	verdant_valley_teleport()
	verdant_valley_birdhouse_N()
	open_inventory()
	make_birdhouse_verdant_valley_N()
	verdant_valley_birdhouse_S()
	make_birdhouse_verdant_valley_S()
	verdant_valley_magic_mushtree()
	mushroom_meadow_teleport() 
	mushroom_meadow_birdhouse_N()
	set_screen_south()
	head_south()
	mushroom_meadow_birdhouse_S()
	make_birdhouse_mushroom_meadow_S()
	seers_teleport()

}

set_screen() {
	MoveMouse(1436, 906)
	Click
	MoveMouse(1467, 644)
	Click
	MoveMouse(1405, 742)
	Click
	MoveMouse(1364, 56)
	Click
	Return
}

open_bank() {
	CoordMode, Pixel, Window
	PixelSearch, bank_booth_X, bank_booth_Y, 4, 28, 1525, 925, 0xCDCD00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_middle_bank_booth, 22, 28
		bank_booth_X := bank_booth_X + random_find_middle_bank_booth
		bank_booth_Y := bank_booth_Y + random_find_middle_bank_booth
		MoveMouse(bank_booth_X, bank_booth_Y)
		MouseClick, left, %bank_booth_X%, %bank_booth_Y%
	}
	return
}

click_main_bank_tab() {
	CoordMode, Pixel, Window
	PixelSearch, main_tab_X, main_tab_Y, 5, 27, 1526, 931, 0x6F5F4F, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_main_tab, 1, 3
		main_tab_X := main_tab_X + random_find_main_tab
		main_tab_Y := main_tab_Y + random_find_main_tab
		MoveMouse(main_tab_X, main_tab_Y)
		MouseClick, left, %main_tab_X%, %main_tab_Y%
	}
	Return

}

click_reddye_bank_tab() {
	CoordMode, Pixel, Window
	PixelSearch, red_dye_X, red_dye_Y, 5, 27, 1526, 931, 0xF6341D, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_red_dye, 1, 3
		red_dye_X := red_dye_X + random_find_red_dye
		red_dye_Y := red_dye_Y + random_find_red_dye
		MoveMouse(red_dye_X, red_dye_Y)
		MouseClick, left, %red_dye_X%, %red_dye_Y%
	}
	Return
}

withdraw_birdhouse_supplies() {
	CoordMode, Pixel, Window
	PixelSearch, one_X, one_Y, 4, 26, 1521, 925, 0x00FFCA, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_one, 1, 3
		one_X := one_X + random_find_one
		one_Y := one_Y + random_find_one
		MoveMouse(one_X, one_Y)
		MouseClick, left, %one_X%, %one_Y%
	}
	PixelSearch, hammer_X, hammer_Y, 4, 26, 1521, 925, 0x4300FF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_hammer, 1, 3
		hammer_X := hammer_X + random_find_hammer
		hammer_Y := hammer_Y + random_find_hammer
		MoveMouse(hammer_X, hammer_Y)
		MouseClick, left, %hammer_X%, %hammer_Y%
	}
	PixelSearch, chisel_X, chisel_Y, 4, 26, 1521, 925, 0x644309, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_chisel, 1, 3
		chisel_X := chisel_X + random_find_chisel
		chisel_Y := chisel_Y + random_find_chisel
		MoveMouse(chisel_X, chisel_Y)
		MouseClick, left, %chisel_X%, %chisel_Y%
	}
	PixelSearch, magic_log_X, magic_log_Y, 4, 26, 1521, 925, 0x2AAA9D, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, click_delay, 650, 1150
		Random, random_find_magic_log, 1, 3
		magic_log_X := magic_log_X + random_find_magic_log
		magic_log_Y := magic_log_Y + random_find_magic_log
		MoveMouse(magic_log_X, magic_log_Y)
		MouseClick, left, %magic_log_X%, %magic_log_Y%
		Sleep, click_delay
		MouseClick, left, %magic_log_X%, %magic_log_Y%
		Sleep, click_delay
		MouseClick, left, %magic_log_X%, %magic_log_Y%
		Sleep, click_delay
		MouseClick, left, %magic_log_X%, %magic_log_Y%
	}
	PixelSearch, all_X, all_Y, 4, 26, 1521, 925, 0xFF00CA, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_all, 1, 3
		all_X := all_X + random_find_all
		all_Y := all_Y + random_find_all
		MoveMouse(all_X, all_Y)
		MouseClick, left, %all_X%, %all_Y%
	}
	PixelSearch, hop_seeds_X, hop_seeds_Y, 4, 26, 1521, 925, 0x997556, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_hop_seeds, 1, 3
		hop_seeds_X := hop_seeds_X + random_find_hop_seeds
		hop_seeds_Y := hop_seeds_Y + random_find_hop_seeds
		MoveMouse(hop_seeds_X, hop_seeds_Y)
		MouseClick, left, %hop_seeds_X%, %hop_seeds_Y%
	}
	PixelSearch, dust_runes_X, dust_runes_Y, 4, 26, 1521, 925, 0x746242, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_dust_runes, 1, 3
		dust_runes_X := dust_runes_X + random_find_dust_runes
		dust_runes_Y := dust_runes_Y + random_find_dust_runes
		MoveMouse(dust_runes_X, dust_runes_Y)
		MouseClick, left, %dust_runes_X%, %dust_runes_Y%
	}
	PixelSearch, law_runes_X, law_runes_Y, 4, 26, 1521, 925, 0x1A22E0, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_law_runes, 1, 3
		law_runes_X := law_runes_X + random_find_law_runes
		law_runes_Y := law_runes_Y + random_find_law_runes
		MoveMouse(law_runes_X, law_runes_Y)
		MouseClick, left, %law_runes_X%, %law_runes_Y%
	}
	Return
}

close_bank() {
	Sleep, 500, 800
	SendInput, {Escape}
	Sleep, 500, 800
	Return
}

open_inventory() {
	Sleep, 500, 800
	SendInput, {2}
	Sleep, 500, 800
	Return
}

open_spellbook() {
	Sleep, 500, 800
	SendInput, {5}
	Sleep, 500, 800
	Return
}

home_teleport() {
	CoordMode, Pixel, Window
	PixelSearch, home_X, home_Y, 4, 26, 1521, 925, 0xC800FD, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_home, 1, 3
		home_X := home_X + random_find_home
		home_Y := home_Y + random_find_home
		MoveMouse(home_X, home_Y)
		MouseClick, left, %home_X%, %home_Y%
		Sleep 10000
	}
	Return
}

seers_teleport() {
	CoordMode, Pixel, Window
	PixelSearch, seers_X, seers_Y, 1291, 593, 1521, 921, 0xFF0073, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_seers, 1, 3
		seers_X := seers_X + random_find_seers
		seers_Y := seers_Y + random_find_seers
		MoveMouse(seers_X, seers_Y)
		MouseClick, left, %seers_X%, %seers_Y%
		Sleep 3500, 4900
	}
	Return
}

home_digsite_pendant() {
	CoordMode, Pixel, Window
	PixelSearch, digsite_pendant_X, digsite_pendant_Y, 778, 171, 1217, 671, 0x111111, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		digsite_pendant_X := digsite_pendant_X + 5
		digsite_pendant_Y := digsite_pendant_Y + 5
		MoveMouse(digsite_pendant_X, digsite_pendant_Y)
		MouseClick, left, %digsite_pendant_X%, %digsite_pendant_Y%
		Sleep 10000
	}
	Return
}

house_on_the_hill_magic_mushtree() {
	CoordMode, Pixel, Window
	PixelSearch, house_on_the_hill_magic_mushtree_X, house_on_the_hill_magic_mushtree_Y, 4, 28, 1525, 925, 0xCDCD00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_house_on_the_hill_magic_mushtree, 5, 13
		house_on_the_hill_magic_mushtree_X := house_on_the_hill_magic_mushtree_X + random_find_house_on_the_hill_magic_mushtree
		house_on_the_hill_magic_mushtree_Y := house_on_the_hill_magic_mushtree_Y + random_find_house_on_the_hill_magic_mushtree
		MoveMouse(house_on_the_hill_magic_mushtree_X, house_on_the_hill_magic_mushtree_Y)
		MouseClick, left, %house_on_the_hill_magic_mushtree_X%, %house_on_the_hill_magic_mushtree_Y%
		Sleep 10000
	}
	Return
}

verdant_valley_teleport() {
	Sleep, 500, 800
	SendInput, {2}
	Sleep, 5000
	Return
}

verdant_valley_birdhouse_N() {
	CoordMode, Pixel, Window
	PixelSearch, birdhouse_N_X, birdhouse_N_Y, 970, 213, 1225, 457, 0xC0C506, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_birdhouse_N, 1, 3
		birdhouse_N_X := birdhouse_N_X + random_find_birdhouse_N
		birdhouse_N_Y := birdhouse_N_Y + random_find_birdhouse_N
		MoveMouse(birdhouse_N_X, birdhouse_N_Y)
		MouseClick, left, %birdhouse_N_X%, %birdhouse_N_Y%
		Sleep, 7000
	}
	Return
}

make_birdhouse_verdant_valley_N() {
	open_inventory()
	CoordMode, Pixel, Window
	PixelSearch, clockwork_X, clockwork_Y, 1292, 598, 1519, 923, 0x00FFFF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_clockwork, 1, 3
		clockwork_X := clockwork_X + random_find_clockwork
		clockwork_Y := clockwork_Y + random_find_clockwork
		MoveMouse(clockwork_X, clockwork_Y)
		MouseClick, left, %clockwork_X%, %clockwork_Y%
		Sleep, 500
	}
	PixelSearch, magic_logs_X, magic_logs_Y, 1292, 598, 1519, 923, 0x2AAA9D, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_magic_logs, 1, 3
		magic_logs_X := magic_logs_X + random_find_magic_logs
		magic_logs_Y := magic_logs_Y + random_find_magic_logs
		MoveMouse(magic_logs_X, magic_logs_Y)
		MouseClick, left, %magic_logs_X%, %magic_logs_Y%
		Sleep, 1550, 2000
	}
	PixelSearch, ground_birdhouse_X, ground_birdhouse_Y, 1292, 598, 1519, 923, 0x2AAA9D, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_ground_birdhouses, 1, 3
		ground_birdhouse_X := ground_birdhouse_X + random_find_ground_birdhouse
		ground_birdhouse_Y := ground_birdhouse_Y + random_find_ground_birdhouse
		MoveMouse(ground_birdhouse_X, ground_birdhouse_Y)
		MouseClick, left, %ground_birdhouse_X%, %ground_birdhouse_Y%
		Sleep, 3000
		MouseClick, left, %ground_birdhouse_X%, %ground_birdhouse_Y%
	}
	Return
}

verdant_valley_birdhouse_S() {
	CoordMode, Pixel, Window
	PixelSearch, birdhouse_S_X, birdhouse_S_Y, 432, 570, 803, 845, 0xCDCD00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_birdhouse_S, 1, 3
		birdhouse_S_X := birdhouse_S_X + random_find_birdhouse_S
		birdhouse_S_Y := birdhouse_S_Y + random_find_birdhouse_S
		MoveMouse(birdhouse_S_X, birdhouse_S_Y)
		MouseClick, left, %birdhouse_S_X%, %birdhouse_S_Y%
		Sleep, 7000
	}
	Return
}

make_birdhouse_verdant_valley_S() {
	open_inventory()
	CoordMode, Pixel, Window
	PixelSearch, clockwork_X, clockwork_Y, 1292, 598, 1519, 923, 0x00FFFF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_clockwork, 1, 3
		clockwork_X := clockwork_X + random_find_clockwork
		clockwork_Y := clockwork_Y + random_find_clockwork
		MoveMouse(clockwork_X, clockwork_Y)
		MouseClick, left, %clockwork_X%, %clockwork_Y%
		Sleep, 500
	}
	PixelSearch, magic_logs_X, magic_logs_Y, 1292, 598, 1519, 923, 0x2AAA9D, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_magic_logs, 1, 3
		magic_logs_X := magic_logs_X + random_find_magic_logs
		magic_logs_Y := magic_logs_Y + random_find_magic_logs
		MoveMouse(magic_logs_X, magic_logs_Y)
		MouseClick, left, %magic_logs_X%, %magic_logs_Y%
		Sleep, 1550, 2000
	}
	PixelSearch, ground_birdhouse_X, ground_birdhouse_Y, 643, 376, 948, 585, 0x7400CD, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_ground_birdhouses, 1, 3
		ground_birdhouse_X := ground_birdhouse_X + random_find_ground_birdhouse
		ground_birdhouse_Y := ground_birdhouse_Y + random_find_ground_birdhouse
		MoveMouse(ground_birdhouse_X, ground_birdhouse_Y)
		MouseClick, left, %ground_birdhouse_X%, %ground_birdhouse_Y%
		Sleep, 3000
		MouseClick, left, %ground_birdhouse_X%, %ground_birdhouse_Y%
	}
	Return
}

verdant_valley_magic_mushtree() {
	CoordMode, Pixel, Window
	PixelSearch, verdant_valley_magic_mushtree_X, verdant_valley_magic_mushtree_Y, 447, 236, 838, 534, 0xB4B303, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_verdant_valley_magic_mushtree, 5, 13
		verdant_valley_magic_mushtree_X := verdant_valley_magic_mushtree_X + random_find_verdant_valley_magic_mushtree
		verdant_valley_magic_mushtree_Y := verdant_valley_magic_mushtree_Y + random_find_verdant_valley_magic_mushtree
		MoveMouse(verdant_valley_magic_mushtree_X, verdant_valley_magic_mushtree_Y)
		MouseClick, left, %verdant_valley_magic_mushtree_X%, %verdant_valley_magic_mushtree_Y%
		Sleep 5000, 7500
	}
	Return
}

mushroom_meadow_teleport() {
	Sleep, 500, 800
	SendInput, {4}
	Sleep, 5000
	Return
}

mushroom_meadow_birdhouse_N() {
	CoordMode, Pixel, Window
	PixelSearch, birdhouse_N_X, birdhouse_N_Y, 694, 163, 915, 394, 0xCDCD00, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_birdhouse_N, 1, 3
		birdhouse_N_X := birdhouse_N_X + random_find_birdhouse_N
		birdhouse_N_Y := birdhouse_N_Y + random_find_birdhouse_N
		MoveMouse(birdhouse_N_X, birdhouse_N_Y)
		MouseClick, left, %birdhouse_N_X%, %birdhouse_N_Y%
		Sleep, 7000
	}
	Return
}

make_birdhouse_mushroom_meadow_N() {
	open_inventory()
	CoordMode, Pixel, Window
	PixelSearch, clockwork_X, clockwork_Y, 1292, 598, 1519, 923, 0x00FFFF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_clockwork, 1, 3
		clockwork_X := clockwork_X + random_find_clockwork
		clockwork_Y := clockwork_Y + random_find_clockwork
		MoveMouse(clockwork_X, clockwork_Y)
		MouseClick, left, %clockwork_X%, %clockwork_Y%
		Sleep, 500
	}
	PixelSearch, magic_logs_X, magic_logs_Y, 1292, 598, 1519, 923, 0x2AAA9D, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_magic_logs, 1, 3
		magic_logs_X := magic_logs_X + random_find_magic_logs
		magic_logs_Y := magic_logs_Y + random_find_magic_logs
		MoveMouse(magic_logs_X, magic_logs_Y)
		MouseClick, left, %magic_logs_X%, %magic_logs_Y%
		Sleep, 1550, 2000
	}
	PixelSearch, ground_birdhouse_X, ground_birdhouse_Y, 656, 355, 905, 556, 0x7400CD, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_ground_birdhouses, 1, 3
		ground_birdhouse_X := ground_birdhouse_X + random_find_ground_birdhouse
		ground_birdhouse_Y := ground_birdhouse_Y + random_find_ground_birdhouse
		MoveMouse(ground_birdhouse_X, ground_birdhouse_Y)
		MouseClick, left, %ground_birdhouse_X%, %ground_birdhouse_Y%
		Sleep, 3000
		MouseClick, left, %ground_birdhouse_X%, %ground_birdhouse_Y%
	}
	Return
}

set_screen_south() {
	MoveMouse(1364, 48, 0.55)
	Sleep 200
	Click, Right
	MoveMouse(1364, 106, 0.55)
	Click, Left
	Return
}

head_south(){
	CoordMode, Pixel, Window
	PixelSearch, purple_tile_X, purple_tile_Y, 563, 155, 772, 335, 0x9000FF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_purple_tile, 1, 3
		purple_tile_X := purple_tile_X + random_find_purple_tile
		purple_tile_Y := purple_tile_Y + random_find_purple_tile
		MoveMouse(purple_tile_X, purple_tile_Y)
		MouseClick, left, %purple_tile_X%, %purple_tile_Y%
		Sleep, 7000, 7500
	}
	PixelSearch, purple_tile_X, purple_tile_Y, 725, 130, 840, 245, 0x9000FF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_purple_tile, 1, 3
		purple_tile_X := purple_tile_X + random_find_purple_tile
		purple_tile_Y := purple_tile_Y + random_find_purple_tile
		MoveMouse(purple_tile_X, purple_tile_Y)
		MouseClick, left, %purple_tile_X%, %purple_tile_Y%
		Sleep, 7000, 7500
	}
	Return
}

mushroom_meadow_birdhouse_S() {
	CoordMode, Pixel, Window
	PixelSearch, birdhouse_S_X, birdhouse_S_Y, 769, 228, 931, 404, 0xD4D400, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_birdhouse_S, 1, 3
		birdhouse_S_X := birdhouse_S_X + random_find_birdhouse_S
		birdhouse_S_Y := birdhouse_S_Y + random_find_birdhouse_S
		MoveMouse(birdhouse_S_X, birdhouse_S_Y)
		MouseClick, left, %birdhouse_S_X%, %birdhouse_S_Y%
		Sleep, 7000
	}
	Return
}

make_birdhouse_mushroom_meadow_S() {
	open_inventory()
	CoordMode, Pixel, Window
	PixelSearch, clockwork_X, clockwork_Y, 1292, 598, 1519, 923, 0x00FFFF, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_clockwork, 1, 3
		clockwork_X := clockwork_X + random_find_clockwork
		clockwork_Y := clockwork_Y + random_find_clockwork
		MoveMouse(clockwork_X, clockwork_Y)
		MouseClick, left, %clockwork_X%, %clockwork_Y%
		Sleep, 500
	}
	PixelSearch, magic_logs_X, magic_logs_Y, 1292, 598, 1519, 923, 0x2AAA9D, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_magic_logs, 1, 3
		magic_logs_X := magic_logs_X + random_find_magic_logs
		magic_logs_Y := magic_logs_Y + random_find_magic_logs
		MoveMouse(magic_logs_X, magic_logs_Y)
		MouseClick, left, %magic_logs_X%, %magic_logs_Y%
		Sleep, 1550, 2000
	}
	PixelSearch, ground_birdhouse_X, ground_birdhouse_Y, 679, 356, 980, 602, 0x7E00E0, 0, Fast RGB
	If (ErrorLevel = 0)
	{
		Random, random_find_ground_birdhouses, 1, 3
		ground_birdhouse_X := ground_birdhouse_X + random_find_ground_birdhouse
		ground_birdhouse_Y := ground_birdhouse_Y + random_find_ground_birdhouse
		MoveMouse(ground_birdhouse_X, ground_birdhouse_Y)
		MouseClick, left, %ground_birdhouse_X%, %ground_birdhouse_Y%
		Sleep, 3000
		MouseClick, left, %ground_birdhouse_X%, %ground_birdhouse_Y%
	}
	Return
}



; RELOAD SCRIPT (DEVELOPMENT)
X::
Reload
Return
