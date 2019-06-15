local M = {}
package.loaded[...] = M
_ENV = M	

foo = { x=24, y=34 }

function exit()
	return foo.x, foo.y
end

