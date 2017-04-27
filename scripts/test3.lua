require "rfsm"
require "rfsm_emem"

model=rfsm.load("coordination/parallel_transitions_1.lua")
fsm=rfsm.init(model)
rfsm.step(fsm,5)
rfsm.send_events(fsm,"e13","e12_e34")
rfsm.step(fsm,5)
