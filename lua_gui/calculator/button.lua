button = {
    numeric = {  -- table for numeric buttons
          bt1 = {
                  --button 1
          },
          bt2 = {
                  --button 2
          },
          bt3 = {

          },
          bt4 = {

          },
          bt5 = {

          },
          bt6 = {

          },
          bt7 = {

          },
          bt8 = {

          },
          bt9 = {

          },
          bt0 = {

          },
          dot = {
                 -- dot button -> "."
          },
    },
    
    operator = {  -- table for button of operators
        time = {
                  -- to multiply 
        },
        divide = {
                  -- to diviede
        },
        pluse = {
                  -- to add
        },
        divide = {
                  -- to divide
        },
        equal = {
                -- for equal operator
        },
    },

    math = {   -- table for mathematical opearator
        sin = {
                -- for sin
        },
        cos = {
                -- for cos
        },
        tan = {
                --for tan
        },
        log = {
                -- natural logarithms
        },
        exp = {
                --the base of natural logarithms
        },
        sqrt = {
                 --square root
        },
        pi = {
                 -- pi value = 3.14159265359

        },
        deg ={
                -- convert radian to degree
        }, 

    },

    clear ={
            -- to clear var1,
    },
    var1 = {
            -- variable to store expression
    },
}

button.var1 = iup.text{expand="HORIZONTAL",  --text layout to show the expression
    bgcolor="255 128 128",
    multiline="yes",
    size="200x30",
    border="yes",
    ReadOnly="yes",}

--there several buttons 
--we concatenate button to create expression
--when equal button pressed we evaluate expression

button.numeric.bt1 = iup.button{size="40x35",title="1",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."1"  --concatenation  
    end
}
    
button.numeric.bt2 = iup.button{size="40x35",title="2",expand="yes",
    
    action=function()
       button.var1.value = button.var1.value.."2"   --concatenation  
    end
}
    
button.numeric.bt3 = iup.button{size="40x35",title="3",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."3"   --concatenation  
    end
}
    
button.numeric.bt4 = iup.button{size="40x35",title="4",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."4"  --concatenation  
    end
}
    
button.numeric.bt5 = iup.button{size="40x35",title="5",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."5"  --concatenation  
    end
}
    
button.numeric.bt6 = iup.button{size="40x35",title="6",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."6"  --concatenation  
    end
}
    
button.numeric.bt7 = iup.button{size="40x35",title="7",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."7"  --concatenation  
    end
}
    
button.numeric.bt8 = iup.button{size="40x35",title="8",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."8"   --concatenation  
    end
}

button.numeric.bt9 = iup.button{size="40x35",title="9",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."9"  --concatenation  
    end
}
button.numeric.bt0 = iup.button{size="40x35",title="0",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."0"   --concatenation  
    end
}
    
button.numeric.dot = iup.button{size="40x35",title=".",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."."  --concatenation  
    end
}

button.operator.times = iup.button{size="40x35",title="*",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."*"  --concatenation  
    end
}
    
button.operator.divide = iup.button{size="40x35",title="/",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."/"  --concatenation  
    end
}
    
button.operator.plus = iup.button{size="40x35",title="+",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."+"  --concatenation  
    end
}
    
button.operator.minus = iup.button{size="40x35",title="-",expand="yes",
    
    action=function()
        button.var1.value = button.var1.value.."-"   --concatenation  
    end
}
button.operator.equal = iup.button{size="40x35",title="=",expand="yes",
    
    action=function()
        f=load("return "..button.var1.value)   --return the evaluated value of var1.value(main_variable / expression),and store it into f function
        button.var1.value = f() --restore the solved expression
    end
}

-- buttons to solve mathematical function 
-- here we used math library to calculate mathematical function
button.math.sin = iup.button{size="40x35",title="sin",expand="yes",
    
    action = function()
        button.var1.value=math.sin(button.var1.value)
    end
}
    
button.math.cos = iup.button{size="40x35",title="cos",expand="yes",
        
    action = function()
        button.var1.value=math.cos(button.var1.value)
    end
}
    
button.math.tan = iup.button{size="40x35",title="tan",expand="yes",
    action = function()
        button.var1.value=math.tan(button.var1.value)
    end
}
    
button.math.log = iup.button{size="40x35",title="log",expand="yes",
        
    action = function()
        button.var1.value=math.log(button.var1.value)
    end
}
    
button.math.exp = iup.button{size="40x35",title="exp",expand="yes",
    
    action = function()
        button.var1.value=math.exp(button.var1.value)
    end
}
    
button.math.sqrt = iup.button{size="40x35",title="sqrt",expand="yes",
    
    action=function()
        button.var1.value = math.sqrt(button.var1.value)
    end
}

button.math.pi = iup.button{size="40x35",title="pi",expand="yes",
    
    action = function()
        button.var1.value=math.pi
    end
}

button.math.deg = iup.button{size="40x35",title="deg",expand="yes",
    
    action = function()
        button.var1.value=math.deg(button.var1.value)
    end
}

-- to clear variable var1  
button.clear = iup.button{size="40x35",title="Clear",expand="yes",
    
    action=function()
        button.var1.value = ""
    end
}
