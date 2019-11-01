local table = table
local print = print
local math = math
local type = type


local M = {}
package.loaded[...] = M 
local _ENV = M

function table.clone(org)
    return {table.unpack(org)}
end

--[[function deepcopy(orig)
    local orig_type = type(orig)
    local copy
    if orig_type == 'table' then
        copy = {}
        for orig_key, orig_value in next, orig, nil do
            copy[deepcopy(orig_key)] = deepcopy(orig_value)
        end
        setmetatable(copy, deepcopy(getmetatable(orig)))
    else -- number, string, boolean, etc
        copy = orig
    end
    return copy
end]]


function isSafe(row, col, di, dj, m, cnvobj, visited) 
    print(matrix_width,matrix_height,row,col)
    if (row == 0 or row == matrix_width+1 or col == 0 or col == matrix_height+1  or visited[row][col] or m[row][col] == 0) then 
        return false
    end

    return true
end


function printPathUtil(row, col, di, dj, m, cnvobj, path, visited) 

    -- This will check the initial point 
    -- (i.e. (0, 0)) to start the paths. 
    if (row == 0 or row == matrix_width + 1 or col == 0 or col ==matrix_height + 1 or visited[row][col]  or m[row][col] == 0) then
        return
    end
  
    -- If reach the last cell (n, n) 
   
    if (row == di  and col == dj ) then 
        
        possiblePaths[#possiblePaths+1] = table.clone(path)
       
        return
    end
  
    -- Mark the cell as visited 
    visited[row][col] = true; 
  
    -- Try for all the 4 directions (down, left, right, up) 
  
    -- Check if downward move is valid 
    if (isSafe(row + 1, col, di, dj, m,cnvobj, visited)) then
        table.insert(path, 'D') 
        printPathUtil(row + 1, col, di, dj, m,cnvobj, path, visited); 
        table.remove(path, #path)
    end
  
    -- Check if the left move is valid 
    if (isSafe(row, col - 1, di, dj, m,cnvobj, visited)) then
        table.insert(path, 'L') 
        printPathUtil(row, col - 1, di, dj, m,cnvobj, path, visited); 
        table.remove(path, #path)
    end
  
    -- Check if the right move is valid 
    if (isSafe(row, col + 1, di, dj,  m, cnvobj, visited))  then
     
        table.insert(path, 'R')
        printPathUtil(row, col + 1,di, dj, m, cnvobj,  path, visited); 
        table.remove(path, #path)
    end
  
     -- Check if the upper move is valid 
    if (isSafe(row - 1, col, di, dj,  m, cnvobj, visited)) then
     
        table.insert(path, 'U')
        printPathUtil(row - 1, col, di, dj, m, cnvobj, path, visited); 
        table.remove(path, #path)
    end
  
    -- Mark the cell as unvisited for  
    -- other possible paths 
    visited[row][col] = false; 
end 
  
-- Function to store and print 
-- all the valid paths  
function shortestPath(m, cnvobj) 
    --[[cnvobj = {}
    cnvobj.height = 5
    cnvobj.width = 5
    -- vector to store all the possible paths 
    m = { { 1, 0, 0, 0, 0 }, { 1, 1, 1, 1, 1 }, { 1, 1, 1, 0, 1 }, { 0, 0, 0, 0, 1 }, { 0, 0, 0, 0, 1 } }
    ]]
    possiblePaths = {}
    path = {} 
    visited = {} 
    matrix_width = math.floor(cnvobj.width/cnvobj.grid_x)
    matrix_height = math.floor(cnvobj.height/cnvobj.grid_y)
    
    for i=1,#m do
      
        str = ""
        for j=1, #m[i] do
            str = str..m[i][j]
            
        end
        print(str)
    end

    for i=1, #m do 
        visited[i]= {}
        for j=1, #m[i] do 
            visited[i][j] = false
        end
    end
    si , sj, di, dj = 1,1,2,4
    printPathUtil(si, sj, di, dj, m, cnvobj, path, visited); 

    --[[for i=1, #possiblePaths do
        str = ""
        for j=1, #possiblePaths[i] do
            str = str..possiblePaths[i][j]
        end
        print(str)
    end]]

    if #possiblePaths > 0 then 
        local index = 1
        min = #possiblePaths[1]
        for i=1, #possiblePaths do
            if min > #possiblePaths[i] then
                min = #possiblePaths
                index = i
            end
        end

        return possiblePaths[index]
    else 
        return false
    end

end

--[[t = shortestPath()
str = ""
for k,v in pairs(t) do 
    str= str..v 
end
print(str)]]


