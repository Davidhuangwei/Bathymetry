
global units
units = 'km';

%%
bellhop3d wedge2d

figure
plotshdpol( 'wedge2d.shd', 0, 0, 30 )
caxisrev( [ 60 90 ] )
axis image
axis( [ 0 25 -4 4 ] )


%print -djpeg TWedge2D
%print -depsc2 TWedge2D

%%
bellhop3d wedge3dHatRayCen

figure
plotshdpol( 'wedge3dHatRayCen.shd', 0, 0, 30 )
caxisrev( [ 60 90 ] )
axis image
axis( [ 0 25 -4 4 ] )

%print -depsc2 TWedge3DGeoHat
%print -djpeg TWedge3DGeoHat

%%
bellhop3d wedge3dCart

figure
plotshdpol( 'wedge3dCart.shd', 0, 0, 30 )
caxisrev( [ 60 90 ] )
axis image
axis( [ 0 25 -4 4 ] )

%print -depsc2 TWedge3DGeoHat
%print -djpeg TWedge3DGeoHat

%%
bellhop3d wedge3dGaussian

figure
plotshdpol( 'wedge3dGaussian.shd', 0, 0, 30 )
caxisrev( [ 60 90 ] )
axis image
axis( [ 0 25 -4 4 ] )

%print -depsc2 TWedge3DGeoGaussian
%print -djpeg TWedge3DGeoGaussian
%%

% ray trace
copyfile( 'wedge3d.bty', 'wedge3d_ray.bty' )   % copy over the bathymetry file
bellhop3d wedge3d_ray     % run BELLHOP3D on the wedge3d test case

figure
plotray3d wedge3d_ray.ray
