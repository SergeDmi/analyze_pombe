function [  ] = plot_shape( pombe,options)
% plots a shape as generated by import_ply
%  With a couple options : plotting normals or not, with different vector size
%  plotting only a range of points (options.plot_points)
pts=pombe.points;


np=size(pts,1);
dx=1.0;
plot_normals=0;
if nargin>1
	if isfield(options,'plot_points')
		np=options.plot_points;
	end
	if isfield(options,'normal_size')
		dx=options.normal_size;
	end
	if isfield(options,'plot_normals')
		plot_normals=options.plot_normals;
	end
end

norms=pombe.normals;

if numel(np)==1
	bli=1:np;
else
	bli=np;
end
figure
scatter3(pts(bli,1),pts(bli,2),pts(bli,3))

if plot_normals
	hold all
	for i=bli(:)'
		plot3([pts(i,1) pts(i,1)+dx*norms(i,1)],[pts(i,2) pts(i,2)+dx*norms(i,2)],[pts(i,3) pts(i,3)+dx*norms(i,3)]);
	end
end
axis equal
end