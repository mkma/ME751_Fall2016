function A = Compute_A(p)

e0 = p(1,1);
e1 = p(2,1);
e2 = p(3,1);
e3 = p(4,1);

e = [e1; e2; e3];

A = (2 * e0 * e0 - 1) * eye(3) + 2 * e * e' + e0 * skewsymm(e);



end