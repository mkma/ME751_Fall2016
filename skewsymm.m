function a_tylda = skewsymm(a)

x = a(1,1);
y = a(2,1);
z = a(3,1);

a_tylda = [ 
    0, -z, y;
    z, 0, -x;
    -y, x, 0;];

end