local disk_usage_widget = {}

local wibox = require("wibox")
local gears = require("gears")

local function get_disk_usage(mount_point)
    local handle = io.popen("df -h " .. mount_point)
    local result = handle:read("*a")
    handle:close()

    local total, used, free = result:match("(%d+%.?%d*G)%s+(%d+%.?%d*G)%s+(%d+%.?%d*G)")

    return total, free
end

function disk_usage_widget.new(mount_point)
    local widget = wibox.widget {
        widget = wibox.widget.textbox,
        markup = "Disk Usage: Loading..."
    }

    local function update_disk_usage()
        local total, free = get_disk_usage(mount_point)
        widget.markup = string.format(" | Disk Usage: %s / %s | ", total, free)
    end

    local update_interval = 60 -- Update every 60 seconds

    local disk_usage_timer = gears.timer {
        timeout = update_interval,
        call_now = true,
        autostart = true,
        callback = update_disk_usage
    }

    return widget
end

return disk_usage_widget
