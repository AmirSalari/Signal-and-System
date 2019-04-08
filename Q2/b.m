function lp = fdatool_code

[N, Fo, Ao, W] = firpmord([400, 450]/(1000/2), [1 0], [0.057501127785, 0.0001]);

b  = firpm(N, Fo, Ao, W, {20});
lp = dfilt.dffir(b);


