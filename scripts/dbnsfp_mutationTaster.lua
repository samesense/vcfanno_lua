function bestTaster(vals)
    -- AutomataicDisease Disease PolymorphismAuto N-polymorphism
    local Acount = 0
    local Dcount = 0
    local Pcount = 0
    local Ncount = 0
    local otherCount = 0

    for i=1,#vals do
        if vals[i] == "A" then
	    Acount = Acount + 1
	elseif vals[i] == "D" then
	    Dcount = Dcount + 1
	elseif vals[i] == "P" then
	    Pcount = Pcount + 1
	elseif vals[i] == "N" then
	    Ncount = Ncount + 1
	else
	    otherCount = otherCount + 1
	end
    end

    if otherCount > 1 then
        --print("mutationTaster ERROR")
        --i = 1/0
        return "X"        
    end

    if Acount > 0 then
        return "A"
    end

    if Dcount > 0 then
        return "D"
    end

    if Pcount > 0 then
        return "P"
    end

    if Ncount > 0 then
        return "N"
    end

    return "NA"
end

function mutationTaster(vals)
    local t = type(vals)
    if t == "table" then
        return bestTaster(vals)
    else
        print("mutationTaster debugNOO", t)
	return vals
    end
end