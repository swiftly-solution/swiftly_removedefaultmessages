events:on("OnClientGameMessage", function(playerid, destination, message)
    local ReadConfigGameMessages = config:FetchArraySize("removemessages.GameMessages")
    
    for i = 1, ReadConfigGameMessages do 
        local DefaultGameMessages = config:Fetch("removemessages.GameMessages[" .. tostring(i - 1) .. "]")
    
        if message == DefaultGameMessages then
            return false
        end
    end

    return true
end)

function GetPluginAuthor()
    return "Swiftly Solution"
end
function GetPluginVersion()
    return "v1.0.0"
end
function GetPluginName()
    return "Swiftly Remove Default Messages"
end
function GetPluginWebsite()
    return "https://github.com/swiftly-solution/swiftly_removedefaultmessages"
end