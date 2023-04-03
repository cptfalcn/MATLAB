classdef FunctionOnGrid
    %We will use the Sample Anonymous function files to organize them into
    %a class of objects and methods.
    %======================================================================
    %These are the 'properties', data that persists as long as the object
    %exists, that is when it is 'cleared'
    properties (Access=private)
    %Don't let your users touch your data, they will break things.
    %Instead make them use your set functions.
        Grid
        Function
    end
    %----------------------------------------------------------------------
    methods  %These are the things the object can do.
        %Constructor, makes the object.
        function obj = FunctionOnGrid(Grid,Function)
            %SAMPLE Construct an instance of this class
            %   Detailed explanation goes here
            obj.Grid        = Grid;
            obj.Function    = Function;
        end
        %Perhaps you want to reset the grid.
        function obj = SetGrid (obj, InGrid)
            obj.Grid= InGrid;
        end
        %Methods callable on the matlab terminal via obj.method
        function PlotGrid(obj)
            figure()
            plot(obj.Grid, obj.Function(obj.Grid))
        end 

    end
end

