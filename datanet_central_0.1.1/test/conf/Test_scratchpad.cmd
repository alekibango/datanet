[
  {"comment" : "START: SCRATCHPAD TEST A"},

  {"client" : "two", "command" : "isolation", "args" : [false]},
  {"client" : "one", "command" : "isolation", "args" : [false]},
  {"client" : "two", "command" : "delta_reaper", "args" : [true]},


  {"client" : "one", "command" : "second_timer", "args" : [true]},
  {"client" : "two", "command" : "second_timer", "args" : [true]},

  {"client" : "one", "command" : "cond_signal", "args" : ["W", "x", "=", 1]},
  {"file" : "./test/conf/Create_ONE_Document_W_V1.cmd"},
  {"client" : "one", "command" : "cond_wait", "args" : ["W"]},

  {"client" : "two", "command" : "sleep", "args" : ["3000"]},

  {"client" : "two", "command" : "delta_reaper", "args" : [false]},
  {"client" : "one", "command" : "isolation", "args" : [true]},
  {"client" : "two", "command" : "isolation", "args" : [true]},
  {"file" : "./test/conf/Create_TWO_Document_W_V2.cmd"},
  {"client" : "two", "command" : "remove", "args" : ["W"]},
  {"file" : "./test/conf/Create_ONE_Document_W_V1.cmd"},
  {"client" : "two", "command" : "isolation", "args" : [false]},
  {"client" : "one", "command" : "isolation", "args" : [false]},


  {"client" : "two", "command" : "sleep", "args" : ["3000"]},
  {"client" : "one", "command" : "second_timer", "args" : [false]},
  {"client" : "two", "command" : "second_timer", "args" : [false]},
  {"client" : "two", "command" : "delta_reaper", "args" : [true]},

  {"comment" : "FINISH: SCRATCHPAD TEST A"}

]
