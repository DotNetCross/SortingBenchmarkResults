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
|                        Method |               Filler |  Length |       Mean |      Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |-------- |-----------:|-----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |       **2** |  **36.911 ms** |  **0.1276 ms** | **0.0923 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  36.997 ms |  0.0577 ms | 0.0417 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |       2 | 131.232 ms |  1.4221 ms | 1.0283 ms |   3.56 |     0.03 |
|                         Span_ |             Constant |       2 |  12.376 ms |  0.1640 ms | 0.1186 ms |   0.34 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  29.013 ms |  0.1199 ms | 0.0867 ms |   0.79 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       2 | 122.957 ms |  0.7119 ms | 0.5147 ms |   3.33 |     0.02 |
| Span_StructComparableComparer |             Constant |       2 |  63.745 ms |  0.7213 ms | 0.5215 ms |   1.73 |     0.01 |
|               Span_Comparison |             Constant |       2 |  80.120 ms |  0.2762 ms | 0.1997 ms |   2.17 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **30.189 ms** |  **0.0898 ms** | **0.0649 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  30.386 ms |  0.2017 ms | 0.1458 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 | 100.804 ms |  1.7631 ms | 1.2748 ms |   3.34 |     0.04 |
|                         Span_ |             Constant |       3 |   9.855 ms |  0.2245 ms | 0.1623 ms |   0.33 |     0.01 |
|             Span_NullComparer |             Constant |       3 |  20.841 ms |  0.0861 ms | 0.0623 ms |   0.69 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  91.983 ms |  0.4792 ms | 0.3465 ms |   3.05 |     0.01 |
| Span_StructComparableComparer |             Constant |       3 |  47.212 ms |  0.3075 ms | 0.2223 ms |   1.56 |     0.01 |
|               Span_Comparison |             Constant |       3 |  61.502 ms |  0.1116 ms | 0.0807 ms |   2.04 |     0.00 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **18.740 ms** |  **0.5601 ms** | **0.4050 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  18.559 ms |  0.1536 ms | 0.1111 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |      10 |  37.182 ms |  0.0640 ms | 0.0462 ms |   1.98 |     0.04 |
|                         Span_ |             Constant |      10 |   5.844 ms |  0.0775 ms | 0.0561 ms |   0.31 |     0.01 |
|             Span_NullComparer |             Constant |      10 |   9.152 ms |  0.0657 ms | 0.0475 ms |   0.49 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  39.800 ms |  0.1208 ms | 0.0874 ms |   2.12 |     0.04 |
| Span_StructComparableComparer |             Constant |      10 |  18.636 ms |  0.0742 ms | 0.0537 ms |   0.99 |     0.02 |
|               Span_Comparison |             Constant |      10 |  28.844 ms |  1.8625 ms | 1.3467 ms |   1.54 |     0.08 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **23.216 ms** |  **0.0817 ms** | **0.0590 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  23.291 ms |  0.6740 ms | 0.4874 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |             Constant |     100 |  49.676 ms |  0.3952 ms | 0.2857 ms |   2.14 |     0.01 |
|                         Span_ |             Constant |     100 |  12.367 ms |  0.1390 ms | 0.1005 ms |   0.53 |     0.00 |
|             Span_NullComparer |             Constant |     100 |  12.745 ms |  0.1174 ms | 0.0849 ms |   0.55 |     0.00 |
|  Span_ClassComparableComparer |             Constant |     100 |  85.095 ms |  0.6393 ms | 0.4622 ms |   3.67 |     0.02 |
| Span_StructComparableComparer |             Constant |     100 |  34.610 ms |  0.1228 ms | 0.0888 ms |   1.49 |     0.01 |
|               Span_Comparison |             Constant |     100 |  57.906 ms |  0.7024 ms | 0.5079 ms |   2.49 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **43.646 ms** |  **0.5386 ms** | **0.3895 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  43.746 ms |  1.0305 ms | 0.7451 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |             Constant |   10000 | 114.274 ms |  0.1565 ms | 0.1131 ms |   2.62 |     0.02 |
|                         Span_ |             Constant |   10000 |  27.088 ms |  0.0987 ms | 0.0713 ms |   0.62 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  27.020 ms |  0.0300 ms | 0.0217 ms |   0.62 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 | 220.319 ms |  1.1583 ms | 0.8376 ms |   5.05 |     0.05 |
| Span_StructComparableComparer |             Constant |   10000 |  84.014 ms |  0.5400 ms | 0.3904 ms |   1.93 |     0.02 |
|               Span_Comparison |             Constant |   10000 | 143.603 ms |  0.6472 ms | 0.4680 ms |   3.29 |     0.03 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **58.624 ms** |  **0.4475 ms** | **0.3235 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  58.134 ms |  0.6522 ms | 0.4716 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 173.120 ms |  0.8382 ms | 0.6061 ms |   2.95 |     0.02 |
|                         Span_ |             Constant | 1000000 |  39.894 ms |  0.3829 ms | 0.2769 ms |   0.68 |     0.01 |
|             Span_NullComparer |             Constant | 1000000 |  39.804 ms |  1.2140 ms | 0.8778 ms |   0.68 |     0.01 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 332.841 ms |  0.2907 ms | 0.2102 ms |   5.68 |     0.03 |
| Span_StructComparableComparer |             Constant | 1000000 | 125.799 ms |  2.0234 ms | 1.4631 ms |   2.15 |     0.03 |
|               Span_Comparison |             Constant | 1000000 | 214.752 ms |  0.7134 ms | 0.5159 ms |   3.66 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **36.947 ms** |  **0.0279 ms** | **0.0201 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  37.079 ms |  0.1221 ms | 0.0883 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       2 | 131.347 ms |  0.8934 ms | 0.6460 ms |   3.56 |     0.02 |
|                         Span_ |         Decrementing |       2 |  12.652 ms |  0.0931 ms | 0.0673 ms |   0.34 |     0.00 |
|             Span_NullComparer |         Decrementing |       2 |  28.964 ms |  0.0479 ms | 0.0346 ms |   0.78 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       2 | 123.319 ms |  0.8849 ms | 0.6399 ms |   3.34 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       2 |  63.482 ms |  0.6044 ms | 0.4370 ms |   1.72 |     0.01 |
|               Span_Comparison |         Decrementing |       2 |  79.905 ms |  0.2347 ms | 0.1697 ms |   2.16 |     0.00 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **30.296 ms** |  **0.0960 ms** | **0.0694 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  30.419 ms |  0.0827 ms | 0.0598 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       3 |  97.561 ms |  0.5099 ms | 0.3687 ms |   3.22 |     0.01 |
|                         Span_ |         Decrementing |       3 |  10.234 ms |  0.2638 ms | 0.1908 ms |   0.34 |     0.01 |
|             Span_NullComparer |         Decrementing |       3 |  21.751 ms |  0.0785 ms | 0.0568 ms |   0.72 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  89.029 ms |  0.4487 ms | 0.3244 ms |   2.94 |     0.01 |
| Span_StructComparableComparer |         Decrementing |       3 |  46.315 ms |  0.4226 ms | 0.3056 ms |   1.53 |     0.01 |
|               Span_Comparison |         Decrementing |       3 |  60.564 ms |  0.5250 ms | 0.3796 ms |   2.00 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **26.535 ms** |  **0.0923 ms** | **0.0667 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  26.408 ms |  0.0742 ms | 0.0537 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |      10 |  74.921 ms |  0.4036 ms | 0.2918 ms |   2.82 |     0.01 |
|                         Span_ |         Decrementing |      10 |  15.092 ms |  1.0198 ms | 0.7374 ms |   0.57 |     0.03 |
|             Span_NullComparer |         Decrementing |      10 |  18.247 ms |  0.0918 ms | 0.0663 ms |   0.69 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |      10 | 109.915 ms |  0.7484 ms | 0.5412 ms |   4.14 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      10 |  36.396 ms |  0.0492 ms | 0.0356 ms |   1.37 |     0.00 |
|               Span_Comparison |         Decrementing |      10 |  68.568 ms |  2.9684 ms | 2.1464 ms |   2.58 |     0.08 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **24.301 ms** |  **0.3142 ms** | **0.2272 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  25.172 ms |  1.0998 ms | 0.7952 ms |   1.04 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |     100 |  68.442 ms |  0.1086 ms | 0.0785 ms |   2.82 |     0.03 |
|                         Span_ |         Decrementing |     100 |  14.219 ms |  0.4830 ms | 0.3492 ms |   0.59 |     0.01 |
|             Span_NullComparer |         Decrementing |     100 |  14.633 ms |  0.3284 ms | 0.2374 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 | 121.170 ms |  0.7276 ms | 0.5261 ms |   4.99 |     0.05 |
| Span_StructComparableComparer |         Decrementing |     100 |  41.090 ms |  0.0737 ms | 0.0533 ms |   1.69 |     0.02 |
|               Span_Comparison |         Decrementing |     100 |  80.471 ms |  2.4123 ms | 1.7442 ms |   3.31 |     0.07 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **40.698 ms** |  **0.8229 ms** | **0.5950 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  40.334 ms |  1.2560 ms | 0.9082 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 184.993 ms |  0.8397 ms | 0.6072 ms |   4.55 |     0.06 |
|                         Span_ |         Decrementing |   10000 |  33.015 ms |  0.2145 ms | 0.1551 ms |   0.81 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |  32.967 ms |  0.1094 ms | 0.0791 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 335.160 ms |  0.9315 ms | 0.6736 ms |   8.24 |     0.12 |
| Span_StructComparableComparer |         Decrementing |   10000 | 102.051 ms |  0.7771 ms | 0.5619 ms |   2.51 |     0.04 |
|               Span_Comparison |         Decrementing |   10000 | 196.753 ms |  0.4429 ms | 0.3203 ms |   4.84 |     0.07 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **57.438 ms** |  **1.9009 ms** | **1.3745 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  56.887 ms |  2.0253 ms | 1.4645 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 306.616 ms |  1.4055 ms | 1.0163 ms |   5.34 |     0.12 |
|                         Span_ |         Decrementing | 1000000 |  49.654 ms |  0.3422 ms | 0.2474 ms |   0.86 |     0.02 |
|             Span_NullComparer |         Decrementing | 1000000 |  49.313 ms |  0.2904 ms | 0.2100 ms |   0.86 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 556.179 ms |  1.2264 ms | 0.8867 ms |   9.69 |     0.22 |
| Span_StructComparableComparer |         Decrementing | 1000000 | 167.247 ms |  0.7820 ms | 0.5654 ms |   2.91 |     0.07 |
|               Span_Comparison |         Decrementing | 1000000 | 323.375 ms |  1.1324 ms | 0.8188 ms |   5.63 |     0.13 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **37.170 ms** |  **0.0472 ms** | **0.0341 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  36.928 ms |  0.0911 ms | 0.0659 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       2 | 130.273 ms |  1.2899 ms | 0.9327 ms |   3.50 |     0.02 |
|                         Span_ |         Incrementing |       2 |  12.379 ms |  0.1049 ms | 0.0758 ms |   0.33 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  29.097 ms |  0.1836 ms | 0.1328 ms |   0.78 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       2 | 121.850 ms |  0.3417 ms | 0.2470 ms |   3.28 |     0.01 |
| Span_StructComparableComparer |         Incrementing |       2 |  63.222 ms |  0.6548 ms | 0.4734 ms |   1.70 |     0.01 |
|               Span_Comparison |         Incrementing |       2 |  79.332 ms |  0.2786 ms | 0.2014 ms |   2.13 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **30.371 ms** |  **0.0829 ms** | **0.0599 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  30.239 ms |  0.1001 ms | 0.0723 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       3 | 103.745 ms | 10.7432 ms | 7.7680 ms |   3.42 |     0.24 |
|                         Span_ |         Incrementing |       3 |  10.075 ms |  0.5896 ms | 0.4263 ms |   0.33 |     0.01 |
|             Span_NullComparer |         Incrementing |       3 |  22.411 ms |  1.7310 ms | 1.2517 ms |   0.74 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  90.678 ms |  0.2324 ms | 0.1681 ms |   2.99 |     0.01 |
| Span_StructComparableComparer |         Incrementing |       3 |  46.314 ms |  0.2959 ms | 0.2140 ms |   1.52 |     0.01 |
|               Span_Comparison |         Incrementing |       3 |  59.352 ms |  0.1615 ms | 0.1168 ms |   1.95 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **18.502 ms** |  **0.1204 ms** | **0.0871 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  18.460 ms |  0.0729 ms | 0.0527 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      10 |  36.180 ms |  0.1050 ms | 0.0759 ms |   1.96 |     0.01 |
|                         Span_ |         Incrementing |      10 |   5.773 ms |  0.0604 ms | 0.0437 ms |   0.31 |     0.00 |
|             Span_NullComparer |         Incrementing |      10 |   9.152 ms |  0.0987 ms | 0.0714 ms |   0.49 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  39.246 ms |  0.1033 ms | 0.0747 ms |   2.12 |     0.01 |
| Span_StructComparableComparer |         Incrementing |      10 |  17.910 ms |  0.1347 ms | 0.0974 ms |   0.97 |     0.01 |
|               Span_Comparison |         Incrementing |      10 |  26.511 ms |  0.3715 ms | 0.2686 ms |   1.43 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |  **17.659 ms** |  **0.1412 ms** | **0.1021 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |  17.842 ms |  1.0527 ms | 0.7612 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |     100 |  46.049 ms |  0.2341 ms | 0.1692 ms |   2.61 |     0.02 |
|                         Span_ |         Incrementing |     100 |   9.652 ms |  0.0760 ms | 0.0550 ms |   0.55 |     0.00 |
|             Span_NullComparer |         Incrementing |     100 |  10.008 ms |  0.0953 ms | 0.0689 ms |   0.57 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  83.423 ms |  0.4322 ms | 0.3125 ms |   4.72 |     0.03 |
| Span_StructComparableComparer |         Incrementing |     100 |  27.013 ms |  0.0643 ms | 0.0465 ms |   1.53 |     0.01 |
|               Span_Comparison |         Incrementing |     100 |  54.730 ms |  0.0877 ms | 0.0634 ms |   3.10 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **26.532 ms** |  **2.1310 ms** | **1.5408 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  26.122 ms |  1.4849 ms | 1.0737 ms |   0.99 |     0.06 |
| Array_ClassComparableComparer |         Incrementing |   10000 | 104.113 ms |  0.7003 ms | 0.5064 ms |   3.93 |     0.19 |
|                         Span_ |         Incrementing |   10000 |  19.770 ms |  0.0868 ms | 0.0628 ms |   0.75 |     0.04 |
|             Span_NullComparer |         Incrementing |   10000 |  19.591 ms |  0.1116 ms | 0.0807 ms |   0.74 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 207.443 ms |  0.7163 ms | 0.5179 ms |   7.84 |     0.38 |
| Span_StructComparableComparer |         Incrementing |   10000 |  61.989 ms |  0.1816 ms | 0.1313 ms |   2.34 |     0.11 |
|               Span_Comparison |         Incrementing |   10000 | 122.819 ms |  0.1292 ms | 0.0934 ms |   4.64 |     0.22 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **33.224 ms** |  **0.7788 ms** | **0.5631 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  33.368 ms |  0.6415 ms | 0.4638 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 155.737 ms |  1.5464 ms | 1.1181 ms |   4.69 |     0.08 |
|                         Span_ |         Incrementing | 1000000 |  26.487 ms |  0.3379 ms | 0.2443 ms |   0.80 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |  26.460 ms |  0.2666 ms | 0.1928 ms |   0.80 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 305.615 ms |  0.8577 ms | 0.6202 ms |   9.20 |     0.15 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  89.899 ms |  0.2418 ms | 0.1748 ms |   2.71 |     0.04 |
|               Span_Comparison |         Incrementing | 1000000 | 181.215 ms |  1.3624 ms | 0.9851 ms |   5.46 |     0.09 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **36.890 ms** |  **0.0890 ms** | **0.0644 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  36.957 ms |  0.0687 ms | 0.0497 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 | 130.178 ms |  1.0592 ms | 0.7658 ms |   3.53 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       2 |  12.416 ms |  0.3055 ms | 0.2209 ms |   0.34 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  29.208 ms |  0.0962 ms | 0.0696 ms |   0.79 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 | 122.037 ms |  0.2918 ms | 0.2110 ms |   3.31 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  62.827 ms |  0.8000 ms | 0.5785 ms |   1.70 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  79.317 ms |  0.2238 ms | 0.1618 ms |   2.15 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **30.212 ms** |  **0.0584 ms** | **0.0423 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  30.262 ms |  0.0929 ms | 0.0672 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  97.552 ms |  0.7764 ms | 0.5614 ms |   3.23 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       3 |   9.770 ms |  0.0639 ms | 0.0462 ms |   0.32 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  20.855 ms |  0.1271 ms | 0.0919 ms |   0.69 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  90.334 ms |  0.4131 ms | 0.2987 ms |   2.99 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  46.046 ms |  0.5331 ms | 0.3854 ms |   1.52 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  59.305 ms |  0.1932 ms | 0.1397 ms |   1.96 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **20.822 ms** |  **0.1761 ms** | **0.1273 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  20.946 ms |  0.1640 ms | 0.1186 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  49.737 ms |  0.1802 ms | 0.1303 ms |   2.39 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |      10 |   8.658 ms |  0.2306 ms | 0.1667 ms |   0.42 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |  12.064 ms |  0.1044 ms | 0.0755 ms |   0.58 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  61.303 ms |  0.2919 ms | 0.2111 ms |   2.94 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  25.943 ms |  0.1567 ms | 0.1133 ms |   1.25 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  40.982 ms |  0.1923 ms | 0.1391 ms |   1.97 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **27.456 ms** |  **0.0746 ms** | **0.0540 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  28.592 ms |  1.5854 ms | 1.1464 ms |   1.04 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  85.962 ms |  0.5039 ms | 0.3644 ms |   3.13 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |     100 |  17.305 ms |  0.0928 ms | 0.0671 ms |   0.63 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  17.593 ms |  0.1491 ms | 0.1078 ms |   0.64 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 | 157.695 ms |  1.4727 ms | 1.0649 ms |   5.74 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  49.651 ms |  0.4560 ms | 0.3297 ms |   1.81 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |     100 | 106.055 ms |  8.7935 ms | 6.3583 ms |   3.86 |     0.22 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **80.807 ms** |  **0.6835 ms** | **0.4942 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  80.784 ms |  0.8750 ms | 0.6327 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 230.790 ms |  0.9701 ms | 0.7014 ms |   2.86 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  67.251 ms |  0.2580 ms | 0.1865 ms |   0.83 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  67.199 ms |  0.4129 ms | 0.2985 ms |   0.83 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 463.974 ms |  1.7353 ms | 1.2548 ms |   5.74 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 | 165.064 ms |  0.8743 ms | 0.6322 ms |   2.04 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 290.933 ms |  0.9073 ms | 0.6560 ms |   3.60 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** | **127.805 ms** |  **0.5069 ms** | **0.3665 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 | 127.970 ms |  0.8182 ms | 0.5916 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 453.303 ms |  1.5205 ms | 1.0994 ms |   3.55 |     0.01 |
|                         Span_ |  MedianOfThreeKiller | 1000000 | 108.091 ms |  0.6005 ms | 0.4342 ms |   0.85 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 | 108.194 ms |  0.4196 ms | 0.3034 ms |   0.85 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 801.462 ms |  4.9020 ms | 3.5445 ms |   6.27 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 283.173 ms |  2.2748 ms | 1.6448 ms |   2.22 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 489.641 ms |  6.9413 ms | 5.0190 ms |   3.83 |     0.04 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **38.677 ms** |  **0.8495 ms** | **0.6143 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  38.510 ms |  0.3670 ms | 0.2654 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 | 133.661 ms |  1.5831 ms | 1.1447 ms |   3.46 |     0.06 |
|                         Span_ | PartialRandomShuffle |       2 |  13.943 ms |  0.2186 ms | 0.1581 ms |   0.36 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  30.599 ms |  0.2494 ms | 0.1804 ms |   0.79 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 | 122.601 ms |  1.2458 ms | 0.9008 ms |   3.17 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  65.393 ms |  0.2329 ms | 0.1684 ms |   1.69 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       2 |  80.875 ms |  0.7631 ms | 0.5518 ms |   2.09 |     0.03 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **32.319 ms** |  **0.4720 ms** | **0.3413 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  32.530 ms |  0.1068 ms | 0.0772 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 | 100.887 ms |  0.9393 ms | 0.6792 ms |   3.12 |     0.04 |
|                         Span_ | PartialRandomShuffle |       3 |  13.142 ms |  0.1057 ms | 0.0765 ms |   0.41 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  23.811 ms |  0.6470 ms | 0.4678 ms |   0.74 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  93.977 ms |  0.6316 ms | 0.4567 ms |   2.91 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  49.032 ms |  0.5513 ms | 0.3986 ms |   1.52 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       3 |  63.013 ms |  0.7897 ms | 0.5710 ms |   1.95 |     0.03 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **24.089 ms** |  **0.0774 ms** | **0.0559 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  24.085 ms |  0.6998 ms | 0.5060 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  51.152 ms |  1.2875 ms | 0.9309 ms |   2.12 |     0.04 |
|                         Span_ | PartialRandomShuffle |      10 |  12.549 ms |  0.3000 ms | 0.2169 ms |   0.52 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  16.019 ms |  0.1020 ms | 0.0738 ms |   0.67 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  57.294 ms |  0.1105 ms | 0.0799 ms |   2.38 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  28.728 ms |  1.1545 ms | 0.8347 ms |   1.19 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |      10 |  40.988 ms |  0.3370 ms | 0.2436 ms |   1.70 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **58.582 ms** |  **1.5483 ms** | **1.1195 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  58.231 ms |  0.4430 ms | 0.3203 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 | 103.875 ms |  2.5001 ms | 1.8077 ms |   1.77 |     0.04 |
|                         Span_ | PartialRandomShuffle |     100 |  48.051 ms |  0.7424 ms | 0.5368 ms |   0.82 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  49.012 ms |  0.0874 ms | 0.0632 ms |   0.84 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 | 163.036 ms |  0.8030 ms | 0.5806 ms |   2.78 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  76.749 ms |  0.1287 ms | 0.0931 ms |   1.31 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |     100 | 116.451 ms |  3.2372 ms | 2.3407 ms |   1.99 |     0.05 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **98.380 ms** |  **0.3233 ms** | **0.2338 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  97.916 ms |  1.1627 ms | 0.8407 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 204.448 ms |  7.5797 ms | 5.4806 ms |   2.08 |     0.05 |
|                         Span_ | PartialRandomShuffle |   10000 |  88.323 ms |  1.2038 ms | 0.8704 ms |   0.90 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  87.865 ms |  1.7458 ms | 1.2624 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 324.856 ms | 10.7010 ms | 7.7375 ms |   3.30 |     0.08 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 | 150.776 ms |  1.2990 ms | 0.9393 ms |   1.53 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 227.982 ms |  2.7340 ms | 1.9769 ms |   2.32 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** | **138.420 ms** |  **2.5696 ms** | **1.8580 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 | 140.391 ms |  3.6966 ms | 2.6729 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 310.598 ms |  1.4131 ms | 1.0218 ms |   2.24 |     0.03 |
|                         Span_ | PartialRandomShuffle | 1000000 | 130.716 ms |  1.0449 ms | 0.7555 ms |   0.94 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 | 129.727 ms |  1.5473 ms | 1.1188 ms |   0.94 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 499.043 ms |  5.9195 ms | 4.2802 ms |   3.61 |     0.06 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 227.072 ms |  4.3842 ms | 3.1701 ms |   1.64 |     0.03 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 342.455 ms |  4.0882 ms | 2.9561 ms |   2.47 |     0.04 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **41.881 ms** |  **0.0690 ms** | **0.0499 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  41.046 ms |  0.3668 ms | 0.2652 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 | 139.717 ms |  4.0614 ms | 2.9367 ms |   3.34 |     0.07 |
|                         Span_ |               Random |       2 |  17.628 ms |  0.2608 ms | 0.1886 ms |   0.42 |     0.00 |
|             Span_NullComparer |               Random |       2 |  33.713 ms |  0.4853 ms | 0.3509 ms |   0.80 |     0.01 |
|  Span_ClassComparableComparer |               Random |       2 | 126.757 ms |  0.5764 ms | 0.4168 ms |   3.03 |     0.01 |
| Span_StructComparableComparer |               Random |       2 |  69.906 ms |  1.3063 ms | 0.9445 ms |   1.67 |     0.02 |
|               Span_Comparison |               Random |       2 |  84.251 ms |  1.9951 ms | 1.4426 ms |   2.01 |     0.03 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **37.049 ms** |  **0.4786 ms** | **0.3461 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  36.837 ms |  0.4017 ms | 0.2904 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 | 108.913 ms |  2.3491 ms | 1.6986 ms |   2.94 |     0.05 |
|                         Span_ |               Random |       3 |  18.105 ms |  0.3253 ms | 0.2352 ms |   0.49 |     0.01 |
|             Span_NullComparer |               Random |       3 |  28.801 ms |  0.0851 ms | 0.0616 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 | 100.472 ms |  1.0440 ms | 0.7548 ms |   2.71 |     0.03 |
| Span_StructComparableComparer |               Random |       3 |  56.849 ms |  0.5829 ms | 0.4214 ms |   1.53 |     0.02 |
|               Span_Comparison |               Random |       3 |  70.396 ms |  0.3262 ms | 0.2359 ms |   1.90 |     0.02 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **38.237 ms** |  **0.2563 ms** | **0.1853 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  37.991 ms |  0.0995 ms | 0.0720 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |               Random |      10 |  76.332 ms |  0.8018 ms | 0.5798 ms |   2.00 |     0.02 |
|                         Span_ |               Random |      10 |  27.739 ms |  0.8813 ms | 0.6373 ms |   0.73 |     0.02 |
|             Span_NullComparer |               Random |      10 |  30.537 ms |  0.0777 ms | 0.0561 ms |   0.80 |     0.00 |
|  Span_ClassComparableComparer |               Random |      10 |  95.774 ms |  0.6804 ms | 0.4920 ms |   2.50 |     0.02 |
| Span_StructComparableComparer |               Random |      10 |  48.380 ms |  0.2423 ms | 0.1752 ms |   1.27 |     0.01 |
|               Span_Comparison |               Random |      10 |  69.527 ms |  0.1429 ms | 0.1033 ms |   1.82 |     0.01 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **75.230 ms** |  **0.7594 ms** | **0.5491 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  75.179 ms |  0.3302 ms | 0.2387 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |     100 | 128.613 ms |  0.6618 ms | 0.4785 ms |   1.71 |     0.01 |
|                         Span_ |               Random |     100 |  65.249 ms |  0.7558 ms | 0.5465 ms |   0.87 |     0.01 |
|             Span_NullComparer |               Random |     100 |  65.753 ms |  0.0822 ms | 0.0595 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 | 188.485 ms |  3.1558 ms | 2.2818 ms |   2.51 |     0.03 |
| Span_StructComparableComparer |               Random |     100 |  97.639 ms |  2.0344 ms | 1.4710 ms |   1.30 |     0.02 |
|               Span_Comparison |               Random |     100 | 138.761 ms |  2.8487 ms | 2.0598 ms |   1.84 |     0.03 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** |   **10000** | **143.103 ms** |  **2.4754 ms** | **1.7899 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 | 143.429 ms |  1.5714 ms | 1.1362 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   10000 | 264.627 ms |  3.7260 ms | 2.6942 ms |   1.85 |     0.03 |
|                         Span_ |               Random |   10000 | 134.282 ms |  0.5511 ms | 0.3985 ms |   0.94 |     0.01 |
|             Span_NullComparer |               Random |   10000 | 133.822 ms |  0.9958 ms | 0.7200 ms |   0.94 |     0.01 |
|  Span_ClassComparableComparer |               Random |   10000 | 393.222 ms |  0.8443 ms | 0.6105 ms |   2.75 |     0.03 |
| Span_StructComparableComparer |               Random |   10000 | 209.839 ms |  2.4602 ms | 1.7789 ms |   1.47 |     0.02 |
|               Span_Comparison |               Random |   10000 | 286.813 ms |  5.6422 ms | 4.0796 ms |   2.00 |     0.04 |
|                               |                      |         |            |            |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **209.487 ms** |  **2.3331 ms** | **1.6870 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 209.127 ms |  2.7622 ms | 1.9972 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random | 1000000 | 409.679 ms |  5.6823 ms | 4.1086 ms |   1.96 |     0.02 |
|                         Span_ |               Random | 1000000 | 201.016 ms |  0.9404 ms | 0.6800 ms |   0.96 |     0.01 |
|             Span_NullComparer |               Random | 1000000 | 199.915 ms |  2.3786 ms | 1.7199 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer |               Random | 1000000 | 601.757 ms |  4.3195 ms | 3.1233 ms |   2.87 |     0.03 |
| Span_StructComparableComparer |               Random | 1000000 | 318.907 ms |  1.8014 ms | 1.3025 ms |   1.52 |     0.01 |
|               Span_Comparison |               Random | 1000000 | 442.582 ms |  4.1488 ms | 2.9999 ms |   2.11 |     0.02 |
