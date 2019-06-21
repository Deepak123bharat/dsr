-- All the Main tables of the Program

-- The GUI structure

GUI = {
	_VERSION = nil,
	multitext = {

    },
    items = {   -- items like open save_as exit
        open = {

        },
        saveas = {

        },
        exit = {

        },
        
        find = {

        },
        go_to = {

        },
        about = {

        },

    },

    menus = {  --menu which conatin submenu
        file = {

        },
        edit = {

        },
        help = {

        },
    },

    subMenu = {  --submenu
        sub_file = {

        },
        sub_edit = {

        },
       
        sub_help = {

        },
         
    },

    mainMenu = { 

    },

    vbox = {  --vertical box

    },
     
    dlg = { --main dialog

    },
    
}

-- Fill GUI up with elements
GUI._VERSION = "2.0"
-- GUI.images = require("images")

GUI.multitext = iup.text{
    multiline = "YES",
    expand = "YES"
  }
  
GUI.items.open = iup.item{title="Open"}
GUI.items.saveas = iup.item{title="Save As"}
GUI.items.exit = iup.item{title="Exit"}

GUI.items.find = iup.item{title="Find"}
GUI.items.go_to = iup.item{title="Go To"}


GUI.items.about = iup.item{title="About"}


GUI.menus.file = iup.menu{GUI.items.open,GUI.items.saveas,iup.separator{},GUI.items.exit}
GUI.menus.edit = iup.menu{GUI.items.find, GUI.items.go_to}

GUI.menus.help = iup.menu{GUI.items.about}

GUI.subMenu.sub_file = iup.submenu{GUI.menus.file, title = "File"}
GUI.subMenu.sub_edit = iup.submenu{GUI.menus.edit, title = "Edit"}

GUI.subMenu.sub_help = iup.submenu{GUI.menus.help, title = "Help"}

GUI.menu = iup.menu{
  GUI.subMenu.sub_file, 
  GUI.subMenu.sub_edit, 
  GUI.subMenu.sub_format, 
  GUI.subMenu.sub_help,
  }

GUI.vbox = iup.vbox{
  GUI.multitext
}

GUI.dlg = iup.dialog{
  GUI.vbox,
  title = "Notepad  "..GUI._VERSION,
  size = "HALFxHALF",
  menu = GUI.menu
}


