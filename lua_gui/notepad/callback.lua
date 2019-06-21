require "utilities"
require "structure"

-- this file contains function for each item(open, save_as, exit,find,goto,font,about) 

-- function to open text file
function GUI.items.open:action()
    local filedlg = iup.filedlg{  -- this create a dialog by which you can open a file 
    dialogtype = "OPEN", 
    filter = "*.txt", 
    filterinfo = "Text Files",
    parentdialog=iup.GetDialog(self)
    }
    
    filedlg:popup(iup.CENTERPARENT, iup.CENTERPARENT)  
    
    if (tonumber(filedlg.status) ~= -1) then  -- if file is open without any error then it call read_file function
    local filename = filedlg.value               -- and copy all content of file to multitext (text field)
    local str = read_file(filename)
    if (str) then
        GUI.multitext.value = str
    end
    end
    filedlg:destroy()  -- destory popup 
end

-- function to save text file
function GUI.items.saveas:action()  -- this function create a dialog by which you can save a file 
    local filedlg = iup.filedlg{
    dialogtype = "SAVE", 
    filter = "*.txt", 
    filterinfo = "Text Files", 
    parentdialog=iup.GetDialog(self)
    }
    
    filedlg:popup(iup.CENTERPARENT, iup.CENTERPARENT)
    
    if (tonumber(filedlg.status) ~= -1) then
    local filename = filedlg.value
    write_file(filename, GUI.multitext.value) --copy all content of multitext (text field) to text file 
    end
    filedlg:destroy()
end
    
function GUI.items.exit:action()  -- to close the window
    return iup.CLOSE
end

-- function to jump from one line to another line
function GUI.items.go_to:action()   
    local line_count = GUI.multitext.linecount
    local lbl_goto = iup.label{title = "Line Number [1-"..line_count.."]:"}
    local txt_goto = iup.text{mask = iup.MASK_UINT, visiblecolumns = 20} --unsigned integer numbers only
    
    local bt_goto_ok = iup.button{title = "OK", text_linecount = 0, padding = "10x2"} --ok button in goto dialog
    bt_goto_ok.text_linecount = line_count
    function bt_goto_ok:action()
    local line_count = tonumber(self.text_linecount)
    local line = tonumber(txt_goto.value)
    if (line < 1 or line >= line_count) then
        iup.Message("Error", "Invalid line number.")
        return
    end
    goto_dlg.status = 1
    return iup.CLOSE
    end
    
    local bt_goto_cancel = iup.button{title = "Cancel", padding = "10x2"}  -- cancle button in goto dialog
    function bt_goto_cancel:action()
    goto_dlg.status = 0
    return iup.CLOSE
    end
    
    local box = iup.vbox{
    lbl_goto,
    txt_goto,
    iup.hbox{
        iup.fill{},
        bt_goto_ok,
        bt_goto_cancel,
        normalizesize="HORIZONTAL", 
    },
    margin = "10x10", 
    gap = "5",
    }
    goto_dlg = iup.dialog{
    box,
    title = "Go To Line", 
    dialogframe = "Yes", 
    defaultenter = bt_goto_ok, 
    defaultesc = bt_goto_cancel,
    parentdialog = iup.GetDialog(self)
    }
    
    goto_dlg:popup(iup.CENTERPARENT, iup.CENTERPARENT)
    
    if (tonumber(goto_dlg.status) == 1) then
    local line = txt_goto.value
    local pos = iup.TextConvertLinColToPos(GUI.multitext, line, 0)
    GUI.multitext.caretpos = pos
    GUI.multitext.scrolltopos = pos
    end
    
    goto_dlg:destroy()
end
    
-- function to find character in given text   
function GUI.items.find:action()   
    local find_dlg = self.find_dialog
    if (not find_dlg) then
    local find_txt = iup.text{visiblecolumns = "20"}
    local find_case = iup.toggle{title = "Case Sensitive"}
    local bt_find_next = iup.button{title = "Find Next", padding = "10x2"}
    local bt_find_close = iup.button{title = "Close", padding = "10x2"}
    
    function bt_find_next:action()
        local find_pos = tonumber(find_dlg.find_pos)
        local str_to_find = find_txt.value
    
        local casesensitive = (find_case.value == "ON")
    
        -- test again, because it can be called from the hot key
        if (not str_to_find or str_to_find:len()==0) then
        return
        end
    
        if (not find_pos) then
        find_pos = 1
        end
    
        local str = GUI.multitext.value
    
        local pos, end_pos =str_find(str, str_to_find, casesensitive, find_pos)
        if (not pos) then
        pos, end_pos = str_find(str, str_to_find, casesensitive, 1)  -- try again from the start
        end
    
        if (pos) and (pos > 0) then
        pos = pos - 1
        find_dlg.find_pos = end_pos
    
        iup.SetFocus(GUI.multitext)
        GUI.multitext.selectionpos = pos..":"..end_pos
    
        local lin, col = iup.TextConvertPosToLinCol(GUI.multitext, pos)
        local pos = iup.TextConvertLinColToPos(GUI.multitext, lin, 0)  -- position at col=0, just scroll lines
        GUI.multitext.scrolltopos = pos
        else
        find_dlg.find_pos = nil
        iup.Message("Warning", "Text not found.")
        end
    end
    
    function bt_find_close:action()
        iup.Hide(iup.GetDialog(self))  -- do not destroy, just hide
    end
    
    box = iup.vbox{
        iup.label{title = "Find What:"},
        find_txt,
        find_case,
        iup.hbox{
        iup.fill{},
        bt_find_next,
        bt_find_close,
        normalizesize="HORIZONTAL", 
        },
        margin = "10x10", 
        gap = "5",
    }
    
    find_dlg = iup.dialog{
        box, 
        title = "Find", 
        dialogframe = "Yes", 
        defaultenter = bt_next, 
        defaultesc = bt_close,
        parentdialog = iup.GetDialog(self)
        }
    
    -- Save the dialog to reuse it 
    self.find_dialog = find_dlg -- from the main dialog */
    end
    
    -- centerparent first time, next time reuse the last position
    find_dlg:showxy(iup.CURRENT, iup.CURRENT)
end



    
-- function run when some clike on about
function GUI.items.about:action()   --to show about the notepad
    iup.Message("About", "This is simple notepad \n Using iuplua library")
end

  