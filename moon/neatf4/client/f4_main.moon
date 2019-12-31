frame = {}

frame.Init = =>
    @SetSize ScrW/2, ScrH/2
    @Center!
    return

vgui.Register "neatf4_main_frame", frame, "DFrame"

concommand.Add "neatf4_open", ->
    vgui.Create "neatf4_main_frame"
    return

print "vgui file loaded!"
return
