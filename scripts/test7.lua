require "rfsm"

model=rfsm.load("coordination/check_doo_function.lua")
fsm=rfsm.init(model)

rfsm.run(fsm)
rfsm.send_events(fsm,"e12")
rfsm.step(fsm)
rfsm.send_events(fsm,"e23")
rfsm.step(fsm)
