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
|                        Method |               Filler |  Length |       Mean |      Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |-------- |-----------:|-----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |       **2** |  **60.226 ms** |  **0.4306 ms** | **0.3113 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  59.120 ms |  0.5762 ms | 0.4167 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |             Constant |       2 |  56.795 ms |  0.4047 ms | 0.2926 ms |   0.94 |     0.01 |
|                         Span_ |             Constant |       2 |  10.101 ms |  0.2437 ms | 0.1762 ms |   0.17 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  30.498 ms |  0.2654 ms | 0.1919 ms |   0.51 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       2 | 133.765 ms |  0.9570 ms | 0.6920 ms |   2.22 |     0.02 |
| Span_StructComparableComparer |             Constant |       2 |  71.840 ms |  0.6613 ms | 0.4782 ms |   1.19 |     0.01 |
|               Span_Comparison |             Constant |       2 |  83.009 ms |  0.7464 ms | 0.5397 ms |   1.38 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **48.539 ms** |  **0.6706 ms** | **0.4849 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  47.760 ms |  0.5779 ms | 0.4178 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 |  50.411 ms |  0.3837 ms | 0.2774 ms |   1.04 |     0.01 |
|                         Span_ |             Constant |       3 |   7.548 ms |  0.2385 ms | 0.1724 ms |   0.16 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  21.419 ms |  0.3247 ms | 0.2348 ms |   0.44 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       3 | 101.711 ms |  0.8422 ms | 0.6090 ms |   2.10 |     0.02 |
| Span_StructComparableComparer |             Constant |       3 |  54.007 ms |  0.6410 ms | 0.4635 ms |   1.11 |     0.01 |
|               Span_Comparison |             Constant |       3 |  64.816 ms |  0.8947 ms | 0.6469 ms |   1.34 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **22.481 ms** |  **0.2836 ms** | **0.2051 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  22.403 ms |  0.4364 ms | 0.3155 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |             Constant |      10 |  26.905 ms |  0.4757 ms | 0.3440 ms |   1.20 |     0.02 |
|                         Span_ |             Constant |      10 |   4.977 ms |  0.0617 ms | 0.0446 ms |   0.22 |     0.00 |
|             Span_NullComparer |             Constant |      10 |   8.787 ms |  0.2656 ms | 0.1920 ms |   0.39 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  42.796 ms |  0.2855 ms | 0.2064 ms |   1.90 |     0.02 |
| Span_StructComparableComparer |             Constant |      10 |  22.726 ms |  0.2273 ms | 0.1644 ms |   1.01 |     0.01 |
|               Span_Comparison |             Constant |      10 |  29.197 ms |  0.3722 ms | 0.2691 ms |   1.30 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **42.619 ms** |  **0.6160 ms** | **0.4454 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  42.030 ms |  0.3166 ms | 0.2289 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant |     100 |  68.799 ms |  0.6935 ms | 0.5014 ms |   1.61 |     0.02 |
|                         Span_ |             Constant |     100 |  13.341 ms |  0.3845 ms | 0.2780 ms |   0.31 |     0.01 |
|             Span_NullComparer |             Constant |     100 |  13.731 ms |  0.3014 ms | 0.2179 ms |   0.32 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     100 |  89.603 ms |  0.8065 ms | 0.5831 ms |   2.10 |     0.02 |
| Span_StructComparableComparer |             Constant |     100 |  40.329 ms |  0.4507 ms | 0.3259 ms |   0.95 |     0.01 |
|               Span_Comparison |             Constant |     100 |  64.756 ms |  0.7389 ms | 0.5343 ms |   1.52 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** |   **10000** | **101.406 ms** |  **0.7853 ms** | **0.5678 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 | 100.738 ms |  0.6142 ms | 0.4441 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant |   10000 | 172.424 ms |  0.9832 ms | 0.7109 ms |   1.70 |     0.01 |
|                         Span_ |             Constant |   10000 |  31.309 ms |  0.5218 ms | 0.3773 ms |   0.31 |     0.00 |
|             Span_NullComparer |             Constant |   10000 |  31.545 ms |  0.3964 ms | 0.2866 ms |   0.31 |     0.00 |
|  Span_ClassComparableComparer |             Constant |   10000 | 231.297 ms |  1.1802 ms | 0.8533 ms |   2.28 |     0.01 |
| Span_StructComparableComparer |             Constant |   10000 |  99.462 ms |  1.1422 ms | 0.8259 ms |   0.98 |     0.01 |
|               Span_Comparison |             Constant |   10000 | 162.870 ms |  0.7093 ms | 0.5128 ms |   1.61 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** | **1000000** | **151.783 ms** |  **1.3244 ms** | **0.9576 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 | 150.691 ms |  0.8108 ms | 0.5863 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 261.671 ms |  1.3166 ms | 0.9520 ms |   1.72 |     0.01 |
|                         Span_ |             Constant | 1000000 |  45.349 ms |  0.6474 ms | 0.4681 ms |   0.30 |     0.00 |
|             Span_NullComparer |             Constant | 1000000 |  45.478 ms |  0.5197 ms | 0.3758 ms |   0.30 |     0.00 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 350.323 ms |  1.0733 ms | 0.7760 ms |   2.31 |     0.01 |
| Span_StructComparableComparer |             Constant | 1000000 | 152.756 ms |  0.8305 ms | 0.6005 ms |   1.01 |     0.01 |
|               Span_Comparison |             Constant | 1000000 | 249.668 ms |  0.6646 ms | 0.4805 ms |   1.64 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **59.293 ms** |  **0.5042 ms** | **0.3646 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  58.686 ms |  0.9279 ms | 0.6710 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       2 |  57.066 ms |  0.6583 ms | 0.4760 ms |   0.96 |     0.01 |
|                         Span_ |         Decrementing |       2 |  11.450 ms |  0.2489 ms | 0.1800 ms |   0.19 |     0.00 |
|             Span_NullComparer |         Decrementing |       2 |  32.618 ms |  0.4123 ms | 0.2981 ms |   0.55 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       2 | 133.583 ms |  1.1980 ms | 0.8662 ms |   2.25 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       2 |  72.268 ms |  1.4176 ms | 1.0250 ms |   1.22 |     0.02 |
|               Span_Comparison |         Decrementing |       2 |  83.683 ms |  0.5340 ms | 0.3861 ms |   1.41 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **50.615 ms** |  **4.2296 ms** | **3.0583 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  47.534 ms |  0.6583 ms | 0.4760 ms |   0.94 |     0.05 |
| Array_ClassComparableComparer |         Decrementing |       3 |  51.739 ms |  0.5183 ms | 0.3748 ms |   1.03 |     0.06 |
|                         Span_ |         Decrementing |       3 |   9.935 ms |  0.2702 ms | 0.1954 ms |   0.20 |     0.01 |
|             Span_NullComparer |         Decrementing |       3 |  23.599 ms |  0.2960 ms | 0.2140 ms |   0.47 |     0.03 |
|  Span_ClassComparableComparer |         Decrementing |       3 | 101.230 ms |  0.8666 ms | 0.6266 ms |   2.01 |     0.11 |
| Span_StructComparableComparer |         Decrementing |       3 |  53.679 ms |  0.6926 ms | 0.5008 ms |   1.06 |     0.06 |
|               Span_Comparison |         Decrementing |       3 |  63.585 ms |  0.5974 ms | 0.4320 ms |   1.26 |     0.07 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **52.147 ms** |  **0.3870 ms** | **0.2799 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  51.832 ms |  0.5110 ms | 0.3695 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |  80.224 ms |  0.4224 ms | 0.3054 ms |   1.54 |     0.01 |
|                         Span_ |         Decrementing |      10 |  18.351 ms |  0.4288 ms | 0.3101 ms |   0.35 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  22.810 ms |  0.3180 ms | 0.2300 ms |   0.44 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |      10 | 111.148 ms |  0.9588 ms | 0.6933 ms |   2.13 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      10 |  45.021 ms |  0.4746 ms | 0.3432 ms |   0.86 |     0.01 |
|               Span_Comparison |         Decrementing |      10 |  77.020 ms |  0.4421 ms | 0.3197 ms |   1.48 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **51.744 ms** |  **0.3028 ms** | **0.2189 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  51.927 ms |  0.5687 ms | 0.4112 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |     100 |  84.974 ms |  0.8743 ms | 0.6322 ms |   1.64 |     0.01 |
|                         Span_ |         Decrementing |     100 |  15.999 ms |  0.4338 ms | 0.3137 ms |   0.31 |     0.01 |
|             Span_NullComparer |         Decrementing |     100 |  16.493 ms |  0.2989 ms | 0.2161 ms |   0.32 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |     100 | 121.179 ms |  0.8962 ms | 0.6480 ms |   2.34 |     0.02 |
| Span_StructComparableComparer |         Decrementing |     100 |  46.765 ms |  0.5710 ms | 0.4129 ms |   0.90 |     0.01 |
|               Span_Comparison |         Decrementing |     100 |  84.217 ms |  0.5286 ms | 0.3822 ms |   1.63 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** | **126.334 ms** |  **0.8000 ms** | **0.5785 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 | 125.740 ms |  0.7308 ms | 0.5284 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 217.588 ms |  1.2427 ms | 0.8986 ms |   1.72 |     0.01 |
|                         Span_ |         Decrementing |   10000 |  39.149 ms |  0.6700 ms | 0.4845 ms |   0.31 |     0.00 |
|             Span_NullComparer |         Decrementing |   10000 |  39.574 ms |  0.3981 ms | 0.2878 ms |   0.31 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 335.619 ms |  1.1220 ms | 0.8113 ms |   2.66 |     0.01 |
| Span_StructComparableComparer |         Decrementing |   10000 | 117.433 ms |  0.8958 ms | 0.6477 ms |   0.93 |     0.01 |
|               Span_Comparison |         Decrementing |   10000 | 228.641 ms |  1.0167 ms | 0.7352 ms |   1.81 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** | **206.545 ms** |  **1.4278 ms** | **1.0324 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 | 205.848 ms |  1.1630 ms | 0.8410 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 356.875 ms |  0.8511 ms | 0.6154 ms |   1.73 |     0.01 |
|                         Span_ |         Decrementing | 1000000 |  63.011 ms |  0.5513 ms | 0.3986 ms |   0.31 |     0.00 |
|             Span_NullComparer |         Decrementing | 1000000 |  63.041 ms |  0.7921 ms | 0.5727 ms |   0.31 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 563.604 ms |  1.1477 ms | 0.8299 ms |   2.73 |     0.01 |
| Span_StructComparableComparer |         Decrementing | 1000000 | 195.294 ms |  0.8199 ms | 0.5929 ms |   0.95 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 | 382.761 ms |  1.3271 ms | 0.9596 ms |   1.85 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **58.502 ms** |  **0.6262 ms** | **0.4528 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  57.581 ms |  0.5685 ms | 0.4111 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |  56.009 ms |  0.5659 ms | 0.4092 ms |   0.96 |     0.01 |
|                         Span_ |         Incrementing |       2 |  10.131 ms |  0.2169 ms | 0.1568 ms |   0.17 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  30.649 ms |  0.7561 ms | 0.5467 ms |   0.52 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       2 | 133.389 ms |  0.4336 ms | 0.3135 ms |   2.28 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       2 |  71.403 ms |  0.6208 ms | 0.4489 ms |   1.22 |     0.01 |
|               Span_Comparison |         Incrementing |       2 |  82.448 ms |  0.5943 ms | 0.4297 ms |   1.41 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **45.883 ms** |  **0.2360 ms** | **0.1707 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  45.245 ms |  0.4592 ms | 0.3321 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       3 |  48.398 ms |  0.3773 ms | 0.2728 ms |   1.05 |     0.01 |
|                         Span_ |         Incrementing |       3 |   7.437 ms |  0.1645 ms | 0.1190 ms |   0.16 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  21.905 ms |  0.3884 ms | 0.2809 ms |   0.48 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  99.379 ms |  0.7566 ms | 0.5471 ms |   2.17 |     0.01 |
| Span_StructComparableComparer |         Incrementing |       3 |  51.459 ms |  0.4391 ms | 0.3175 ms |   1.12 |     0.01 |
|               Span_Comparison |         Incrementing |       3 |  61.692 ms |  0.6025 ms | 0.4357 ms |   1.34 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **21.980 ms** |  **0.4345 ms** | **0.3142 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  21.773 ms |  0.3130 ms | 0.2264 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |      10 |  26.662 ms |  0.3960 ms | 0.2863 ms |   1.21 |     0.02 |
|                         Span_ |         Incrementing |      10 |   4.939 ms |  0.1566 ms | 0.1133 ms |   0.22 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |   8.872 ms |  0.2805 ms | 0.2028 ms |   0.40 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  42.003 ms |  0.2989 ms | 0.2161 ms |   1.91 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      10 |  22.337 ms |  0.3141 ms | 0.2271 ms |   1.02 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |  28.647 ms |  0.4590 ms | 0.3319 ms |   1.30 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |  **37.372 ms** |  **0.4465 ms** | **0.3229 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |  37.286 ms |  0.3651 ms | 0.2640 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |     100 |  57.472 ms |  0.3577 ms | 0.2586 ms |   1.54 |     0.01 |
|                         Span_ |         Incrementing |     100 |  10.508 ms |  0.3333 ms | 0.2410 ms |   0.28 |     0.01 |
|             Span_NullComparer |         Incrementing |     100 |  11.099 ms |  0.4131 ms | 0.2987 ms |   0.30 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  82.556 ms |  0.4604 ms | 0.3329 ms |   2.21 |     0.02 |
| Span_StructComparableComparer |         Incrementing |     100 |  32.214 ms |  0.4107 ms | 0.2970 ms |   0.86 |     0.01 |
|               Span_Comparison |         Incrementing |     100 |  57.311 ms |  0.9145 ms | 0.6613 ms |   1.53 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **84.438 ms** |  **0.5312 ms** | **0.3841 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  83.838 ms |  0.4593 ms | 0.3321 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   10000 | 133.872 ms |  1.1525 ms | 0.8333 ms |   1.59 |     0.01 |
|                         Span_ |         Incrementing |   10000 |  25.009 ms |  0.5475 ms | 0.3959 ms |   0.30 |     0.00 |
|             Span_NullComparer |         Incrementing |   10000 |  25.224 ms |  0.7095 ms | 0.5130 ms |   0.30 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 207.442 ms |  1.1782 ms | 0.8519 ms |   2.46 |     0.01 |
| Span_StructComparableComparer |         Incrementing |   10000 |  75.144 ms |  0.8268 ms | 0.5978 ms |   0.89 |     0.01 |
|               Span_Comparison |         Incrementing |   10000 | 138.677 ms |  0.6671 ms | 0.4824 ms |   1.64 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** | **122.413 ms** |  **1.0460 ms** | **0.7563 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 | 122.143 ms |  1.1064 ms | 0.8000 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 197.187 ms |  1.0709 ms | 0.7743 ms |   1.61 |     0.01 |
|                         Span_ |         Incrementing | 1000000 |  33.603 ms |  0.4866 ms | 0.3519 ms |   0.27 |     0.00 |
|             Span_NullComparer |         Incrementing | 1000000 |  33.693 ms |  0.4014 ms | 0.2902 ms |   0.28 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 307.975 ms |  1.5585 ms | 1.1269 ms |   2.52 |     0.02 |
| Span_StructComparableComparer |         Incrementing | 1000000 | 109.632 ms |  1.1293 ms | 0.8166 ms |   0.90 |     0.01 |
|               Span_Comparison |         Incrementing | 1000000 | 207.246 ms |  1.5258 ms | 1.1033 ms |   1.69 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **58.695 ms** |  **0.5617 ms** | **0.4061 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  57.636 ms |  0.5380 ms | 0.3890 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  55.895 ms |  0.4686 ms | 0.3388 ms |   0.95 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       2 |  10.095 ms |  0.3010 ms | 0.2176 ms |   0.17 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  30.690 ms |  0.3114 ms | 0.2252 ms |   0.52 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 | 133.779 ms |  0.8519 ms | 0.6160 ms |   2.28 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  70.846 ms |  0.3779 ms | 0.2732 ms |   1.21 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  82.485 ms |  0.3383 ms | 0.2446 ms |   1.41 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **46.169 ms** |  **0.4540 ms** | **0.3283 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  45.417 ms |  0.5671 ms | 0.4101 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  48.570 ms |  0.6681 ms | 0.4830 ms |   1.05 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       3 |   7.452 ms |  0.2120 ms | 0.1533 ms |   0.16 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  21.545 ms |  0.4209 ms | 0.3043 ms |   0.47 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  99.561 ms |  0.2999 ms | 0.2169 ms |   2.16 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  51.432 ms |  0.6344 ms | 0.4587 ms |   1.11 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  61.758 ms |  0.5833 ms | 0.4217 ms |   1.34 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **31.438 ms** |  **0.3716 ms** | **0.2687 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  31.121 ms |  0.4154 ms | 0.3004 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  43.984 ms |  0.5042 ms | 0.3646 ms |   1.40 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |      10 |   8.847 ms |  0.1543 ms | 0.1115 ms |   0.28 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |  13.219 ms |  0.3105 ms | 0.2245 ms |   0.42 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  65.313 ms |  1.0605 ms | 0.7668 ms |   2.08 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  29.322 ms |  0.3748 ms | 0.2710 ms |   0.93 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  43.798 ms |  0.5050 ms | 0.3651 ms |   1.39 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **63.736 ms** |  **0.2473 ms** | **0.1788 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  63.326 ms |  0.7169 ms | 0.5183 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 | 107.178 ms |  0.8060 ms | 0.5828 ms |   1.68 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |     100 |  19.715 ms |  0.6116 ms | 0.4422 ms |   0.31 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  19.957 ms |  0.4288 ms | 0.3100 ms |   0.31 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 | 154.733 ms |  0.8414 ms | 0.6084 ms |   2.43 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  55.696 ms |  0.6281 ms | 0.4542 ms |   0.87 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |     100 | 105.956 ms |  0.7327 ms | 0.5298 ms |   1.66 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** | **178.286 ms** |  **0.7973 ms** | **0.5765 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 | 176.939 ms |  1.6170 ms | 1.1692 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 284.106 ms |  1.5267 ms | 1.1039 ms |   1.59 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  73.349 ms |  0.8453 ms | 0.6112 ms |   0.41 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  73.746 ms |  0.5585 ms | 0.4039 ms |   0.41 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 462.964 ms |  1.9639 ms | 1.4200 ms |   2.60 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 | 186.513 ms |  3.0611 ms | 2.2134 ms |   1.05 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 316.939 ms |  0.9825 ms | 0.7104 ms |   1.78 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** | **372.702 ms** |  **2.9253 ms** | **2.1151 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 | 370.234 ms |  1.5365 ms | 1.1110 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 566.229 ms |  1.8563 ms | 1.3423 ms |   1.52 |     0.01 |
|                         Span_ |  MedianOfThreeKiller | 1000000 | 121.697 ms |  0.7166 ms | 0.5182 ms |   0.33 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 | 122.420 ms |  1.1247 ms | 0.8132 ms |   0.33 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 809.689 ms |  2.9250 ms | 2.1150 ms |   2.17 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 319.264 ms |  1.3722 ms | 0.9922 ms |   0.86 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 551.228 ms |  1.3120 ms | 0.9486 ms |   1.48 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **60.362 ms** |  **0.7362 ms** | **0.5323 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  59.539 ms |  0.6105 ms | 0.4414 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  58.368 ms |  0.9694 ms | 0.7010 ms |   0.97 |     0.01 |
|                         Span_ | PartialRandomShuffle |       2 |  12.345 ms |  0.2397 ms | 0.1733 ms |   0.20 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  33.379 ms |  0.5502 ms | 0.3978 ms |   0.55 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 | 135.961 ms |  0.5560 ms | 0.4020 ms |   2.25 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  73.215 ms |  0.5535 ms | 0.4002 ms |   1.21 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       2 |  84.772 ms |  0.4788 ms | 0.3462 ms |   1.40 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **49.339 ms** |  **0.7760 ms** | **0.5611 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  48.489 ms |  0.6320 ms | 0.4570 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  52.413 ms |  0.6646 ms | 0.4806 ms |   1.06 |     0.01 |
|                         Span_ | PartialRandomShuffle |       3 |  10.360 ms |  0.2791 ms | 0.2018 ms |   0.21 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  24.374 ms |  0.3133 ms | 0.2265 ms |   0.49 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 | 102.997 ms |  0.5470 ms | 0.3955 ms |   2.09 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  54.390 ms |  0.4436 ms | 0.3207 ms |   1.10 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       3 |  64.995 ms |  0.5726 ms | 0.4140 ms |   1.32 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **31.847 ms** |  **0.3948 ms** | **0.2854 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  31.548 ms |  0.5151 ms | 0.3725 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  42.406 ms |  0.4663 ms | 0.3372 ms |   1.33 |     0.02 |
|                         Span_ | PartialRandomShuffle |      10 |  12.128 ms |  0.2616 ms | 0.1892 ms |   0.38 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  15.927 ms |  0.3507 ms | 0.2536 ms |   0.50 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  59.513 ms |  0.5958 ms | 0.4308 ms |   1.87 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  31.689 ms |  0.3070 ms | 0.2220 ms |   1.00 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      10 |  41.944 ms |  0.3947 ms | 0.2854 ms |   1.32 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **80.682 ms** |  **0.9388 ms** | **0.6788 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  80.452 ms |  0.4892 ms | 0.3537 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 | 122.236 ms |  0.8585 ms | 0.6207 ms |   1.52 |     0.01 |
|                         Span_ | PartialRandomShuffle |     100 |  45.470 ms |  0.3433 ms | 0.2482 ms |   0.56 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  46.250 ms |  0.4270 ms | 0.3087 ms |   0.57 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 | 154.744 ms |  0.7034 ms | 0.5086 ms |   1.92 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  75.321 ms |  0.5899 ms | 0.4265 ms |   0.93 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 | 113.476 ms |  0.7870 ms | 0.5690 ms |   1.41 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** | **150.979 ms** |  **1.0421 ms** | **0.7535 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 | 149.928 ms |  1.1459 ms | 0.8286 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 237.477 ms |  0.7742 ms | 0.5598 ms |   1.57 |     0.01 |
|                         Span_ | PartialRandomShuffle |   10000 |  82.339 ms |  0.6062 ms | 0.4383 ms |   0.55 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  82.784 ms |  0.4029 ms | 0.2914 ms |   0.55 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 314.711 ms |  1.6823 ms | 1.2164 ms |   2.08 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 | 148.952 ms |  0.9047 ms | 0.6542 ms |   0.99 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 227.509 ms |  1.2200 ms | 0.8821 ms |   1.51 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** | **226.004 ms** |  **1.0232 ms** | **0.7399 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 | 224.880 ms |  1.1344 ms | 0.8202 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 358.028 ms |  1.8604 ms | 1.3452 ms |   1.58 |     0.01 |
|                         Span_ | PartialRandomShuffle | 1000000 | 123.472 ms |  1.0006 ms | 0.7235 ms |   0.55 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 | 124.212 ms |  0.6425 ms | 0.4646 ms |   0.55 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 478.856 ms |  1.4296 ms | 1.0337 ms |   2.12 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 225.994 ms |  1.2712 ms | 0.9192 ms |   1.00 |     0.00 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 344.256 ms |  0.7556 ms | 0.5463 ms |   1.52 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **63.192 ms** |  **0.4908 ms** | **0.3549 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  62.333 ms |  0.4915 ms | 0.3554 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 |  61.283 ms |  0.5113 ms | 0.3697 ms |   0.97 |     0.01 |
|                         Span_ |               Random |       2 |  15.494 ms |  0.2631 ms | 0.1902 ms |   0.25 |     0.00 |
|             Span_NullComparer |               Random |       2 |  35.646 ms |  0.4410 ms | 0.3189 ms |   0.56 |     0.01 |
|  Span_ClassComparableComparer |               Random |       2 | 137.817 ms |  0.8119 ms | 0.5871 ms |   2.18 |     0.01 |
| Span_StructComparableComparer |               Random |       2 |  75.965 ms |  0.5864 ms | 0.4240 ms |   1.20 |     0.01 |
|               Span_Comparison |               Random |       2 |  87.651 ms |  0.4397 ms | 0.3179 ms |   1.39 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **54.732 ms** |  **0.6832 ms** | **0.4940 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  53.562 ms |  0.2875 ms | 0.2079 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |  57.589 ms |  0.5800 ms | 0.4194 ms |   1.05 |     0.01 |
|                         Span_ |               Random |       3 |  15.146 ms |  0.2650 ms | 0.1916 ms |   0.28 |     0.00 |
|             Span_NullComparer |               Random |       3 |  28.917 ms |  0.4225 ms | 0.3055 ms |   0.53 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 | 107.850 ms |  0.9771 ms | 0.7065 ms |   1.97 |     0.02 |
| Span_StructComparableComparer |               Random |       3 |  59.476 ms |  0.7560 ms | 0.5466 ms |   1.09 |     0.01 |
|               Span_Comparison |               Random |       3 |  70.304 ms |  0.8492 ms | 0.6140 ms |   1.28 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **51.212 ms** |  **0.5542 ms** | **0.4007 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  50.789 ms |  0.2103 ms | 0.1521 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |      10 |  70.461 ms |  0.5863 ms | 0.4239 ms |   1.38 |     0.01 |
|                         Span_ |               Random |      10 |  25.487 ms |  0.3189 ms | 0.2306 ms |   0.50 |     0.01 |
|             Span_NullComparer |               Random |      10 |  29.810 ms |  0.4264 ms | 0.3083 ms |   0.58 |     0.01 |
|  Span_ClassComparableComparer |               Random |      10 |  91.169 ms |  0.7804 ms | 0.5643 ms |   1.78 |     0.02 |
| Span_StructComparableComparer |               Random |      10 |  49.362 ms |  0.5855 ms | 0.4234 ms |   0.96 |     0.01 |
|               Span_Comparison |               Random |      10 |  66.792 ms |  0.4138 ms | 0.2992 ms |   1.30 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **94.258 ms** |  **0.6178 ms** | **0.4467 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  94.086 ms |  0.5359 ms | 0.3875 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |     100 | 142.559 ms |  1.0303 ms | 0.7450 ms |   1.51 |     0.01 |
|                         Span_ |               Random |     100 |  59.601 ms |  0.6144 ms | 0.4442 ms |   0.63 |     0.01 |
|             Span_NullComparer |               Random |     100 |  60.205 ms |  0.3921 ms | 0.2835 ms |   0.64 |     0.00 |
|  Span_ClassComparableComparer |               Random |     100 | 173.956 ms |  0.6021 ms | 0.4354 ms |   1.85 |     0.01 |
| Span_StructComparableComparer |               Random |     100 |  91.181 ms |  0.5807 ms | 0.4199 ms |   0.97 |     0.01 |
|               Span_Comparison |               Random |     100 | 130.251 ms |  0.5293 ms | 0.3827 ms |   1.38 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |   **10000** | **188.733 ms** |  **1.3077 ms** | **0.9455 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 | 188.802 ms |  1.1002 ms | 0.7955 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   10000 | 290.401 ms |  1.3969 ms | 1.0101 ms |   1.54 |     0.01 |
|                         Span_ |               Random |   10000 | 120.232 ms |  0.3131 ms | 0.2264 ms |   0.64 |     0.00 |
|             Span_NullComparer |               Random |   10000 | 120.726 ms |  0.5646 ms | 0.4082 ms |   0.64 |     0.00 |
|  Span_ClassComparableComparer |               Random |   10000 | 362.159 ms |  7.0608 ms | 5.1055 ms |   1.92 |     0.03 |
| Span_StructComparableComparer |               Random |   10000 | 186.451 ms |  0.8940 ms | 0.6464 ms |   0.99 |     0.01 |
|               Span_Comparison |               Random |   10000 | 264.231 ms |  1.1355 ms | 0.8210 ms |   1.40 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **279.972 ms** |  **0.9723 ms** | **0.7031 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 279.609 ms |  1.0326 ms | 0.7467 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 | 427.506 ms |  8.5240 ms | 6.1634 ms |   1.53 |     0.02 |
|                         Span_ |               Random | 1000000 | 175.644 ms |  1.0170 ms | 0.7354 ms |   0.63 |     0.00 |
|             Span_NullComparer |               Random | 1000000 | 173.261 ms |  3.2371 ms | 2.3406 ms |   0.62 |     0.01 |
|  Span_ClassComparableComparer |               Random | 1000000 | 543.564 ms | 10.0574 ms | 7.2722 ms |   1.94 |     0.03 |
| Span_StructComparableComparer |               Random | 1000000 | 284.409 ms |  0.7520 ms | 0.5437 ms |   1.02 |     0.00 |
|               Span_Comparison |               Random | 1000000 | 405.124 ms |  1.4894 ms | 1.0770 ms |   1.45 |     0.01 |
