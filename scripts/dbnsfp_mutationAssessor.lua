function bestAssessor(vals)
    -- High Med Low Neutral
    local Hcount = 0
    local Mcount = 0
    local Lcount = 0
    local Ncount = 0
    local otherCount = 0

    for i=1,#vals do
        if vals[i] == "H" then
	    Hcount = Hcount + 1
	elseif vals[i] == "M" then
	    Mcount = Mcount + 1
	elseif vals[i] == "L" then
	    Lcount = Lcount + 1
	elseif vals[i] == "N" then
	    Ncount = Ncount + 1
	else
	    otherCount = otherCount + 1
	    print("mutationAssesor FUCK", vals[i])
	end
    end

    if otherCount > 1 then
        print("mutationAssesor ERROR")
        i = 1/0
    end

    if Hcount > 0 then
        return "H"
    end

    if Mcount > 0 then
        return "M"
    end

    if Lcount > 0 then
        return "L"
    end

    if Ncount > 0 then
        return "N"
    end

    return "NA"
end

function mutationAssessor(vals)
    local t = type(vals)
    if t == "table" then
        return bestAssessor(vals)
    else
        print("mutationAssessor debugNOO", t)
	return vals
    end
end