A=imread('C:\Users\HP\Pictures\KAE\disclo.jpg');
figure(1);
imshow(A);
title('Imagen original');

B=strel('line',11,90);
C=imdilate(A,B);
figure(2);
imshow(C);
title('Imagen dilate');

D=strel('disk',3);
E=imerode(A,D);
figure(3)
imshow(E);
title('Imagen erosionada')

C=imopen(A,B);
figure(4);
imshow(C);
title('Open image');

D=strel('disk',11);
E=imclose(A,D);
figure(5);
imshow(E);
title('Close image');

H=[0 1 0;1 1 1:0 1 0];
i1=imdilate(A,H);
figure(6);
imshow(i1);
title('dil im prot1')

i2=imerode(A,H);
figure(7);
imshow(i2);
title('Erde image')

i3=A-i2;
figure(8);
imshow(i3);
title(pro3);

i4=i1-A
figure(9);
ishow(i4);
title('pro4')

i5=i1-i2
figure(10);
ishow(i5);
title('pro5')



