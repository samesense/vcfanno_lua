-- flag variants that are indels at splice sites
-- some are lost b/c they are also missense

function eval_eff_table(valTable)
    for i=1,#valTable do
        if contains(valTable[i], ',') then
	    effs = split(valTable[i], ",")
	else
	    effs = {valTable[i]}
	end
	for j=1,#effs do
	    if contains(effs[j], 'splice') and ( contains(effs[j], 'ins') or contains(effs[j], 'del') ) then
	        return 1
	    end
	end
    end
    return 0
end

function eff_indel_splice(vals)
    if type(vals) == "table" then
        return eval_eff_table(vals)
    else
        return eval_eff_table({vals})
    end
end