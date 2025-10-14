if SAM_LOADED then return end

local sam = sam

CAMI.RegisterPrivilege({
	Name = "spraymesh.use",
	MinAccess = "admin",
	Description = "Allows players to use SprayMesh"
})

hook.Add("SprayMesh.ShouldAllowSpray", "SAM.SprayMesh", function(ply)
	local acc = false
	
	CAMI.PlayerHasAccess(ply, "spraymesh.use", function(a)
		acc = a
	end)
	
	if not acc then return false end
end)

sam.permissions.add("spraymesh.use", "admin")