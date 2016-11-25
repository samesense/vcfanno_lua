package.path = package.path .. ';/home/evansj/me/projects/diskin/nb_convergence/code/scripts/?.lua'
local inspect = require("inspect")
require("clinvar")
require("kaviar")

require("dbnsfp_fathm")
require("dbnsfp_mutationAssessor")
require("dbnsfp_mutationTaster")

--require("dbnsfp_lr")
--require("dbnsfp_radial")

--require("dbnsfp_mutationTaster")

function ratio(vals)
    vals = vals[1] -- get 2 values per element. ref and alt counts.
    if vals[2] == 0 then return "0.0" end
    return string.format("%.9f", vals[2] / (vals[1] + vals[2]))
end

function perry(vals)
    print("hello")
end
