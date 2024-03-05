function RuneMaker(count)
    if (count ~= "runes") then
        if IsEmpty(RuneType) then
            RuneType = 1
        end
        local rune_type =
        {
            [1] = 'ansuz',
            [2] = 'berkano',
            [3] = 'dagaz',
            [4] = 'ehwaz',
            [5] = 'elhaz',
            [6] = 'fehu',
            [7] = 'gebo',
            [8] = 'hagalaz',
            [9] = 'ihwaz',
            [10] = 'ingwaz',
            [11] = 'isa',
            [12] = 'jera',
            [13] = 'kenaz',
            [14] = 'laguz',
            [15] = 'mannaz',
            [16] = 'nauthiz',
            [17] = 'othala',
            [18] = 'perthro',
            [19] = 'raidho',
            [20] = 'sowilo',
            [21] = 'thurisaz',
            [22] = 'tiwaz',
            [23] = 'uruz',
            [24] = 'wunjo',
        }
        MakeARune(rune_type[RuneType])
    else
        if IsEmpty(count) then
            Rune_Count = 1
            echo("Starting RuneMaker Process...")
            echo("Checking for chips...")
            send("count chip")
        end
        if count == -1 then
            echo("No chips found...")
            echo("Attempting to find chips. We need 24 for a full set of runes.")
            ChipFinder('triggers')
            FindChip()
        end
        if (count > 0) and (count < 24) then
            -- echo("Chips found: " .. count .. ". We need " .. 24-count .. " more chips.")
            ChipFinder('triggers')
            FindChip()
        end
        if (count >= 24) then
            RuneMaker("runes")
        end
    end
end

function MakeARune(rune)
    if RuneType <= 24 then
        send("use carve aett at " .. rune)
    else
        echo("All runes created.")
        Rune_Count = nil
        RuneType = nil
    end
end
