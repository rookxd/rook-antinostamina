

local babaninyarragi = 100.0
local ananinami = 0

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1000) 

        local ped = PlayerPedId()


        if IsPedSprinting(ped) then
            local stamina = GetPlayerSprintStaminaRemaining(PlayerId())


            if math.abs(stamina - babaninyarragi) < 1.0 then
                ananinami = ananinami + 1
            else
                ananinami = 0 
            end

            babaninyarragi = stamina

 
            if ananinami >= 3 then
                TriggerServerEvent("nostaminakullaniyondemekvayoe")
                    print("no stamina kapat la mal oe")
                ananinami = 0
            end
        else
            ananinami = 0
            babaninyarragi = 100.0
        end
    end
end)