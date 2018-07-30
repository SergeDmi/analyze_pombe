function [ options ] = pombe_default_options()
%Default options for pombe analysis
%
    
    % Options for program behaviour
    options.verbose=1;
	options.check_pairs=1;
	
	% Options for analysis
	options.pixel_size=0.0714;
    options.centering=0;
    options.aligning=1;
	options.thickness=5*options.pixel_size;
	
	% Options for perimeter spline
    options.central.spline.dt=2*pi/100;
    options.central.spline.npp=12;
	
	% Options for backbone spline
	options.backbone.thickness=7*options.pixel_size;
	options.backbone.spline.dt=options.central.spline.dt;
    options.backbone.spline.npp=6;
	options.backbone.end_exclusion=0.15; %exclude 8% front and back
    options.backbone.dx=options.thickness/3.0;
	
	% Options for slice analysis
    options.do_slice_analysis=0;
    

end
