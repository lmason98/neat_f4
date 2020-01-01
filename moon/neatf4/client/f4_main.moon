main = {} -- main f4 DFrame
anim_time = 0.2 -- time taken for grow in/out animations
pad = 5

-- Desc: Builds the main f4 frame
main.Build = =>
    @.btns =
        [1]: text: "Jobs", btn_pnl: nil, func: => LocalPlayer!\ChatPrint " Clicked Jobs"
        [2]: text: "Weapons", btn_pnl: nil, func: => LocalPlayer!\ChatPrint " Clicked Weapons"
        [3]: text: "Ammunition", btn_pnl: nil, func: => LocalPlayer!\ChatPrint " Clicked Ammunition"
        [4]: text: "Shipments", btn_pnl: nil, func: => LocalPlayer!\ChatPrint " Clicked Shipments"
        [5]: text: "Entities", btn_pnl: nil, func: => LocalPlayer!\ChatPrint " Clicked Entities"

    len = table.Count @.btns
    btn_width = (@GetWide! - (pad * len+1)) / len 

    for btn in *@.btns
        btn.btn_pnl = vgui.Create "neatf4_button", @
        btn.btn_pnl\Build LEFT, l: pad, t: 0, r: 0, b: 0, btn_width -- left, top, right, bot
        btn.btn_pnl\SetText btn.text
        btn.btn_pnl.DoClick = btn.func

-- Desc: Shrink down anim then remove 
main.Close = =>
    @SizeTo @GetWide!, 0, anim_time, 0, -1, ->
        @Remove!

-- Desc: Inits the main f4 frame
main.Init = =>
    @DockPadding 0,pad,pad,pad
    @SetSize ScrW!, 0
    @MakePopup!

    -- Grow open anim
    @SizeTo @GetWide!, ScrH!/6, anim_time 
    @Build!

vgui.Register "neatf4_main_frame", main, "DFrame"

concommand.Add "neatf4_open", ->
    vgui.Create "neatf4_main_frame"
