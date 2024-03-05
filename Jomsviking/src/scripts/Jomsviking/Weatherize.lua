function Weatherize(item)
    if not IsEmpty(item) then
        Weatherize_Target = item
    end

    if IsEmpty(Weatherize_Target) then
        echo("You must set a weatherize target before starting.")
    end

    send("use weatherize at max 1 all " .. Weatherize_Target .. " except all weatherized")
end
