local pass 

function lockpick()
    Wait(100)
    openui()
    while pass == nil do
        Citizen.Wait(0)
        local ped = PlayerPedId()  
        local anim = "mini_games@story@mud5@cracksafe_look_at_dial@med_r@ped"
        local idle = "base_idle"
        local lr = "left_to_right"
        RequestAnimDict(anim)
        while not HasAnimDictLoaded(anim) do
            Citizen.Wait(50)
        end
        TaskPlayAnim(PlayerPedId(), anim, idle, 8.0, -8.0, 100, 32, 0, false, false, false)
        TaskPlayAnim(PlayerPedId(), anim, lr, 8.0, -8.0, -1, 32, 0, false, false, false)
    end

    if pass == true then
        closeui()
        pass = nil 
        return true 
    elseif pass == false then 
        closeui()
        pass = nil 
        return false
    end 
   
end

function openui()
    SetNuiFocus(true,true)
    SendNUIMessage({
        action = "ui",
        toggle = true
    })
end

function closeui()
    SetNuiFocus(false,false)
    SendNUIMessage({
        action = "ui",
        toggle = false
    })
end

RegisterNUICallback('callback', function(data)
    pass = data.success
    
end)
