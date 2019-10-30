hs.hotkey.bind({"cmd", "alt", "ctrl"}, "W", function()
  hs.alert.show("Hello World!")
end)

-- Auto-reload on changes in the default config dir ~/.hammerspoon
hs.loadSpoon("ReloadConfiguration")
spoon.ReloadConfiguration:start()

-- Reload config on keycombp
hs.hotkey.bind({"cmd", "alt", "ctrl"}, "R", function()
  hs.reload()
end)
hs.alert.show("Config loaded")

-- Defeat paste blocking by typing the contents of the clipboard into the active window
hs.hotkey.bind({"cmd", "alt"}, "V", function() hs.eventtap.keyStrokes(hs.pasteboard.getContents()) end)