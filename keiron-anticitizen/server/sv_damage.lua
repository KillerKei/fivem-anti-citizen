RegisterServerEvent('infinite-anticheat:funTime', function(dmg, acc)
    local src = source
    local reason = 'Citizen Modifications | Damage: ' .. dmg .. ' | Accuracy ' .. acc
    DropPlayer(src, reason)
--     TriggerClientEvent('infinite-anticheat:receivedBan', src, {reason = "Damage - " .. dmg .. " Accuracy - " .. acc, trigger = "Citizen Freak"})
end)    
