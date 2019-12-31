local frame = { }
frame.Init = function(self)
  self:SetSize(ScrW / 2, ScrH / 2)
  self:Center()
end
vgui.Register("neatf4_main_frame", frame, "DFrame")
concommand.Add("neatf4_open", function()
  vgui.Create("neatf4_main_frame")
end)
print("vgui file loaded!")
