require "utils"
require "rttros"


return rfsm.state {
  state1 = rfsm.state{
    entry=function() print("state1") end,
    doo=function() print("doo function state1") end
  },
  state2 = rfsm.state{
    entry=function() print("state2") end,
    doo=function() print("doo function state2") end
  },
  state3 = rfsm.state{
    entry=function() print("state3") end,
    doo=function() print("doo function state3") end
  },

  rfsm.trans { src="initial", tgt="state1" },
  rfsm.trans { src="state1", tgt="state2", events={ "e12"} },
  rfsm.trans { src="state1", tgt="state3", events={ "e13"} },
  rfsm.trans { src="state2", tgt="state3", events={ "e23"} },
  rfsm.trans { src="state3", tgt="state1", events={ "e_done"} },
}
