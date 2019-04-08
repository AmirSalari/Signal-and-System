function hp = high_pass_filter

[N, Fo, Ao, W] = firpmord([400, 450]/(1000/2), [0 1], [0.0001, 0.057501127785]);

b  = firpm(N, Fo, Ao, W, {20});
hp = dfilt.dffir(b);


