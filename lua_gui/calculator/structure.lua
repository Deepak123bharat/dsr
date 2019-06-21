-- All the Main tables of the Program

require "button"   --File where button table are

-- The GUI structure

GUI = {
	_VERSION = nil, 	--For version of calculator
	mainDlg = nil,
	mainVbox = nil,		-- Main box where the buttons are
}

GUI._VERSION = "2.0"

GUI.mainVbox = iup.vbox  --main box which contain buttons
{   
	iup.hbox{button.var1}, 
    iup.hbox{button.math.sin,  button.numeric.bt7,  button.numeric.bt8,  button.numeric.bt9,  button.operator.divide},
    iup.hbox{button.math.cos,  button.numeric.bt4,  button.numeric.bt5,  button.numeric.bt6,  button.operator.times},
    iup.hbox{button.math.tan,  button.numeric.bt1,  button.numeric.bt2,  button.numeric.bt3,  button.operator.minus},
    iup.hbox{button.math.exp,  button.math.log,     button.numeric.bt0,  button.numeric.dot,  button.operator.plus},
    iup.hbox{button.math.pi,   button.math.deg,     button.math.sqrt,    button.clear,        button.operator.equal}
}

GUI.mainDlg = iup.dialog  --this section contaion main dialog in which main box in placed
{
	GUI.mainVbox;
	title = "Calculator "..GUI._VERSION,
	size="HALFxHALF",
	shrink="YES",
}



