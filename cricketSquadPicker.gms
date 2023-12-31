Sets i index of player /1*60/;

Variable x(i);
Variable batNet;
Variable WC;
Variable bowlNet;

Scalar B /20/;

Binary Variable x(i);

Parameter Price(i)
/
1   7.2645
2   11.6625
3   10.338
4   9.663
5   9.795
6   12.6585
7   15
8   12.246
9   11.688
10  6.63
11  13.728
12  11.1405
13  13.3995
14  6.855
15  12.372
16  5.451
17  10.806
18  9.0225
19  14.1975
20  7.9275
21  11.2425
22  8.4855
23  11.9715
24  5.61
25  8.5815
26  0
27  4.74
28  5.0745
29  12.3075
30  14.8095
31  13.722
32  10.4895
33  11.3655
34  10.086
35  7.7505
36  7.545
37  3.846
38  7.4535
39  0
40  12.2895
41  13.404
42  12.6645
43  8.616
44  10.065
45  13.6155
46  12.174
47  9.0435
48  10.167
49  12.828
50  14.2245
51  11.3565
52  11.238
53  4.518
54  11.658
55  8.9625
56  10.2495
57  12.0645
58  7.1025
59  13.2345
60  10.905
/;

Parameter BattingMetric(i)
/
1   0.4843
2   0.7775
3   0.6892
4   0.6442
5   0.653
6   0.8439
7   1
8   0.8164
9   0.7792
10  0.442
11  0.9152
12  0.7427
13  0.8933
14  0.457
15  0.8248
16  0.3634
17  0.7204
18  0.6015
19  0.9465
20  0.5285
21  0.7495
22  0.5657
23  0.7981
24  0.374
25  0.5721
26  0
27  0.316
28  0.3383
29  0.8205
30  0.9873
31  0.9148
32  0.6993
33  0.7577
34  0.6724
35  0.5167
36  0.503
37  0.2564
38  0.4969
39  0
40  0.8193
41  0.8936
42  0.8443
43  0.5744
44  0.671
45  0.9077
46  0.8116
47  0.6029
48  0.6778
49  0.8552
50  0.9483
51  0.7571
52  0.7492
53  0.3012
54  0.7772
55  0.5975
56  0.6833
57  0.8043
58  0.4735
59  0.8823
60  0.727
/;

Parameter isWK(i)
/
1   0
2   0
3   1
4   0
5   0
6   0
7   0
8   0
9   1
10  0
11  0
12  1
13  1
14  0
15  1
16  0
17  0
18  0
19  1
20  0
21  0
22  0
23  1
24  0
25  0
26  0
27  0
28  0
29  0
30  0
31  0
32  0
33  0
34  0
35  0
36  0
37  0
38  0
39  0
40  1
41  0
42  0
43  0
44  0
45  0
46  0
47  0
48  0
49  0
50  0
51  0
52  0
53  0
54  0
55  0
56  1
57  0
58  0
59  0
60  0
/;

Parameter isBatsmen(i)
/
1   0
2   1
3   1
4   1
5   1
6   1
7   1
8   1
9   1
10  0
11  1
12  1
13  1
14  0
15  1
16  0
17  1
18  0
19  1
20  0
21  1
22  1
23  1
24  0
25  1
26  0
27  0
28  0
29  1
30  1
31  1
32  1
33  1
34  1
35  0
36  0
37  0
38  0
39  0
40  1
41  1
42  1
43  1
44  1
45  0
46  1
47  0
48  1
49  1
50  1
51  1
52  1
53  0
54  1
55  1
56  1
57  1
58  0
59  1
60  1
/;

Parameter isBowler(i)
/
1   1
2   0
3   0
4   0
5   0
6   0
7   0
8   0
9   0
10  1
11  0
12  0
13  0
14  1
15  0
16  1
17  0
18  1
19  0
20  1
21  0
22  0
23  0
24  1
25  0
26  1
27  1
28  1
29  0
30  0
31  0
32  0
33  0
34  0
35  1
36  1
37  1
38  1
39  1
40  0
41  0
42  0
43  0
44  0
45  1
46  0
47  1
48  0
49  0
50  0
51  0
52  0
53  1
54  0
55  0
56  0
57  0
58  1
59  0
60  0
/;

Parameter bowlingMetric(i)
/
1   0.751
2   0.3891
3   0.0005
4   0.5497
5   0.4419
6   0.7689
7   0.0005
8   0.0401
9   0.0005
10  0.725
11  0.3797
12  0.4955
13  0.0515
14  0.4872
15  0.0005
16  0.6821
17  0.5042
18  0.6089
19  0.0005
20  0.6029
21  0.0373
22  0.542
23  0.0005
24  0.65
25  0.4747
26  0.4772
27  0.5627
28  0.6042
29  0.5644
30  0.6132
31  0.6926
32  0.1804
33  0.4936
34  0.4689
35  0.7051
36  0.6889
37  0.7388
38  0.5848
39  0.9736
40  0.0005
41  0.4225
42  0.0581
43  0.512
44  0.4801
45  1
46  0.0526
47  0.811
48  0.5713
49  0.0524
50  0.0518
51  0.0668
52  0.0374
53  0.5483
54  0.0349
55  0.5194
56  0.0005
57  0.0365
58  0.6758
59  0.0435
60  0.0005
/;


Equation budget, batting, bowling, players, totWK, totBatsmen, totBowlers, battingThreshold;

totBatsmen.. sum(i, x(i)*isBatsmen(i)) =e= 9;
totBowlers.. sum(i, x(i)*isBowler(i)) =e= 6;
players.. sum(i, x(i)) =e= 15;
budget.. sum(i, x(i)) =l= B;
batting.. batNet =e= sum(i, x(i)*BattingMetric(i));
totWK.. sum(i, isWK(i)*x(i)) =e= 2;
battingThreshold.. batNet =g= 12;
bowling.. sum(i, bowlingMetric(i)*x(i)) =e= bowlNet;


model cric /all/;

solve cric using mip maximising bowlNet;

display x.l;
display bowlNet.l;

