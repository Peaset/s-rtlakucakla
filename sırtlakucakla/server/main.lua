ESX = nil

local give = false
local usedRope = false
local isKucaklandi = false

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_barbie_lyftupp:checkRope')
AddEventHandler('esx_barbie_lyftupp:checkRope', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local ropeQuantity = xPlayer.getInventoryItem('rope').count
	
	if ropeQuantity > 0 then
		TriggerClientEvent('esx_barbie_lyftupp:trueRope', source) -- true
	else
		TriggerClientEvent('esx_barbie_lyftupp:falseRope', source) -- false
	end
end)

RegisterServerEvent('esx_barbie_lyftupp:removeRope')
AddEventHandler('esx_barbie_lyftupp:removeRope', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.removeInventoryItem('rope', 1)
	TriggerClientEvent('esx_barbie_lyftupp:trueUsedRope', source)
	
end)

RegisterServerEvent('esx_barbie_lyftupp:lyfter')
AddEventHandler('esx_barbie_lyftupp:lyfter', function(target)
	local targetPlayer = ESX.GetPlayerFromId(target)

	TriggerClientEvent('esx_barbie_lyftupp:upplyft', targetPlayer.source, source)
end)

RegisterServerEvent('esx_barbie_lyftupp:lyfteruppn')
AddEventHandler('esx_barbie_lyftupp:lyfteruppn', function(source)
	TriggerClientEvent("pNotify:SendNotification", _source, { text = "Birisi seni kucağına alıyor", type = "error", queue = "right", timeout = 10000, layout = "topRight" })

end)

TriggerEvent('esx:getSharedObject', function(obj)
	ESX = obj
end)

RegisterServerEvent('esx_omuzlama:checkRope')
AddEventHandler('esx_omuzlama:checkRope', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local ropeQuantity = xPlayer.getInventoryItem('rope').count
	
	if ropeQuantity > 0 then
		TriggerClientEvent('esx_omuzlama:trueRope', source) -- true
	else
		TriggerClientEvent('esx_omuzlama:falseRope', source) -- false
	end
end)

RegisterServerEvent('esx_omuzlama:removeRope')
AddEventHandler('esx_omuzlama:removeRope', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	
	xPlayer.removeInventoryItem('rope', 1)
	TriggerClientEvent('esx_omuzlama:trueUsedRope', source)
end)

RegisterServerEvent('esx_omuzlama:lyfter')
AddEventHandler('esx_omuzlama:lyfter', function(target)
	local targetPlayer = ESX.GetPlayerFromId(target)

	TriggerClientEvent('esx_omuzlama:upplyft', targetPlayer.source, source)
end)

RegisterServerEvent('esx_omuzlama:lyfteruppn')
AddEventHandler('esx_omuzlama:lyfteruppn', function(source)
	if isKucaklandi == false then
		TriggerClientEvent("pNotify:SendNotification", _source, { text = 'Birisi seni omzuna alıyor', type = "error", queue = "right", timeout = 5000, layout = "topRight" })

		isKucaklandi = true
	elseif isKucaklandi == true then
		TriggerClientEvent("pNotify:SendNotification", _source, { text = 'Birisi omzundan indiriyor', type = "error", queue = "right", timeout = 5000, layout = "topRight" })

		isKucaklandi = false
	end

end)
