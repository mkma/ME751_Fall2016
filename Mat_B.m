function wartosc = Mat_B(p, vect)

e0 = p(1,1);
e1 = p(2,1);
e2 = p(3,1);
e3 = p(4,1);

e = [e1; e2; e3];

nawias = ( e0 * eye(3) + skewsymm(e) );

wartosc = 2 * [  nawias * vect,...
    e * vect' - nawias * skewsymm(vect) ];

end