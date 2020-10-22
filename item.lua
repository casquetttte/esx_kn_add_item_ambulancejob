-- -- -- Ajouter dans esx_ambulancejob/server/main.lua

ESX.RegisterUsableItem('doliprane', function(source)
	if not playersHealing[source] then
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem('doliprane', 1)

		playersHealing[source] = true
		TriggerClientEvent('esx_ambulancejob:useItem', source, 'doliprane')

		Citizen.Wait(8000)
		playersHealing[source] = nil
	end
end)

ESX.RegisterUsableItem('betadine', function(source)
	if not playersHealing[source] then
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem('betadine', 1)

		playersHealing[source] = true
		TriggerClientEvent('esx_ambulancejob:useItem', source, 'betadine')

		Citizen.Wait(9000)
		playersHealing[source] = nil
	end
end)

ESX.RegisterUsableItem('smecta', function(source)
	if not playersHealing[source] then
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem('smecta', 1)

		playersHealing[source] = true
		TriggerClientEvent('esx_ambulancejob:useItem', source, 'smecta')

		Citizen.Wait(7000)
		playersHealing[source] = nil
	end
end)

ESX.RegisterUsableItem('helicidine', function(source)
	if not playersHealing[source] then
		local xPlayer = ESX.GetPlayerFromId(source)
		xPlayer.removeInventoryItem('helicidine', 1)

		playersHealing[source] = true
		TriggerClientEvent('esx_ambulancejob:useItem', source, 'helicidine')

		Citizen.Wait(7000)
		playersHealing[source] = nil
	end
end)


-- -- -- Ajouter dans esx_ambulancejob/locales/fr.lua

-- Misc
  ['doliprane'] = 'doliprane',
  ['betadine'] = 'betadine',
  ['smecta'] = 'smecta',
  ['helicidine'] = 'helicidine',

-- Item
  ['used_doliprane'] = 'vous avez utilisé 1x doliprane',
  ['not_enough_doliprane'] = 'vous n\'avez pas de ~b~doliprane~s~.',
  ['used_betadine'] = 'vous avez utilisé 1x betadine',
  ['not_enough_betadine'] = 'vous n\'avez pas de ~b~betadine~s~.',
  ['used_smecta'] = 'vous avez utilisé 1x smecta',
  ['not_enough_smecta'] = 'vous n\'avez pas de ~b~smecta~s~.',
  ['used_helicidine'] = 'vous avez utilisé 1x helicidine',
  ['not_enough_helicidine'] = 'vous n\'avez pas de ~b~helicidine~s~.',