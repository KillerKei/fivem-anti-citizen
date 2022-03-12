local weapons = {
    GetHashKey('COMPONENT_COMBATPISTOL_CLIP_01'),
    GetHashKey('COMPONENT_COMBATPISTOL_CLIP_02'),
    GetHashKey('COMPONENT_APPISTOL_CLIP_01'),
    GetHashKey('COMPONENT_APPISTOL_CLIP_02'),
    GetHashKey('COMPONENT_MICROSMG_CLIP_01'),
    GetHashKey('COMPONENT_MICROSMG_CLIP_02'),
    GetHashKey('COMPONENT_SMG_CLIP_01'),
    GetHashKey('COMPONENT_SMG_CLIP_02'),
    GetHashKey('COMPONENT_ASSAULTRIFLE_CLIP_01'),
    GetHashKey('COMPONENT_ASSAULTRIFLE_CLIP_02'),
    GetHashKey('COMPONENT_CARBINERIFLE_CLIP_01'),
    GetHashKey('COMPONENT_CARBINERIFLE_CLIP_02'),
    GetHashKey('COMPONENT_ADVANCEDRIFLE_CLIP_01'),
    GetHashKey('COMPONENT_ADVANCEDRIFLE_CLIP_02'),
    GetHashKey('COMPONENT_MG_CLIP_01'),
    GetHashKey('COMPONENT_MG_CLIP_02'),
    GetHashKey('COMPONENT_COMBATMG_CLIP_01'),
    GetHashKey('COMPONENT_COMBATMG_CLIP_02'),
    GetHashKey('COMPONENT_PUMPSHOTGUN_CLIP_01'),
    GetHashKey('COMPONENT_SAWNOFFSHOTGUN_CLIP_01'),
    GetHashKey('COMPONENT_ASSAULTSHOTGUN_CLIP_01'),
    GetHashKey('COMPONENT_ASSAULTSHOTGUN_CLIP_02'),
    GetHashKey('COMPONENT_PISTOL50_CLIP_01'),
    GetHashKey('COMPONENT_PISTOL50_CLIP_02'),
    GetHashKey('COMPONENT_ASSAULTSMG_CLIP_01'),
    GetHashKey('COMPONENT_ASSAULTSMG_CLIP_02'),
    GetHashKey('COMPONENT_AT_RAILCOVER_01'),
    GetHashKey('COMPONENT_AT_AR_AFGRIP'),
    GetHashKey('COMPONENT_AT_PI_FLSH'),
    GetHashKey('COMPONENT_AT_AR_FLSH'),
    GetHashKey('COMPONENT_AT_SCOPE_MACRO'),
    GetHashKey('COMPONENT_AT_SCOPE_SMALL'),
    GetHashKey('COMPONENT_AT_SCOPE_MEDIUM'),
    GetHashKey('COMPONENT_AT_SCOPE_LARGE'),
    GetHashKey('COMPONENT_AT_SCOPE_MAX'),
    GetHashKey('COMPONENT_AT_PI_SUPP'),
}

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(10000)
        for i = 1, #weapons do
            local dmg_mod = GetWeaponComponentDamageModifier(weapons[i])
            local accuracy_mod = GetWeaponComponentAccuracyModifier(weapons[i])
            if dmg_mod > 1.1 or accuracy_mod > 1.2 then
                TriggerServerEvent('infinite-anticheat:funTime', dmg_mod, accuracy_mod)
            end
        end
    end
end)