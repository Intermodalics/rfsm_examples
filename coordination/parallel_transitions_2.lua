require "utils"
require "rttros"


return rfsm.state {
state1 = rfsm.state{ entry=function() print("state1") end },
state2 = rfsm.state{ entry=function() print("state2") end },
state3 = rfsm.state{ entry=function() print("state3") end },
state4 = rfsm.state{ entry=function() print("state4") end },
state5 = rfsm.state{ entry=function() print("state5") end },

rfsm.trans { src="initial", tgt="state1" },
rfsm.trans { src="state5", tgt="state1", events={ "e_start"} },
-- rfsm.trans { src="state1", tgt="state2", events={ "e12_e34"} },
rfsm.trans { src="state1", tgt="state3", events={ "e13"} },
rfsm.trans { src="state3", tgt="state4", events={ "e12_e34"} },
rfsm.trans { src="state3", tgt="state5", events={ "e_35"} },
rfsm.trans { src="state2", tgt="state4", events={ "e24"} },
rfsm.trans { src="state4", tgt="state5", events={ "e_done"} },
}
