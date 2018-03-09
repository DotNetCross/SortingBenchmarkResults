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
|                        **Array_** |             **Constant** |       **2** |  **43.943 ms** | **0.6627 ms** | **0.4792 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  42.383 ms | 0.5150 ms | 0.3724 ms |   0.96 |     0.01 |
| Array_ClassComparableComparer |             Constant |       2 | 125.960 ms | 2.8993 ms | 2.0964 ms |   2.87 |     0.05 |
|                         Span_ |             Constant |       2 |  14.910 ms | 0.2032 ms | 0.1469 ms |   0.34 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  25.918 ms | 0.4255 ms | 0.3076 ms |   0.59 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       2 | 121.635 ms | 3.0262 ms | 2.1882 ms |   2.77 |     0.06 |
| Span_StructComparableComparer |             Constant |       2 |  59.263 ms | 0.9337 ms | 0.6751 ms |   1.35 |     0.02 |
|               Span_Comparison |             Constant |       2 |  76.901 ms | 0.9669 ms | 0.6991 ms |   1.75 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **32.257 ms** | **0.1352 ms** | **0.0977 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  31.683 ms | 0.3215 ms | 0.2325 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 |  94.978 ms | 0.8066 ms | 0.5832 ms |   2.94 |     0.02 |
|                         Span_ |             Constant |       3 |  14.320 ms | 0.2123 ms | 0.1535 ms |   0.44 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  21.211 ms | 0.0797 ms | 0.0576 ms |   0.66 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  86.057 ms | 0.9762 ms | 0.7059 ms |   2.67 |     0.02 |
| Span_StructComparableComparer |             Constant |       3 |  40.892 ms | 0.5147 ms | 0.3721 ms |   1.27 |     0.01 |
|               Span_Comparison |             Constant |       3 |  55.939 ms | 1.0007 ms | 0.7236 ms |   1.73 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **12.066 ms** | **0.2355 ms** | **0.1703 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  11.833 ms | 0.2443 ms | 0.1766 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |      10 |  33.220 ms | 1.0932 ms | 0.7905 ms |   2.75 |     0.07 |
|                         Span_ |             Constant |      10 |   4.878 ms | 0.0530 ms | 0.0383 ms |   0.40 |     0.01 |
|             Span_NullComparer |             Constant |      10 |   7.124 ms | 0.3211 ms | 0.2321 ms |   0.59 |     0.02 |
|  Span_ClassComparableComparer |             Constant |      10 |  34.699 ms | 0.1272 ms | 0.0919 ms |   2.88 |     0.04 |
| Span_StructComparableComparer |             Constant |      10 |  13.747 ms | 0.4049 ms | 0.2927 ms |   1.14 |     0.03 |
|               Span_Comparison |             Constant |      10 |  23.491 ms | 0.1431 ms | 0.1035 ms |   1.95 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **12.389 ms** | **0.2325 ms** | **0.1681 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  12.499 ms | 0.2294 ms | 0.1659 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |             Constant |     100 |  34.940 ms | 0.2845 ms | 0.2057 ms |   2.82 |     0.04 |
|                         Span_ |             Constant |     100 |  14.070 ms | 0.3184 ms | 0.2302 ms |   1.14 |     0.02 |
|             Span_NullComparer |             Constant |     100 |  14.238 ms | 0.5004 ms | 0.3618 ms |   1.15 |     0.03 |
|  Span_ClassComparableComparer |             Constant |     100 |  66.023 ms | 0.7277 ms | 0.5262 ms |   5.33 |     0.08 |
| Span_StructComparableComparer |             Constant |     100 |  14.267 ms | 0.1510 ms | 0.1092 ms |   1.15 |     0.02 |
|               Span_Comparison |             Constant |     100 |  47.333 ms | 0.8041 ms | 0.5814 ms |   3.82 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **27.059 ms** | **0.3312 ms** | **0.2395 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  27.312 ms | 0.5223 ms | 0.3777 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |             Constant |   10000 |  78.444 ms | 1.7983 ms | 1.3003 ms |   2.90 |     0.05 |
|                         Span_ |             Constant |   10000 |  33.402 ms | 0.4230 ms | 0.3058 ms |   1.23 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  34.021 ms | 0.4004 ms | 0.2895 ms |   1.26 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 | 164.463 ms | 3.5780 ms | 2.5871 ms |   6.08 |     0.10 |
| Span_StructComparableComparer |             Constant |   10000 |  34.969 ms | 0.2253 ms | 0.1629 ms |   1.29 |     0.01 |
|               Span_Comparison |             Constant |   10000 | 116.265 ms | 2.4589 ms | 1.7780 ms |   4.30 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **38.879 ms** | **0.7359 ms** | **0.5321 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  39.342 ms | 0.5806 ms | 0.4198 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |             Constant | 1000000 | 117.427 ms | 2.7738 ms | 2.0056 ms |   3.02 |     0.06 |
|                         Span_ |             Constant | 1000000 |  51.522 ms | 2.2566 ms | 1.6317 ms |   1.33 |     0.04 |
|             Span_NullComparer |             Constant | 1000000 |  51.192 ms | 2.6723 ms | 1.9322 ms |   1.32 |     0.05 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 250.956 ms | 4.1478 ms | 2.9991 ms |   6.46 |     0.11 |
| Span_StructComparableComparer |             Constant | 1000000 |  53.803 ms | 0.1936 ms | 0.1400 ms |   1.38 |     0.02 |
|               Span_Comparison |             Constant | 1000000 | 178.178 ms | 2.6578 ms | 1.9217 ms |   4.58 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **43.923 ms** | **0.5159 ms** | **0.3730 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  42.956 ms | 0.4769 ms | 0.3448 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       2 | 125.298 ms | 1.1206 ms | 0.8102 ms |   2.85 |     0.03 |
|                         Span_ |         Decrementing |       2 |  14.215 ms | 0.2180 ms | 0.1576 ms |   0.32 |     0.00 |
|             Span_NullComparer |         Decrementing |       2 |  26.055 ms | 0.1984 ms | 0.1435 ms |   0.59 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       2 | 118.942 ms | 0.6189 ms | 0.4475 ms |   2.71 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       2 |  59.112 ms | 0.3565 ms | 0.2578 ms |   1.35 |     0.01 |
|               Span_Comparison |         Decrementing |       2 |  77.251 ms | 1.5149 ms | 1.0953 ms |   1.76 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **32.846 ms** | **0.2618 ms** | **0.1893 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  31.731 ms | 0.1998 ms | 0.1445 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       3 |  93.664 ms | 1.7394 ms | 1.2577 ms |   2.85 |     0.04 |
|                         Span_ |         Decrementing |       3 |  13.151 ms | 0.2297 ms | 0.1661 ms |   0.40 |     0.01 |
|             Span_NullComparer |         Decrementing |       3 |  20.114 ms | 0.3095 ms | 0.2238 ms |   0.61 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  84.461 ms | 1.3078 ms | 0.9456 ms |   2.57 |     0.03 |
| Span_StructComparableComparer |         Decrementing |       3 |  42.298 ms | 0.4061 ms | 0.2936 ms |   1.29 |     0.01 |
|               Span_Comparison |         Decrementing |       3 |  56.390 ms | 1.0370 ms | 0.7498 ms |   1.72 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **19.397 ms** | **0.3333 ms** | **0.2410 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  19.443 ms | 0.1291 ms | 0.0934 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |  58.484 ms | 0.8542 ms | 0.6176 ms |   3.02 |     0.05 |
|                         Span_ |         Decrementing |      10 |  12.697 ms | 0.0704 ms | 0.0509 ms |   0.65 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  15.627 ms | 2.1353 ms | 1.5440 ms |   0.81 |     0.08 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  93.807 ms | 2.0171 ms | 1.4585 ms |   4.84 |     0.09 |
| Span_StructComparableComparer |         Decrementing |      10 |  21.976 ms | 0.1776 ms | 0.1284 ms |   1.13 |     0.01 |
|               Span_Comparison |         Decrementing |      10 |  63.324 ms | 0.0845 ms | 0.0611 ms |   3.27 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **14.933 ms** | **1.1071 ms** | **0.8005 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  14.444 ms | 0.4620 ms | 0.3340 ms |   0.97 |     0.05 |
| Array_ClassComparableComparer |         Decrementing |     100 |  52.267 ms | 1.4956 ms | 1.0814 ms |   3.51 |     0.18 |
|                         Span_ |         Decrementing |     100 |  15.404 ms | 3.6312 ms | 2.6256 ms |   1.03 |     0.18 |
|             Span_NullComparer |         Decrementing |     100 |  14.717 ms | 0.1743 ms | 0.1260 ms |   0.99 |     0.05 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  96.599 ms | 0.3108 ms | 0.2247 ms |   6.48 |     0.31 |
| Span_StructComparableComparer |         Decrementing |     100 |  15.813 ms | 0.1424 ms | 0.1030 ms |   1.06 |     0.05 |
|               Span_Comparison |         Decrementing |     100 |  69.093 ms | 1.1718 ms | 0.8473 ms |   4.64 |     0.23 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **34.111 ms** | **1.0698 ms** | **0.7736 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  34.545 ms | 1.4910 ms | 1.0781 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 124.283 ms | 0.5980 ms | 0.4324 ms |   3.65 |     0.08 |
|                         Span_ |         Decrementing |   10000 |  34.741 ms | 0.8748 ms | 0.6325 ms |   1.02 |     0.03 |
|             Span_NullComparer |         Decrementing |   10000 |  35.068 ms | 0.6819 ms | 0.4931 ms |   1.03 |     0.03 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 258.133 ms | 4.2097 ms | 3.0439 ms |   7.57 |     0.18 |
| Span_StructComparableComparer |         Decrementing |   10000 |  40.895 ms | 0.6525 ms | 0.4718 ms |   1.20 |     0.03 |
|               Span_Comparison |         Decrementing |   10000 | 182.778 ms | 4.4749 ms | 3.2357 ms |   5.36 |     0.14 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **51.535 ms** | **0.4869 ms** | **0.3521 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  52.238 ms | 0.6566 ms | 0.4748 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 205.113 ms | 2.1370 ms | 1.5452 ms |   3.98 |     0.04 |
|                         Span_ |         Decrementing | 1000000 |  53.056 ms | 1.0664 ms | 0.7711 ms |   1.03 |     0.02 |
|             Span_NullComparer |         Decrementing | 1000000 |  51.758 ms | 0.6845 ms | 0.4949 ms |   1.00 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 429.511 ms | 4.9645 ms | 3.5896 ms |   8.33 |     0.09 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  66.282 ms | 0.4447 ms | 0.3215 ms |   1.29 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 | 308.201 ms | 3.0267 ms | 2.1885 ms |   5.98 |     0.06 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **43.611 ms** | **0.6121 ms** | **0.4426 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  42.549 ms | 0.1313 ms | 0.0949 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 | 124.286 ms | 3.0209 ms | 2.1843 ms |   2.85 |     0.06 |
|                         Span_ |         Incrementing |       2 |  14.460 ms | 0.1513 ms | 0.1094 ms |   0.33 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  25.278 ms | 0.1056 ms | 0.0764 ms |   0.58 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       2 | 121.833 ms | 0.6742 ms | 0.4875 ms |   2.79 |     0.03 |
| Span_StructComparableComparer |         Incrementing |       2 |  60.230 ms | 0.5154 ms | 0.3727 ms |   1.38 |     0.02 |
|               Span_Comparison |         Incrementing |       2 |  76.720 ms | 0.6483 ms | 0.4688 ms |   1.76 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **32.013 ms** | **0.2286 ms** | **0.1653 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  32.120 ms | 3.2459 ms | 2.3470 ms |   1.00 |     0.07 |
| Array_ClassComparableComparer |         Incrementing |       3 |  90.799 ms | 2.6863 ms | 1.9424 ms |   2.84 |     0.06 |
|                         Span_ |         Incrementing |       3 |  13.290 ms | 0.1356 ms | 0.0980 ms |   0.42 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  19.943 ms | 0.1388 ms | 0.1004 ms |   0.62 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  85.779 ms | 0.6221 ms | 0.4498 ms |   2.68 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       3 |  42.234 ms | 0.4165 ms | 0.3012 ms |   1.32 |     0.01 |
|               Span_Comparison |         Incrementing |       3 |  55.408 ms | 0.3082 ms | 0.2229 ms |   1.73 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **11.954 ms** | **0.0710 ms** | **0.0513 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  11.711 ms | 0.0928 ms | 0.0671 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      10 |  32.797 ms | 0.2682 ms | 0.1939 ms |   2.74 |     0.02 |
|                         Span_ |         Incrementing |      10 |   5.071 ms | 0.0983 ms | 0.0711 ms |   0.42 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |   7.355 ms | 0.1185 ms | 0.0857 ms |   0.62 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  34.957 ms | 0.8484 ms | 0.6135 ms |   2.92 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      10 |  14.098 ms | 0.2629 ms | 0.1901 ms |   1.18 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |  23.448 ms | 0.0896 ms | 0.0648 ms |   1.96 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |  **11.362 ms** | **0.5674 ms** | **0.4102 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |  11.115 ms | 0.1509 ms | 0.1091 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |     100 |  34.715 ms | 0.1338 ms | 0.0967 ms |   3.06 |     0.10 |
|                         Span_ |         Incrementing |     100 |   8.686 ms | 0.1451 ms | 0.1049 ms |   0.77 |     0.03 |
|             Span_NullComparer |         Incrementing |     100 |   8.816 ms | 0.1611 ms | 0.1165 ms |   0.78 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  66.840 ms | 0.1047 ms | 0.0757 ms |   5.89 |     0.19 |
| Span_StructComparableComparer |         Incrementing |     100 |  10.868 ms | 0.8393 ms | 0.6068 ms |   0.96 |     0.06 |
|               Span_Comparison |         Incrementing |     100 |  46.657 ms | 0.7907 ms | 0.5717 ms |   4.11 |     0.14 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **22.061 ms** | **0.1599 ms** | **0.1156 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  21.951 ms | 0.2295 ms | 0.1659 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   10000 |  74.886 ms | 1.2479 ms | 0.9023 ms |   3.39 |     0.04 |
|                         Span_ |         Incrementing |   10000 |  19.792 ms | 0.1117 ms | 0.0808 ms |   0.90 |     0.01 |
|             Span_NullComparer |         Incrementing |   10000 |  19.863 ms | 0.3341 ms | 0.2416 ms |   0.90 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 160.743 ms | 2.2394 ms | 1.6192 ms |   7.29 |     0.08 |
| Span_StructComparableComparer |         Incrementing |   10000 |  22.652 ms | 0.2632 ms | 0.1903 ms |   1.03 |     0.01 |
|               Span_Comparison |         Incrementing |   10000 | 111.639 ms | 2.0295 ms | 1.4675 ms |   5.06 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **29.455 ms** | **0.6773 ms** | **0.4897 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  29.854 ms | 0.7961 ms | 0.5756 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 109.876 ms | 1.1709 ms | 0.8466 ms |   3.73 |     0.06 |
|                         Span_ |         Incrementing | 1000000 |  28.171 ms | 2.4851 ms | 1.7969 ms |   0.96 |     0.06 |
|             Span_NullComparer |         Incrementing | 1000000 |  27.324 ms | 0.2391 ms | 0.1729 ms |   0.93 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 240.051 ms | 0.6638 ms | 0.4800 ms |   8.15 |     0.13 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  32.721 ms | 0.5491 ms | 0.3970 ms |   1.11 |     0.02 |
|               Span_Comparison |         Incrementing | 1000000 | 162.544 ms | 2.5997 ms | 1.8798 ms |   5.52 |     0.11 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **43.549 ms** | **0.7951 ms** | **0.5749 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  42.204 ms | 0.5246 ms | 0.3793 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 | 127.864 ms | 0.8784 ms | 0.6352 ms |   2.94 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |       2 |  14.443 ms | 0.1845 ms | 0.1334 ms |   0.33 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  25.607 ms | 0.4134 ms | 0.2989 ms |   0.59 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 | 118.874 ms | 1.0718 ms | 0.7750 ms |   2.73 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  59.907 ms | 0.1954 ms | 0.1413 ms |   1.38 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  76.925 ms | 0.8290 ms | 0.5994 ms |   1.77 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **32.159 ms** | **0.1686 ms** | **0.1219 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  32.256 ms | 3.5030 ms | 2.5329 ms |   1.00 |     0.08 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  90.517 ms | 0.9734 ms | 0.7039 ms |   2.81 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       3 |  13.182 ms | 0.1559 ms | 0.1127 ms |   0.41 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  19.895 ms | 0.1130 ms | 0.0817 ms |   0.62 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  85.761 ms | 0.2974 ms | 0.2151 ms |   2.67 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  40.896 ms | 0.2681 ms | 0.1938 ms |   1.27 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  55.409 ms | 0.5255 ms | 0.3800 ms |   1.72 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **14.548 ms** | **0.2563 ms** | **0.1853 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  14.342 ms | 0.2351 ms | 0.1700 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  41.915 ms | 1.4255 ms | 1.0307 ms |   2.88 |     0.08 |
|                         Span_ |  MedianOfThreeKiller |      10 |   7.106 ms | 0.2276 ms | 0.1646 ms |   0.49 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |   9.557 ms | 0.0934 ms | 0.0675 ms |   0.66 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  54.673 ms | 2.2572 ms | 1.6321 ms |   3.76 |     0.12 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  16.518 ms | 0.9861 ms | 0.7130 ms |   1.14 |     0.05 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  37.806 ms | 3.3741 ms | 2.4397 ms |   2.60 |     0.16 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **18.534 ms** | **1.1178 ms** | **0.8082 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  18.000 ms | 0.2731 ms | 0.1975 ms |   0.97 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  61.496 ms | 1.3049 ms | 0.9435 ms |   3.32 |     0.14 |
|                         Span_ |  MedianOfThreeKiller |     100 |  18.929 ms | 0.2874 ms | 0.2078 ms |   1.02 |     0.04 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  18.702 ms | 0.2301 ms | 0.1664 ms |   1.01 |     0.04 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 | 130.203 ms | 1.9311 ms | 1.3963 ms |   7.04 |     0.29 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  21.017 ms | 4.6428 ms | 3.3570 ms |   1.14 |     0.18 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  87.342 ms | 0.5664 ms | 0.4095 ms |   4.72 |     0.19 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **57.861 ms** | **0.9785 ms** | **0.7075 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  58.214 ms | 3.2700 ms | 2.3644 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 165.194 ms | 0.8900 ms | 0.6435 ms |   2.86 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  71.836 ms | 0.2682 ms | 0.1940 ms |   1.24 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  71.732 ms | 0.1864 ms | 0.1348 ms |   1.24 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 368.857 ms | 1.4157 ms | 1.0236 ms |   6.38 |     0.07 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  75.465 ms | 0.0736 ms | 0.0532 ms |   1.30 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 255.247 ms | 2.7628 ms | 1.9977 ms |   4.41 |     0.06 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** | **136.699 ms** | **1.6966 ms** | **1.2268 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 | 135.139 ms | 2.6386 ms | 1.9079 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 327.096 ms | 4.5106 ms | 3.2615 ms |   2.39 |     0.03 |
|                         Span_ |  MedianOfThreeKiller | 1000000 | 120.200 ms | 1.2426 ms | 0.8985 ms |   0.88 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 | 121.295 ms | 1.2018 ms | 0.8690 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 637.115 ms | 2.2588 ms | 1.6333 ms |   4.66 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 130.952 ms | 6.6587 ms | 4.8147 ms |   0.96 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 437.801 ms | 2.7922 ms | 2.0190 ms |   3.20 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **46.323 ms** | **0.7181 ms** | **0.5192 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  45.000 ms | 2.0739 ms | 1.4996 ms |   0.97 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 | 127.536 ms | 1.2459 ms | 0.9008 ms |   2.75 |     0.03 |
|                         Span_ | PartialRandomShuffle |       2 |  15.984 ms | 0.0553 ms | 0.0400 ms |   0.35 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  27.254 ms | 0.2179 ms | 0.1576 ms |   0.59 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 | 120.850 ms | 0.3856 ms | 0.2788 ms |   2.61 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  61.255 ms | 0.1695 ms | 0.1226 ms |   1.32 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       2 |  77.959 ms | 0.1874 ms | 0.1355 ms |   1.68 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **36.630 ms** | **3.1609 ms** | **2.2856 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  36.210 ms | 3.7256 ms | 2.6938 ms |   0.99 |     0.09 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  94.273 ms | 0.4258 ms | 0.3079 ms |   2.58 |     0.13 |
|                         Span_ | PartialRandomShuffle |       3 |  15.516 ms | 0.1394 ms | 0.1008 ms |   0.42 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  22.824 ms | 0.1177 ms | 0.0851 ms |   0.63 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  89.543 ms | 1.5815 ms | 1.1435 ms |   2.45 |     0.13 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  43.531 ms | 0.2196 ms | 0.1588 ms |   1.19 |     0.06 |
|               Span_Comparison | PartialRandomShuffle |       3 |  58.919 ms | 0.1381 ms | 0.0998 ms |   1.61 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **20.081 ms** | **0.1298 ms** | **0.0939 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  19.834 ms | 0.1252 ms | 0.0905 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  44.021 ms | 0.3652 ms | 0.2641 ms |   2.19 |     0.02 |
|                         Span_ | PartialRandomShuffle |      10 |  12.084 ms | 0.8013 ms | 0.5794 ms |   0.60 |     0.03 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  14.407 ms | 0.5127 ms | 0.3707 ms |   0.72 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  50.619 ms | 0.8968 ms | 0.6485 ms |   2.52 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  21.498 ms | 0.1591 ms | 0.1151 ms |   1.07 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      10 |  36.708 ms | 0.1315 ms | 0.0951 ms |   1.83 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **50.126 ms** | **0.1216 ms** | **0.0879 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  50.054 ms | 0.0877 ms | 0.0634 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |  84.078 ms | 0.3192 ms | 0.2308 ms |   1.68 |     0.01 |
|                         Span_ | PartialRandomShuffle |     100 |  47.399 ms | 0.0910 ms | 0.0658 ms |   0.95 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  47.414 ms | 0.0729 ms | 0.0527 ms |   0.95 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 | 134.433 ms | 0.9778 ms | 0.7070 ms |   2.68 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  47.753 ms | 0.1783 ms | 0.1290 ms |   0.95 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |     100 |  97.210 ms | 0.2776 ms | 0.2007 ms |   1.94 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **88.588 ms** | **0.0940 ms** | **0.0680 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  88.619 ms | 0.2576 ms | 0.1863 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 153.840 ms | 0.4249 ms | 0.3072 ms |   1.74 |     0.00 |
|                         Span_ | PartialRandomShuffle |   10000 |  88.818 ms | 0.3085 ms | 0.2231 ms |   1.00 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  88.880 ms | 0.1785 ms | 0.1291 ms |   1.00 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 264.582 ms | 2.6602 ms | 1.9235 ms |   2.99 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |  88.188 ms | 0.8890 ms | 0.6428 ms |   1.00 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 193.187 ms | 1.4392 ms | 1.0407 ms |   2.18 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** | **129.909 ms** | **0.3078 ms** | **0.2226 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 | 129.919 ms | 0.1569 ms | 0.1134 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 231.532 ms | 1.6228 ms | 1.1734 ms |   1.78 |     0.01 |
|                         Span_ | PartialRandomShuffle | 1000000 | 131.473 ms | 1.0689 ms | 0.7729 ms |   1.01 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 | 132.165 ms | 1.0088 ms | 0.7294 ms |   1.02 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 400.378 ms | 3.3863 ms | 2.4485 ms |   3.08 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 130.891 ms | 0.3832 ms | 0.2771 ms |   1.01 |     0.00 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 291.961 ms | 2.3597 ms | 1.7062 ms |   2.25 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **53.499 ms** | **0.5190 ms** | **0.3753 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  49.265 ms | 0.2289 ms | 0.1655 ms |   0.92 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 | 134.005 ms | 5.8901 ms | 4.2589 ms |   2.50 |     0.08 |
|                         Span_ |               Random |       2 |  19.596 ms | 0.3111 ms | 0.2249 ms |   0.37 |     0.00 |
|             Span_NullComparer |               Random |       2 |  30.688 ms | 0.3964 ms | 0.2866 ms |   0.57 |     0.01 |
|  Span_ClassComparableComparer |               Random |       2 | 123.125 ms | 0.8296 ms | 0.5999 ms |   2.30 |     0.02 |
| Span_StructComparableComparer |               Random |       2 |  64.682 ms | 0.2571 ms | 0.1859 ms |   1.21 |     0.01 |
|               Span_Comparison |               Random |       2 |  80.698 ms | 0.0905 ms | 0.0654 ms |   1.51 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **43.275 ms** | **1.3076 ms** | **0.9455 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  41.607 ms | 0.9936 ms | 0.7184 ms |   0.96 |     0.03 |
| Array_ClassComparableComparer |               Random |       3 | 103.908 ms | 0.8280 ms | 0.5987 ms |   2.40 |     0.05 |
|                         Span_ |               Random |       3 |  20.797 ms | 0.1407 ms | 0.1017 ms |   0.48 |     0.01 |
|             Span_NullComparer |               Random |       3 |  28.595 ms | 0.3670 ms | 0.2653 ms |   0.66 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 |  92.943 ms | 0.0836 ms | 0.0605 ms |   2.15 |     0.04 |
| Span_StructComparableComparer |               Random |       3 |  48.281 ms | 0.2184 ms | 0.1579 ms |   1.12 |     0.02 |
|               Span_Comparison |               Random |       3 |  64.571 ms | 0.2771 ms | 0.2003 ms |   1.49 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **33.545 ms** | **1.3862 ms** | **1.0023 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  33.731 ms | 0.6176 ms | 0.4466 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |               Random |      10 |  67.169 ms | 1.2986 ms | 0.9390 ms |   2.00 |     0.06 |
|                         Span_ |               Random |      10 |  25.799 ms | 0.1704 ms | 0.1232 ms |   0.77 |     0.02 |
|             Span_NullComparer |               Random |      10 |  28.215 ms | 0.1170 ms | 0.0846 ms |   0.84 |     0.02 |
|  Span_ClassComparableComparer |               Random |      10 |  83.350 ms | 2.8266 ms | 2.0438 ms |   2.49 |     0.09 |
| Span_StructComparableComparer |               Random |      10 |  34.793 ms | 0.7986 ms | 0.5775 ms |   1.04 |     0.03 |
|               Span_Comparison |               Random |      10 |  57.919 ms | 0.1202 ms | 0.0869 ms |   1.73 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **65.617 ms** | **0.1489 ms** | **0.1077 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  65.631 ms | 0.2236 ms | 0.1617 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |     100 | 101.532 ms | 0.2217 ms | 0.1603 ms |   1.55 |     0.00 |
|                         Span_ |               Random |     100 |  63.134 ms | 0.1568 ms | 0.1133 ms |   0.96 |     0.00 |
|             Span_NullComparer |               Random |     100 |  63.377 ms | 1.1375 ms | 0.8225 ms |   0.97 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 | 154.767 ms | 4.0736 ms | 2.9455 ms |   2.36 |     0.04 |
| Span_StructComparableComparer |               Random |     100 |  63.570 ms | 0.9028 ms | 0.6528 ms |   0.97 |     0.01 |
|               Span_Comparison |               Random |     100 | 112.157 ms | 0.3603 ms | 0.2605 ms |   1.71 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** | **134.061 ms** | **0.4856 ms** | **0.3511 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 | 134.269 ms | 0.3570 ms | 0.2581 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |   10000 | 199.365 ms | 1.2316 ms | 0.8905 ms |   1.49 |     0.01 |
|                         Span_ |               Random |   10000 | 132.218 ms | 0.7470 ms | 0.5401 ms |   0.99 |     0.00 |
|             Span_NullComparer |               Random |   10000 | 133.282 ms | 1.7028 ms | 1.2313 ms |   0.99 |     0.01 |
|  Span_ClassComparableComparer |               Random |   10000 | 317.128 ms | 2.9316 ms | 2.1197 ms |   2.37 |     0.02 |
| Span_StructComparableComparer |               Random |   10000 | 127.703 ms | 1.3531 ms | 0.9784 ms |   0.95 |     0.01 |
|               Span_Comparison |               Random |   10000 | 232.433 ms | 0.2578 ms | 0.1864 ms |   1.73 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **201.112 ms** | **0.7441 ms** | **0.5380 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 200.919 ms | 0.8754 ms | 0.6330 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 | 300.394 ms | 2.9295 ms | 2.1182 ms |   1.49 |     0.01 |
|                         Span_ |               Random | 1000000 | 198.290 ms | 0.4214 ms | 0.3047 ms |   0.99 |     0.00 |
|             Span_NullComparer |               Random | 1000000 | 198.331 ms | 0.3953 ms | 0.2858 ms |   0.99 |     0.00 |
|  Span_ClassComparableComparer |               Random | 1000000 | 483.946 ms | 9.1838 ms | 6.6405 ms |   2.41 |     0.03 |
| Span_StructComparableComparer |               Random | 1000000 | 191.829 ms | 2.2377 ms | 1.6180 ms |   0.95 |     0.01 |
|               Span_Comparison |               Random | 1000000 | 355.574 ms | 3.6345 ms | 2.6280 ms |   1.77 |     0.01 |
