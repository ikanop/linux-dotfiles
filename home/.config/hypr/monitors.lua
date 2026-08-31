local vars = require("vars")

hl.monitor({
	output = vars.monitor1,
	mode = "2560x1440@164.84",
	position = "1920x0",
	scale = "1",
})

hl.monitor({
	output = vars.monitor2,
	mode = "1920x1080@180.00",
	position = "0x0",
	scale = "1",
})

hl.workspace_rule({ workspace = "1", monitor = vars.monitor1 })
hl.workspace_rule({ workspace = "2", monitor = vars.monitor2 })
hl.workspace_rule({ workspace = "3", monitor = vars.monitor2 })
hl.workspace_rule({ workspace = "4", monitor = vars.monitor1 })
hl.workspace_rule({ workspace = "5", monitor = vars.monitor2 })
