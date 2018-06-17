AddEventHandler('chatMessage', function(player, playerName, message)
	local message = string.lower(message)
	local args = stringsplit(message, " ");
	if message == "/board" then
	elseif args[2] == 'open' then
		TriggerClientEvent('Trunk', player)
		CancelEvent()
	elseif args[2] == 'close' then
		TriggerClientEvent('TrunkClose', player)
		CancelEvent()
	end
end)

function stringsplit(self, delimiter)
	local a = self:Split(delimiter)
	local t = {}
	
	for i = 0, #a - 1 do
		table.insert(t, a[i])
	end
	
	return t
end