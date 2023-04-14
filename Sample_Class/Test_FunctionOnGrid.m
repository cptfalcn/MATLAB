%This will run a series of tests to make sure the class operations are
%working
%Set some grids
Grid1 = 0:.1:1;
Grid2 = 0:.1:2;
%Set some Functions with a label
FwL1=FunctionWithLabel(@(x)Input_FirstDegreePoly(1,x), "f(x)=x")
FwL2=FunctionWithLabel(@(x)Input_FirstDegreePoly(2,x), "f(x)=2x")  
%Check that these work by plotting
figure()
plot(Grid1, FwL1.EvalFunction(Grid1))
title(FwL1.GetLabel)

figure()
plot(Grid2, FwL2.EvalFunction(Grid2))
title(FwL2.GetLabel)

%After visual inspection these are ready to go into a class.
TestFunction=FunctionOnGrid(Grid1, FwL1);
%Try plotting
TestFunction.PlotGridwithLabel()
%Great, lets try to change the underlying properties!
%If you try to access properties directly, MATLAB will not let you, because
%the properties are set to private. So we have to use accessors
%First lets set the function
TestFunction=TestFunction.SetFunction(@(x)Input_FirstDegreePoly(5,x));
%Next, lets change the label
TestFunction=TestFunction.SetLabel("f(x)=5x");
%Now try plotting
TestFunction.PlotGridwithLabel()
%NICE!!  We passed our little test.