function Weatherize(item)
    if not IsEmpty(item) then
        Weatherize_Target = item
        Weatherize_Count = 1
    end

    if IsEmpty(Weatherize_Target) then
        echo("You must set a weatherize target before starting.")
    end

    send("use weatherize at " .. Weatherize_Target .. " " .. Weatherize_Count)
end
