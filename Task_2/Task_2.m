clear all;

name = ["C:\Users\gnome\Desktop\file_0.txt","C:\Users\gnome\Desktop\file_1.txt","C:\Users\gnome\Desktop\file_2.txt","C:\Users\gnome\Desktop\file_3.txt"];

fileID = fopen(name(1),'r'); %% у name можно менять индекс - переключаться между файлами (всего 4 файла)
formatSpec = '%f %f';
sizeA0 = [2 Inf];
A0 = fscanf(fileID,formatSpec,sizeA0);
fclose(fileID);

[m0,n0] = size(A0);
x0(1:n0)=0;
y0(1:n0)=0;
for i =  1:1:n0
    x0(i) = A0(1,i);
    y0(i) = A0(2,i);
end

fileID = fopen(name(2),'r'); %% у name можно менять индекс - переключаться между файлами (всего 4 файла)
formatSpec = '%f %f';
sizeA1 = [2 Inf];
A1 = fscanf(fileID,formatSpec,sizeA0);
fclose(fileID);

[m1,n1] = size(A1);
x1(1:n1)=0;
y1(1:n1)=0;
for i =  1:1:n1
    x1(i) = A1(1,i);
    y1(i) = A1(2,i);
end

fileID = fopen(name(3),'r'); %% у name можно менять индекс - переключаться между файлами (всего 4 файла)
formatSpec = '%f %f';
sizeA2 = [2 Inf];
A2 = fscanf(fileID,formatSpec,sizeA2);
fclose(fileID);

[m2,n2] = size(A2);
x2(1:n2)=0;
y2(1:n2)=0;
for i =  1:1:n2
    x2(i) = A2(1,i);
    y2(i) = A2(2,i);
end

fileID = fopen(name(4),'r'); %% у name можно менять индекс - переключаться между файлами (всего 4 файла)
formatSpec = '%f %f';
sizeA3 = [2 Inf];
A3 = fscanf(fileID,formatSpec,sizeA3);
fclose(fileID);

[m3,n3] = size(A3);
x3(1:n3)=0;
y3(1:n3)=0;
for i =  1:1:n3
    x3(i) = A3(1,i);
    y3(i) = A3(2,i);
end

name_exact = ["C:\Users\gnome\Desktop\file_exact0.txt","C:\Users\gnome\Desktop\file_exact1.txt","C:\Users\gnome\Desktop\file_exact2.txt","C:\Users\gnome\Desktop\file_exact3.txt"];


fileID = fopen(name_exact(1),'r'); %% у name можно менять индекс - переключаться между файлами (всего 4 файла)
formatSpec = '%f %f';
sizeA4 = [2 Inf];
A4 = fscanf(fileID,formatSpec,sizeA4);
fclose(fileID);

[m4,n4] = size(A4);
x4(1:n4)=0;
y4(1:n4)=0;
for i =  1:1:n4
    x4(i) = A4(1,i);
    y4(i) = A4(2,i);
end

fileID = fopen(name_exact(2),'r'); %% у name можно менять индекс - переключаться между файлами (всего 4 файла)
formatSpec = '%f %f';
sizeA5 = [2 Inf];
A5 = fscanf(fileID,formatSpec,sizeA5);
fclose(fileID);

[m5,n5] = size(A5);
x5(1:n5)=0;
y5(1:n5)=0;
for i =  1:1:n5
    x5(i) = A5(1,i);
    y5(i) = A5(2,i);
end

fileID = fopen(name_exact(3),'r'); %% у name можно менять индекс - переключаться между файлами (всего 4 файла)
formatSpec = '%f %f';
sizeA6 = [2 Inf];
A6 = fscanf(fileID,formatSpec,sizeA6);
fclose(fileID);

[m6,n6] = size(A6);
x6(1:n6)=0;
y6(1:n6)=0;
for i =  1:1:n6
    x6(i) = A6(1,i);
    y6(i) = A6(2,i);
end

fileID = fopen(name_exact(4),'r'); %% у name можно менять индекс - переключаться между файлами (всего 4 файла)
formatSpec = '%f %f';
sizeA7 = [2 Inf];
A7 = fscanf(fileID,formatSpec,sizeA7);
fclose(fileID);

[m7,n7] = size(A7);
x7(1:n7)=0;
y7(1:n7)=0;
for i =  1:1:n7
    x7(i) = A7(1,i);
    y7(i) = A7(2,i);
end

error1(1:n0) = 0;
for i =  1:1:n0
    error1(i) = y0(i) - y4(i);
end

error2(1:n1) = 0;
for i =  1:1:n1
    error2(i) = y1(i) - y5(i);
end

error3(1:n2) = 0;
for i =  1:1:n2
    error3(i) = y2(i) - y6(i);
end

error4(1:n3) = 0;
for i =  1:1:n3
    error4(i) = y3(i) - y7(i);
end


plot(x0,error1); 
hold on;
plot(x1,error2); 
hold on;
plot(x2,error3);
hold on;
plot(x3,error4);
legend({'adaptmesh x1','adaptmesh x2','adaptmesh x3','adaptmesh x4'},'Location','southwest','Orientation','vertical')
