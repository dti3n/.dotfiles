local wibox = require "wibox"
local gears = require "gears"
local awful = require "awful"

local mem_widget = wibox.widget {
    {
        id = "text",
        text = "Mem: 0",
        widget = wibox.widget.textbox,
    },
    widget = wibox.container.margin,
    margins = 5,
}

local function update_mem_usage(widget)
    local cmd = "free -m | awk '/Mem:/ {printf(\"%.1f%%\", $3/$2 * 100)}'"
    awful.spawn.easy_async_with_shell(cmd, function(stdout)
        widget.text = "MEM: " .. stdout
    end)
end

gears.timer {
    call_now = true,
    timeout = 10,
    autostart = true,
    callback = function()
        update_mem_usage(mem_widget:get_children_by_id("text")[1])
    end,
}

return mem_widget
