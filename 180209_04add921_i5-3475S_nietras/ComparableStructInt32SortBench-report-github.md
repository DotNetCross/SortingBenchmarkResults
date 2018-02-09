``` ini

BenchmarkDotNet=v0.10.12.427-nightly, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.192)
Intel Core i5-3475S CPU 2.90GHz (Ivy Bridge), 1 CPU, 4 logical cores and 4 physical cores
Frequency=2840375 Hz, Resolution=352.0662 ns, Timer=TSC
.NET Core SDK=2.1.4
  [Host] : .NET Core 2.0.5 (Framework 4.6.26020.03), 64bit RyuJIT

Platform=X64  Runtime=Core  Toolchain=InProcessToolchain  
LaunchCount=1  RunStrategy=Monitoring  TargetCount=11  
UnrollFactor=1  WarmupCount=3  

```
|                        Method |               Filler |  Length |         Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |-------- |-------------:|----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |       **2** |    **77.213 ms** | **1.7926 ms** | **1.2962 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |    76.050 ms | 1.4951 ms | 1.0811 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |       2 |   211.030 ms | 5.6983 ms | 4.1202 ms |   2.73 |     0.07 |
|                         Span_ |             Constant |       2 |    26.718 ms | 0.4858 ms | 0.3513 ms |   0.35 |     0.01 |
|             Span_NullComparer |             Constant |       2 |    45.410 ms | 0.3786 ms | 0.2738 ms |   0.59 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       2 |   193.351 ms | 1.1096 ms | 0.8023 ms |   2.50 |     0.04 |
| Span_StructComparableComparer |             Constant |       2 |    99.203 ms | 0.8637 ms | 0.6245 ms |   1.29 |     0.02 |
|               Span_Comparison |             Constant |       2 |   124.331 ms | 1.0432 ms | 0.7543 ms |   1.61 |     0.03 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |    **57.601 ms** | **0.6983 ms** | **0.5049 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |    57.431 ms | 0.5199 ms | 0.3760 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 |   153.495 ms | 1.0985 ms | 0.7943 ms |   2.66 |     0.03 |
|                         Span_ |             Constant |       3 |    24.420 ms | 0.3823 ms | 0.2764 ms |   0.42 |     0.01 |
|             Span_NullComparer |             Constant |       3 |    37.235 ms | 0.3822 ms | 0.2763 ms |   0.65 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       3 |   142.845 ms | 1.3812 ms | 0.9987 ms |   2.48 |     0.03 |
| Span_StructComparableComparer |             Constant |       3 |    68.681 ms | 0.4704 ms | 0.3401 ms |   1.19 |     0.01 |
|               Span_Comparison |             Constant |       3 |    94.141 ms | 0.9500 ms | 0.6869 ms |   1.63 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |    **20.978 ms** | **0.3282 ms** | **0.2373 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |    20.787 ms | 0.3346 ms | 0.2420 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |      10 |    57.387 ms | 1.4156 ms | 1.0236 ms |   2.74 |     0.06 |
|                         Span_ |             Constant |      10 |     9.321 ms | 0.1626 ms | 0.1176 ms |   0.44 |     0.01 |
|             Span_NullComparer |             Constant |      10 |    12.890 ms | 0.3390 ms | 0.2451 ms |   0.61 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |    58.869 ms | 0.7413 ms | 0.5360 ms |   2.81 |     0.04 |
| Span_StructComparableComparer |             Constant |      10 |    24.457 ms | 0.2441 ms | 0.1765 ms |   1.17 |     0.01 |
|               Span_Comparison |             Constant |      10 |    41.654 ms | 0.4012 ms | 0.2901 ms |   1.99 |     0.03 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |    **22.734 ms** | **0.4848 ms** | **0.3505 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |    22.536 ms | 0.3282 ms | 0.2373 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |     100 |    61.467 ms | 0.8027 ms | 0.5804 ms |   2.70 |     0.05 |
|                         Span_ |             Constant |     100 |    19.260 ms | 0.3864 ms | 0.2794 ms |   0.85 |     0.02 |
|             Span_NullComparer |             Constant |     100 |    19.818 ms | 0.3253 ms | 0.2352 ms |   0.87 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     100 |   106.290 ms | 0.7885 ms | 0.5701 ms |   4.68 |     0.07 |
| Span_StructComparableComparer |             Constant |     100 |    18.492 ms | 0.4041 ms | 0.2922 ms |   0.81 |     0.02 |
|               Span_Comparison |             Constant |     100 |    74.608 ms | 0.6335 ms | 0.4581 ms |   3.28 |     0.05 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |    **48.936 ms** | **0.5626 ms** | **0.4068 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |    49.169 ms | 0.5359 ms | 0.3875 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   10000 |   144.053 ms | 0.9157 ms | 0.6621 ms |   2.94 |     0.03 |
|                         Span_ |             Constant |   10000 |    43.526 ms | 0.4727 ms | 0.3418 ms |   0.89 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |    43.616 ms | 0.5040 ms | 0.3644 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 |   267.704 ms | 1.7612 ms | 1.2735 ms |   5.47 |     0.05 |
| Span_StructComparableComparer |             Constant |   10000 |    38.290 ms | 0.4984 ms | 0.3604 ms |   0.78 |     0.01 |
|               Span_Comparison |             Constant |   10000 |   181.508 ms | 0.9814 ms | 0.7096 ms |   3.71 |     0.03 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |    **69.492 ms** | **0.5520 ms** | **0.3991 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |    69.624 ms | 0.8944 ms | 0.6467 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 |   214.660 ms | 0.9406 ms | 0.6801 ms |   3.09 |     0.02 |
|                         Span_ |             Constant | 1000000 |    61.349 ms | 0.6310 ms | 0.4563 ms |   0.88 |     0.01 |
|             Span_NullComparer |             Constant | 1000000 |    61.699 ms | 0.6657 ms | 0.4814 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer |             Constant | 1000000 |   405.825 ms | 1.8842 ms | 1.3624 ms |   5.84 |     0.04 |
| Span_StructComparableComparer |             Constant | 1000000 |    53.832 ms | 0.4181 ms | 0.3023 ms |   0.77 |     0.01 |
|               Span_Comparison |             Constant | 1000000 |   272.251 ms | 0.8436 ms | 0.6099 ms |   3.92 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |    **75.308 ms** | **0.6775 ms** | **0.4899 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |    73.898 ms | 0.4898 ms | 0.3542 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       2 |   206.651 ms | 1.0256 ms | 0.7416 ms |   2.74 |     0.02 |
|                         Span_ |         Decrementing |       2 |    26.086 ms | 0.5240 ms | 0.3789 ms |   0.35 |     0.01 |
|             Span_NullComparer |         Decrementing |       2 |    44.918 ms | 0.6476 ms | 0.4683 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       2 |   193.315 ms | 0.9533 ms | 0.6893 ms |   2.57 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       2 |   100.044 ms | 0.3550 ms | 0.2567 ms |   1.33 |     0.01 |
|               Span_Comparison |         Decrementing |       2 |   125.027 ms | 0.8670 ms | 0.6269 ms |   1.66 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |    **56.381 ms** | **0.9410 ms** | **0.6804 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |    55.395 ms | 0.4162 ms | 0.3009 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       3 |   151.877 ms | 1.3867 ms | 1.0027 ms |   2.69 |     0.04 |
|                         Span_ |         Decrementing |       3 |    22.716 ms | 0.3197 ms | 0.2312 ms |   0.40 |     0.01 |
|             Span_NullComparer |         Decrementing |       3 |    35.641 ms | 0.8300 ms | 0.6001 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       3 |   138.896 ms | 1.0532 ms | 0.7615 ms |   2.46 |     0.03 |
| Span_StructComparableComparer |         Decrementing |       3 |    70.560 ms | 0.8937 ms | 0.6462 ms |   1.25 |     0.02 |
|               Span_Comparison |         Decrementing |       3 |    93.967 ms | 0.6899 ms | 0.4989 ms |   1.67 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |    **36.426 ms** | **0.3142 ms** | **0.2272 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |    36.199 ms | 0.4064 ms | 0.2939 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |   102.166 ms | 0.9059 ms | 0.6550 ms |   2.80 |     0.02 |
|                         Span_ |         Decrementing |      10 |    20.113 ms | 0.3318 ms | 0.2399 ms |   0.55 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |    23.991 ms | 0.3352 ms | 0.2424 ms |   0.66 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      10 |   146.394 ms | 0.7236 ms | 0.5232 ms |   4.02 |     0.03 |
| Span_StructComparableComparer |         Decrementing |      10 |    37.799 ms | 0.3059 ms | 0.2212 ms |   1.04 |     0.01 |
|               Span_Comparison |         Decrementing |      10 |   104.813 ms | 0.6689 ms | 0.4836 ms |   2.88 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |    **25.896 ms** | **0.5470 ms** | **0.3955 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |    25.863 ms | 0.2911 ms | 0.2105 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |     100 |    84.041 ms | 0.5693 ms | 0.4116 ms |   3.25 |     0.05 |
|                         Span_ |         Decrementing |     100 |    21.264 ms | 0.4233 ms | 0.3060 ms |   0.82 |     0.02 |
|             Span_NullComparer |         Decrementing |     100 |    21.602 ms | 0.3813 ms | 0.2757 ms |   0.83 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |     100 |   150.902 ms | 0.9503 ms | 0.6871 ms |   5.83 |     0.09 |
| Span_StructComparableComparer |         Decrementing |     100 |    24.593 ms | 0.3248 ms | 0.2348 ms |   0.95 |     0.02 |
|               Span_Comparison |         Decrementing |     100 |   104.287 ms | 0.8653 ms | 0.6257 ms |   4.03 |     0.06 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |    **53.666 ms** | **0.4397 ms** | **0.3180 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |    53.676 ms | 0.4641 ms | 0.3356 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |   10000 |   215.065 ms | 1.0113 ms | 0.7313 ms |   4.01 |     0.03 |
|                         Span_ |         Decrementing |   10000 |    49.361 ms | 0.4920 ms | 0.3557 ms |   0.92 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |    49.255 ms | 0.4302 ms | 0.3111 ms |   0.92 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 |   415.329 ms | 1.3556 ms | 0.9802 ms |   7.74 |     0.05 |
| Span_StructComparableComparer |         Decrementing |   10000 |    49.132 ms | 0.5446 ms | 0.3938 ms |   0.92 |     0.01 |
|               Span_Comparison |         Decrementing |   10000 |   276.576 ms | 1.1141 ms | 0.8056 ms |   5.15 |     0.03 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |    **80.668 ms** | **0.7799 ms** | **0.5639 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |    80.346 ms | 0.5278 ms | 0.3816 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 |   360.271 ms | 1.6025 ms | 1.1587 ms |   4.47 |     0.03 |
|                         Span_ |         Decrementing | 1000000 |    76.357 ms | 0.4560 ms | 0.3297 ms |   0.95 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |    76.470 ms | 0.7717 ms | 0.5580 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 |   696.290 ms | 2.0019 ms | 1.4475 ms |   8.63 |     0.06 |
| Span_StructComparableComparer |         Decrementing | 1000000 |    73.692 ms | 0.5491 ms | 0.3970 ms |   0.91 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 |   460.340 ms | 2.8047 ms | 2.0280 ms |   5.71 |     0.04 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |    **75.463 ms** | **0.8213 ms** | **0.5938 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |    74.466 ms | 0.5422 ms | 0.3921 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |   208.971 ms | 1.0979 ms | 0.7939 ms |   2.77 |     0.02 |
|                         Span_ |         Incrementing |       2 |    26.216 ms | 0.3700 ms | 0.2675 ms |   0.35 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |    46.540 ms | 0.4581 ms | 0.3313 ms |   0.62 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       2 |   192.613 ms | 1.0870 ms | 0.7860 ms |   2.55 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       2 |   100.643 ms | 0.6715 ms | 0.4856 ms |   1.33 |     0.01 |
|               Span_Comparison |         Incrementing |       2 |   124.501 ms | 0.9884 ms | 0.7147 ms |   1.65 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |    **57.855 ms** | **0.8868 ms** | **0.6412 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |    56.986 ms | 0.5853 ms | 0.4232 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       3 |   151.530 ms | 1.2850 ms | 0.9291 ms |   2.62 |     0.03 |
|                         Span_ |         Incrementing |       3 |    23.377 ms | 0.2904 ms | 0.2100 ms |   0.40 |     0.01 |
|             Span_NullComparer |         Incrementing |       3 |    36.668 ms | 0.5535 ms | 0.4002 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       3 |   139.885 ms | 0.6679 ms | 0.4829 ms |   2.42 |     0.03 |
| Span_StructComparableComparer |         Incrementing |       3 |    68.452 ms | 0.6199 ms | 0.4482 ms |   1.18 |     0.01 |
|               Span_Comparison |         Incrementing |       3 |    92.378 ms | 1.2772 ms | 0.9235 ms |   1.60 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |    **20.995 ms** | **0.3116 ms** | **0.2253 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |    20.974 ms | 0.3484 ms | 0.2519 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |      10 |    56.948 ms | 0.6605 ms | 0.4776 ms |   2.71 |     0.04 |
|                         Span_ |         Incrementing |      10 |     9.371 ms | 0.3058 ms | 0.2211 ms |   0.45 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |    13.125 ms | 0.3045 ms | 0.2202 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |    58.638 ms | 0.5699 ms | 0.4120 ms |   2.79 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      10 |    25.249 ms | 0.3921 ms | 0.2835 ms |   1.20 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |    41.880 ms | 0.4350 ms | 0.3145 ms |   1.99 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |    **19.181 ms** | **0.3605 ms** | **0.2607 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |    19.194 ms | 0.3106 ms | 0.2246 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |     100 |    58.282 ms | 0.6403 ms | 0.4630 ms |   3.04 |     0.05 |
|                         Span_ |         Incrementing |     100 |    15.438 ms | 0.4303 ms | 0.3111 ms |   0.81 |     0.02 |
|             Span_NullComparer |         Incrementing |     100 |    15.832 ms | 0.3424 ms | 0.2475 ms |   0.83 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |     100 |   104.451 ms | 1.1090 ms | 0.8019 ms |   5.45 |     0.08 |
| Span_StructComparableComparer |         Incrementing |     100 |    18.210 ms | 0.3913 ms | 0.2829 ms |   0.95 |     0.02 |
|               Span_Comparison |         Incrementing |     100 |    71.627 ms | 0.5782 ms | 0.4181 ms |   3.73 |     0.05 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |    **36.662 ms** | **0.3109 ms** | **0.2248 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |    36.630 ms | 0.4094 ms | 0.2960 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   10000 |   130.183 ms | 1.0089 ms | 0.7295 ms |   3.55 |     0.03 |
|                         Span_ |         Incrementing |   10000 |    33.408 ms | 0.4726 ms | 0.3417 ms |   0.91 |     0.01 |
|             Span_NullComparer |         Incrementing |   10000 |    33.525 ms | 0.2684 ms | 0.1941 ms |   0.91 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   10000 |   256.554 ms | 0.7736 ms | 0.5594 ms |   7.00 |     0.04 |
| Span_StructComparableComparer |         Incrementing |   10000 |    31.536 ms | 0.7504 ms | 0.5426 ms |   0.86 |     0.01 |
|               Span_Comparison |         Incrementing |   10000 |   168.598 ms | 0.9256 ms | 0.6692 ms |   4.60 |     0.03 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |    **48.569 ms** | **0.9948 ms** | **0.7193 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |    48.441 ms | 0.5200 ms | 0.3760 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing | 1000000 |   193.561 ms | 1.3707 ms | 0.9911 ms |   3.99 |     0.06 |
|                         Span_ |         Incrementing | 1000000 |    45.697 ms | 0.5715 ms | 0.4132 ms |   0.94 |     0.02 |
|             Span_NullComparer |         Incrementing | 1000000 |    45.941 ms | 0.7133 ms | 0.5158 ms |   0.95 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 |   385.622 ms | 1.6451 ms | 1.1895 ms |   7.94 |     0.11 |
| Span_StructComparableComparer |         Incrementing | 1000000 |    41.638 ms | 0.6493 ms | 0.4695 ms |   0.86 |     0.02 |
|               Span_Comparison |         Incrementing | 1000000 |   252.160 ms | 1.6277 ms | 1.1770 ms |   5.19 |     0.08 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |    **75.486 ms** | **0.4893 ms** | **0.3538 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |    74.379 ms | 0.4055 ms | 0.2932 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |   209.730 ms | 3.5714 ms | 2.5823 ms |   2.78 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |       2 |    26.421 ms | 0.4353 ms | 0.3147 ms |   0.35 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |    45.226 ms | 0.4917 ms | 0.3555 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 |   192.240 ms | 1.0153 ms | 0.7341 ms |   2.55 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |    99.509 ms | 0.8459 ms | 0.6117 ms |   1.32 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |   123.702 ms | 0.5168 ms | 0.3737 ms |   1.64 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |    **57.604 ms** | **0.4802 ms** | **0.3472 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |    57.019 ms | 0.8250 ms | 0.5965 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |   152.494 ms | 0.8261 ms | 0.5973 ms |   2.65 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       3 |    23.538 ms | 0.2602 ms | 0.1881 ms |   0.41 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |    36.440 ms | 0.8694 ms | 0.6286 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |   140.231 ms | 0.9179 ms | 0.6637 ms |   2.43 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |    68.630 ms | 0.6543 ms | 0.4731 ms |   1.19 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |    92.101 ms | 0.6942 ms | 0.5019 ms |   1.60 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |    **25.885 ms** | **0.2919 ms** | **0.2111 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |    25.867 ms | 0.3921 ms | 0.2835 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |    71.566 ms | 0.5882 ms | 0.4253 ms |   2.76 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |      10 |    12.220 ms | 0.2219 ms | 0.1605 ms |   0.47 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |    16.303 ms | 0.1472 ms | 0.1064 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |    86.565 ms | 0.4914 ms | 0.3553 ms |   3.34 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |    28.023 ms | 0.4049 ms | 0.2928 ms |   1.08 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |    62.057 ms | 0.7081 ms | 0.5120 ms |   2.40 |     0.03 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |    **32.636 ms** | **0.4451 ms** | **0.3218 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |    32.528 ms | 0.3943 ms | 0.2851 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |   100.866 ms | 1.0838 ms | 0.7836 ms |   3.09 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |     100 |    27.337 ms | 0.5625 ms | 0.4068 ms |   0.84 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |    27.894 ms | 0.7261 ms | 0.5250 ms |   0.85 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |   195.250 ms | 3.5231 ms | 2.5474 ms |   5.98 |     0.09 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |    28.613 ms | 0.4649 ms | 0.3362 ms |   0.88 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |   129.792 ms | 0.4163 ms | 0.3010 ms |   3.98 |     0.04 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |    **85.473 ms** | **0.7788 ms** | **0.5631 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |    85.427 ms | 0.5699 ms | 0.4121 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 |   279.873 ms | 2.2720 ms | 1.6428 ms |   3.27 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |   10000 |   100.746 ms | 1.3475 ms | 0.9743 ms |   1.18 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |   100.611 ms | 1.4939 ms | 1.0802 ms |   1.18 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 |   583.061 ms | 3.4740 ms | 2.5119 ms |   6.82 |     0.05 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |    95.296 ms | 1.4837 ms | 1.0728 ms |   1.11 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 |   379.871 ms | 3.8449 ms | 2.7801 ms |   4.44 |     0.04 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** |   **206.422 ms** | **1.5226 ms** | **1.1010 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 |   206.628 ms | 1.5058 ms | 1.0888 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 |   550.886 ms | 1.9382 ms | 1.4015 ms |   2.67 |     0.01 |
|                         Span_ |  MedianOfThreeKiller | 1000000 |   178.977 ms | 0.8809 ms | 0.6369 ms |   0.87 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 |   179.181 ms | 0.5878 ms | 0.4250 ms |   0.87 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 1,022.499 ms | 1.6271 ms | 1.1765 ms |   4.95 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 |   173.390 ms | 0.9070 ms | 0.6558 ms |   0.84 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 |   654.151 ms | 2.7506 ms | 1.9889 ms |   3.17 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |    **77.683 ms** | **0.2459 ms** | **0.1778 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |    76.815 ms | 0.5066 ms | 0.3663 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |   210.782 ms | 1.3614 ms | 0.9844 ms |   2.71 |     0.01 |
|                         Span_ | PartialRandomShuffle |       2 |    28.082 ms | 0.1649 ms | 0.1192 ms |   0.36 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |    47.140 ms | 0.3545 ms | 0.2563 ms |   0.61 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 |   194.842 ms | 0.9443 ms | 0.6828 ms |   2.51 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |   101.998 ms | 0.7855 ms | 0.5679 ms |   1.31 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       2 |   124.909 ms | 0.4830 ms | 0.3493 ms |   1.61 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |    **60.508 ms** | **0.6351 ms** | **0.4592 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |    60.278 ms | 0.6742 ms | 0.4875 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |   155.835 ms | 0.6810 ms | 0.4924 ms |   2.58 |     0.02 |
|                         Span_ | PartialRandomShuffle |       3 |    26.284 ms | 0.3943 ms | 0.2851 ms |   0.43 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       3 |    39.313 ms | 0.7883 ms | 0.5700 ms |   0.65 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |   142.748 ms | 0.7030 ms | 0.5083 ms |   2.36 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |    72.373 ms | 0.7847 ms | 0.5674 ms |   1.20 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       3 |    95.517 ms | 0.4637 ms | 0.3353 ms |   1.58 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |    **30.110 ms** | **0.4214 ms** | **0.3047 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |    30.013 ms | 0.3108 ms | 0.2247 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |    70.775 ms | 0.6577 ms | 0.4756 ms |   2.35 |     0.03 |
|                         Span_ | PartialRandomShuffle |      10 |    16.757 ms | 0.2389 ms | 0.1727 ms |   0.56 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |    20.720 ms | 0.3524 ms | 0.2548 ms |   0.69 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |    79.601 ms | 0.4704 ms | 0.3401 ms |   2.64 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |    32.824 ms | 0.4884 ms | 0.3532 ms |   1.09 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |      10 |    57.586 ms | 0.4222 ms | 0.3053 ms |   1.91 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |    **65.741 ms** | **0.7171 ms** | **0.5185 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |    65.631 ms | 0.2865 ms | 0.2071 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |   119.874 ms | 1.0211 ms | 0.7383 ms |   1.82 |     0.02 |
|                         Span_ | PartialRandomShuffle |     100 |    56.394 ms | 0.6127 ms | 0.4430 ms |   0.86 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |    56.677 ms | 0.5441 ms | 0.3934 ms |   0.86 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 |   189.663 ms | 1.5942 ms | 1.1527 ms |   2.89 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |    59.797 ms | 0.4975 ms | 0.3597 ms |   0.91 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 |   136.206 ms | 1.4187 ms | 1.0258 ms |   2.07 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |   **117.957 ms** | **0.6809 ms** | **0.4923 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |   118.376 ms | 1.1384 ms | 0.8231 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 |   227.423 ms | 1.3049 ms | 0.9435 ms |   1.93 |     0.01 |
|                         Span_ | PartialRandomShuffle |   10000 |   103.934 ms | 0.4836 ms | 0.3497 ms |   0.88 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |   104.048 ms | 1.0675 ms | 0.7719 ms |   0.88 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 |   385.501 ms | 1.3491 ms | 0.9755 ms |   3.27 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |   104.241 ms | 0.5073 ms | 0.3668 ms |   0.88 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |   10000 |   262.879 ms | 1.1084 ms | 0.8014 ms |   2.23 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** |   **172.135 ms** | **1.2752 ms** | **0.9220 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 |   172.300 ms | 0.4525 ms | 0.3272 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 |   340.999 ms | 1.5765 ms | 1.1399 ms |   1.98 |     0.01 |
|                         Span_ | PartialRandomShuffle | 1000000 |   152.684 ms | 0.9118 ms | 0.6593 ms |   0.89 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 |   153.205 ms | 1.3883 ms | 1.0038 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 |   581.306 ms | 2.4439 ms | 1.7671 ms |   3.38 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 |   154.097 ms | 1.1007 ms | 0.7959 ms |   0.90 |     0.01 |
|               Span_Comparison | PartialRandomShuffle | 1000000 |   392.873 ms | 2.3944 ms | 1.7313 ms |   2.28 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |    **81.783 ms** | **0.6477 ms** | **0.4683 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |    80.895 ms | 0.5604 ms | 0.4052 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 |   217.202 ms | 1.1904 ms | 0.8607 ms |   2.66 |     0.02 |
|                         Span_ |               Random |       2 |    31.509 ms | 0.4667 ms | 0.3374 ms |   0.39 |     0.00 |
|             Span_NullComparer |               Random |       2 |    51.538 ms | 0.6617 ms | 0.4785 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |               Random |       2 |   199.930 ms | 1.0324 ms | 0.7465 ms |   2.44 |     0.02 |
| Span_StructComparableComparer |               Random |       2 |   105.407 ms | 1.1647 ms | 0.8421 ms |   1.29 |     0.01 |
|               Span_Comparison |               Random |       2 |   129.153 ms | 0.6173 ms | 0.4464 ms |   1.58 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |    **66.895 ms** | **0.4919 ms** | **0.3557 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |    66.178 ms | 0.8123 ms | 0.5874 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |   166.144 ms | 0.8160 ms | 0.5900 ms |   2.48 |     0.02 |
|                         Span_ |               Random |       3 |    31.690 ms | 0.3034 ms | 0.2193 ms |   0.47 |     0.00 |
|             Span_NullComparer |               Random |       3 |    45.478 ms | 0.2563 ms | 0.1853 ms |   0.68 |     0.00 |
|  Span_ClassComparableComparer |               Random |       3 |   147.884 ms | 0.8510 ms | 0.6153 ms |   2.21 |     0.01 |
| Span_StructComparableComparer |               Random |       3 |    79.310 ms | 0.7109 ms | 0.5140 ms |   1.19 |     0.01 |
|               Span_Comparison |               Random |       3 |   101.224 ms | 0.8016 ms | 0.5796 ms |   1.51 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |    **47.968 ms** | **0.4546 ms** | **0.3287 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |    47.672 ms | 0.5303 ms | 0.3834 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |      10 |    98.782 ms | 0.7705 ms | 0.5571 ms |   2.06 |     0.02 |
|                         Span_ |               Random |      10 |    33.689 ms | 0.3285 ms | 0.2375 ms |   0.70 |     0.01 |
|             Span_NullComparer |               Random |      10 |    37.651 ms | 0.4941 ms | 0.3573 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer |               Random |      10 |   121.152 ms | 0.6646 ms | 0.4805 ms |   2.53 |     0.02 |
| Span_StructComparableComparer |               Random |      10 |    49.292 ms | 0.3949 ms | 0.2856 ms |   1.03 |     0.01 |
|               Span_Comparison |               Random |      10 |    88.445 ms | 0.5633 ms | 0.4073 ms |   1.84 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |    **86.250 ms** | **0.9626 ms** | **0.6960 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |    86.443 ms | 1.1443 ms | 0.8274 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |     100 |   139.138 ms | 0.7030 ms | 0.5083 ms |   1.61 |     0.01 |
|                         Span_ |               Random |     100 |    74.541 ms | 0.3882 ms | 0.2807 ms |   0.86 |     0.01 |
|             Span_NullComparer |               Random |     100 |    74.899 ms | 0.7831 ms | 0.5662 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 |   213.015 ms | 1.1512 ms | 0.8324 ms |   2.47 |     0.02 |
| Span_StructComparableComparer |               Random |     100 |    76.399 ms | 0.7886 ms | 0.5702 ms |   0.89 |     0.01 |
|               Span_Comparison |               Random |     100 |   153.016 ms | 1.2227 ms | 0.8841 ms |   1.77 |     0.02 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** |   **173.163 ms** | **0.9371 ms** | **0.6776 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 |   173.422 ms | 1.1011 ms | 0.7962 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   10000 |   277.442 ms | 1.1551 ms | 0.8352 ms |   1.60 |     0.01 |
|                         Span_ |               Random |   10000 |   151.346 ms | 1.1346 ms | 0.8204 ms |   0.87 |     0.01 |
|             Span_NullComparer |               Random |   10000 |   151.233 ms | 1.2259 ms | 0.8864 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |               Random |   10000 |   442.340 ms | 2.1931 ms | 1.5858 ms |   2.55 |     0.01 |
| Span_StructComparableComparer |               Random |   10000 |   150.661 ms | 0.3633 ms | 0.2627 ms |   0.87 |     0.00 |
|               Span_Comparison |               Random |   10000 |   306.124 ms | 0.9448 ms | 0.6832 ms |   1.77 |     0.01 |
|                               |                      |         |              |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** |   **256.052 ms** | **1.3031 ms** | **0.9422 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 |   255.865 ms | 0.9038 ms | 0.6535 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 |   418.296 ms | 1.1621 ms | 0.8402 ms |   1.63 |     0.01 |
|                         Span_ |               Random | 1000000 |   224.071 ms | 0.9740 ms | 0.7042 ms |   0.88 |     0.00 |
|             Span_NullComparer |               Random | 1000000 |   224.441 ms | 1.3307 ms | 0.9622 ms |   0.88 |     0.00 |
|  Span_ClassComparableComparer |               Random | 1000000 |   673.691 ms | 1.1373 ms | 0.8224 ms |   2.63 |     0.01 |
| Span_StructComparableComparer |               Random | 1000000 |   223.272 ms | 1.2094 ms | 0.8745 ms |   0.87 |     0.00 |
|               Span_Comparison |               Random | 1000000 |   463.076 ms | 1.5727 ms | 1.1372 ms |   1.81 |     0.01 |
