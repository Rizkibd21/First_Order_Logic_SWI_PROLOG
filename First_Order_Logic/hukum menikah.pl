% Fakta
menikah(wati, andi).
anakKandung(wati, budi).
saudaraKembar(budi, andi).

% Aturan
saudaraKandung(X, Y) :- saudaraKembar(X, Y).  % Jika kembar, berarti saudara kandung

is_keponakan(X, Y) :- anakKandung(X, Z), saudaraKandung(Z, Y).

tidak_sah(X, Y) :- is_keponakan(X, Y).
tidak_sah(X, Y) :- is_keponakan(Y, X).

% Bukti bahwa pernikahan tidak sah
not(sah(menikah(X, Y))) :- tidak_sah(X, Y).
