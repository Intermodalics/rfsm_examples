require "rfsm"

-- Load the desired rfsm model.
model=rfsm.load("coordination/parallel_transitions_1.lua")
-- Initialize the rfsm model.
fsm=rfsm.init(model)

-- Use the rfsm.
-- Run the rfsm to let it handle the events and the transitions.
rfsm.run(fsm)
-- Send new events to the rfsm.
rfsm.send_events(fsm,"e13","e12_e34")
rfsm.run(fsm)
