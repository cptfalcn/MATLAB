classdef FunctionWithLabel
    %FUNCTIONWITHLABEL Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        Function
        Label
    end
    
    methods
        function obj = FunctionWithLabel(Function,Label)
            %FUNCTIONWITHLABEL Construct an instance of this class
            %   Detailed explanation goes here
            obj.Function = Function;
            obj.Label = Label;

        end
        
        function Function = GetFunction(obj)
            Function=obj.Function;
        end

        function Label = GetLabel(obj)
            Label = obj.Label;
        end

        function obj = SetFunction(obj, Function)
            obj.Function=Function;
        end

        function obj = SetLabel(obj, Label)
            obj.Label=Label;
        end
    end
end

