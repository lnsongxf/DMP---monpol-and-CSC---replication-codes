function Def = optim()
% optim  [Not a public function] Default options for optim package.
%
% Backend IRIS function.
% No help provided.

% -IRIS Toolbox.
% -Copyright (c) 2007-2015 IRIS Solutions Team.

%--------------------------------------------------------------------------

Def = struct();

Def.pso = { ...
    'CognitiveAttraction', 0.5, @(x) isnumericscalar(x) && x>=0 && x<=1, ...
    'ConstrBoundary','reflect', @(x) isanystri(x,{'soft','reflect','absorb'}), ...
    'Display','iter', @(x) isanystri(x,{'off','iter','final'}), ...
    'DemoMode','off', @(x) isanystri(x,{'off','fast','pretty','on'}), ...
    'FitnessLimit', -Inf, @(x) isnumericscalar(x), ...
    'Generations', 1000, @(x) isnumericscalar(x) && x>0, ...
    'HybridFcn', false, @(x) islogicalscalar(x) || isfunc(x) ...
    || iscell(x) || ischar(x), ...
    'IncludeInitialValue', true, @(x) islogical(x), ...
    'InitialPopulation', [], @(x) isnumeric(x), ...
    'InitialPopulationUsesBounds', false, @(x) islogical(x), ...
    'InitialVelocities', [], @(x) isnumeric(x), ...
    'KnownMin', [], @(x) isnumericscalar(x) || isempty(x), ...
    'PlotFcns', {}, @iscellfunc, ...
    'PlotInterval', 1, @(x) isintscalar(x) && x>0, ...
    'PopInitRange', [], @(x) isnumeric(x) || isempty(x), ...
    'PopulationSize', 40, @(x) isintscalar(x) && x>0, ...
    'SocialAttraction', 1.25, @(x) isnumericscalar(x), ...
    'StallGenLimit', 50, @(x) isintscalar(x) && x>0, ...
    'TimeLimit', Inf, @(x) isnumericscalar(x) && x>0, ...
    'TolCon', 1e-6, @(x) isnumericscalar(x) && x>0, ...
    'TolFun', 1e-6, @(x) isnumericscalar(x) && x>0, ...
    'VelocityLimit', Inf, @(x) isnumericscalar(x) && x>0, ...
    'UpdateInterval', 5, @(x) isnumericscalar(x) && x>0, ...
    'UseParallel', false, @islogicalscalar, ...
    };

end


