local application = require "mjolnir.application"
local hotkey = require "mjolnir.hotkey"
local window = require "mjolnir.window"
local fnutils = require "mjolnir.fnutils"

hotkey.bind({"alt"}, "1", function()
    local win = window.focusedwindow()
    local f = win:frame()
    local max = win:screen():frame()
    f.x = 0
    f.y = 0
    f.w = max.w/2
    f.h = max.h/2
    win:setframe(f)
end)

hotkey.bind({"alt"}, "2", function()
    local win = window.focusedwindow()
    local f = win:frame()
    local max = win:screen():frame()
    f.x = max.w/2
    f.y = 0
    f.w = max.w/2
    f.h = max.h/2
    win:setframe(f)
end)

hotkey.bind({"alt"}, "3", function()
    local win = window.focusedwindow()
    local f = win:frame()
    local max = win:screen():frame()
    f.x = 0
    f.y = max.h/2
    f.w = max.w/2
    f.h = max.h/2
    win:setframe(f)
end)

hotkey.bind({"alt"}, "4", function()
    local win = window.focusedwindow()
    local f = win:frame()
    local max = win:screen():frame()
    f.x = max.w/2
    f.y = max.h/2
    f.w = max.w/2
    f.h = max.h/2
    win:setframe(f)
end)
