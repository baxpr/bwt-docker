function matlab_entrypoint(varargin)

fcn = varargin{1};
feval(fcn,varargin{2:end});

