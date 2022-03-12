RegisterServerEvent('infinite-anticheat:funTime', function(dmg, acc)
    local src = source
    TriggerClientEvent('infinite-anticheat:receivedBan', src, {reason = "Damage - " .. dmg .. " Accuracy - " .. acc, trigger = "Citizen Freak"})
end)    