-- Workspace rules wiki https://wiki.hypr.land/Configuring/Basics/Workspace-Rules/
-- Add your workspace rules here. Example below
-- hl.workspace_rule({ workspace = "1", monitor = "DP-1", default = true, persistent = true })

for i = 1, 9 do
    hl.workspace_rule({ workspace = tostring(i), monitor = "HDMI-A-1", default = (i == 1), persistent = (i <= 4) })
end

hl.workspace_rule({ workspace = "10", monitor = "DP-1"})
