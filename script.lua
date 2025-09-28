local VirtualUser = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local player = Players.LocalPlayer
if not player then return end
local doing = false

VirtualUser:CaptureController()

while task.wait(0.1) do
	VirtualUser:ClickButton1(Vector2.new(0,0))
end

game.Players.LocalPlayer.Chatted:Connect(function(msg)
	if string.lower(msg) == "stop" then
		doing = false
		StarterGui:SetCore("SendNotification", {
			Title = "Stopped",
			Text = "Stopped the autoclicker",
			Icon = "rbxassetid://0",
			Duration = 5,
			Callback = nil,
			Button1 = "OK"
		})
	elseif string.lower(msg) == "start" then
		doing = true
		StarterGui:SetCore("SendNotification", {
			Title = "Started",
			Text = "Started the autoclicker",
			Icon = "rbxassetid://0",
			Duration = 5,
			Callback = nil,
			Button1 = "OK"
		})
	end
end)
