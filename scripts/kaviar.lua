package.path = package.path .. ';/home/evansj/me/projects/diskin/nb_convergence/code/scripts/?.lua'
require("common")

-- Print contents of `tbl`, with indentation.
-- `indent` sets the initial level of indentation.
function tprint (tbl, indent)
  if not indent then indent = 0 end
  for k, v in pairs(tbl) do
    formatting = string.rep("  ", indent) .. k .. ": "
    if type(v) == "table" then
      print(formatting)
      tprint(v, indent+1)
    elseif type(v) == 'boolean' then
      print(formatting .. tostring(v))      
    else
      print(formatting .. v)
    end
  end
end

function is_complete_genomics(s)
    local st = string.sub(s, 1, 2)
    return  st == "NA" or st == "GS" or string.find(s, "Wellderly") ~= null or string.find(s, "ISB_founders-Nge3") ~= null or string.find(s, "Inova_CGI") ~= null
end

function eval_kaviar_table(valTable)
    local isCg = 0
    local isNotCg = 0

    for i=1,#valTable do
       vt = valTable[i]
       if type(vt) == "table" then
           for j=1,#vt do
	       if contains(vt[j], "|") then
	           aa = split(vt[j], "|")
	        else
	            aa = {vt[j]}
	        end
		for k=1,#aa do
		   --print("start")
	           if is_complete_genomics(aa[k]) then
	               isCg = isCg + 1
                   else
                       isNotCg = isNotCg + 1
                   end
                 end
	     end
       elseif type(valTable[i]) == "string" then
           if contains(valTable[i], "|") then
	       aa = split(valTable[i], "|")
	   else
	       aa = {valTable[i]}
	   end
	   for k=1,#aa do
               if is_complete_genomics(aa[k]) then
	       	  isCg = isCg + 1
               else
                  isNotCg = isNotCg + 1
               end
           end
       end
    end
    if (isCg > 0 and isNotCg == 0) then
        return 1
    end
    return 0
end

function kaviar_only_has_complete_genomics(vals)
    if type(vals) == "table" then
        return eval_kaviar_table(vals)
    else
        print("not table ERROR")
	print(valTable)
    end
end