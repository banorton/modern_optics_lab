function [width] = widthFind(A, StartX, EndX, MinY, MaxY)

Amin = [A(:,1),A(:,2).*islocalmin(A(:,2))];
Amin( (Amin(:,1) < StartX) , : ) = [];
Amin( (Amin(:,1) > EndX) , : ) = [];
Amin(Amin(:,2)==0,:) = [];
Amin(Amin(:,2)>MaxY,:) = [];
Amin(Amin(:,2)<MinY,:) = [];

width = Amin(2,1)-Amin(1,1);

end