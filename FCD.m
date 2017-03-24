load trees

clear('Image');
clear('i');
clear('Sobel');
clear('TextureEntropy');
clear('TextureRange');
clear('dimT');
clear('UVcut');
clear('Gandhicut');
clear('Numbercut');
clear('Dim1N');
clear('Dim2N');
clear('Dim3N');
clear('Dim4N');
clear('Dim1G');
clear('Dim2G');
clear('Dim3G');
clear('Dim4G');
clear('Dim1U');
clear('Dim2U');
clear('Dim3U');
clear('Dim4U');

O = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\original.jpg');
F = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\fake.jpg');

%Database Creation

%Original Notes Database
Image{1} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\10_real.jpg');
Image{2} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\20_real.jpg');
Image{3} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\50_real.jpg');
Image{4} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\100_real.jpg');
Image{5} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\500_real.jpg');
Image{6} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\1000_real.jpg');

%Grayscale Notes Database
i{1} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\10_gray.jpg');
i{2} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\20_gray.jpg');
i{3} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\50_gray.jpg');
i{4} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\100_gray.jpg');
i{5} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\500_gray.jpg');
i{6} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\1000_gray.jpg');

%Edge Detected Notes Database
Sobel{1} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\10_sobel.jpg');
Sobel{2} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\20_sobel.jpg');
Sobel{3} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\50_sobel.jpg');
Sobel{4} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\100_sobel.jpg');
Sobel{5} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\500_sobel.jpg');
Sobel{6} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\1000_sobel.jpg');

%Entropy Filtered Notes Database
TextureEntropy{1} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\10_entropy.jpg');
TextureEntropy{2} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\20_entropy.jpg');
TextureEntropy{3} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\50_entropy.jpg');
TextureEntropy{4} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\100_entropy.jpg');
TextureEntropy{5} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\500_entropy.jpg');
TextureEntropy{6} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\1000_entropy.jpg');

%Range Filtered Notes Database
TextureRange{1} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\10_range.jpg');
TextureRange{2} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\20_range.jpg');
TextureRange{3} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\50_range.jpg');
TextureRange{4} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\100_range.jpg');
TextureRange{5} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\500_range.jpg');
TextureRange{6} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\1000_range.jpg');

%Gandhi Note Database
Gandhicut{1} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\10_gandhi.jpg');
Gandhicut{2} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\20_gandhi.jpg');
Gandhicut{3} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\50_gandhi.jpg');
Gandhicut{4} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\100_gandhi.jpg');
Gandhicut{5} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\500_gandhi.jpg');
Gandhicut{6} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\1000_gandhi.jpg');

%Number Note Database
Numbercut{1} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\10_center.jpg');
Numbercut{2} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\20_center.jpg');
Numbercut{3} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\50_center.jpg');
Numbercut{4} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\100_center.jpg');
Numbercut{5} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\500_center.jpg');
Numbercut{6} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\1000_center.jpg');

%Watermark Note Database
UVcut{1} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\10_uvg.jpg');
UVcut{2} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\20_uvg.jpg');
%UVcut{3} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\50_uvg.jpg');
UVcut{4} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\100_uvg.jpg');
UVcut{5} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\500_uvg.jpg');
UVcut{6} = imread('F:\Semester 3\DSAA\DSAA Project\Images Database\1000_uvg.jpg');

%Dimension of Gandhi
Dim1G{1} = 2200;
Dim2G{1} = 290;
Dim3G{1} = 1100;
Dim4G{1} = 1000;

Dim1G{2} = 2210;
Dim2G{2} = 290;
Dim3G{2} = 1500;
Dim4G{2} = 1000;

Dim1G{3} = 2250;
Dim2G{3} = 350;
Dim3G{3} = 1100;
Dim4G{3} = 900;

Dim1G{4} = 2250;
Dim2G{4} = 350;
Dim3G{4} = 1100;
Dim4G{4} = 900;

Dim1G{5} = 2200;
Dim2G{5} = 400;
Dim3G{5} = 1300;
Dim4G{5} = 1000;

Dim1G{6} = 2250;
Dim2G{6} = 300;
Dim3G{6} = 1200;
Dim4G{6} = 1000;

%Dimension of Center Number
Dim1N{1} = 1400;
Dim2N{1} = 562;
Dim3N{1} = 650;
Dim4N{1} = 300;

Dim1N{2} = 1400;
Dim2N{2} = 490;
Dim3N{2} = 600;
Dim4N{2} = 350;

Dim1N{3} = 1400;
Dim2N{3} = 550;
Dim3N{3} = 650;
Dim4N{3} = 450;

Dim1N{4} = 1290;
Dim2N{4} = 485;
Dim3N{4} = 699;
Dim4N{4} = 450;

Dim1N{5} = 1400;
Dim2N{5} = 499;
Dim3N{5} = 720;
Dim4N{5} = 400;

Dim1N{6} = 1400;
Dim2N{6} = 499;
Dim3N{6} = 720;
Dim4N{6} = 350;

%Dimension of Watermark
Dim1U{1} = 833.75100;
Dim2U{1} = 581.5100;
Dim3U{1} = 677.9800;
Dim4U{1} = 578.9800;

Dim1U{2} = 713.5100;
Dim2U{2} = 500.5100;
Dim3U{2} = 737.9800;
Dim4U{2} = 602.9800;

% Dim1U{3} = 2250;
% Dim2U{3} = 350;
% Dim3U{3} = 1100;
% Dim4U{3} = 900;

Dim1U{4} = 602.5100;
Dim2U{4} = 718.5100;
Dim3U{4} = 659.9800;
Dim4U{4} = 635.9800;

Dim1U{5} = 554.5100;
Dim2U{5} = 550.5100;
Dim3U{5} = 727.9800;
Dim4U{5} = 663.9800;

Dim1U{6} = 598.5100;
Dim2U{6} = 618.5100;
Dim3U{6} = 595.9800;
Dim4U{6} = 543.9800;

%Dimension Database
for j = 1:6
    
    [row column] = find(Sobel{j});
    
    x2 = max(row);
    x1 = min(row);
    
    y2 = max(column);
    y1 = min(column);
    
    dimT{j} = (x2-x1)/(y2-y1);
    
end

%Database Creation Completed

%Input Image
SampleImage = imread('F:\Semester 3\DSAA\DSAA Project\Input Images\input18.jpg');
SampleImage1 = imread('F:\Semester 3\DSAA\DSAA Project\Input Images\input18uv.jpg');

x = rgb2gray(SampleImage);
sample1 = edge(x);

[row column] = find(sample1);

x2 = max(row);
x1 = min(row);

y2 = max(column);
y1 = min(column);

dimSample = (x2-x1)/(y2-y1);

flag = -10;

for j = 1:6
    
    w = dimSample - dimT{j};
    
    if(0.0000<=w && w<0.1)
        
        flag = j;
        break;
        
    elseif(-0.1<w && w<=0.0000)
        
        flag=j;
        break;
        
    else
        
        flag = -10;
        
    end
end

if(flag==-10)
    
    figure,imshow(F,'InitialMagnification','fit','Border','tight');
    
else
    
    [row column] = find(i{flag});
    
    a = max(row);
    b = max(column);
    
    Resize = imresize(SampleImage, [a b], 'bilinear');
    
    %figure,imshow(Resize);
    
    CropCenter = imcrop(Resize,map,[Dim1N{flag} Dim2N{flag} Dim3N{flag} Dim4N{flag}]);
    
    %figure,imshow(CropCenter,'InitialMagnification','fit'),title('Center numeral depicting value of Note');
    
    x = rgb2gray(CropCenter);
    sample1 = edge(x);
    
    [row column] = find(sample1);
    
    x2 = max(row);
    x1 = min(row);
    
    y2 = max(column);
    y1 = min(column);
    
    dimSample1 = (x2-x1)/(y2-y1);
    
    x = rgb2gray(Numbercut{flag});
    sample1 = edge(x);
    
    [row column] = find(sample1);
    
    x2 = max(row);
    x1 = min(row);
    
    y2 = max(column);
    y1 = min(column);
    
    dimSample2 = (x2-x1)/(y2-y1);
    
    w = dimSample1 - dimSample2;
    
    R1 = min(min(CropCenter(:,:,1)));
    G1 = min(min(CropCenter(:,:,2)));
    B1 = min(min(CropCenter(:,:,3)));
    
    R2 = min(min(Numbercut{flag}(:,:,1)));
    G2 = min(min(Numbercut{flag}(:,:,2)));
    B2 = min(min(Numbercut{flag}(:,:,3)));
    
    %disp('R1 Component');
    %disp(R1);
    %disp(G1);
    %disp(B1);
    %disp('R2 Component');
    %disp(R2);
    %disp(G2);
    %disp(B2);
    
    Flag1 = 1;
    
    if(R1==G1)
        
        if(G1==B1)
            
            if(B1==R1)
                
                Flag1 = 0;
            else
                
                Flag1 = 1;
            end
        else
            
            Flag1 = 1;
        end
    else
        
        Flag1 = 1;
        
    end
    
    Flag2 = 1;
    
    if(R1-R2<20 && G1-G2<20 && B1-B2<20)
        
        Flag2 = 1;
        
    else
        
        Flag2 = 0;
        
    end
    
    %disp(Flag1);
    %disp(Flag2);
    
    if(Flag1==1 && Flag2==1)
        
        if(0<=w && w<=0.1)
            
            %CropGandhi = imcrop(Resize,map,[Dim1G{flag} Dim2G{flag} Dim3G{flag} Dim4G{flag}]);
            
            %figure,imshow(CropGandhi,'InitialMagnification','fit'),title('Gandhi figure on note');
            
            x = rgb2gray(CropGandhi);
            sample1 = edge(x);
            
            [row column] = find(sample1);
            
            x2 = max(row);
            x1 = min(row);
            
            y2 = max(column);
            y1 = min(column);
            
            dimSample1 = (x2-x1)/(y2-y1);
            
            x = rgb2gray(Gandhicut{flag});
            sample1 = edge(x);
            
            [row column] = find(sample1);
            
            x2 = max(row);
            x1 = min(row);
            
            y2 = max(column);
            y1 = min(column);
            
            dimSample2 = (x2-x1)/(y2-y1);
            
            w = dimSample1 - dimSample2;
            
            if(0<=w && w<=0.2)
                
                %figure,imshow(O,'InitialMagnification','fit','Border','tight');
                
                Resize = imresize(SampleImage1, [a b], 'bilinear');
                
                %figure,imshow(Resize);
                
                Watermark = imcrop(Resize,map,[Dim1U{flag} Dim2U{flag} Dim3U{flag} Dim4U{flag}]);
                
                %figure,imshow(Watermark,'InitialMagnification','fit'),title('Gandhi Watermark');
                
                x = rgb2gray(Watermark);
                sample1 = edge(x);
                
                [row column] = find(sample1);
                
                x2 = max(row);
                x1 = min(row);
                
                y2 = max(column);
                y1 = min(column);
                
                dimSample1 = (x2-x1)/(y2-y1);
                
                x = rgb2gray(UVcut{flag});
                sample1 = edge(x);
                
                [row column] = find(sample1);
                
                x2 = max(row);
                x1 = min(row);
                
                y2 = max(column);
                y1 = min(column);
                
                dimSample2 = (x2-x1)/(y2-y1);
                
                w = dimSample1 - dimSample2;
                
                R1 = min(min(Watermark(:,:,1)));
                G1 = min(min(Watermark(:,:,2)));
                B1 = min(min(Watermark(:,:,3)));
                
                R2 = min(min(UVcut{flag}(:,:,1)));
                G2 = min(min(UVcut{flag}(:,:,2)));
                B2 = min(min(UVcut{flag}(:,:,3)));
                
                %disp('R1 Component');
                %disp(R1);
                %disp(G1);
                %disp(B1);
                %disp('R2 Component');
                %disp(R2);
                %disp(G2);
                %disp(B2);
                
                Flag1 = 1;
                
                if(R1==G1)
                    
                    if(G1==B1)
                        
                        if(B1==R1)
                            
                            Flag1 = 0;
                        else
                            
                            Flag1 = 1;
                        end
                    else
                        
                        Flag1 = 1;
                    end
                else
                    
                    Flag1 = 1;
                    
                end
                
                Flag2 = 1;
                
                if(R1-R2<20 && G1-G2<20 && B1-B2<20)
                    
                    Flag2 = 1;
                    
                else
                    
                    Flag2 = 0;
                    
                end
                
                if(Flag1==1 && Flag2==1)
                    
                    if(0<=w && w<=0.2)
                        
                        figure,imshow(O,'InitialMagnification','fit','Border','tight');
                        
                    elseif(-0.2<=w && w<=0)
                        
                        figure,imshow(O,'InitialMagnification','fit','Border','tight');
                        
                    else
                        
                        figure,imshow(F,'InitialMagnification','fit','Border','tight');
                    end
                else
                    
                    figure,imshow(F,'InitialMagnification','fit','Border','tight');
                end
                
            elseif(-0.2<=w && w<=0)
                
                %figure,imshow(O,'InitialMagnification','fit','Border','tight');
                Resize = imresize(SampleImage1, [a b], 'bilinear');
                
                %figure,imshow(Resize);
                
                Watermark = imcrop(Resize,map,[Dim1U{flag} Dim2U{flag} Dim3U{flag} Dim4U{flag}]);
                
                %figure,imshow(Watermark,'InitialMagnification','fit'),title('Gandhi Watermark');
                
                x = rgb2gray(Watermark);
                sample1 = edge(x);
                
                [row column] = find(sample1);
                
                x2 = max(row);
                x1 = min(row);
                
                y2 = max(column);
                y1 = min(column);
                
                dimSample1 = (x2-x1)/(y2-y1);
                
                x = rgb2gray(UVcut{flag});
                sample1 = edge(x);
                
                [row column] = find(sample1);
                
                x2 = max(row);
                x1 = min(row);
                
                y2 = max(column);
                y1 = min(column);
                
                dimSample2 = (x2-x1)/(y2-y1);
                
                w = dimSample1 - dimSample2;
                
                R1 = min(min(Watermark(:,:,1)));
                G1 = min(min(Watermark(:,:,2)));
                B1 = min(min(Watermark(:,:,3)));
                
                R2 = min(min(UVcut{flag}(:,:,1)));
                G2 = min(min(UVcut{flag}(:,:,2)));
                B2 = min(min(UVcut{flag}(:,:,3)));
                
                %disp('R1 Component');
                %disp(R1);
                %disp(G1);
                %disp(B1);
                %disp('R2 Component');
                %disp(R2);
                %disp(G2);
                %disp(B2);
                
                Flag1 = 1;
                
                if(R1==G1)
                    
                    if(G1==B1)
                        
                        if(B1==R1)
                            
                            Flag1 = 0;
                        else
                            
                            Flag1 = 1;
                        end
                    else
                        
                        Flag1 = 1;
                    end
                else
                    
                    Flag1 = 1;
                    
                end
                
                Flag2 = 1;
                
                if(R1-R2<20 && G1-G2<20 && B1-B2<20)
                    
                    Flag2 = 1;
                    
                else
                    
                    Flag2 = 0;
                    
                end
                
                if(Flag1==1 && Flag2==1)
                    
                    if(0<=w && w<=0.2)
                        
                        figure,imshow(O,'InitialMagnification','fit','Border','tight');
                        
                    elseif(-0.2<=w && w<=0)
                        
                        figure,imshow(O,'InitialMagnification','fit','Border','tight');
                        
                    else
                        
                        figure,imshow(F,'InitialMagnification','fit','Border','tight');
                    end
                else
                    
                    figure,imshow(F,'InitialMagnification','fit','Border','tight');
                end
                
            else
                
                figure,imshow(F,'InitialMagnification','fit','Border','tight');
                
            end
            
        elseif(-0.1<=w && w<=0)
            
            CropGandhi = imcrop(Resize,map,[Dim1G{flag} Dim2G{flag} Dim3G{flag} Dim4G{flag}]);
            
            %figure,imshow(CropGandhi,'InitialMagnification','fit'),title('Gandhi figure on note');
            
            x = rgb2gray(CropGandhi);
            sample1 = edge(x);
            
            [row column] = find(sample1);
            
            x2 = max(row);
            x1 = min(row);
            
            y2 = max(column);
            y1 = min(column);
            
            dimSample1 = (x2-x1)/(y2-y1);
            
            x = rgb2gray(Gandhicut{flag});
            sample1 = edge(x);
            
            [row column] = find(sample1);
            
            x2 = max(row);
            x1 = min(row);
            
            y2 = max(column);
            y1 = min(column);
            
            dimSample2 = (x2-x1)/(y2-y1);
            
            w = dimSample1 - dimSample2;
            
            if(0<=w && w<=0.2)
                
                %figure,imshow(O,'InitialMagnification','fit','Border','tight');
                
                Resize = imresize(SampleImage1, [a b], 'bilinear');
                
                %figure,imshow(Resize);
                
                Watermark = imcrop(Resize,map,[Dim1U{flag} Dim2U{flag} Dim3U{flag} Dim4U{flag}]);
                
                %figure,imshow(Watermark,'InitialMagnification','fit'),title('Gandhi Watermark');
                
                x = rgb2gray(Watermark);
                sample1 = edge(x);
                
                [row column] = find(sample1);
                
                x2 = max(row);
                x1 = min(row);
                
                y2 = max(column);
                y1 = min(column);
                
                dimSample1 = (x2-x1)/(y2-y1);
                
                x = rgb2gray(UVcut{flag});
                sample1 = edge(x);
                
                [row column] = find(sample1);
                
                x2 = max(row);
                x1 = min(row);
                
                y2 = max(column);
                y1 = min(column);
                
                dimSample2 = (x2-x1)/(y2-y1);
                
                w = dimSample1 - dimSample2;
                
                R1 = min(min(Watermark(:,:,1)));
                G1 = min(min(Watermark(:,:,2)));
                B1 = min(min(Watermark(:,:,3)));
                
                R2 = min(min(UVcut{flag}(:,:,1)));
                G2 = min(min(UVcut{flag}(:,:,2)));
                B2 = min(min(UVcut{flag}(:,:,3)));
                
                %disp('R1 Component');
                %disp(R1);
                %disp(G1);
                %disp(B1);
                %disp('R2 Component');
                %disp(R2);
                %disp(G2);
                %disp(B2);
                
                Flag1 = 1;
                
                if(R1==G1)
                    
                    if(G1==B1)
                        
                        if(B1==R1)
                            
                            Flag1 = 0;
                        else
                            
                            Flag1 = 1;
                        end
                    else
                        
                        Flag1 = 1;
                    end
                else
                    
                    Flag1 = 1;
                    
                end
                
                Flag2 = 1;
                
                if(R1-R2<20 && G1-G2<20 && B1-B2<20)
                    
                    Flag2 = 1;
                    
                else
                    
                    Flag2 = 0;
                    
                end
                
                if(Flag1==1 && Flag2==1)
                    
                    if(0<=w && w<=0.2)
                        
                        figure,imshow(O,'InitialMagnification','fit','Border','tight');
                        
                    elseif(-0.2<=w && w<=0)
                        
                        figure,imshow(O,'InitialMagnification','fit','Border','tight');
                        
                    else
                        
                        figure,imshow(F,'InitialMagnification','fit','Border','tight');
                    end
                else
                    
                    figure,imshow(F,'InitialMagnification','fit','Border','tight');
                end
                
            elseif(-0.2<=w && w<=0)
                
                %figure,imshow(O,'InitialMagnification','fit','Border','tight');
                Resize = imresize(SampleImage1, [a b], 'bilinear');
                
                %figure,imshow(Resize);
                
                Watermark = imcrop(Resize,map,[Dim1U{flag} Dim2U{flag} Dim3U{flag} Dim4U{flag}]);
                
                %figure,imshow(Watermark,'InitialMagnification','fit'),title('Gandhi Watermark');
                
                x = rgb2gray(Watermark);
                sample1 = edge(x);
                
                [row column] = find(sample1);
                
                x2 = max(row);
                x1 = min(row);
                
                y2 = max(column);
                y1 = min(column);
                
                dimSample1 = (x2-x1)/(y2-y1);
                
                x = rgb2gray(UVcut{flag});
                sample1 = edge(x);
                
                [row column] = find(sample1);
                
                x2 = max(row);
                x1 = min(row);
                
                y2 = max(column);
                y1 = min(column);
                
                dimSample2 = (x2-x1)/(y2-y1);
                
                w = dimSample1 - dimSample2;
                
                R1 = min(min(Watermark(:,:,1)));
                G1 = min(min(Watermark(:,:,2)));
                B1 = min(min(Watermark(:,:,3)));
                
                R2 = min(min(UVcut{flag}(:,:,1)));
                G2 = min(min(UVcut{flag}(:,:,2)));
                B2 = min(min(UVcut{flag}(:,:,3)));
                
                %disp('R1 Component');
                %disp(R1);
                %disp(G1);
                %disp(B1);
                %disp('R2 Component');
                %disp(R2);
                %disp(G2);
                %disp(B2);
                
                Flag1 = 1;
                
                if(R1==G1)
                    
                    if(G1==B1)
                        
                        if(B1==R1)
                            
                            Flag1 = 0;
                        else
                            
                            Flag1 = 1;
                        end
                    else
                        
                        Flag1 = 1;
                    end
                else
                    
                    Flag1 = 1;
                    
                end
                
                Flag2 = 1;
                
                if(R1-R2<20 && G1-G2<20 && B1-B2<20)
                    
                    Flag2 = 1;
                    
                else
                    
                    Flag2 = 0;
                    
                end
                
                if(Flag1==1 && Flag2==1)
                    
                    if(0<=w && w<=0.2)
                        
                        figure,imshow(O,'InitialMagnification','fit','Border','tight');
                        
                    elseif(-0.2<=w && w<=0)
                        
                        figure,imshow(O,'InitialMagnification','fit','Border','tight');
                        
                    else
                        
                        figure,imshow(F,'InitialMagnification','fit','Border','tight');
                    end
                else
                    
                    figure,imshow(F,'InitialMagnification','fit','Border','tight');
                end
                
            else
                
                figure,imshow(F,'InitialMagnification','fit','Border','tight');
                
            end
            
        else
            figure,imshow(F,'InitialMagnification','fit','Border','tight');
        end
        
    else
        figure,imshow(F,'InitialMagnification','fit','Border','tight');
    end
end