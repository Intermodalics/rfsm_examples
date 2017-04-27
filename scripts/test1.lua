require "rfsm"

model=rfsm.load("coordination/parallel_transitions_1.lua")
fsm=rfsm.init(model)

rfsm.run(fsm)
rfsm.send_events(fsm,"e13","e12_e34")
rfsm.run(fsm)
