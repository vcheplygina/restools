%MRDIVIDE Results overload
function s = mrdivide(r,b)

if isa(r,'results') & ~isa(b,'results')
	s = r;
	s.res = r.res / b;
elseif ~isa(r,'results') & isa(b,'results')
	s = r;
	s.res = b / r.res;
else
	s = r;
	s.res = r.res / b.res;
end

return
	
