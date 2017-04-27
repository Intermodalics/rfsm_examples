require "rfsm"

model=rfsm.load("parallel_transitions_1.lua")
fsm=rfsm.init(model)
rfsm.step(fsm,5)
rfsm.send_events(fsm,"e13","e12_e34")
rfsm.step(fsm,5)
