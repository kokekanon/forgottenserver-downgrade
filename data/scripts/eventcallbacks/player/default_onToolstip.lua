local init = {
	opcode = 57,
	MAX_PACKET_SIZE = 5088
}

local event = Event()

event.onToolsTips = function(player,item)

player:sendJSON("new", {
    uid = ItemType(item):getId(),
    itemName = ItemType(item):getName(),
    desc = "0",
    clientId = ItemType(item):getId(),
    itemLevel = 1,
    imp = "0",
    unidentified = "0",
    mirrored = "0",
    uLevel = 11,
    uniqueName = "0",
    rarityId = 1,
    reqLvl = 111,
    attr = "111",
    stackable = true,
    itemType = 3,
    weight = 111,
})
end

event:register()



function Player.sendJSON(self, action, data, forceStatus)

    local buffer = json.encode({
        action = action,
        data = data,
        status = forceStatus
    })
    local s = {}
    for i = 1, #buffer, init.MAX_PACKET_SIZE do
        s[#s + 1] = buffer:sub(i, i + init.MAX_PACKET_SIZE - 1)
    end
    local msg = NetworkMessage()
    if #s == 1 then

        msg:addByte(init.opcode)
        msg:addString(s[1])
        msg:sendToPlayer(self)
        return
    end
    -- split message if too big

    msg:addByte(init.opcode)
    msg:addString("S" .. s[1])
    msg:sendToPlayer(self)
    for i = 2, #s - 1 do
        msg = NetworkMessage()

        msg:addByte(init.opcode)
        msg:addString("P" .. s[i])
        msg:sendToPlayer(self)
    end
    msg = NetworkMessage()

    msg:addByte(init.opcode)
    msg:addString("E" .. s[#s])
    msg:sendToPlayer(self)
end