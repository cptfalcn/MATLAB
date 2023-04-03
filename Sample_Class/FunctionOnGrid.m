classdef FunctionOnGrid
    %We will use the Sample Anonymous function files in a class
    %======================================================================
    %These are the 'properties', data that persists as long as the object
    %exists.  When you exit or until when it is 'cleared'
    properties (Access=private) 
    %======================================================================
    %Don't let your users touch your data, they will break things.
    %Instead make them use your set functions with private attribute.
    %https://www.mathworks.com/help/matlab/matlab_oop/property-attributes.html
    %That is a full list of property attributes.
    %The basic versions are public and private.
    %======================================================================
        Grid        %A Grid to evaluate your function over
        Function    %A function handle @(x), evaluate on GRID
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

        %Perhaps you want to reset the grid.
        function obj = SetFunction (obj, InFunction)
            obj.Function= InFunction;
        end

        %Methods callable on the matlab terminal via obj.method
        function PlotGrid(obj)
            figure()
            plot(obj.Grid, obj.Function(obj.Grid))
        end 

    end
end

