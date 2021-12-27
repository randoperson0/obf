-- This Script is Part of the Prometheus Obfuscator by Levno_710
--
-- Vmify.lua
--
-- This Script provides a Complex Obfuscation Step that will compile the entire Script to  a fully coustom bytecode that does not share it's instructions
-- with lua, making it much harder to crack than other lua obfuscators

local Step = require("obfuscator.step");
local SecureCompiler = require("obfuscator.compiler_secure.compiler");

local Vmify = Step:extend();
Vmify.Description = "This Step will Compile your script into a fully-coustom (not a half coustom like other lua obfuscators) Bytecode Format and emit an vm for executing it.";
Vmify.Name = "Vmify";

Vmify.SettingsDescriptor = {
	
}

function Vmify:init(settings)
	
end

function Vmify:apply(ast)
    -- Create Compiler
	local compiler = SecureCompiler:new();
    -- Compile the Script into a bytecode vm
    return compiler:compile(ast);
end

return Vmify;