--this file contains three function 
-- 1. to find string 
-- 2. to read from file 
-- 3. to write in file


-- function no. 1 
function str_find(str, str_to_find, casesensitive, start)
    if (not casesensitive) then
        return str_find(string.lower(str), string.lower(str_to_find), true, start)
    end
        return string.find(str, str_to_find, start, true)
end
    

-- function no. 2  
-- it take a file name, read the content from given file(filename) and return all the content of given file(filename)
-- to multitext(text field)
function read_file(filename)
    local ifile = io.open(filename, "r")
    if (not ifile) then
        iup.Message("Error", "Can't open file: " .. filename)
        return nil
    end
        
    local str = ifile:read("*a")
    if (not str) then
        iup.Message("Error", "Fail when reading from file: " .. filename)
        return nil
    end
        
    ifile:close()
    return str
end
    
-- function no. 3
-- it take content from multitext(text field) and write the content into the given file(filename)
function write_file(filename, str)
    local ifile = io.open(filename, "w")
    if (not ifile) then
        iup.Message("Error", "Can't open file: " .. filename)
        return
    end
        
    if (not ifile:write(str)) then
        iup.Message("Error", "Fail when writing to file: " .. filename)
    end
        
    ifile:close()
end

