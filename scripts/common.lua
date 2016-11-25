function intotbl(ud)
    local tbl = {}
    for i=1,#ud do
        tbl[i] = ud[i]
    end
    return tbl
end

function contains(str, tok)
    return string.find(str, tok) ~= nil
end

function split(str, sep)
        local sep, fields = sep or ":", {}
        local pattern = string.format("([^%s]+)", sep)
        str:gsub(pattern, function(c) fields[#fields+1] = c end)
        return fields
end