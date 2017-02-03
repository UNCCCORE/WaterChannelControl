function mySaveFigure(handle,name)
basePath = 'C:\Users\Doctor V\Desktop\Mitchell\CDC2017Paper\DotTracking_V1.2.0_ClosedLoop\figures\';
% save as matlab .fig
savefig(handle,[basePath name '.fig'])
% save as .png raster image
set(handle,'color','w');
img = getframe(handle);
imwrite(img.cdata, [basePath name '.png']);
% save as .eps vector image
saveas(handle,[basePath name],'epsc')