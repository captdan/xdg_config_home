#include "extended_keymap_common.h"

const uint16_t PROGMEM keymaps[][MATRIX_ROWS][MATRIX_COLS] = {
[0] = { /* Workman */
  {KC_TAB,  KC_Q,    KC_D,    KC_R,    KC_W,    KC_B,    KC_J,    KC_F,    KC_U,    KC_P,    KC_SCLN,   KC_BSPC},
  {KC_ESC,  KC_A,    KC_S,    KC_H,    KC_T,    KC_G,    KC_Y,    KC_N,    KC_E,    KC_O,    KC_I,  KC_ENT},
  {KC_LSFT, KC_Z,    KC_X,    KC_M,    KC_C,    KC_V,    KC_K,    KC_L,    KC_COMM, KC_DOT,  KC_SLSH, KC_QUOT},
  {FUNC(3), KC_LCTL, KC_LALT, KC_LGUI, FUNC(1),    KC_SPC,   KC_SPC,    FUNC(2),   KC_RGUI, KC_RALT, KC_RCTL,  KC_RSFT}
                                                // Space is repeated to accommadate for both spacebar wiring positions
},
[2] = { /* LOWER */
  {KC_GRV,  KC_1,    KC_2,    KC_3,    KC_4,    KC_5,    KC_6,    KC_7,    KC_8,    KC_9,    KC_0,    KC_BSLS},
  {KC_TRNS, KC_TRNS, KC_MPRV, KC_MPLY, KC_MNXT, KC_VOLD, KC_VOLU, KC_MINS, KC_EQL,  KC_LBRC, KC_RBRC, KC_TRNS},
  {KC_TRNS, KC_F1,   KC_F2,   KC_F3,   KC_F4,   KC_F5,   KC_F6,   KC_F7,   KC_F8,   KC_F9,   KC_F10,  KC_TRNS},
  {KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,    KC_TRNS,   KC_TRNS,  FUNC(1),   KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS}
},
[3] = { /* RAISE */
  {S(KC_GRV),  S(KC_1),    S(KC_2),    S(KC_3),    S(KC_4),    S(KC_5),    S(KC_6),    S(KC_7),    S(KC_8),    S(KC_9),    S(KC_0), S(KC_BSLS)},
  {KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, S(KC_MINS), S(KC_EQL),  S(KC_LBRC), S(KC_RBRC), KC_TRNS},
  {KC_TRNS, KC_F11,  KC_F12,  KC_F13,  KC_F14,  KC_F15,  KC_F16,  KC_F17,  KC_F18,  KC_F19,  KC_F20, KC_TRNS},
  {KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, FUNC(2),   KC_TRNS,   KC_TRNS,   KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS}
},
[4] = { /* ARROWS */
  {KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS, KC_TRNS, KC_TRNS},
  {KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_LEFT, KC_DOWN,  KC_UP, KC_RGHT,  KC_TRNS},
  {KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS, KC_TRNS, KC_TRNS},
  {KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS, KC_TRNS,  KC_TRNS, KC_TRNS, KC_TRNS}
}
};

const uint16_t PROGMEM fn_actions[] = {
    [1] = ACTION_LAYER_TAP_TOGGLE(2), // LOWER
    [2] = ACTION_LAYER_TAP_TOGGLE(3), // RAISE
    [3] = ACTION_LAYER_MOMENTARY(4) // ARROWS

};

const macro_t *action_get_macro(keyrecord_t *record, uint8_t id, uint8_t opt) 
{
  // MACRODOWN only works in this function
    switch(id) {
      case 0:
        return MACRODOWN(T(CM_T), END);
      break;
    } 
    return MACRO_NONE;
};
