function bestFathm(vals)
    local Dcount = 0
    local Tcount = 0
    local dotCount = 0
    local otherCount = 0
    for i=1,#vals do
        if vals[i] == "D" then
	    Dcount = Dcount + 1
	elseif vals[i] == "T" then
	    Tcount = Tcount + 1
	elseif vals[i] == "." then
	    dotCount = dotCount + 1
	else
	    otherCount = otherCount + 1
	end
    end

    if otherCount > 1 then
        print("fathm SHIT")
        i = 1/0
    end

    if Dcount > 0 then
        return "D"
    end

    if Tcount > 0 then
        return "T"
    end

    return "NA"
end

function fathm(vals)
    local t = type(vals)
    if t == "table" then
        return bestFathm(vals)
    else
        print("debugNOO", t)
	return vals
    end
end