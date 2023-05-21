-- +-------------+
-- | USER CONFIG |
-- +-------------+

-- MODIFIERS
-- Select the modifier keys that need to be pressed together with the application key defined below
-- You can use an application like Karabiner-Elements to use a single key instead of pressing all modifier keys in combination
-- For example, you could remap the right CMD key to ALT, CTRL, SHIFT
local modifiers = {"alt", "ctrl", "shift"}
local keys = {}

-- KEY-APPLICATION TABLE
-- Configure your application keybinds here
-- The table key will be combined with the specified modifiers above to form the final keybind
keys["B"] = "com.google.Chrome"
keys["V"] = "com.microsoft.VSCode"
keys["O"] = "md.obsidian"
keys["T"] = "com.googlecode.iterm2"
keys["E"] = "com.microsoft.edgemac"
keys["D"] = "com.agiletortoise.Drafts-OSX"
keys["F"] = "com.apple.finder"
keys["M"] = "com.apple.mail"
keys["Z"] = "org.zotero.zotero"
keys["R"] = "com.microsoft.to-do-mac"
keys["P"] = "com.readdle.PDFExpert-Mac"
keys["C"] = "com.flexibits.fantastical2.mac"
keys["N"] = "net.shinyfrog.bear"


-- +-------+
-- | LOGIC |
-- +-------+

-- LAUNCH, FOCUS OR HIDE
function launchFocusOrHideApplication(bundleIdentifier)

	local frontmostApplication = hs.application.frontmostApplication()
	
	if frontmostApplication:bundleID() == bundleIdentifier then
		frontmostApplication:hide()
	else
		hs.application.launchOrFocusByBundleID(bundleIdentifier)
	end

end

-- +----------------+
-- | INITIALIZATION |
-- +----------------+

-- BINDING HOTKEYS
for key, bundleIdentifier in pairs(keys) do
	hs.hotkey.bind(modifiers, key, function()
    	launchFocusOrHideApplication(bundleIdentifier)
	end)
end