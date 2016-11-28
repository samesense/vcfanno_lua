package.path = package.path .. ';/home/evansj/me/projects/me/vcfanno_lua/scripts/?.lua'
local inspect = require("inspect")
require("clinvar")
require("kaviar")
require("eff")

require("dbnsfp_fathm")
require("dbnsfp_mutationAssessor")
require("dbnsfp_mutationTaster")

function ratio(vals)
    vals = vals[1] -- get 2 values per element. ref and alt counts.
    if vals[2] == 0 then return "0.0" end
    return string.format("%.9f", vals[2] / (vals[1] + vals[2]))
end