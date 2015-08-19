function flash_keyboard
	set board_config_dir $XDG_CONFIG_HOME/$argv[1]
    set tmk_dir /usr/local/opt/tmk_keyboard/keyboard/$argv[1]

    pushd $tmk_dir

    ln -s $board_config_dir/matrix.c tmp_matrix.c
    ln -s $board_config_dir/keymap.c extended_keymaps/extended_keymap_tmp.c

    make clean
    make MATRIX=tmp_matrix.c KEYMAP=tmp

    teensy_loader_cli -w -mmcu=atmega32u4 -v planck_lufa.hex

    rm tmp_matrix.c
    rm extended_keymaps/extended_keymap_tmp.c

    popd
end
