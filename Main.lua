--// BRNL - Bear Alpha
--// Version: 3.0.0
--// Obfuscated

local _h = game:GetService("Players")
local _n = game:GetService("UserInputService")
local _m = game:GetService("TweenService")
local _j = game:GetService("RunService")
local _d = game:GetService("Lighting")
local _o = game:GetService("Workspace")
local _l = game:GetService("TextChatService")
local _i = game:GetService("ReplicatedStorage")
local _e = _h.LocalPlayer
local _g = _e:WaitForChild("PlayerGui")
local _c = "BRNL_Clean_Objectives"
local _b = 16
local _a = "syrup on top"
local _we = _g:FindFirstChild(_c)
if _we then
	_we:Destroy()
end
local _Uf = {
	SpeedMode = true,
	SpeedValue = 30,
	SpeedMethodIndex = 1,
	KeepSpeedAfterRespawn = true,
	FlyEnabled = false,
	FlySpeed = 70,
	FlyNoclip = false,
	FlyFollow = false,
	FlyFollowDistance = 7,
	FlyOrbit = false,
	FlyOrbitRadius = 9,
	FlyOrbitHeight = 3,
	FlyOrbitSpeed = 4,
	EnemyESP = false,
	EnemyTags = true,
	EnemyBoxes = true,
	EnemyHighlight = false,
	ESPThroughWalls = true,
	MaxESPDistance = 1200,
	ObjectiveESP = false,
	ObjectiveTags = true,
	ObjectiveAutoFarm = false,
	ObjectiveMaxDistance = 2500,
	ObjectiveFarmDelay = 40,
	AutoToxic = false,
	AutoToxicKillRange = 55,
	FovEnabled = false,
	FovValue = 80,
	BrightVision = false,
	NoFog = false,
	LowEffects = false,
	Watermark = true,
	UIScale = 100,
}
local _Qd = Enum.KeyCode.RightShift
local _dg = Enum.KeyCode.Z
local _Ff = "Movement"
local _ah = nil
local _Rd = true
local _fg = false
local _bf = 0
local _k = {"WalkSpeed", "CFrame", "LinearVelocity"}
local _bg = nil
local _eg = nil
local _wc = nil
local _Cc = nil
local _xc = {}
local _Bc = nil
local _zc = 0
local _pc = {}
local _ge = {}
local _he = {}
local _je = false
local _Cd = 0
local _Bd = 0
local _Ad = 0
local _Dd = 0
local _cc = {}
local _Kg = {}
local _zd = 0
local _Ed = _e.Team and _e.Team.Name or nil
local _cg = nil
local _vf = nil
local _Be = {
	Brightness = _d.Brightness,
	Ambient = _d.Ambient,
	OutdoorAmbient = _d.OutdoorAmbient,
	ClockTime = _d.ClockTime,
	FogStart = _d.FogStart,
	FogEnd = _d.FogEnd,
}
local _Ae = _o.CurrentCamera and _o.CurrentCamera.FieldOfView or 70
local _f = {
	"cheese", "cheeze", "burger", "hamburger", "food", "plate", "dish",
	"tube", "pipe", "color", "colour", "puzzle", "button", "lever", "switch",
	"valve", "fuse", "key", "battery", "generator", "gen", "wire",
	"objective", "task", "quest", "exit", "door", "code", "pad", "terminal", "computer",
}
local function _Od(_tb, _Xe)
	local _de = Instance.new(_tb)
	for _td, _Xg in pairs(_Xe or {}) do
		_de[_td] = _Xg
	end
	return _de
end
local function _r(_Ie, _Ze)
	local _sd = Instance.new("UICorner")
	_sd.CornerRadius = UDim.new(0, _Ze)
	_sd.Parent = _Ie
	return _sd
end
local function _u(_Ie, _Cb, _Dg, _Lg)
	local _sd = Instance.new("UIStroke")
	_sd.Color = _Cb
	_sd.Thickness = _Dg or 1
	_sd.Transparency = _Lg or 0
	_sd.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	_sd.Parent = _Ie
	return _sd
end
local function _t(_Ie, _Fd, _kf, _Gg, _Q)
	local _sd = Instance.new("UIPadding")
	_sd.PaddingLeft = UDim.new(0, _Fd or 0)
	_sd.PaddingRight = UDim.new(0, _kf or 0)
	_sd.PaddingTop = UDim.new(0, _Gg or 0)
	_sd.PaddingBottom = UDim.new(0, _Q or 0)
	_sd.Parent = _Ie
	return _sd
end
local function _s(_Ie, _Ic)
	local _sd = Instance.new("UIListLayout")
	_sd.SortOrder = Enum.SortOrder.LayoutOrder
	_sd.Padding = UDim.new(0, _Ic or 8)
	_sd.Parent = _Ie
	return _sd
end
local function _rb(_Xg, _Ud, _Pd)
	_Xg = tonumber(_Xg)
	if _Xg == nil then
		return _Ud
	end
	return math.clamp(math.floor(_Xg + 0.5), _Ud, _Pd)
end
local function _vd(_ud)
	return tostring(_ud):gsub("Enum.KeyCode.", "")
end
local function _Kc(_Re)
	return _Re and _Re.Character or nil
end
local function _Oc(_nb)
	return _nb and _nb:FindFirstChildOfClass("Humanoid") or nil
end
local function _Rc(_nb)
	if not _nb then
		return nil
	end
	return _nb:FindFirstChild("HumanoidRootPart")
		or _nb:FindFirstChild("UpperTorso")
		or _nb:FindFirstChild("Torso")
end
local function _Nc(_nb)
	if not _nb then
		return nil
	end
	return _nb:FindFirstChild("Head") or _Rc(_nb)
end
local function _ld(_Re)
	local _nb = _Kc(_Re)
	local _ed = _Oc(_nb)
	local _lf = _Rc(_nb)
	return _nb ~= nil and _ed ~= nil and _lf ~= nil and _ed.Health > 0
end
local function _Kd()
	return _Oc(_e.Character)
end
local function _Ld()
	return _Rc(_e.Character)
end
local function _Pe(_lb)
	local _nb = _e.Character
	if _nb then
		pcall(function()
			_nb:PivotTo(_lb)
		end)
	end
end
local function _Tc(_Re)
	return _Re and _Re.Team and _Re.Team.Name or nil
end
local function _Uc(_Ag)
	local _jf = {}
	for _p, _Re in ipairs(_h:GetPlayers()) do
		if _Re.Team and _Re.Team.Name == _Ag then
			table.insert(_jf, _Re)
		end
	end
	table.sort(_jf, function(_q, _G)
		return _q.Name < _G.Name
	end)
	return _jf
end
local function _nd(_Re)
	if _Re == _e then
		return false
	end
	if not _Re.Team then
		return false
	end
	if not _e.Team then
		return true
	end
	return _Re.Team ~= _e.Team
end
local function _Sc(_Re)
	if _Re.Team then
		return _Re.Team.TeamColor.Color
	end
	return Color3.fromRGB(255, 255, 255)
end
local _Xc = _Od("ScreenGui", {
	Name = _c,
	IgnoreGuiInset = true,
	ResetOnSpawn = false,
	DisplayOrder = 10000,
	ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
})
_Xc.Parent = _g
local _qc = _Od("Frame", {
	Name = "ESPOverlay",
	Size = UDim2.fromScale(1, 1),
	Position = UDim2.fromScale(0, 0),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	ZIndex = 1,
})
_qc.Parent = _Xc
local _Vf = _Od("Frame", {
	Name = "Shade",
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(796, 526),
	BackgroundColor3 = Color3.fromRGB(0, 0, 0),
	BackgroundTransparency = 0.45,
	Visible = true,
	ZIndex = 10,
})
_Vf.Parent = _Xc
_r(_Vf, 18)
local _Nd = _Od("Frame", {
	Name = "Main",
	AnchorPoint = Vector2.new(0.5, 0.5),
	Position = UDim2.fromScale(0.5, 0.5),
	Size = UDim2.fromOffset(770, 500),
	BackgroundColor3 = Color3.fromRGB(14, 16, 22),
	Visible = true,
	ClipsDescendants = true,
	ZIndex = 11,
})
_Nd.Parent = _Xc
_r(_Nd, 16)
_u(_Nd, Color3.fromRGB(70, 90, 140), 1, 0.25)
local _Qg = Instance.new("UIScale")
_Qg.Parent = _Nd
local function _B()
	_Uf.UIScale = _rb(_Uf.UIScale, 70, 115)
	local _jb = _o.CurrentCamera
	local _J = _Uf.UIScale / 100
	local _E = 1
	if _jb then
		local _Yg = _jb.ViewportSize
		_E = math.clamp(math.min(_Yg.X / 980, _Yg.Y / 680), 0.72, 1)
	end
	_Qg.Scale = math.clamp(_E * _J, 0.55, 1.15)
end
_B()
if _o.CurrentCamera then
	_o.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(_B)
end
local _Gg = _Od("Frame", {
	Name = "Top",
	Position = UDim2.fromOffset(0, 0),
	Size = UDim2.new(1, 0, 0, 62),
	BackgroundColor3 = Color3.fromRGB(18, 21, 30),
	BorderSizePixel = 0,
	ZIndex = 12,
})
_Gg.Parent = _Nd
local _Eg = _Od("TextLabel", {
	Name = "Title",
	Position = UDim2.fromOffset(18, 10),
	Size = UDim2.new(1, -120, 0, 24),
	BackgroundTransparency = 1,
	Text = "BRNL",
	TextXAlignment = Enum.TextXAlignment.Left,
	TextColor3 = Color3.fromRGB(245, 247, 255),
	TextSize = 22,
	Font = Enum.Font.GothamBlack,
	ZIndex = 13,
})
_Eg.Parent = _Gg
local _rg = _Od("TextLabel", {
	Name = "Subtitle",
	Position = UDim2.fromOffset(19, 34),
	Size = UDim2.new(1, -120, 0, 18),
	BackgroundTransparency = 1,
	Text = "Bear Alpha",
	TextXAlignment = Enum.TextXAlignment.Left,
	TextColor3 = Color3.fromRGB(145, 153, 176),
	TextSize = 12,
	Font = Enum.Font.GothamMedium,
	ZIndex = 13,
})
_rg.Parent = _Gg
local _Bb = _Od("TextButton", {
	Name = "Close",
	AnchorPoint = Vector2.new(1, 0),
	Position = UDim2.new(1, -14, 0, 13),
	Size = UDim2.fromOffset(36, 36),
	BackgroundColor3 = Color3.fromRGB(30, 34, 46),
	Text = "X",
	TextColor3 = Color3.fromRGB(220, 225, 240),
	TextSize = 14,
	Font = Enum.Font.GothamBlack,
	AutoButtonColor = false,
	ZIndex = 14,
})
_Bb.Parent = _Gg
_r(_Bb, 10)
_u(_Bb, Color3.fromRGB(70, 90, 140), 1, 0.35)
local _Xf = _Od("ScrollingFrame", {
	Name = "Side",
	Position = UDim2.fromOffset(16, 78),
	Size = UDim2.fromOffset(170, 406),
	BackgroundColor3 = Color3.fromRGB(18, 21, 30),
	BorderSizePixel = 0,
	ScrollBarThickness = 3,
	AutomaticCanvasSize = Enum.AutomaticSize.Y,
	CanvasSize = UDim2.fromOffset(0, 380),
	ZIndex = 12,
})
_Xf.Parent = _Nd
_r(_Xf, 14)
_t(_Xf, 10, 10, 10, 10)
_s(_Xf, 8)
local _Ib = _Od("Frame", {
	Name = "Content",
	Position = UDim2.fromOffset(202, 78),
	Size = UDim2.fromOffset(552, 406),
	BackgroundColor3 = Color3.fromRGB(18, 21, 30),
	BorderSizePixel = 0,
	ZIndex = 12,
})
_Ib.Parent = _Nd
_r(_Ib, 14)
local _Fe = _Od("TextLabel", {
	Name = "PageTitle",
	Position = UDim2.fromOffset(16, 12),
	Size = UDim2.new(1, -32, 0, 26),
	BackgroundTransparency = 1,
	Text = _Ff,
	TextXAlignment = Enum.TextXAlignment.Left,
	TextColor3 = Color3.fromRGB(245, 247, 255),
	TextSize = 20,
	Font = Enum.Font.GothamBold,
	ZIndex = 13,
})
_Fe.Parent = _Ib
local _ng = _Od("TextLabel", {
	Name = "Status",
	Position = UDim2.fromOffset(16, 39),
	Size = UDim2.new(1, -32, 0, 20),
	BackgroundTransparency = 1,
	Text = "Ready",
	TextXAlignment = Enum.TextXAlignment.Left,
	TextColor3 = Color3.fromRGB(145, 153, 176),
	TextSize = 12,
	Font = Enum.Font.GothamMedium,
	ZIndex = 13,
})
_ng.Parent = _Ib
local _rf = _Od("ScrollingFrame", {
	Name = "Rows",
	Position = UDim2.fromOffset(16, 70),
	Size = UDim2.new(1, -32, 1, -86),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	ScrollBarThickness = 3,
	AutomaticCanvasSize = Enum.AutomaticSize.Y,
	CanvasSize = UDim2.fromOffset(0, 0),
	ZIndex = 13,
})
_rf.Parent = _Ib
_t(_rf, 0, 5, 0, 0)
_s(_rf, 8)
local _eh = _Od("TextLabel", {
	Name = "Watermark",
	AnchorPoint = Vector2.new(1, 1),
	Position = UDim2.new(1, -14, 1, -12),
	Size = UDim2.fromOffset(180, 22),
	BackgroundTransparency = 1,
	Text = "BRNL",
	TextXAlignment = Enum.TextXAlignment.Right,
	TextColor3 = Color3.fromRGB(170, 178, 200),
	TextTransparency = 0.35,
	TextSize = 12,
	Font = Enum.Font.GothamBold,
	ZIndex = 2,
})
_eh.Parent = _Xc
local function _Wg(_Cg)
	if _Cg then
		_ng.Text = _Cg
		return
	end
	local _ed = _Kd()
	local _bh = _ed and _ed.WalkSpeed or "--"
	local _gg = _fg and "On" or "Off"
	_ng.Text = "Speed: " .. tostring(_bh)
		.. " | Mode: " .. _gg
		.. " | Method: " .. tostring(_k[_Uf.SpeedMethodIndex] or "WalkSpeed")
		.. " | Speed Key: " .. _vd(_dg)
		.. " | Menu Key: " .. _vd(_Qd)
end
local function _Pf(_Zg)
	_Rd = _Zg
	_Nd.Visible = true
	_Vf.Visible = true
	if _Zg then
		_Nd.BackgroundTransparency = 1
		_Vf.BackgroundTransparency = 1
		_m:Create(_Nd, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			BackgroundTransparency = 0,
		}):Play()
		_m:Create(_Vf, TweenInfo.new(0.16, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			BackgroundTransparency = 0.45,
		}):Play()
	else
		local _Og = _m:Create(_Nd, TweenInfo.new(0.14, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			BackgroundTransparency = 1,
		})
		_Og:Play()
		_m:Create(_Vf, TweenInfo.new(0.14, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
			BackgroundTransparency = 1,
		}):Play()
		_Og.Completed:Once(function()
			if not _Rd then
				_Nd.Visible = false
				_Vf.Visible = false
			end
		end)
	end
end
local function _Rb()
	return _k[_Uf.SpeedMethodIndex] or "WalkSpeed"
end
local function _vb()
	if _eg then
		_eg:Destroy()
		_eg = nil
	end
	if _bg then
		_bg:Destroy()
		_bg = nil
	end
end
local function _nc(_lf)
	if not _lf then
		return nil
	end
	if not _bg or not _bg.Parent then
		_bg = Instance.new("Attachment")
		_bg.Name = "BRNL_SpeedAttachment"
		_bg.Parent = _lf
	end
	if not _eg or not _eg.Parent then
		_eg = Instance.new("LinearVelocity")
		_eg.Name = "BRNL_SpeedVelocity"
		_eg.Attachment0 = _bg
		_eg.RelativeTo = Enum.ActuatorRelativeTo.World
		_eg.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
		_eg.ForceLimitsEnabled = false
		_eg.VectorVelocity = Vector3.zero
		_eg.Parent = _lf
	end
	return _eg
end
local function _Sf(_Xg)
	local _ed = _Kd()
	if _ed then
		_ed.WalkSpeed = _rb(_Xg, 1, 100)
	end
	_Wg()
end
local function _hf()
	_vb()
end
local function _Qf(_kc)
	_fg = _kc and _Uf.SpeedMode
	_hf()
	if _fg then
		local _Td = _Rb()
		if _Td == "WalkSpeed" then
			_Sf(_Uf.SpeedValue)
		else
			_Sf(_b)
		end
	else
		_Sf(_b)
	end
	_Wg()
end
local function _Fg()
	_Qf(not _fg)
end
local function _Vg(_Ub)
	if not _fg or not _Uf.SpeedMode then
		_vb()
		return
	end
	local _Td = _Rb()
	local _ed = _Kd()
	local _lf = _Ld()
	if not _ed or not _lf or _ed.Health <= 0 then
		_vb()
		return
	end
	local _ag = _rb(_Uf.SpeedValue, 1, 100)
	local _bc = _ed.MoveDirection
	if _Td == "WalkSpeed" then
		_vb()
		if _ed.WalkSpeed ~= _ag then
			_ed.WalkSpeed = _ag
		end
		return
	end
	if _ed.WalkSpeed ~= _b then
		_ed.WalkSpeed = _b
	end
	if _Td == "CFrame" then
		_vb()
		if _bc.Magnitude > 0.01 then
			local _rc = math.max(_ag - _b, 0)
			_lf.CFrame = _lf.CFrame + (_bc.Unit * _rc * _Ub)
		end
		return
	end
	if _Td == "LinearVelocity" then
		local _Jb = _nc(_lf)
		if _Jb then
			if _bc.Magnitude > 0.01 then
				_Jb.VectorVelocity = _bc.Unit * _ag
			else
				_Jb.VectorVelocity = Vector3.zero
				_lf.AssemblyLinearVelocity = Vector3.zero
			end
			_lf.AssemblyAngularVelocity = Vector3.zero
		end
	end
end
local function _Pc()
	local _Jd = {}
	for _p, _Re in ipairs(_h:GetPlayers()) do
		if _Re ~= _e then
			table.insert(_Jd, _Re)
		end
	end
	table.sort(_Jd, function(_q, _G)
		return _q.Name < _G.Name
	end)
	return _Jd
end
local function _Mc()
	if not _Bc then
		return nil
	end
	for _p, _Re in ipairs(_h:GetPlayers()) do
		if _Re.UserId == _Bc then
			return _Re
		end
	end
	return nil
end
local function _Ac()
	local _xg = _Mc()
	if _xg then
		return _xg.DisplayName .. " (@" .. _xg.Name .. ")"
	end
	return "None"
end
local function _Ef(_og)
	local _Jd = _Pc()
	if #_Jd == 0 then
		_Bc = nil
		_Wg("No players found.")
		return
	end
	local _Qb = 0
	for _fd, _Re in ipairs(_Jd) do
		if _Re.UserId == _Bc then
			_Qb = _fd
			break
		end
	end
	local _be = _Qb + _og
	if _be < 1 then
		_be = #_Jd
	elseif _be > #_Jd then
		_be = 1
	end
	_Bc = _Jd[_be].UserId
	_Wg("Target: " .. _Ac())
end
local function _wb()
	for _Le, _xe in pairs(_xc) do
		if _Le and _Le.Parent then
			_Le.CanCollide = _xe
		end
	end
	table.clear(_xc)
end
local function _y()
	local _nb = _e.Character
	if not _nb then
		return
	end
	for _p, _de in ipairs(_nb:GetDescendants()) do
		if _de:IsA("BasePart") then
			if _xc[_de] == nil then
				_xc[_de] = _de.CanCollide
			end
			_de.CanCollide = false
		end
	end
end
local function _mc(_lf)
	if not _lf then
		return nil
	end
	if not _wc or not _wc.Parent then
		_wc = Instance.new("Attachment")
		_wc.Name = "BRNL_FlyAttachment"
		_wc.Parent = _lf
	end
	if not _Cc or not _Cc.Parent then
		_Cc = Instance.new("LinearVelocity")
		_Cc.Name = "BRNL_FlyVelocity"
		_Cc.Attachment0 = _wc
		_Cc.RelativeTo = Enum.ActuatorRelativeTo.World
		_Cc.VelocityConstraintMode = Enum.VelocityConstraintMode.Vector
		_Cc.ForceLimitsEnabled = false
		_Cc.VectorVelocity = Vector3.zero
		_Cc.Parent = _lf
	end
	return _Cc
end
local function _yc()
	local _jb = _o.CurrentCamera
	if not _jb then
		return Vector3.zero
	end
	local _bc = Vector3.zero
	local _kb = _jb.CFrame
	if _n:IsKeyDown(Enum.KeyCode.W) then
		_bc += _kb.LookVector
	end
	if _n:IsKeyDown(Enum.KeyCode.S) then
		_bc -= _kb.LookVector
	end
	if _n:IsKeyDown(Enum.KeyCode.D) then
		_bc += _kb.RightVector
	end
	if _n:IsKeyDown(Enum.KeyCode.A) then
		_bc -= _kb.RightVector
	end
	if _n:IsKeyDown(Enum.KeyCode.Space) then
		_bc += Vector3.yAxis
	end
	if _n:IsKeyDown(Enum.KeyCode.Q) or _n:IsKeyDown(Enum.KeyCode.LeftControl) then
		_bc -= Vector3.yAxis
	end
	if _bc.Magnitude <= 0.001 then
		return Vector3.zero
	end
	return _bc.Unit
end
local function _Lf(_kc)
	_Uf.FlyEnabled = _kc
	local _ed = _Kd()
	local _lf = _Ld()
	if not _kc then
		_Uf.FlyFollow = false
		_Uf.FlyOrbit = false
		if _Cc then
			_Cc:Destroy()
			_Cc = nil
		end
		if _wc then
			_wc:Destroy()
			_wc = nil
		end
		_wb()
		if _ed then
			_ed.AutoRotate = true
			pcall(function()
				_ed:ChangeState(Enum.HumanoidStateType.GettingUp)
			end)
		end
		if _lf then
			_lf.AssemblyLinearVelocity = Vector3.zero
			_lf.AssemblyAngularVelocity = Vector3.zero
		end
		_Wg("Fly disabled.")
		return
	end
	if _ed then
		_ed.AutoRotate = false
		pcall(function()
			_ed:ChangeState(Enum.HumanoidStateType.Freefall)
		end)
	end
	if _lf then
		_mc(_lf)
	end
	_Wg("Fly enabled.")
end
local function _Mf(_kc)
	_Uf.FlyFollow = _kc
	if _kc then
		_Uf.FlyOrbit = false
		if not _Mc() then
			_Ef(1)
		end
		if not _Mc() then
			_Uf.FlyFollow = false
			return
		end
		_Lf(true)
		_Wg("Following: " .. _Ac())
	else
		_Wg("Fly follow stopped.")
	end
end
local function _Nf(_kc)
	_Uf.FlyOrbit = _kc
	if _kc then
		_Uf.FlyFollow = false
		if not _Mc() then
			_Ef(1)
		end
		if not _Mc() then
			_Uf.FlyOrbit = false
			return
		end
		_zc = 0
		_Lf(true)
		_Wg("Orbiting: " .. _Ac())
	else
		_Wg("Fly orbit stopped.")
	end
end
local function _Sg(_Ub)
	if not _Uf.FlyEnabled then
		return
	end
	local _nb = _e.Character
	local _ed = _Kd()
	local _lf = _Ld()
	if not _nb or not _ed or not _lf then
		return
	end
	_ed.AutoRotate = false
	local _Jb = _mc(_lf)
	if not _Jb then
		return
	end
	local _ag = _rb(_Uf.FlySpeed, 1, 250)
	if _Uf.FlyOrbit then
		local _xg = _Mc()
		local _yg = _xg and _Rc(_xg.Character)
		if not _xg or not _yg or not _ld(_xg) then
			_Uf.FlyOrbit = false
			_Jb.VectorVelocity = Vector3.zero
			return
		end
		local _Ze = _rb(_Uf.FlyOrbitRadius, 4, 35)
		local _ad = _rb(_Uf.FlyOrbitHeight, -10, 20)
		local _ze = _rb(_Uf.FlyOrbitSpeed, 1, 20)
		_zc += _Ub * _ze
		local _Wc = _yg.Position + Vector3.new(
			math.cos(_zc) * _Ze,
			_ad,
			math.sin(_zc) * _Ze
		)
		local _te = _Wc - _lf.Position
		local _fc = _te.Magnitude
		if _fc > 100 then
			_Pe(CFrame.new(_Wc, _yg.Position))
			_Jb.VectorVelocity = Vector3.zero
		elseif _fc > 1.25 then
			_Jb.VectorVelocity = _te.Unit * math.clamp(_fc * 9, 0, _ag)
		else
			_Jb.VectorVelocity = Vector3.zero
		end
		local _Md = Vector3.new(_yg.Position.X, _lf.Position.Y, _yg.Position.Z)
		if (_Md - _lf.Position).Magnitude > 0.5 then
			_lf.CFrame = CFrame.new(_lf.Position, _Md)
		end
	elseif _Uf.FlyFollow then
		local _xg = _Mc()
		local _yg = _xg and _Rc(_xg.Character)
		if not _xg or not _yg or not _ld(_xg) then
			_Uf.FlyFollow = false
			_Jb.VectorVelocity = Vector3.zero
			return
		end
		local _ec = _rb(_Uf.FlyFollowDistance, 3, 20)
		local _Wc = _yg.Position - (_yg.CFrame.LookVector * _ec) + Vector3.new(0, 2.5, 0)
		local _te = _Wc - _lf.Position
		local _fc = _te.Magnitude
		if _fc > 80 then
			_Pe(CFrame.new(_Wc, _yg.Position))
			_Jb.VectorVelocity = Vector3.zero
		elseif _fc > 2 then
			_Jb.VectorVelocity = _te.Unit * math.clamp(_fc * 8, 0, _ag)
		else
			_Jb.VectorVelocity = Vector3.zero
		end
		local _Md = Vector3.new(_yg.Position.X, _lf.Position.Y, _yg.Position.Z)
		if (_Md - _lf.Position).Magnitude > 0.5 then
			_lf.CFrame = CFrame.new(_lf.Position, _Md)
		end
	else
		local _bc = _yc()
		if _bc.Magnitude > 0 then
			_Jb.VectorVelocity = _bc * _ag
		else
			_Jb.VectorVelocity = Vector3.zero
			_lf.AssemblyLinearVelocity = Vector3.zero
		end
	end
	_lf.AssemblyAngularVelocity = Vector3.zero
	if _Uf.FlyNoclip then
		_y()
	else
		_wb()
	end
end
local function _ff(_Re)
	local _De = _pc[_Re]
	if not _De then
		return
	end
	for _p, _de in pairs(_De) do
		if typeof(_de) == "Instance" then
			_de:Destroy()
		end
	end
	_pc[_Re] = nil
end
local function _bd(_De)
	if _De.Box then
		_De.Box.Visible = false
	end
	if _De.Billboard then
		_De.Billboard.Enabled = false
	end
	if _De.Highlight then
		_De.Highlight.Enabled = false
	end
end
local function _lc(_Re)
	local _De = _pc[_Re]
	if _De then
		return _De
	end
	local _S = _Od("Frame", {
		Name = "ESPBox_" .. _Re.Name,
		BackgroundTransparency = 1,
		BorderSizePixel = 0,
		Visible = false,
		ZIndex = 3,
	})
	_S.Parent = _qc
	local _T = _u(_S, Color3.fromRGB(255, 255, 255), 2, 0)
	local _P = _Od("BillboardGui", {
		Name = "ESPTag_" .. _Re.Name,
		Size = UDim2.fromOffset(240, 28),
		StudsOffset = Vector3.new(0, 3.2, 0),
		AlwaysOnTop = true,
		MaxDistance = _Uf.MaxESPDistance,
		Enabled = false,
	})
	_P.Parent = _Xc
	local _yd = _Od("TextLabel", {
		Name = "Label",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Text = "",
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
		TextStrokeTransparency = 0.2,
		TextSize = 13,
		Font = Enum.Font.GothamBold,
	})
	_yd.Parent = _P
	_De = {
		Box = _S,
		BoxStroke = _T,
		Billboard = _P,
		Label = _yd,
		Highlight = nil,
		LastCharacter = nil,
	}
	_pc[_Re] = _De
	return _De
end
local function _Yc(_nb)
	if _Uf.ESPThroughWalls then
		return true
	end
	local _jb = _o.CurrentCamera
	local _lf = _Rc(_nb)
	if not _jb or not _lf then
		return false
	end
	local _He = RaycastParams.new()
	_He.FilterType = Enum.RaycastFilterType.Exclude
	_He.FilterDescendantsInstances = {_e.Character, _jb}
	local _if = _o:Raycast(_jb.CFrame.Position, _lf.Position - _jb.CFrame.Position, _He)
	if not _if then
		return true
	end
	return _if.Instance:IsDescendantOf(_nb)
end
local function _hg(_nb)
	local _jb = _o.CurrentCamera
	local _lf = _Rc(_nb)
	if not _jb or not _lf then
		return nil
	end
	local _nf, _ye = _jb:WorldToViewportPoint(_lf.Position)
	if _nf.Z <= 0 or not _ye then
		return nil
	end
	local _Hg = _jb:WorldToViewportPoint(_lf.Position + Vector3.new(0, 3.2, 0))
	local _R = _jb:WorldToViewportPoint(_lf.Position - Vector3.new(0, 3.3, 0))
	if _Hg.Z <= 0 or _R.Z <= 0 then
		return nil
	end
	local _ad = math.clamp(math.abs(_R.Y - _Hg.Y), 24, 420)
	local _fh = math.clamp(_ad * 0.46, 14, 220)
	local _kh = _nf.X - (_fh / 2)
	local _lh = _Hg.Y
	local _Yg = _jb.ViewportSize
	if _kh > _Yg.X or _lh > _Yg.Y or _kh + _fh < 0 or _lh + _ad < 0 then
		return nil
	end
	return _kh, _lh, _fh, _ad
end
local function _Ug(_Re)
	local _De = _lc(_Re)
	_bd(_De)
	if not _Uf.EnemyESP or not _nd(_Re) or not _ld(_Re) then
		return
	end
	local _nb = _Re.Character
	local _lf = _Rc(_nb)
	local _Zc = _Nc(_nb)
	if not _lf or not _Zc then
		return
	end
	local _Xd = _Ld()
	if _Xd and (_Xd.Position - _lf.Position).Magnitude > _Uf.MaxESPDistance then
		return
	end
	if not _Yc(_nb) then
		return
	end
	local _kh, _lh, _fh, _ad = _hg(_nb)
	local _zg = _Sc(_Re)
	local _Ag = _Re.Team and _Re.Team.Name or "No Team"
	local _dc = _Re.DisplayName or _Re.Name
	if _kh and _Uf.EnemyBoxes then
		_De.Box.Visible = true
		_De.Box.Position = UDim2.fromOffset(_kh, _lh)
		_De.Box.Size = UDim2.fromOffset(_fh, _ad)
		_De.BoxStroke.Color = _zg
	end
	if _Uf.EnemyTags then
		_De.Billboard.Adornee = _Zc
		_De.Billboard.MaxDistance = _Uf.MaxESPDistance
		_De.Billboard.Enabled = true
		_De.Label.Text = _Ag .. " | " .. _dc
		_De.Label.TextColor3 = _zg
	end
	if _Uf.EnemyHighlight then
		if not _De.Highlight or not _De.Highlight.Parent or _De.LastCharacter ~= _nb then
			if _De.Highlight then
				_De.Highlight:Destroy()
			end
			local _cd = Instance.new("Highlight")
			_cd.Name = "BRNL_EnemyOutline"
			_cd.FillTransparency = 1
			_cd.OutlineTransparency = 0
			_cd.DepthMode = _Uf.ESPThroughWalls and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded
			_cd.Adornee = _nb
			_cd.Parent = _Xc
			_De.Highlight = _cd
			_De.LastCharacter = _nb
		end
		_De.Highlight.FillColor = _zg
		_De.Highlight.OutlineColor = _zg
		_De.Highlight.Enabled = true
	end
end
local function _Rg()
	if not _Uf.EnemyESP then
		for _p, _De in pairs(_pc) do
			_bd(_De)
		end
		return
	end
	for _p, _De in pairs(_pc) do
		_bd(_De)
	end
	for _p, _Re in ipairs(_h:GetPlayers()) do
		if _Re ~= _e then
			_Ug(_Re)
		end
	end
end
local function _ce(_Cg)
	_Cg = tostring(_Cg or "")
	_Cg = string.lower(_Cg)
	_Cg = string.gsub(_Cg, "_", " ")
	_Cg = string.gsub(_Cg, "-", " ")
	return _Cg
end
local function _Hb(_Cg)
	_Cg = _ce(_Cg)
	for _p, _wd in ipairs(_f) do
		if string.find(_Cg, _wd, 1, true) then
			return true, _wd
		end
	end
	return false, nil
end
local function _ee(_id)
	local _Ne = {}
	local _Qb = _id
	for _p = 1, 5 do
		if not _Qb or _Qb == _o then
			break
		end
		table.insert(_Ne, _Qb.Name)
		_Qb = _Qb.Parent
	end
	if _id:IsA("ProximityPrompt") then
		table.insert(_Ne, _id.ActionText)
		table.insert(_Ne, _id.ObjectText)
	end
	return table.concat(_Ne, " ")
end
local function _tc(_id)
	if not _id then
		return nil
	end
	if _id:IsA("BasePart") then
		return _id
	end
	if _id:IsA("ProximityPrompt") or _id:IsA("ClickDetector") or _id:IsA("TouchTransmitter") then
		return _tc(_id.Parent)
	end
	if _id:IsA("Model") then
		if _id.PrimaryPart then
			return _id.PrimaryPart
		end
		local _lf = _Rc(_id)
		if _lf then
			return _lf
		end
	end
	local _Qb = _id
	while _Qb and _Qb ~= _o do
		if _Qb:IsA("BasePart") then
			return _Qb
		end
		if _Qb:IsA("Model") and _Qb.PrimaryPart then
			return _Qb.PrimaryPart
		end
		_Qb = _Qb.Parent
	end
	if _id:IsA("Model") or _id:IsA("Folder") then
		for _p, _pb in ipairs(_id:GetDescendants()) do
			if _pb:IsA("BasePart") then
				return _pb
			end
		end
	end
	return nil
end
local function _ne(_id)
	local _Qb = _id
	while _Qb and _Qb.Parent and _Qb.Parent ~= _o do
		if _Qb.Parent:IsA("Model") then
			return _Qb.Parent
		end
		_Qb = _Qb.Parent
	end
	return _id
end
local function _me(_id)
	local _lf = _ne(_id)
	local _Yd = _lf and _lf.Name or _id.Name
	if _id:IsA("ProximityPrompt") and _id.ObjectText and _id.ObjectText ~= "" then
		_Yd = _id.ObjectText
	end
	_Yd = tostring(_Yd or "Objective")
	_Yd = string.gsub(_Yd, "_", " ")
	_Yd = string.gsub(_Yd, "-", " ")
	if #_Yd > 32 then
		_Yd = string.sub(_Yd, 1, 29) .. "..."
	end
	return _Yd
end
local function _Me(_Le)
	local _lf = _Ld()
	if not _lf or not _Le then
		return math.huge
	end
	return (_lf.Position - _Le.Position).Magnitude
end
local function _pd(_id)
	local _Yd = _ce(_id.Name)
	local _Je = _id.Parent and _ce(_id.Parent.Name) or ""
	if _id:IsA("Decal") or _id:IsA("Texture") or _id:IsA("SpecialMesh") then
		return true
	end
	if string.find(_Yd, "decor", 1, true)
		or string.find(_Yd, "decal", 1, true)
		or string.find(_Yd, "facedecal", 1, true)
		or string.find(_Yd, "face decal", 1, true)
		or string.find(_Yd, "mesh", 1, true)
		or string.find(_Je, "decor", 1, true)
	then
		return true
	end
	return false
end
local function _qd(_Le)
	if not _Le or not _Le:IsA("BasePart") then
		return false
	end
	local _Cb = _Le.Color
	return _Cb.R > 0.50 and _Cb.R > _Cb.G * 1.35 and _Cb.R > _Cb.B * 1.20
end
local function _rd(_Le)
	if not _Le or not _Le:IsA("BasePart") then
		return false
	end
	local _Cb = _Le.Color
	return _Cb.R > 0.70 and _Cb.G > 0.55 and _Cb.B < 0.35
end
local function _Db(_Cb)
	if not _Cb then
		return nil
	end
	local _Ye, _Gc, _G = _Cb.R, _Cb.G, _Cb.B
	if _Ye > 0.65 and _Gc < 0.35 and _G < 0.35 then
		return "R", "red"
	elseif _Gc > 0.55 and _Ye < 0.45 and _G < 0.45 then
		return "G", "green"
	elseif _G > 0.55 and _Ye < 0.45 and _Gc < 0.55 then
		return "B", "blue"
	elseif _Ye > 0.65 and _Gc > 0.55 and _G < 0.35 then
		return "Y", "yellow"
	elseif _Ye > 0.45 and _G > 0.45 and _Gc < 0.35 then
		return "P", "purple"
	elseif _Ye > 0.75 and _Gc > 0.32 and _Gc < 0.62 and _G < 0.25 then
		return "O", "orange"
	elseif _Ye > 0.75 and _Gc > 0.75 and _G > 0.75 then
		return "W", "white"
	elseif _Ye < 0.18 and _Gc < 0.18 and _G < 0.18 then
		return "K", "black"
	end
	return nil
end
local function _Eb(_Cg)
	_Cg = _ce(_Cg)
	local _ac = {
		red = "R",
		green = "G",
		blue = "B",
		yellow = "Y",
		purple = "P",
		violet = "P",
		orange = "O",
		white = "W",
		black = "K",
	}
	for _jh, _Hd in pairs(_ac) do
		if string.find(_Cg, _jh, 1, true) then
			return _Hd, _jh
		end
	end
	local _Yf = string.upper(string.match(_Cg, "^%s*([RGBYPOWK])%s*$") or "")
	if _Yf ~= "" then
		return _Yf, _Yf
	end
	return nil
end
local function _ke(_fe)
	if not _fe or not _fe.Root then
		return false
	end
	if _fe.Part and _qd(_fe.Part) then
		return true
	end
	for _p, _Wb in ipairs(_fe.Root:GetDescendants()) do
		if _Wb:IsA("BasePart") and _qd(_Wb) then
			return true
		end
	end
	return false
end
local function _ub(_id)
	local _Cg = _ce(_ee(_id))
	local _lf = _ne(_id)
	local _mf = _ce(_lf and _lf.Name or "")
	if string.find(_Cg, "altar", 1, true) and (string.find(_Cg, "cheese", 1, true) or string.find(_Cg, "cheeze", 1, true) or string.find(_Cg, "food", 1, true)) then
		return "CHEESE_ALTAR"
	end
	if string.find(_mf, "altar", 1, true) and (string.find(_Cg, "cheese", 1, true) or string.find(_Cg, "cheeze", 1, true) or string.find(_Cg, "food", 1, true)) then
		return "CHEESE_ALTAR"
	end
	if string.find(_Cg, "cheese altar", 1, true) or string.find(_Cg, "cheeze altar", 1, true) then
		return "CHEESE_ALTAR"
	end
	if string.find(_Cg, "plate", 1, true) or string.find(_Cg, "dish", 1, true) then
		return "PLATE"
	end
	if string.find(_Cg, "wire", 1, true) or string.find(_Cg, "cable", 1, true) then
		return "WIRE"
	end
	if string.find(_Cg, "base", 1, true) or string.find(_Cg, "colour", 1, true) or string.find(_Cg, "color", 1, true) then
		return "BASE"
	end
	if string.find(_Cg, "button", 1, true) or string.find(_Cg, "switch", 1, true) or string.find(_Cg, "lever", 1, true) or string.find(_Cg, "valve", 1, true) then
		return "BUTTON"
	end
	if string.find(_Cg, "cheese", 1, true) or string.find(_Cg, "cheeze", 1, true) or string.find(_Cg, "burger", 1, true) or string.find(_Cg, "hamburger", 1, true) or string.find(_Cg, "food", 1, true) then
		return "FOOD"
	end
	local _xd, _wd = _Hb(_Cg)
	if _xd then
		return string.upper(_wd)
	end
	return "OBJECTIVE"
end
local function _oe(_fe)
	local _vg = _fe.Type
	if _vg == "CHEESE_ALTAR" then
		return 1
	elseif _vg == "FOOD" then
		return 2
	elseif _vg == "PLATE" then
		return 3
	elseif _vg == "WIRE" then
		return 4
	elseif _vg == "BASE" then
		return 5
	elseif _vg == "BUTTON" then
		return 6
	end
	return 50
end
local function _od(_Le)
	if not _Le or not _Le:IsA("BasePart") then
		return false
	end
	local _Cb = _Le.Color
	return _Cb.G > 0.45 and _Cb.G > _Cb.R * 1.25 and _Cb.G > _Cb.B * 1.1
end
local function _le(_fe)
	if not _fe or not _fe.Root then
		return false
	end
	for _p, _Wb in ipairs(_fe.Root:GetDescendants()) do
		if _Wb:IsA("ProximityPrompt") and _Wb.Enabled then
			return false
		end
		if _Wb:IsA("BasePart") and _od(_Wb) then
			return true
		end
		local _Yd = _ce(_Wb.Name)
		if string.find(_Yd, "complete", 1, true) or string.find(_Yd, "done", 1, true) or string.find(_Yd, "green", 1, true) then
			return true
		end
	end
	local _mf = _ce(_fe.Root.Name)
	return string.find(_mf, "complete", 1, true) ~= nil or string.find(_mf, "done", 1, true) ~= nil
end
local function _xf(_Dc)
	if not _Dc and os.clock() - _Cd < 10 then
		return _ge
	end
	_Cd = os.clock()
	local _Df = {}
	local _jf = {}
	local _Xb = _o:GetDescendants()
	for _gd, _id in ipairs(_Xb) do
		if _gd % 500 == 0 then
			task.wait()
		end
		if _pd(_id) then
			continue
		end
		local _sb = _id:IsA("ProximityPrompt")
			or _id:IsA("ClickDetector")
			or _id:IsA("TouchTransmitter")
			or _id:IsA("Tool")
		local _Cg = _ee(_id)
		local _xd = _Hb(_Cg)
		if _sb or _xd then
			local _Le = _tc(_id)
			local _lf = _ne(_id)
			if _Le and _lf and not _Le:IsDescendantOf(_e.Character or Instance.new("Folder")) then
				if not _Df[_lf] then
					_Df[_lf] = true
					local _qe = _ub(_id)
					table.insert(_jf, {
						Instance = _id,
						Root = _lf,
						Part = _Le,
						Name = _me(_id),
						Type = _qe,
						Distance = _Me(_Le),
					})
				end
			end
		end
	end
	table.sort(_jf, function(_q, _G)
		local _Ce = _oe(_q)
		local _Oe = _oe(_G)
		if _Ce == _Oe then
			return _q.Distance < _G.Distance
		end
		return _Ce < _Oe
	end)
	_ge = _jf
	return _ge
end
local function _xb()
	for _td, _sd in pairs(_he) do
		if _sd then
			_sd:Destroy()
		end
		_he[_td] = nil
	end
end
local function _oc(_fe)
	local _lf = _fe.Root
	if not _lf then
		return nil
	end
	local _P = _he[_lf]
	if _P and _P.Parent then
		return _P
	end
	_P = Instance.new("BillboardGui")
	_P.Name = "BRNL_ObjectiveTag"
	_P.Size = UDim2.fromOffset(250, 36)
	_P.StudsOffset = Vector3.new(0, 2.4, 0)
	_P.AlwaysOnTop = true
	_P.MaxDistance = _Uf.ObjectiveMaxDistance
	_P.Enabled = false
	_P.Parent = _Xc
	local _yd = _Od("TextLabel", {
		Name = "Label",
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Text = "",
		TextColor3 = Color3.fromRGB(255, 230, 130),
		TextStrokeColor3 = Color3.fromRGB(0, 0, 0),
		TextStrokeTransparency = 0.25,
		TextSize = 13,
		Font = Enum.Font.GothamBold,
	})
	_yd.Parent = _P
	_he[_lf] = _P
	return _P
end
local function _Tg()
	if not _Uf.ObjectiveESP then
		_xb()
		return
	end
	if os.clock() - _Bd < 1.25 then
		return
	end
	_Bd = os.clock()
	local _re = _xf(false)
	local _v = {}
	local _Wf = 0
	for _p, _fe in ipairs(_re) do
		if _Wf >= 22 then
			break
		end
		_fe.Distance = _Me(_fe.Part)
		if _fe.Part and _fe.Part.Parent and _fe.Distance <= _Uf.ObjectiveMaxDistance then
			local _P = _oc(_fe)
			if _P then
				_Wf += 1
				_v[_fe.Root] = true
				_P.Adornee = _fe.Part
				_P.MaxDistance = _Uf.ObjectiveMaxDistance
				_P.Enabled = _Uf.ObjectiveTags
				local _yd = _P:FindFirstChild("Label")
				if _yd then
					_yd.Text = _fe.Type .. " | " .. _fe.Name .. " | " .. tostring(math.floor(_fe.Distance)) .. "m"
				end
			end
		end
	end
	for _lf, _P in pairs(_he) do
		if not _v[_lf] then
			_P:Destroy()
			_he[_lf] = nil
		end
	end
end
local function _Wd(_fe, _ue)
	if not _fe.Part or not _fe.Part.Parent then
		return false
	end
	local _lf = _Ld()
	if not _lf then
		return false
	end
	_ue = _ue or 3
	_Pe(CFrame.new(_fe.Part.Position + Vector3.new(0, _ue, 0), _fe.Part.Position))
	_lf.AssemblyLinearVelocity = Vector3.zero
	_lf.AssemblyAngularVelocity = Vector3.zero
	return true
end
local function _We(_fe)
	local _Ve = {}
	if _fe.Instance and _fe.Instance:IsA("ProximityPrompt") then
		table.insert(_Ve, _fe.Instance)
	end
	if _fe.Root then
		for _p, _Wb in ipairs(_fe.Root:GetDescendants()) do
			if _Wb:IsA("ProximityPrompt") then
				table.insert(_Ve, _Wb)
			end
		end
	end
	return _Ve
end
local function _Ng(_Ue)
	if not _Ue or not _Ue.Parent or not _Ue.Enabled then
		return false
	end
	local _ve = pcall(function()
		_Ue:InputHoldBegin()
		task.wait(math.max(_Ue.HoldDuration, 0.05) + 0.08)
		_Ue:InputHoldEnd()
	end)
	return _ve
end
local function _jd(_fe, _Jg)
	if not _Wd(_fe, 3) then
		return false
	end
	task.wait(0.10)
	if not _Jg then
		for _p, _Ue in ipairs(_We(_fe)) do
			_Ng(_Ue)
			task.wait(0.05)
		end
	end
	local _lf = _Ld()
	if _lf and _fe.Part and _fe.Part.Parent then
		_Pe(CFrame.new(_fe.Part.Position + Vector3.new(0, 1.4, 0)))
		_lf.AssemblyLinearVelocity = Vector3.zero
		task.wait(0.14)
		_Pe(CFrame.new(_fe.Part.Position + Vector3.new(0, 3.2, 0)))
		_lf.AssemblyLinearVelocity = Vector3.zero
	end
	return true
end
local function _se(_Pg)
	local _ch = {}
	for _p, _qe in ipairs(_Pg) do
		_ch[_qe] = true
	end
	local _jf = {}
	for _p, _fe in ipairs(_xf(true)) do
		if _ch[_fe.Type] then
			_fe.Distance = _Me(_fe.Part)
			table.insert(_jf, _fe)
		end
	end
	table.sort(_jf, function(_q, _G)
		return _q.Distance < _G.Distance
	end)
	return _jf
end
local function _Mg(_fe)
	if not _fe or not _fe.Root then
		return false
	end
	local _Ab = false
	for _p, _Wb in ipairs(_fe.Root:GetDescendants()) do
		if _Wb:IsA("ClickDetector") then
			local _uc = nil
			pcall(function()
				_uc = getfenv().fireclickdetector
			end)
			if typeof(_uc) == "function" then
				pcall(function()
					_uc(_Wb)
					_Ab = true
				end)
			end
		end
	end
	return _Ab
end
local function _kd(_fe, _Jg, _D)
	_D = _D or 1
	local _sg = false
	for _p = 1, _D do
		if not _fe or not _fe.Part or not _fe.Part.Parent then
			break
		end
		_jd(_fe, _Jg)
		_Mg(_fe)
		_sg = true
		task.wait(0.08)
	end
	return _sg
end
local function _pe(_fe)
	if not _fe then
		return ""
	end
	local _Ne = {
		_fe.Name or "",
		_fe.Type or "",
		_fe.Instance and _ee(_fe.Instance) or "",
		_fe.Root and _fe.Root.Name or "",
		_fe.Part and _fe.Part.Name or "",
	}
	return _ce(table.concat(_Ne, " "))
end
local function _zf(_fe)
	if not _fe then return -999 end
	local _Cg = _pe(_fe)
	local _yf = 0
	if _fe.Type == "CHEESE_ALTAR" then _yf += 60 end
	if _fe.Type == "FOOD" then _yf += 55 end
	if string.find(_Cg, "item", 1, true) then _yf += 80 end
	if string.find(_Cg, "cheese", 1, true) or string.find(_Cg, "cheeze", 1, true) then _yf += 45 end
	if string.find(_Cg, "burger", 1, true) or string.find(_Cg, "hamburger", 1, true) or string.find(_Cg, "food", 1, true) then _yf += 35 end
	if _fe.Part and _rd(_fe.Part) then _yf += 30 end
	if string.find(_Cg, "plate", 1, true) then _yf -= 120 end
	if string.find(_Cg, "decor", 1, true) or string.find(_Cg, "decal", 1, true) or string.find(_Cg, "mesh", 1, true) then _yf -= 200 end
	_yf -= math.min(_Me(_fe.Part) / 50, 20)
	return _yf
end
local function _Bf(_fe)
	if not _fe then return -999 end
	local _Cg = _pe(_fe)
	local _yf = 0
	if _fe.Type == "PLATE" then _yf += 100 end
	if string.find(_Cg, "plate", 1, true) then _yf += 80 end
	if string.find(_Cg, "dish", 1, true) then _yf += 40 end
	if string.find(_Cg, "decor", 1, true) or string.find(_Cg, "decal", 1, true) or string.find(_Cg, "mesh", 1, true) then _yf -= 200 end
	_yf -= math.min(_Me(_fe.Part) / 50, 20)
	return _yf
end
local function _N(_Pg, _Af)
	local _M = nil
	local _O = -math.huge
	for _p, _fe in ipairs(_se(_Pg)) do
		local _yf = _Af(_fe)
		if _yf > _O then
			_M = _fe
			_O = _yf
		end
	end
	return _M, _O
end
local function _hh(_gh)
	if not _gh or not _gh.Root then return true end
	if _le(_gh) then return true end
	local _cf = false
	if _gh.Part and _qd(_gh.Part) then _cf = true end
	for _p, _Wb in ipairs(_gh.Root:GetDescendants()) do
		if _Wb:IsA("BasePart") and _qd(_Wb) then
			_cf = true
			break
		end
	end
	return not _cf
end
local function _Qc()
	local _ih = {}
	for _p, _gh in ipairs(_se({"WIRE"})) do
		if _ke(_gh) and not _hh(_gh) then
			table.insert(_ih, _gh)
		end
	end
	table.sort(_ih, function(_q, _G)
		return _Me(_q.Part) < _Me(_G.Part)
	end)
	return _ih
end
local function _af()
	local _Jf = {}
	for _p, _id in ipairs(_o:GetDescendants()) do
		if _id:IsA("TextLabel") or _id:IsA("TextButton") or _id:IsA("TextBox") then
			local _Cg = tostring(_id.Text or "")
			local _Ke = _id.Parent and _ce(_id.Parent.Name) or ""
			local _Fc = _ce(_Ke .. " " .. _Cg)
			if string.find(_Fc, "code", 1, true)
				or string.find(_Fc, "base", 1, true)
				or string.find(_Fc, "color", 1, true)
				or string.find(_Fc, "colour", 1, true)
				or #_Cg <= 8
			then
				for _Hd in string.gmatch(string.upper(_Cg), "[RGBYPOWK]") do
					table.insert(_Jf, _Hd)
					if #_Jf >= 8 then break end
				end
			end
		end
	end
	if #_Jf > 0 then return _Jf end
	for _p, _fe in ipairs(_se({"BASE", "BUTTON"})) do
		local _Hd = _Eb(_pe(_fe))
		if not _Hd and _fe.Part then
			_Hd = _Db(_fe.Part.Color)
		end
		if _Hd then
			table.insert(_Jf, _Hd)
			if #_Jf >= 4 then break end
		end
	end
	return _Jf
end
local function _Fb(_fe)
	local _Cg = _pe(_fe)
	local _Hd, _Yd = _Eb(_Cg)
	if _Hd then return _Hd, _Yd end
	if _fe.Part then
		_Hd, _Yd = _Db(_fe.Part.Color)
		if _Hd then return _Hd, _Yd end
	end
	if _fe.Root then
		for _p, _Wb in ipairs(_fe.Root:GetDescendants()) do
			if _Wb:IsA("BasePart") then
				_Hd, _Yd = _Db(_Wb.Color)
				if _Hd then return _Hd, _Yd end
			end
		end
	end
	return nil
end
local function _Lc()
	local _gb = {}
	local _Df = {}
	for _p, _fe in ipairs(_se({"BASE", "BUTTON"})) do
		local _Cg = _pe(_fe)
		local _md = string.find(_Cg, "base", 1, true)
			or string.find(_Cg, "button", 1, true)
			or string.find(_Cg, "color", 1, true)
			or string.find(_Cg, "colour", 1, true)
			or _Fb(_fe) ~= nil
		if _md and not _Df[_fe.Root] then
			_Df[_fe.Root] = true
			table.insert(_gb, _fe)
		end
	end
	table.sort(_gb, function(_q, _G)
		local _F = _q.Part and _q.Part.Position.X or 0
		local _hb = _G.Part and _G.Part.Position.X or 0
		return _F < _hb
	end)
	return _gb
end
local function _tf()
	_Wg("Auto Complete Altar: cheese -> plate.")
	local _ob = _N({"CHEESE_ALTAR", "FOOD"}, _zf)
	local _Qe = _N({"PLATE"}, _Bf)
	if not _ob then
		_Wg("Cheese Altar item not found.")
		return
	end
	_kd(_ob, true, 2)
	task.wait(0.20)
	if not _Qe then
		_xf(true)
		_Qe = _N({"PLATE"}, _Bf)
	end
	if not _Qe then
		_Wg("Plate not found.")
		return
	end
	_kd(_Qe, false, 2)
	_Wg("Altar step finished.")
	task.wait(0.25)
end
local function _uf()
	_Wg("Auto Complete Wires running.")
	local _Ig = 0
	for pass = 1, 6 do
		local _df = _Qc()
		if #_df == 0 then break end
		for _p, _gh in ipairs(_df) do
			if _hh(_gh) then continue end
			_kd(_gh, false, 1)
			_Ig += 1
			task.wait(0.10)
		end
		_xf(true)
		task.wait(0.15)
	end
	_Wg("Wires finished. Clicked: " .. tostring(_Ig))
end
local function _sf()
	_Wg("Auto Complete Color Code running.")
	local _Jf = _af()
	local _gb = _Lc()
	if #_gb == 0 then
		_Wg("No Base color buttons found.")
		return
	end
	local _Ab = 0
	if #_Jf > 0 then
		for _p, _Hd in ipairs(_Jf) do
			local _qb = nil
			for _p, _db in ipairs(_gb) do
				local _eb = _Fb(_db)
				if _eb == _Hd then
					_qb = _db
					break
				end
			end
			if _qb then
				_kd(_qb, false, 1)
				_Ab += 1
				task.wait(0.12)
			end
		end
	else
		for pass = 1, 4 do
			for _p, _db in ipairs(_gb) do
				_kd(_db, false, 1)
				_Ab += 1
				task.wait(0.10)
			end
			_xf(true)
			local _gc = false
			for _p, _I in ipairs(_se({"BASE"})) do
				if _le(_I) then
					_gc = true
					break
				end
			end
			if _gc then break end
		end
	end
	_Wg("Color Code finished. Inputs: " .. tostring(_Ab))
end
local function _Bg()
	local _lf = _Ld()
	if not _lf then
		return
	end
	_Pe(CFrame.new(_lf.Position + Vector3.new(0, 260, 0)))
	_lf.AssemblyLinearVelocity = Vector3.zero
	_lf.AssemblyAngularVelocity = Vector3.zero
end
local function _qg()
	_Uf.ObjectiveAutoFarm = false
	_je = false
	_Wg("Objective auto farm stopped.")
end
local function _Zf()
	if _je then
		return
	end
	_je = true
	_Uf.ObjectiveAutoFarm = true
	task.spawn(function()
		_Wg("Smart Objectives running.")
		_xf(true)
		_tf()
		if _Uf.ObjectiveAutoFarm then
			_xf(true)
			_uf()
		end
		if _Uf.ObjectiveAutoFarm then
			_xf(true)
			_sf()
		end
		if _Uf.ObjectiveAutoFarm then
			_Bg()
			_Wg("Smart Objectives complete.")
		end
		_Uf.ObjectiveAutoFarm = false
		_je = false
	end)
end
local function _ie()
	if _je then
		return
	end
	_je = true
	_Wg("Objective pass running.")
	task.spawn(function()
		local _re = _xf(true)
		local _Sb = math.clamp(_Uf.ObjectiveFarmDelay / 100, 0.05, 1.5)
		for _p, _fe in ipairs(_re) do
			if not _je then
				break
			end
			if _fe.Part and _fe.Part.Parent and _fe.Distance <= _Uf.ObjectiveMaxDistance then
				_jd(_fe, false)
				task.wait(_Sb)
			end
		end
		_je = false
		_Uf.ObjectiveAutoFarm = false
		_Wg("Objective pass finished.")
	end)
end
local function _jg()
	_Zf()
end
local _K = false
local function _pg()
	_K = false
	_Wg("Bear Auto-Win stopped.")
end
local function _ig()
	if _K then
		return
	end
	_K = true
	_Wg("Bear Auto-Win running.")
	task.spawn(function()
		while _K do
			local _ug = _Uc("Survivors")
			local _Ec = false
			for _p, _xg in ipairs(_ug) do
				if not _K then
					break
				end
				if _xg ~= _e and _ld(_xg) then
					_Ec = true
					while _K and _xg.Parent and _ld(_xg) do
						local _yg = _Rc(_xg.Character)
						local _lf = _Ld()
						if _yg and _lf then
							_Pe(CFrame.new(_yg.Position + Vector3.new(0, 3.2, 0), _yg.Position))
							_lf.AssemblyLinearVelocity = Vector3.zero
							_lf.AssemblyAngularVelocity = Vector3.zero
						end
						task.wait(0.11)
					end
				end
			end
			if not _Ec then
				task.wait(0.5)
			end
		end
	end)
end
local function _vc(_xg, _Cf)
	local _yg = _xg and _Rc(_xg.Character)
	local _lf = _Ld()
	if not _yg or not _lf then
		return
	end
	local _lg = os.clock()
	while os.clock() - _lg < _Cf and _xg.Parent and _ld(_xg) do
		_yg = _Rc(_xg.Character)
		_lf = _Ld()
		if not _yg or not _lf then
			break
		end
		local _Se = _yg.Position + Vector3.new(0, 1.5, 0)
		_Pe(CFrame.new(_Se, _yg.Position))
		local _Te = 190
		_lf.AssemblyLinearVelocity = Vector3.new(
			math.random(-_Te, _Te),
			_Te * 1.2,
			math.random(-_Te, _Te)
		)
		_lf.AssemblyAngularVelocity = Vector3.new(
			math.random(-28, 28),
			math.random(-28, 28),
			math.random(-28, 28)
		)
		pcall(function()
			_yg.AssemblyLinearVelocity = Vector3.new(
				math.random(-_Te, _Te),
				_Te * 1.25,
				math.random(-_Te, _Te)
			)
			_yg.AssemblyAngularVelocity = Vector3.new(
				math.random(-30, 30),
				math.random(-30, 30),
				math.random(-30, 30)
			)
		end)
		task.wait(0.04)
	end
	_lf = _Ld()
	if _lf then
		_lf.AssemblyLinearVelocity = Vector3.zero
		_lf.AssemblyAngularVelocity = Vector3.zero
	end
end
local function _tg()
	_pg()
	_Bg()
	_Wg("Survivor Auto-Win finished.")
end
local function _L()
	_pg()
	_Wg("Bear Fling running.")
	task.spawn(function()
		for _p, _xg in ipairs(_Uc("Bear")) do
			if _xg ~= _e and _ld(_xg) then
				_vc(_xg, 1.2)
				task.wait(0.1)
			end
		end
		_Wg("Bear Fling finished.")
	end)
end
local function _Hf(_Sd)
	local _If = false
	pcall(function()
		local _mb = _l:FindFirstChild("TextChannels")
		local _Jc = _mb and _mb:FindFirstChild("RBXGeneral")
		if _Jc and _Jc:IsA("TextChannel") then
			_Jc:SendAsync(_Sd)
			_If = true
		end
	end)
	if _If then
		return true
	end
	pcall(function()
		local _Gd = _i:FindFirstChild("DefaultChatSystemChatEvents")
		local _wf = _Gd and _Gd:FindFirstChild("SayMessageRequest")
		if _wf then
			_wf:FireServer(_Sd, "All")
			_If = true
		end
	end)
	return _If
end
local function _Gf()
	if not _Uf.AutoToxic then
		return
	end
	if os.clock() - _zd < 1.35 then
		return
	end
	_zd = os.clock()
	_Hf(_a)
end
local function _Id(_xg)
	if not _Uf.AutoToxic then
		return false
	end
	if _Tc(_e) ~= "Bear" then
		return false
	end
	if _Tc(_xg) ~= "Survivors" then
		return false
	end
	local _Xd = _Ld()
	local _yg = _Rc(_xg.Character)
	if _Xd and _yg and (_Xd.Position - _yg.Position).Magnitude <= _Uf.AutoToxicKillRange then
		return true
	end
	local _ed = _Oc(_xg.Character)
	local _Pb = _ed and (_ed:FindFirstChild("creator") or _ed:FindFirstChild("Creator") or _ed:FindFirstChild("killer") or _ed:FindFirstChild("Killer"))
	if _Pb and _Pb:IsA("ObjectValue") and _Pb.Value == _e then
		return true
	end
	return false
end
local function _zb(_Re)
	local _Jd = _Kg[_Re]
	if not _Jd then
		return
	end
	for _p, _Gb in ipairs(_Jd) do
		pcall(function()
			_Gb:Disconnect()
		end)
	end
	_Kg[_Re] = nil
end
local function _dh(_Re)
	if _Re == _e or _Kg[_Re] then
		return
	end
	local _Jd = {}
	_Kg[_Re] = _Jd
	local function _dd(_nb)
		local _ed = _Oc(_nb) or _nb:WaitForChild("Humanoid", 10)
		if _ed then
			table.insert(_Jd, _ed.Died:Connect(function()
				if _Id(_Re) then
					_Gf()
				end
			end))
		end
	end
	if _Re.Character then
		task.defer(_dd, _Re.Character)
	end
	table.insert(_Jd, _Re.CharacterAdded:Connect(_dd))
end
local function _ef()
	for _p, _Re in ipairs(_h:GetPlayers()) do
		_dh(_Re)
	end
end
_e:GetPropertyChangedSignal("Team"):Connect(function()
	local _Zd = _Tc(_e)
	if _Uf.AutoToxic and _Ed == "Survivors" and _Zd == "Waiting" then
		_Gf()
	end
	_Ed = _Zd
end)
_h.PlayerAdded:Connect(_dh)
_h.PlayerRemoving:Connect(function(_Re)
	_zb(_Re)
	_ff(_Re)
	if _Bc == _Re.UserId then
		_Bc = nil
		_Uf.FlyFollow = false
		_Uf.FlyOrbit = false
	end
end)
_ef()
local function _x()
	local _jb = _o.CurrentCamera
	if not _jb then
		return
	end
	if _Uf.FovEnabled then
		_jb.FieldOfView = _Uf.FovValue
	else
		_jb.FieldOfView = _Ae
	end
end
local function _z()
	if _Uf.BrightVision then
		_d.Brightness = 3
		_d.Ambient = Color3.fromRGB(180, 185, 205)
		_d.OutdoorAmbient = Color3.fromRGB(170, 176, 200)
		_d.ClockTime = 14
	else
		_d.Brightness = _Be.Brightness
		_d.Ambient = _Be.Ambient
		_d.OutdoorAmbient = _Be.OutdoorAmbient
		_d.ClockTime = _Be.ClockTime
	end
	if _Uf.NoFog then
		_d.FogStart = 0
		_d.FogEnd = 100000
	else
		_d.FogStart = _Be.FogStart
		_d.FogEnd = _Be.FogEnd
	end
end
local function _A()
	if _Uf.LowEffects then
		for _p, _de in ipairs(_o:GetDescendants()) do
			if _de:IsA("ParticleEmitter") or _de:IsA("Trail") or _de:IsA("Beam") then
				if _cc[_de] == nil then
					_cc[_de] = _de.Enabled
				end
				_de.Enabled = false
			end
		end
	else
		for _de, _xe in pairs(_cc) do
			if _de and _de.Parent then
				_de.Enabled = _xe
			end
		end
		table.clear(_cc)
	end
end
local function _gf()
	_Qf(false)
	_hf()
	_Lf(false)
	_pg()
	_qg()
	_xb()
	_Uf.EnemyESP = false
	_Uf.EnemyTags = true
	_Uf.EnemyBoxes = true
	_Uf.EnemyHighlight = false
	_Uf.ObjectiveESP = false
	_Uf.ObjectiveAutoFarm = false
	_Uf.AutoToxic = false
	_Uf.FovEnabled = false
	_Uf.BrightVision = false
	_Uf.NoFog = false
	_Uf.LowEffects = false
	_x()
	_z()
	_A()
	_Wg("Reset complete.")
end
local _wg = {}
local _Tf = {}
local _Ge = {
	"Movement",
	"Objectives",
	"Fly",
	"ESP",
	"Auto-Win",
	"AutoToxic",
	"Visual",
	"Settings",
}
local _Zb = {
	Movement = "Speed mode and movement controls.",
	Fly = "Fly, follow and orbit controls.",
	ESP = "Enemy team information only.",
	Objectives = "Objective ESP and generic objective farming.",
	["Auto-Win"] = "Round action buttons.",
	AutoToxic = "Optional automatic chat message.",
	Visual = "Local camera and visibility options.",
	Settings = "Menu key, interface and reset.",
}
local function _Kf(_db, _mg)
	if _mg then
		_db.Text = "ON"
		_db.BackgroundColor3 = Color3.fromRGB(70, 105, 190)
		_db.TextColor3 = Color3.fromRGB(245, 247, 255)
	else
		_db.Text = "OFF"
		_db.BackgroundColor3 = Color3.fromRGB(28, 32, 43)
		_db.TextColor3 = Color3.fromRGB(155, 163, 185)
	end
end
local function _yb()
	for _p, _pb in ipairs(_rf:GetChildren()) do
		if _pb:IsA("Frame") then
			_pb:Destroy()
		end
	end
	table.clear(_Tf)
end
local function refreshButtons()
	for _td, _db in pairs(_Tf) do
		if _Uf[_td] ~= nil then
			_Kf(_db, _Uf[_td])
		end
	end
	_eh.Visible = _Uf.Watermark
	_B()
	_Wg()
end
local function _Mb(_qf, _Yb, _ad)
	local _of = _Od("Frame", {
		Name = _qf .. "_Row",
		Size = UDim2.new(1, -2, 0, _ad or 64),
		BackgroundColor3 = Color3.fromRGB(23, 27, 38),
		BorderSizePixel = 0,
		ZIndex = 14,
	})
	_of.Parent = _rf
	_r(_of, 12)
	local _pf = _Od("TextLabel", {
		Name = "Title",
		Position = UDim2.fromOffset(14, 8),
		Size = UDim2.new(1, -140, 0, 22),
		BackgroundTransparency = 1,
		Text = _qf,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextColor3 = Color3.fromRGB(235, 238, 248),
		TextSize = 14,
		Font = Enum.Font.GothamBold,
		ZIndex = 15,
	})
	_pf.Parent = _of
	local _Vb = _Od("TextLabel", {
		Name = "Description",
		Position = UDim2.fromOffset(14, 30),
		Size = UDim2.new(1, -140, 0, (_ad or 64) - 36),
		BackgroundTransparency = 1,
		Text = _Yb,
		TextXAlignment = Enum.TextXAlignment.Left,
		TextYAlignment = Enum.TextYAlignment.Top,
		TextColor3 = Color3.fromRGB(140, 149, 172),
		TextSize = 12,
		TextWrapped = true,
		Font = Enum.Font.GothamMedium,
		ZIndex = 15,
	})
	_Vb.Parent = _of
	return _of
end
local function _Ob(_td, _qf, _Yb, _ib)
	local _of = _Mb(_qf, _Yb, 64)
	local _db = _Od("TextButton", {
		Name = "Toggle",
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, -12, 0.5, 0),
		Size = UDim2.fromOffset(86, 32),
		BackgroundColor3 = Color3.fromRGB(28, 32, 43),
		Text = "OFF",
		TextColor3 = Color3.fromRGB(155, 163, 185),
		TextSize = 13,
		Font = Enum.Font.GothamBlack,
		AutoButtonColor = false,
		ZIndex = 16,
	})
	_db.Parent = _of
	_r(_db, 10)
	_Tf[_td] = _db
	_Kf(_db, _Uf[_td])
	_db.Activated:Connect(function()
		_Uf[_td] = not _Uf[_td]
		if _ib then
			_ib(_Uf[_td])
		end
		refreshButtons()
	end)
end
local function _Kb(_qf, _Yb, _fb, _ib)
	local _of = _Mb(_qf, _Yb, 64)
	local _db = _Od("TextButton", {
		Name = "Button",
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, -12, 0.5, 0),
		Size = UDim2.fromOffset(94, 32),
		BackgroundColor3 = Color3.fromRGB(70, 105, 190),
		Text = _fb,
		TextColor3 = Color3.fromRGB(245, 247, 255),
		TextSize = 12,
		Font = Enum.Font.GothamBlack,
		AutoButtonColor = false,
		ZIndex = 16,
	})
	_db.Parent = _of
	_r(_db, 10)
	_db.Activated:Connect(function()
		if _ib then
			_ib()
		end
		refreshButtons()
	end)
end
local function _Lb(_qf, _Yb, _Vd, _Vc)
	local _of = _Mb(_qf, _Yb, 64)
	local _db = _Od("TextButton", {
		Name = "Keybind",
		AnchorPoint = Vector2.new(1, 0.5),
		Position = UDim2.new(1, -12, 0.5, 0),
		Size = UDim2.fromOffset(98, 32),
		BackgroundColor3 = Color3.fromRGB(70, 105, 190),
		Text = _Vc(),
		TextColor3 = Color3.fromRGB(245, 247, 255),
		TextSize = 12,
		Font = Enum.Font.GothamBlack,
		AutoButtonColor = false,
		ZIndex = 16,
	})
	_db.Parent = _of
	_r(_db, 10)
	_db.Activated:Connect(function()
		_ah = _Vd
		_db.Text = "PRESS KEY"
	end)
end
local function _Nb(_td, _qf, _Yb, _Ud, _Pd, _ib)
	local _of = _Mb(_qf, _Yb, 82)
	local _Xg = _Od("TextLabel", {
		Name = "Value",
		AnchorPoint = Vector2.new(1, 0),
		Position = UDim2.new(1, -12, 0, 9),
		Size = UDim2.fromOffset(86, 22),
		BackgroundTransparency = 1,
		Text = tostring(_Uf[_td]),
		TextColor3 = Color3.fromRGB(235, 238, 248),
		TextSize = 14,
		Font = Enum.Font.GothamBlack,
		ZIndex = 15,
	})
	_Xg.Parent = _of
	local _H = _Od("TextButton", {
		Name = "Bar",
		Position = UDim2.new(0, 14, 1, -20),
		Size = UDim2.new(1, -28, 0, 8),
		BackgroundColor3 = Color3.fromRGB(32, 37, 50),
		Text = "",
		AutoButtonColor = false,
		ZIndex = 16,
	})
	_H.Parent = _of
	_r(_H, 8)
	local _sc = _Od("Frame", {
		Name = "Fill",
		Position = UDim2.fromOffset(0, 0),
		Size = UDim2.fromScale(0, 1),
		BackgroundColor3 = Color3.fromRGB(70, 105, 190),
		BorderSizePixel = 0,
		ZIndex = 17,
	})
	_sc.Parent = _H
	_r(_sc, 8)
	local _ic = false
	local function _Rf(_ae)
		_ae = _rb(_ae, _Ud, _Pd)
		_Uf[_td] = _ae
		_Xg.Text = tostring(_ae)
		local _w = (_ae - _Ud) / (_Pd - _Ud)
		_sc.Size = UDim2.fromScale(_w, 1)
		if _ib then
			_ib(_ae)
		end
		refreshButtons()
	end
	local function _Of(_hd)
		local _Fd = _H.AbsolutePosition.X
		local _fh = math.max(_H.AbsoluteSize.X, 1)
		local _w = math.clamp((_hd.Position.X - _Fd) / _fh, 0, 1)
		_Rf(_Ud + ((_Pd - _Ud) * _w))
	end
	_H.InputBegan:Connect(function(_hd)
		if _hd.UserInputType == Enum.UserInputType.MouseButton1 or _hd.UserInputType == Enum.UserInputType.Touch then
			_ic = true
			_Of(_hd)
		end
	end)
	_n.InputChanged:Connect(function(_hd)
		if _ic and (_hd.UserInputType == Enum.UserInputType.MouseMovement or _hd.UserInputType == Enum.UserInputType.Touch) then
			_Of(_hd)
		end
	end)
	_n.InputEnded:Connect(function(_hd)
		if _hd.UserInputType == Enum.UserInputType.MouseButton1 or _hd.UserInputType == Enum.UserInputType.Touch then
			_ic = false
		end
	end)
	_Rf(_Uf[_td])
end
local function _Y()
	_Ob("SpeedMode", "Speed Mode", "Press the selected speed key to lock the chosen speed. Press again to return to 16.", function(_kc)
		if not _kc then
			_Qf(false)
		end
	end)
	_Nb("SpeedValue", "Speed Value", "Selected speed. Range: 1 to 100.", 1, 100, function()
		if _fg then
			_Qf(true)
		end
	end)
	_Kb("Speed Method", "Current: " .. _Rb() .. ". Switch between WalkSpeed, CFrame and LinearVelocity.", _Rb(), function()
		_Uf.SpeedMethodIndex += 1
		if _Uf.SpeedMethodIndex > #_k then
			_Uf.SpeedMethodIndex = 1
		end
		if _fg then
			_Qf(true)
		end
		selectPage("Movement")
	end)
	_Lb("Speed Key", "Changes the key used to toggle speed mode.", "SpeedKey", function()
		return _vd(_dg)
	end)
	_Ob("KeepSpeedAfterRespawn", "Keep After Respawn", "Reapplies speed mode after respawn.", function()
		_Wg()
	end)
	_Kb("Return To 16", "Turns speed mode off and restores normal WalkSpeed.", "RESET", function()
		_Qf(false)
	end)
end
local function _X()
	_Ob("FlyEnabled", "Fly", "Move with WASD. Space goes up. Q or LeftCtrl goes down.", function(_kc)
		_Lf(_kc)
	end)
	_Nb("FlySpeed", "Fly Speed", "Flight movement speed. Range: 1 to 250.", 1, 250, function()
		_Sg(0)
	end)
	_Ob("FlyNoclip", "Noclip", "Lets your character pass through local collision while Fly is enabled.", function()
		if _Uf.FlyEnabled then
			_Sg(0)
		else
			_wb()
		end
	end)
	_Kb("Target: " .. _Ac(), "Selects previous player for follow/orbit.", "PREV", function()
		_Ef(-1)
		selectPage("Fly")
	end)
	_Kb("Target: " .. _Ac(), "Selects next player for follow/orbit.", "NEXT", function()
		_Ef(1)
		selectPage("Fly")
	end)
	_Nb("FlyFollowDistance", "Follow Distance", "Distance kept behind the selected player.", 3, 20, function()
		_Sg(0)
	end)
	_Ob("FlyFollow", "Fly Follow", "Teleports once if far away, then keeps flying behind the selected player.", function(_kc)
		_Mf(_kc)
	end)
	_Kb("Stop Fly Follow", "Stops follow without disabling normal Fly.", "STOP", function()
		_Mf(false)
		selectPage("Fly")
	end)
	_Ob("FlyOrbit", "Fly Orbit", "Orbits around the selected target while facing them.", function(_kc)
		_Nf(_kc)
	end)
	_Nb("FlyOrbitRadius", "Orbit Radius", "Distance kept around the selected target.", 4, 35, function()
		_Sg(0)
	end)
	_Nb("FlyOrbitHeight", "Orbit Height", "Vertical offset while orbiting.", -10, 20, function()
		_Sg(0)
	end)
	_Nb("FlyOrbitSpeed", "Orbit Speed", "How fast the orbit rotates.", 1, 20, function()
		_Sg(0)
	end)
	_Kb("Stop Fly Orbit", "Stops orbiting without disabling normal Fly.", "STOP", function()
		_Nf(false)
		selectPage("Fly")
	end)
end
local function _W()
	_Ob("EnemyESP", "Enemy ESP", "Shows information only for players on a different team.", function()
		_Rg()
	end)
	_Ob("EnemyTags", "Team Name Tags", "Shows: TeamName | DisplayName above enemy players.", function()
		_Rg()
	end)
	_Ob("EnemyBoxes", "2D Boxes", "Draws a stable 2D box around enemy characters.", function()
		_Rg()
	end)
	_Ob("EnemyHighlight", "Outline", "Adds a light outline to enemy characters.", function()
		_Rg()
	end)
	_Ob("ESPThroughWalls", "Through Walls", "When off, ESP hides enemies blocked by walls.", function()
		_Rg()
	end)
	_Nb("MaxESPDistance", "Max Distance", "Maximum ESP distance.", 100, 3000, function()
		_Rg()
	end)
end
local function _Z()
	_Ob("ObjectiveESP", "Objective ESP", "Shows detected altar, plate, wire, base and interaction objects.", function(_kc)
		if _kc then
			_xf(true)
			_Tg()
		else
			_xb()
		end
	end)
	_Ob("ObjectiveTags", "Objective Tags", "Shows objective type, name and distance above detected objects.", function()
		_Tg()
	end)
	_Kb("Scan Objectives", "Scans the current map. This is throttled to reduce lag.", "SCAN", function()
		local _Ec = #_xf(true)
		_Wg("Objectives found: " .. tostring(_Ec))
		_Tg()
	end)
	_Kb("Auto Complete Altar", "Gets the Cheese Altar item and places it on the Plate.", "RUN", function()
		_tf()
	end)
	_Kb("Auto Complete Wires", "Clicks every red Wire until the puzzle looks complete.", "RUN", function()
		_uf()
	end)
	_Kb("Auto Complete Color Code", "Tries the detected color code on Base buttons.", "RUN", function()
		_sf()
	end)
	_Kb("Smart Sequence", "Altar -> Wires -> Color Code -> sky.", "RUN", function()
		_Zf()
	end)
	_Kb("Generic Pass", "Moves through all detected objectives once.", "RUN", function()
		_ie()
	end)
	_Ob("ObjectiveAutoFarm", "Auto Farm", "Runs the smart objective sequence until it finishes or is stopped.", function(_kc)
		if _kc then
			_jg()
		else
			_qg()
		end
	end)
	_Nb("ObjectiveMaxDistance", "Max Distance", "Maximum distance for objective ESP and farming.", 100, 5000, function()
		_Bd = 0
		_Tg()
	end)
	_Nb("ObjectiveFarmDelay", "Farm Delay", "Delay between objective attempts. Lower is faster.", 5, 150, function() end)
	_Kb("Stop Auto Farm", "Stops the objective auto farm loop.", "STOP", function()
		_qg()
		selectPage("Objectives")
	end)
end
local function _V()
	_Kb("Start Bear Auto-Win", "Locks onto Survivors one by one until each target is dead.", "START", _ig)
	_Kb("Stop Bear Auto-Win", "Stops the running Bear Auto-Win loop.", "STOP", _pg)
	_Kb("Survivor Auto-Win", "Moves you above the map. No Survivor fling is used.", "RUN", _tg)
	_Kb("Bear Fling", "Attempts local fling on players in the Bear team.", "RUN", _L)
end
local function _U()
	_Ob("AutoToxic", "AutoToxic", "Sends the fixed chat message after a Bear kill or Survivors -> Waiting.", function(_kc)
		if _kc then
			_Ed = _Tc(_e)
			_ef()
			_Wg("AutoToxic enabled.")
		else
			_Wg("AutoToxic disabled.")
		end
	end)
	_Kb("Test Message", "Sends the fixed message once.", "SEND", function()
		_Gf()
	end)
	_Nb("AutoToxicKillRange", "Kill Range", "Max distance used to detect a local Bear kill.", 10, 150, function() end)
end
local function _bb()
	_Ob("FovEnabled", "Custom FOV", "Uses the selected local camera FOV.", _x)
	_Nb("FovValue", "FOV Value", "Camera FOV. Range: 40 to 120.", 40, 120, _x)
	_Ob("BrightVision", "Bright Vision", "Improves local visibility.", _z)
	_Ob("NoFog", "No Fog", "Removes local fog.", _z)
	_Ob("LowEffects", "Low Effects", "Disables particles, trails and beams locally.", _A)
end
local function _ab()
	_Lb("Menu Key", "Changes the key used to open and close this menu.", "MenuKey", function()
		return _vd(_Qd)
	end)
	_Ob("Watermark", "Watermark", "Shows or hides the small BRNL text.", function()
		_eh.Visible = _Uf.Watermark
	end)
	_Nb("UIScale", "UI Scale", "Changes menu size. Range: 70 to 115.", 70, 115, _B)
	_Kb("Reset All", "Restores speed and visual changes to default.", "RESET", function()
		_gf()
		selectPage(_Ff)
	end)
end
local _cb = {
	Movement = _Y,
	Fly = _X,
	ESP = _W,
	Objectives = _Z,
	["Auto-Win"] = _V,
	AutoToxic = _U,
	Visual = _bb,
	Settings = _ab,
}
function selectPage(_Ee)
	_Ff = _Ee
	_Fe.Text = _Ee
	_rg.Text = "Bear Alpha"
	_ng.Text = _Zb[_Ee] or "Ready"
	for _Yd, _db in pairs(_wg) do
		if _Yd == _Ee then
			_db.BackgroundColor3 = Color3.fromRGB(70, 105, 190)
			_db.TextColor3 = Color3.fromRGB(245, 247, 255)
		else
			_db.BackgroundColor3 = Color3.fromRGB(24, 28, 38)
			_db.TextColor3 = Color3.fromRGB(155, 163, 185)
		end
	end
	_yb()
	if _cb[_Ee] then
		_cb[_Ee]()
	end
	refreshButtons()
	_Wg()
end
for _gd, _Ee in ipairs(_Ge) do
	local _db = _Od("TextButton", {
		Name = _Ee .. "_Tab",
		Size = UDim2.new(1, 0, 0, 42),
		BackgroundColor3 = Color3.fromRGB(24, 28, 38),
		Text = _Ee,
		TextColor3 = Color3.fromRGB(155, 163, 185),
		TextSize = 13,
		Font = Enum.Font.GothamBold,
		AutoButtonColor = false,
		LayoutOrder = _gd,
		ZIndex = 14,
	})
	_db.Parent = _Xf
	_r(_db, 10)
	_wg[_Ee] = _db
	_db.Activated:Connect(function()
		selectPage(_Ee)
	end)
end
_n.InputBegan:Connect(function(_hd, _Hc)
	if _Hc then
		return
	end
	if _hd.KeyCode == Enum.KeyCode.Unknown then
		return
	end
	if _ah then
		if _ah == "SpeedKey" then
			_dg = _hd.KeyCode
		elseif _ah == "MenuKey" then
			_Qd = _hd.KeyCode
		end
		_ah = nil
		selectPage(_Ff)
		_Wg()
		return
	end
	if _hd.KeyCode == _Qd then
		_Pf(not _Rd)
		return
	end
	if _hd.KeyCode == _dg and _Uf.SpeedMode then
		_Fg()
	end
end)
_Bb.Activated:Connect(function()
	_Pf(false)
end)
local _ic = false
local _hc = nil
local _kg = nil
_Gg.InputBegan:Connect(function(_hd)
	if _hd.UserInputType == Enum.UserInputType.MouseButton1 or _hd.UserInputType == Enum.UserInputType.Touch then
		_ic = true
		_hc = _hd.Position
		_kg = _Nd.Position
	end
end)
_n.InputChanged:Connect(function(_hd)
	if not _ic then
		return
	end
	if _hd.UserInputType ~= Enum.UserInputType.MouseMovement and _hd.UserInputType ~= Enum.UserInputType.Touch then
		return
	end
	local _Tb = _hd.Position - _hc
	_Nd.Position = UDim2.new(
		_kg.X.Scale,
		_kg.X.Offset + _Tb.X,
		_kg.Y.Scale,
		_kg.Y.Offset + _Tb.Y
	)
	_Vf.Position = _Nd.Position
end)
_n.InputEnded:Connect(function(_hd)
	if _hd.UserInputType == Enum.UserInputType.MouseButton1 or _hd.UserInputType == Enum.UserInputType.Touch then
		_ic = false
	end
end)
local function _C(_nb)
	local _ed = _nb:WaitForChild("Humanoid", 10)
	if not _ed then
		return
	end
	if _cg then
		_cg:Disconnect()
	end
	if _vf then
		_vf:Disconnect()
	end
	_cg = _ed:GetPropertyChangedSignal("WalkSpeed"):Connect(_Wg)
	_vf = _ed.Running:Connect(function(_ag)
		_bf = math.floor(_ag * 100) / 100
		_Wg()
	end)
	task.wait(0.15)
	if _Uf.KeepSpeedAfterRespawn and _fg then
		_Qf(true)
	end
	if _Uf.FlyEnabled then
		_Lf(true)
	end
	_Wg()
end
if _e.Character then
	task.defer(_C, _e.Character)
end
_e.CharacterAdded:Connect(_C)
local _jc = 0
_j.RenderStepped:Connect(function(_Ub)
	_jc += _Ub
	_Vg(_Ub)
	_Sg(_Ub)
	if _Uf.FovEnabled then
		_x()
	end
	if _Uf.LowEffects and _jc >= 2 then
		_jc = 0
		_A()
	end
	if _Uf.AutoToxic and _jc >= 1 then
		_ef()
	end
	if _Uf.EnemyESP and os.clock() - _Ad >= 0.08 then
		_Ad = os.clock()
		_Rg()
	elseif not _Uf.EnemyESP then
		_Rg()
	end
	if _Uf.ObjectiveESP then
		_Tg()
	elseif next(_he) ~= nil then
		_xb()
	end
	if _Uf.ObjectiveAutoFarm and not _je then
		_jg()
	end
	if os.clock() - _Dd >= 0.25 then
		_Dd = os.clock()
		_Wg()
	end
end)
selectPage("Movement")
_Pf(true)
_Wg()
