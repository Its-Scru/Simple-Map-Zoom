--[[ For support please join our discord: https://discord.gg/FAduBsz3H3 ]]

local zoomed = false
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if zoomed then
            SetRadarZoomToDistance(500.0)
        end
    end
end)
RegisterCommand("+zoom", function()
    zoomed = true
end, false)
RegisterCommand("-zoom", function()
    zoomed = false
end, false)
RegisterKeyMapping("+zoom", "zoom on minmap", "keyboard", "g")
