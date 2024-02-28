function FeatherWeight(item)
    if not IsEmpty(item) then
        Featherweight_Target = item
        Featherweight_Count = 1
    end

    send("cast feather weight at " .. Featherweight_Target .. " " .. Featherweight_Count)
end
