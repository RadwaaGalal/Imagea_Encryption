I=imread('cameraman.tif');
%encryption
M=I';
K=imnoise(M,'salt & pepper',0.29);
S=imcomplement(K);
L=S*5;
subplot(2,5,1);
imshow(I)
xlabel('origanal')
subplot(2,5,2);
imshow(M)
xlabel('rounded')
subplot(2,5,3);
imshow(K)
xlabel('noise')
subplot(2,5,4);
imshow(S);
xlabel('negative')
subplot(2,5,5);
imshow(L)
xlabel('encrypted image')

%decryption
N=L/5;
A=imcomplement(S);
B=medfilt2(A,[9,9]);
C=B';
subplot(2,5,6);
imshow(L)
xlabel('encrypted image')
subplot(2,5,7);
imshow(N)
xlabel('÷5')
subplot(2,5,8);
imshow(A)
xlabel('negative')
subplot(2,5,9);
imshow(B);
xlabel('noise')
subplot(2,5,10);
imshow(C);
xlabel('decrypted')