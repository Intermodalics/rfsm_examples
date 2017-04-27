require "rfsm"
require "rfsm_emem"

model=rfsm.load("coordination/parallel_transitions_2.lua")
fsm=rfsm.init(model)

rfsm.run(fsm)
rfsm.send_events(fsm,"e13","e12_e34")
rfsm.run(fsm)
