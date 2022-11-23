function fix_mouse --wraps='yabai -m config focus_follows_mouse autofocus' --description 'alias fix_mouse yabai -m config focus_follows_mouse autofocus'
  yabai -m config focus_follows_mouse autofocus $argv; 
end
