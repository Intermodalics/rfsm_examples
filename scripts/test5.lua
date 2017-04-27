require "rfsm"
require "rfsm_emem"

model=rfsm.load("coordination/parallel_transitions_with_priorities.lua")
fsm=rfsm.init(model)
rfsm.step(fsm,5)
rfsm.send_events(fsm,"e12_e34","e13_e24")
rfsm.step(fsm,5)
