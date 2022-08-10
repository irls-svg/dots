#!/bin/zsh

SOURCE="$(InputSourceSelector current | grep -o '^\S*')"
#echo "${SOURCE}"

case ${SOURCE} in
'com.apple.keylayout.Australian') LABEL='en' ;;
'com.apple.keylayout.Dvorak') LABEL='dv' ;;
'com.apple.keylayout.US') LABEL='us' ;;
'com.apple.keylayout.British-PC') LABEL='uk' ;;
'com.apple.keylayout.Italian-Pro') LABEL='it' ;;
'com.apple.keylayout.Hebrew') LABEL='he' ;;
'com.apple.inputmethod.Kotoeri.RomajiTyping.Japanese') LABEL='あ' ;;
'com.apple.inputmethod.Kotoeri.RomajiTyping.Japanese.Katakana') LABEL='ア' ;;
'com.apple.50onPaletteIM') LABEL='カナ' ;;
'com.apple.inputmethod.Korean') LABEL='한' ;;
'com.apple.inputmethod.Korean.2SetKorean') LABEL='한' ;;
'com.apple.inputmethod.SCIM') LABEL='拼' ;;
'com.apple.inputmethod.SCIM.ITABC') LABEL='拼' ;;
'com.apple.keylayout.PinyinKeyboard') LABEL='拼' ;;
'com.apple.CharacterPaletteIM') LABEL='􀎸'
esac

sketchybar --set $NAME label="$LABEL"
