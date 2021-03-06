``` ini

BenchmarkDotNet=v0.10.13, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.248)
Intel Core i7-8700 CPU 3.20GHz (Coffee Lake), 1 CPU, 12 logical cores and 6 physical cores
Frequency=3117186 Hz, Resolution=320.8022 ns, Timer=TSC
.NET Core SDK=2.1.100
  [Host] : .NET Core 2.0.5 (CoreCLR 4.6.26020.03, CoreFX 4.6.26018.01), 64bit RyuJIT

Platform=X64  Runtime=Core  Toolchain=InProcessToolchain  
LaunchCount=1  RunStrategy=Monitoring  TargetCount=11  
UnrollFactor=1  WarmupCount=3  

```
|                        Method |               Filler |  Length |       Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |-------- |-----------:|----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |       **2** |  **37.976 ms** | **0.4005 ms** | **0.2896 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  35.676 ms | 0.3694 ms | 0.2671 ms |   0.94 |     0.01 |
| Array_ClassComparableComparer |             Constant |       2 |  37.347 ms | 0.3667 ms | 0.2651 ms |   0.98 |     0.01 |
|                         Span_ |             Constant |       2 |  49.403 ms | 0.4758 ms | 0.3440 ms |   1.30 |     0.01 |
|             Span_NullComparer |             Constant |       2 |  57.514 ms | 0.4488 ms | 0.3245 ms |   1.51 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       2 | 104.946 ms | 1.0473 ms | 0.7573 ms |   2.76 |     0.03 |
| Span_StructComparableComparer |             Constant |       2 |  72.644 ms | 0.4288 ms | 0.3101 ms |   1.91 |     0.02 |
|               Span_Comparison |             Constant |       2 |  72.244 ms | 0.3070 ms | 0.2220 ms |   1.90 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **27.756 ms** | **0.1571 ms** | **0.1136 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  26.701 ms | 0.2755 ms | 0.1992 ms |   0.96 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 |  29.712 ms | 0.2410 ms | 0.1743 ms |   1.07 |     0.01 |
|                         Span_ |             Constant |       3 |  31.557 ms | 0.2696 ms | 0.1949 ms |   1.14 |     0.01 |
|             Span_NullComparer |             Constant |       3 |  35.811 ms | 0.1798 ms | 0.1300 ms |   1.29 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       3 |  77.085 ms | 0.1515 ms | 0.1096 ms |   2.78 |     0.01 |
| Span_StructComparableComparer |             Constant |       3 |  45.249 ms | 0.3437 ms | 0.2485 ms |   1.63 |     0.01 |
|               Span_Comparison |             Constant |       3 |  50.947 ms | 0.4382 ms | 0.3168 ms |   1.84 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **13.803 ms** | **0.1114 ms** | **0.0805 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  13.708 ms | 0.8867 ms | 0.6412 ms |   0.99 |     0.04 |
| Array_ClassComparableComparer |             Constant |      10 |  18.566 ms | 0.7738 ms | 0.5595 ms |   1.35 |     0.04 |
|                         Span_ |             Constant |      10 |   9.371 ms | 0.1112 ms | 0.0804 ms |   0.68 |     0.01 |
|             Span_NullComparer |             Constant |      10 |  10.659 ms | 0.1778 ms | 0.1285 ms |   0.77 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  31.194 ms | 0.3833 ms | 0.2772 ms |   2.26 |     0.02 |
| Span_StructComparableComparer |             Constant |      10 |  13.828 ms | 0.2244 ms | 0.1623 ms |   1.00 |     0.01 |
|               Span_Comparison |             Constant |      10 |  18.208 ms | 0.1219 ms | 0.0881 ms |   1.32 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **35.390 ms** | **0.1900 ms** | **0.1374 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  35.478 ms | 0.6173 ms | 0.4464 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |     100 |  57.233 ms | 0.7581 ms | 0.5481 ms |   1.62 |     0.02 |
|                         Span_ |             Constant |     100 |  26.529 ms | 0.1850 ms | 0.1337 ms |   0.75 |     0.00 |
|             Span_NullComparer |             Constant |     100 |  26.162 ms | 0.2004 ms | 0.1449 ms |   0.74 |     0.00 |
|  Span_ClassComparableComparer |             Constant |     100 |  64.705 ms | 0.3340 ms | 0.2415 ms |   1.83 |     0.01 |
| Span_StructComparableComparer |             Constant |     100 |  30.546 ms | 0.5338 ms | 0.3860 ms |   0.86 |     0.01 |
|               Span_Comparison |             Constant |     100 |  49.813 ms | 0.5713 ms | 0.4131 ms |   1.41 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **58.872 ms** | **0.8185 ms** | **0.5918 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  58.976 ms | 0.4051 ms | 0.2929 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   10000 | 111.588 ms | 0.8758 ms | 0.6333 ms |   1.90 |     0.02 |
|                         Span_ |             Constant |   10000 |  72.786 ms | 0.5744 ms | 0.4153 ms |   1.24 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  72.820 ms | 0.6158 ms | 0.4452 ms |   1.24 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 | 167.719 ms | 0.8442 ms | 0.6104 ms |   2.85 |     0.03 |
| Span_StructComparableComparer |             Constant |   10000 |  85.145 ms | 0.6111 ms | 0.4419 ms |   1.45 |     0.02 |
|               Span_Comparison |             Constant |   10000 | 138.141 ms | 0.4073 ms | 0.2945 ms |   2.35 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **94.882 ms** | **1.8065 ms** | **1.3062 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  95.439 ms | 2.6972 ms | 1.9502 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |             Constant | 1000000 | 170.323 ms | 1.2287 ms | 0.8884 ms |   1.80 |     0.02 |
|                         Span_ |             Constant | 1000000 | 110.403 ms | 1.1552 ms | 0.8353 ms |   1.16 |     0.02 |
|             Span_NullComparer |             Constant | 1000000 | 110.230 ms | 0.4407 ms | 0.3187 ms |   1.16 |     0.02 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 258.244 ms | 1.4392 ms | 1.0407 ms |   2.72 |     0.04 |
| Span_StructComparableComparer |             Constant | 1000000 | 128.624 ms | 0.2821 ms | 0.2040 ms |   1.36 |     0.02 |
|               Span_Comparison |             Constant | 1000000 | 211.066 ms | 1.2870 ms | 0.9306 ms |   2.22 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **41.520 ms** | **0.4359 ms** | **0.3152 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  39.731 ms | 1.5964 ms | 1.1543 ms |   0.96 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |       2 |  40.091 ms | 1.0895 ms | 0.7878 ms |   0.97 |     0.02 |
|                         Span_ |         Decrementing |       2 |  57.230 ms | 0.2716 ms | 0.1964 ms |   1.38 |     0.01 |
|             Span_NullComparer |         Decrementing |       2 |  64.935 ms | 0.6921 ms | 0.5004 ms |   1.56 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |       2 | 111.241 ms | 0.2048 ms | 0.1481 ms |   2.68 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       2 |  76.401 ms | 0.2488 ms | 0.1799 ms |   1.84 |     0.01 |
|               Span_Comparison |         Decrementing |       2 |  78.956 ms | 0.2339 ms | 0.1692 ms |   1.90 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **35.221 ms** | **0.0671 ms** | **0.0485 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  33.709 ms | 0.3012 ms | 0.2178 ms |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       3 |  38.982 ms | 0.3605 ms | 0.2606 ms |   1.11 |     0.01 |
|                         Span_ |         Decrementing |       3 |  42.539 ms | 0.8143 ms | 0.5888 ms |   1.21 |     0.02 |
|             Span_NullComparer |         Decrementing |       3 |  46.779 ms | 0.1861 ms | 0.1346 ms |   1.33 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  89.344 ms | 0.1479 ms | 0.1070 ms |   2.54 |     0.00 |
| Span_StructComparableComparer |         Decrementing |       3 |  55.098 ms | 0.2269 ms | 0.1640 ms |   1.56 |     0.00 |
|               Span_Comparison |         Decrementing |       3 |  62.516 ms | 0.2853 ms | 0.2063 ms |   1.77 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **37.588 ms** | **0.4567 ms** | **0.3302 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  36.635 ms | 0.2242 ms | 0.1621 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |  67.036 ms | 0.4719 ms | 0.3412 ms |   1.78 |     0.02 |
|                         Span_ |         Decrementing |      10 |  34.089 ms | 0.2100 ms | 0.1519 ms |   0.91 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  36.142 ms | 3.0339 ms | 2.1937 ms |   0.96 |     0.06 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  95.541 ms | 0.8407 ms | 0.6079 ms |   2.54 |     0.03 |
| Span_StructComparableComparer |         Decrementing |      10 |  37.478 ms | 0.2494 ms | 0.1803 ms |   1.00 |     0.01 |
|               Span_Comparison |         Decrementing |      10 |  58.127 ms | 0.2406 ms | 0.1740 ms |   1.55 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **36.575 ms** | **0.5450 ms** | **0.3941 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  37.079 ms | 1.4298 ms | 1.0339 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |     100 |  68.829 ms | 0.6432 ms | 0.4651 ms |   1.88 |     0.02 |
|                         Span_ |         Decrementing |     100 |  25.223 ms | 0.4481 ms | 0.3240 ms |   0.69 |     0.01 |
|             Span_NullComparer |         Decrementing |     100 |  25.143 ms | 0.5298 ms | 0.3831 ms |   0.69 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  82.466 ms | 0.5907 ms | 0.4271 ms |   2.25 |     0.03 |
| Span_StructComparableComparer |         Decrementing |     100 |  26.869 ms | 0.1097 ms | 0.0793 ms |   0.73 |     0.01 |
|               Span_Comparison |         Decrementing |     100 |  53.942 ms | 0.3070 ms | 0.2220 ms |   1.47 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **39.627 ms** | **0.6787 ms** | **0.4907 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  40.074 ms | 0.5241 ms | 0.3790 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 120.768 ms | 1.3216 ms | 0.9556 ms |   3.05 |     0.04 |
|                         Span_ |         Decrementing |   10000 |  42.792 ms | 0.1257 ms | 0.0909 ms |   1.08 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |  42.928 ms | 0.1935 ms | 0.1399 ms |   1.08 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 194.639 ms | 0.8346 ms | 0.6035 ms |   4.91 |     0.06 |
| Span_StructComparableComparer |         Decrementing |   10000 |  45.605 ms | 0.0923 ms | 0.0667 ms |   1.15 |     0.01 |
|               Span_Comparison |         Decrementing |   10000 | 105.257 ms | 0.7389 ms | 0.5343 ms |   2.66 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **63.404 ms** | **1.8906 ms** | **1.3670 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  63.933 ms | 3.0457 ms | 2.2022 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 201.553 ms | 1.6687 ms | 1.2066 ms |   3.18 |     0.07 |
|                         Span_ |         Decrementing | 1000000 |  61.240 ms | 1.3177 ms | 0.9528 ms |   0.97 |     0.02 |
|             Span_NullComparer |         Decrementing | 1000000 |  60.948 ms | 0.7191 ms | 0.5200 ms |   0.96 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 316.287 ms | 1.6899 ms | 1.2219 ms |   4.99 |     0.10 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  64.874 ms | 0.6554 ms | 0.4739 ms |   1.02 |     0.02 |
|               Span_Comparison |         Decrementing | 1000000 | 157.557 ms | 0.7036 ms | 0.5087 ms |   2.49 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **37.690 ms** | **0.1782 ms** | **0.1289 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  35.645 ms | 0.3000 ms | 0.2169 ms |   0.95 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |  35.835 ms | 0.4641 ms | 0.3356 ms |   0.95 |     0.01 |
|                         Span_ |         Incrementing |       2 |  50.831 ms | 0.3704 ms | 0.2678 ms |   1.35 |     0.01 |
|             Span_NullComparer |         Incrementing |       2 |  56.908 ms | 0.6686 ms | 0.4834 ms |   1.51 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       2 | 105.409 ms | 0.7821 ms | 0.5655 ms |   2.80 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       2 |  70.482 ms | 0.5102 ms | 0.3689 ms |   1.87 |     0.01 |
|               Span_Comparison |         Incrementing |       2 |  71.327 ms | 0.5767 ms | 0.4170 ms |   1.89 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **27.520 ms** | **0.2101 ms** | **0.1519 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  26.370 ms | 0.2296 ms | 0.1660 ms |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       3 |  29.496 ms | 0.2366 ms | 0.1710 ms |   1.07 |     0.01 |
|                         Span_ |         Incrementing |       3 |  31.395 ms | 0.1635 ms | 0.1182 ms |   1.14 |     0.01 |
|             Span_NullComparer |         Incrementing |       3 |  36.308 ms | 0.3453 ms | 0.2497 ms |   1.32 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  76.532 ms | 0.4606 ms | 0.3330 ms |   2.78 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       3 |  44.147 ms | 0.3405 ms | 0.2462 ms |   1.60 |     0.01 |
|               Span_Comparison |         Incrementing |       3 |  50.239 ms | 0.2329 ms | 0.1684 ms |   1.83 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **13.832 ms** | **0.1328 ms** | **0.0960 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  13.445 ms | 0.0827 ms | 0.0598 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      10 |  18.657 ms | 0.1227 ms | 0.0887 ms |   1.35 |     0.01 |
|                         Span_ |         Incrementing |      10 |   9.436 ms | 0.0925 ms | 0.0669 ms |   0.68 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |  10.818 ms | 0.1312 ms | 0.0949 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  30.927 ms | 0.3817 ms | 0.2760 ms |   2.24 |     0.02 |
| Span_StructComparableComparer |         Incrementing |      10 |  14.183 ms | 0.1328 ms | 0.0960 ms |   1.03 |     0.01 |
|               Span_Comparison |         Incrementing |      10 |  18.525 ms | 0.0714 ms | 0.0516 ms |   1.34 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |  **23.492 ms** | **0.2398 ms** | **0.1734 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |  23.629 ms | 0.4167 ms | 0.3013 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |     100 |  43.743 ms | 0.4059 ms | 0.2935 ms |   1.86 |     0.02 |
|                         Span_ |         Incrementing |     100 |  12.167 ms | 0.1563 ms | 0.1130 ms |   0.52 |     0.01 |
|             Span_NullComparer |         Incrementing |     100 |  12.078 ms | 0.1304 ms | 0.0943 ms |   0.51 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  50.827 ms | 0.3336 ms | 0.2412 ms |   2.16 |     0.02 |
| Span_StructComparableComparer |         Incrementing |     100 |  13.582 ms | 0.5039 ms | 0.3643 ms |   0.58 |     0.02 |
|               Span_Comparison |         Incrementing |     100 |  28.824 ms | 0.1969 ms | 0.1424 ms |   1.23 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **43.886 ms** | **0.3655 ms** | **0.2643 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  43.646 ms | 0.7486 ms | 0.5413 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   10000 |  90.414 ms | 0.9115 ms | 0.6591 ms |   2.06 |     0.02 |
|                         Span_ |         Incrementing |   10000 |  27.131 ms | 0.3083 ms | 0.2230 ms |   0.62 |     0.01 |
|             Span_NullComparer |         Incrementing |   10000 |  27.229 ms | 0.2475 ms | 0.1790 ms |   0.62 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 121.737 ms | 4.3360 ms | 3.1352 ms |   2.77 |     0.07 |
| Span_StructComparableComparer |         Incrementing |   10000 |  28.337 ms | 0.0936 ms | 0.0677 ms |   0.65 |     0.00 |
|               Span_Comparison |         Incrementing |   10000 |  62.129 ms | 0.1274 ms | 0.0921 ms |   1.42 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **41.734 ms** | **0.3168 ms** | **0.2291 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  41.785 ms | 0.3741 ms | 0.2705 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 115.939 ms | 9.6951 ms | 7.0102 ms |   2.78 |     0.16 |
|                         Span_ |         Incrementing | 1000000 |  35.411 ms | 0.7033 ms | 0.5085 ms |   0.85 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |  35.172 ms | 0.3815 ms | 0.2759 ms |   0.84 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 176.003 ms | 0.6572 ms | 0.4752 ms |   4.22 |     0.02 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  35.926 ms | 0.3608 ms | 0.2609 ms |   0.86 |     0.01 |
|               Span_Comparison |         Incrementing | 1000000 |  82.824 ms | 0.3910 ms | 0.2827 ms |   1.98 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **37.721 ms** | **0.1527 ms** | **0.1104 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  35.603 ms | 0.1100 ms | 0.0796 ms |   0.94 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  35.728 ms | 0.5608 ms | 0.4055 ms |   0.95 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       2 |  48.948 ms | 0.4058 ms | 0.2934 ms |   1.30 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  57.128 ms | 0.2296 ms | 0.1660 ms |   1.51 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 | 105.676 ms | 1.0209 ms | 0.7381 ms |   2.80 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  69.438 ms | 0.5904 ms | 0.4269 ms |   1.84 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  72.796 ms | 0.6531 ms | 0.4722 ms |   1.93 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **27.667 ms** | **0.1820 ms** | **0.1316 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  26.439 ms | 0.2408 ms | 0.1741 ms |   0.96 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  30.134 ms | 0.0537 ms | 0.0388 ms |   1.09 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       3 |  30.708 ms | 0.6677 ms | 0.4828 ms |   1.11 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  36.540 ms | 0.1516 ms | 0.1096 ms |   1.32 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  76.851 ms | 0.4138 ms | 0.2992 ms |   2.78 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  44.369 ms | 0.3078 ms | 0.2225 ms |   1.60 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  49.042 ms | 0.0894 ms | 0.0647 ms |   1.77 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **20.333 ms** | **0.1894 ms** | **0.1369 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  20.348 ms | 0.8289 ms | 0.5993 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  29.343 ms | 0.1108 ms | 0.0801 ms |   1.44 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |      10 |  17.032 ms | 0.2849 ms | 0.2060 ms |   0.84 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |  18.085 ms | 0.1900 ms | 0.1374 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  50.465 ms | 0.5312 ms | 0.3841 ms |   2.48 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  22.323 ms | 0.2209 ms | 0.1598 ms |   1.10 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  32.745 ms | 2.0289 ms | 1.4670 ms |   1.61 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **39.946 ms** | **0.4855 ms** | **0.3511 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  41.398 ms | 4.0001 ms | 2.8923 ms |   1.04 |     0.07 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  79.898 ms | 0.1978 ms | 0.1430 ms |   2.00 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |     100 |  31.310 ms | 0.1570 ms | 0.1135 ms |   0.78 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  31.220 ms | 0.3888 ms | 0.2811 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 | 106.907 ms | 0.8492 ms | 0.6140 ms |   2.68 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  32.224 ms | 0.3031 ms | 0.2192 ms |   0.81 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  67.735 ms | 0.5401 ms | 0.3905 ms |   1.70 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **59.029 ms** | **0.8447 ms** | **0.6108 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  59.195 ms | 0.9816 ms | 0.7097 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 156.944 ms | 1.3614 ms | 0.9844 ms |   2.66 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  85.414 ms | 0.4331 ms | 0.3132 ms |   1.45 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  85.653 ms | 0.3751 ms | 0.2712 ms |   1.45 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 287.246 ms | 0.3395 ms | 0.2455 ms |   4.87 |     0.05 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  88.484 ms | 2.5899 ms | 1.8726 ms |   1.50 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 163.816 ms | 1.4267 ms | 1.0316 ms |   2.78 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** | **150.863 ms** | **2.7220 ms** | **1.9682 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 | 151.021 ms | 1.7022 ms | 1.2308 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 327.940 ms | 2.7027 ms | 1.9542 ms |   2.17 |     0.03 |
|                         Span_ |  MedianOfThreeKiller | 1000000 | 134.633 ms | 0.7277 ms | 0.5261 ms |   0.89 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 | 134.682 ms | 0.9612 ms | 0.6950 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 498.135 ms | 3.2025 ms | 2.3157 ms |   3.30 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 141.675 ms | 0.9694 ms | 0.7009 ms |   0.94 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 270.407 ms | 0.6981 ms | 0.5048 ms |   1.79 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **46.319 ms** | **0.4143 ms** | **0.2995 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  45.003 ms | 0.4471 ms | 0.3232 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  44.955 ms | 0.4167 ms | 0.3013 ms |   0.97 |     0.01 |
|                         Span_ | PartialRandomShuffle |       2 |  54.671 ms | 0.1409 ms | 0.1019 ms |   1.18 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  60.328 ms | 0.4371 ms | 0.3161 ms |   1.30 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 | 109.387 ms | 0.5516 ms | 0.3989 ms |   2.36 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  74.660 ms | 3.2528 ms | 2.3520 ms |   1.61 |     0.05 |
|               Span_Comparison | PartialRandomShuffle |       2 |  74.414 ms | 0.1310 ms | 0.0947 ms |   1.61 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **37.642 ms** | **0.7555 ms** | **0.5463 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  36.134 ms | 0.6766 ms | 0.4892 ms |   0.96 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  39.570 ms | 0.0997 ms | 0.0721 ms |   1.05 |     0.01 |
|                         Span_ | PartialRandomShuffle |       3 |  35.702 ms | 0.1477 ms | 0.1068 ms |   0.95 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  39.151 ms | 0.0628 ms | 0.0454 ms |   1.04 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  81.303 ms | 0.1275 ms | 0.0922 ms |   2.16 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  48.552 ms | 0.1078 ms | 0.0780 ms |   1.29 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       3 |  54.208 ms | 0.4987 ms | 0.3606 ms |   1.44 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **24.491 ms** | **0.9686 ms** | **0.7004 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  24.018 ms | 0.9229 ms | 0.6673 ms |   0.98 |     0.04 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  28.776 ms | 0.0953 ms | 0.0689 ms |   1.18 |     0.03 |
|                         Span_ | PartialRandomShuffle |      10 |  18.001 ms | 0.8057 ms | 0.5826 ms |   0.74 |     0.03 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  19.314 ms | 0.4426 ms | 0.3200 ms |   0.79 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  45.489 ms | 0.4153 ms | 0.3003 ms |   1.86 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  23.189 ms | 0.0595 ms | 0.0431 ms |   0.95 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |      10 |  29.885 ms | 0.2448 ms | 0.1770 ms |   1.22 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **60.329 ms** | **0.3761 ms** | **0.2719 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  60.628 ms | 0.3300 ms | 0.2386 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |  94.636 ms | 0.7953 ms | 0.5750 ms |   1.57 |     0.01 |
|                         Span_ | PartialRandomShuffle |     100 |  51.601 ms | 0.6323 ms | 0.4572 ms |   0.86 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  51.388 ms | 0.7436 ms | 0.5377 ms |   0.85 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 | 109.760 ms | 0.8227 ms | 0.5948 ms |   1.82 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  52.721 ms | 0.4715 ms | 0.3409 ms |   0.87 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 |  76.833 ms | 0.4981 ms | 0.3601 ms |   1.27 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **91.818 ms** | **0.2309 ms** | **0.1670 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  91.920 ms | 0.4825 ms | 0.3489 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 154.465 ms | 0.4488 ms | 0.3245 ms |   1.68 |     0.00 |
|                         Span_ | PartialRandomShuffle |   10000 |  97.745 ms | 0.3200 ms | 0.2314 ms |   1.06 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  97.470 ms | 0.7282 ms | 0.5265 ms |   1.06 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 214.265 ms | 0.9167 ms | 0.6628 ms |   2.33 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 | 100.136 ms | 0.3177 ms | 0.2297 ms |   1.09 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 148.036 ms | 0.9404 ms | 0.6799 ms |   1.61 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** | **149.394 ms** | **3.7623 ms** | **2.7204 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 | 150.941 ms | 3.3858 ms | 2.4482 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 254.075 ms | 5.7919 ms | 4.1879 ms |   1.70 |     0.04 |
|                         Span_ | PartialRandomShuffle | 1000000 | 148.052 ms | 1.9315 ms | 1.3966 ms |   0.99 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 | 147.574 ms | 0.6788 ms | 0.4908 ms |   0.99 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 328.357 ms | 2.8662 ms | 2.0724 ms |   2.20 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 151.549 ms | 2.3447 ms | 1.6954 ms |   1.01 |     0.02 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 225.616 ms | 3.7684 ms | 2.7248 ms |   1.51 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **45.533 ms** | **0.2603 ms** | **0.1882 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  44.046 ms | 0.5535 ms | 0.4002 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 |  43.313 ms | 0.2454 ms | 0.1774 ms |   0.95 |     0.01 |
|                         Span_ |               Random |       2 |  55.309 ms | 0.0885 ms | 0.0640 ms |   1.21 |     0.00 |
|             Span_NullComparer |               Random |       2 |  61.033 ms | 0.1088 ms | 0.0787 ms |   1.34 |     0.01 |
|  Span_ClassComparableComparer |               Random |       2 | 112.101 ms | 0.7374 ms | 0.5332 ms |   2.46 |     0.01 |
| Span_StructComparableComparer |               Random |       2 |  76.639 ms | 0.3579 ms | 0.2588 ms |   1.68 |     0.01 |
|               Span_Comparison |               Random |       2 |  79.642 ms | 0.0719 ms | 0.0520 ms |   1.75 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **38.806 ms** | **0.4172 ms** | **0.3016 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  37.987 ms | 0.3097 ms | 0.2239 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |  41.027 ms | 0.2036 ms | 0.1472 ms |   1.06 |     0.01 |
|                         Span_ |               Random |       3 |  41.816 ms | 0.1506 ms | 0.1089 ms |   1.08 |     0.01 |
|             Span_NullComparer |               Random |       3 |  45.591 ms | 0.0928 ms | 0.0671 ms |   1.17 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 |  91.204 ms | 9.7230 ms | 7.0304 ms |   2.35 |     0.17 |
| Span_StructComparableComparer |               Random |       3 |  56.940 ms | 0.0968 ms | 0.0700 ms |   1.47 |     0.01 |
|               Span_Comparison |               Random |       3 |  62.948 ms | 0.1224 ms | 0.0885 ms |   1.62 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **35.927 ms** | **0.2786 ms** | **0.2015 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  36.337 ms | 1.1992 ms | 0.8671 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |               Random |      10 |  48.806 ms | 0.4963 ms | 0.3589 ms |   1.36 |     0.01 |
|                         Span_ |               Random |      10 |  32.040 ms | 0.2872 ms | 0.2076 ms |   0.89 |     0.01 |
|             Span_NullComparer |               Random |      10 |  33.028 ms | 0.0962 ms | 0.0696 ms |   0.92 |     0.01 |
|  Span_ClassComparableComparer |               Random |      10 |  73.166 ms | 0.6529 ms | 0.4721 ms |   2.04 |     0.02 |
| Span_StructComparableComparer |               Random |      10 |  37.122 ms | 0.0873 ms | 0.0631 ms |   1.03 |     0.01 |
|               Span_Comparison |               Random |      10 |  49.311 ms | 1.0376 ms | 0.7503 ms |   1.37 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **69.823 ms** | **0.2779 ms** | **0.2010 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  70.813 ms | 2.2378 ms | 1.6181 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |               Random |     100 | 106.519 ms | 0.6075 ms | 0.4393 ms |   1.53 |     0.01 |
|                         Span_ |               Random |     100 |  66.244 ms | 0.3504 ms | 0.2534 ms |   0.95 |     0.00 |
|             Span_NullComparer |               Random |     100 |  66.209 ms | 0.9149 ms | 0.6615 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 | 126.402 ms | 1.6476 ms | 1.1913 ms |   1.81 |     0.02 |
| Span_StructComparableComparer |               Random |     100 |  68.147 ms | 0.8363 ms | 0.6047 ms |   0.98 |     0.01 |
|               Span_Comparison |               Random |     100 |  93.893 ms | 0.7112 ms | 0.5143 ms |   1.34 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** | **124.869 ms** | **5.0869 ms** | **3.6782 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 | 122.910 ms | 1.7459 ms | 1.2624 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |               Random |   10000 | 187.935 ms | 0.6052 ms | 0.4376 ms |   1.51 |     0.04 |
|                         Span_ |               Random |   10000 | 134.898 ms | 0.1954 ms | 0.1413 ms |   1.08 |     0.03 |
|             Span_NullComparer |               Random |   10000 | 134.850 ms | 0.1541 ms | 0.1114 ms |   1.08 |     0.03 |
|  Span_ClassComparableComparer |               Random |   10000 | 253.079 ms | 0.8819 ms | 0.6376 ms |   2.03 |     0.06 |
| Span_StructComparableComparer |               Random |   10000 | 138.526 ms | 0.7152 ms | 0.5172 ms |   1.11 |     0.03 |
|               Span_Comparison |               Random |   10000 | 187.870 ms | 1.3593 ms | 0.9828 ms |   1.51 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **234.723 ms** | **4.7605 ms** | **3.4422 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 233.276 ms | 3.7853 ms | 2.7370 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |               Random | 1000000 | 370.809 ms | 4.1376 ms | 2.9917 ms |   1.58 |     0.02 |
|                         Span_ |               Random | 1000000 | 203.749 ms | 0.7665 ms | 0.5542 ms |   0.87 |     0.01 |
|             Span_NullComparer |               Random | 1000000 | 204.543 ms | 1.5895 ms | 1.1493 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |               Random | 1000000 | 390.057 ms | 1.8982 ms | 1.3725 ms |   1.66 |     0.02 |
| Span_StructComparableComparer |               Random | 1000000 | 208.639 ms | 1.0469 ms | 0.7569 ms |   0.89 |     0.01 |
|               Span_Comparison |               Random | 1000000 | 284.746 ms | 0.7380 ms | 0.5336 ms |   1.21 |     0.02 |
