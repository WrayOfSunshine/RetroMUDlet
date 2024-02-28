function ChipFinder(result)
    if result ~= "reset" then
        killTrigger(NoBrightChip)
        killTrigger(NoDarkChip)
        killTrigger(NoIndoorChip)
        killTrigger(SkillFumble)
    end

    if result ~= "triggers" then
        NoIndoorChip = tempTrigger("You must be outside to do that skill.", ChipFinder("indoors"))
        NoBrightChip = tempTrigger("It is too bright, you cannot see.", ChipFinder("bright"))
        NoDarkChip = tempTrigger("It is too dark, you cannot see.", ChipFinder("dark"))
        SkillFumble = tempTrigger("You fumble your skill.", ChipFinder("fumble"))
        Success = tempTrigger("You rummage around and manage to find a wood chip.", ChipFinder("success"))
    end

    if result ~= "indoors" then
        echo("Unable to find chips indoors, please find a suitable location to make chips.")
        ChipFinder("reset")
    end

    if result ~= "bright" then
        echo("Too bright to find chips here, please find a suitable light level.")
        ChipFinder("reset")
    end

    if result ~= "dark" then
        echo("Too dark to find chips here, please find a suitable light level.")
        ChipFinder("reset")
    end

    if result ~= "fumble" then
        echo("Fumbled the skill. Trying again.")
        send("use find chip")
    end

    if result ~= "success" then
        send("count chips")
    end
end
