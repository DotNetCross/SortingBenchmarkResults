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
|                        Method |               Filler | Length |      Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |----------:|----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |  **3.080 ms** | **0.0430 ms** | **0.0311 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |  2.996 ms | 0.0982 ms | 0.0710 ms |   0.97 |     0.02 |
| Array_ClassComparableComparer |             Constant |      2 |  3.631 ms | 0.0452 ms | 0.0327 ms |   1.18 |     0.02 |
|                         Span_ |             Constant |      2 |  5.010 ms | 0.0325 ms | 0.0235 ms |   1.63 |     0.02 |
|             Span_NullComparer |             Constant |      2 |  5.132 ms | 0.0514 ms | 0.0371 ms |   1.67 |     0.02 |
|  Span_ClassComparableComparer |             Constant |      2 |  9.372 ms | 0.0539 ms | 0.0390 ms |   3.04 |     0.03 |
| Span_StructComparableComparer |             Constant |      2 |  6.429 ms | 0.0689 ms | 0.0498 ms |   2.09 |     0.03 |
|               Span_Comparison |             Constant |      2 |  6.575 ms | 0.2192 ms | 0.1585 ms |   2.14 |     0.05 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |             **Constant** |      **3** |  **2.663 ms** | **0.0551 ms** | **0.0398 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |  2.625 ms | 0.0538 ms | 0.0389 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |      3 |  3.191 ms | 0.0196 ms | 0.0142 ms |   1.20 |     0.02 |
|                         Span_ |             Constant |      3 |  3.546 ms | 0.0396 ms | 0.0286 ms |   1.33 |     0.02 |
|             Span_NullComparer |             Constant |      3 |  3.662 ms | 0.0638 ms | 0.0462 ms |   1.38 |     0.03 |
|  Span_ClassComparableComparer |             Constant |      3 |  7.104 ms | 0.2275 ms | 0.1645 ms |   2.67 |     0.07 |
| Span_StructComparableComparer |             Constant |      3 |  5.190 ms | 0.0312 ms | 0.0226 ms |   1.95 |     0.03 |
|               Span_Comparison |             Constant |      3 |  5.361 ms | 0.0867 ms | 0.0627 ms |   2.01 |     0.04 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |             **Constant** |     **10** |  **1.702 ms** | **0.0116 ms** | **0.0084 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |  1.672 ms | 0.0424 ms | 0.0306 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |     10 |  1.974 ms | 0.0307 ms | 0.0222 ms |   1.16 |     0.01 |
|                         Span_ |             Constant |     10 |  1.450 ms | 0.0405 ms | 0.0293 ms |   0.85 |     0.02 |
|             Span_NullComparer |             Constant |     10 |  1.467 ms | 0.0247 ms | 0.0179 ms |   0.86 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     10 |  2.829 ms | 0.0685 ms | 0.0495 ms |   1.66 |     0.03 |
| Span_StructComparableComparer |             Constant |     10 |  2.338 ms | 0.0702 ms | 0.0508 ms |   1.37 |     0.03 |
|               Span_Comparison |             Constant |     10 |  2.481 ms | 0.1518 ms | 0.1097 ms |   1.46 |     0.06 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |             **Constant** |    **100** |  **4.083 ms** | **0.1353 ms** | **0.0978 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |  4.089 ms | 0.1620 ms | 0.1171 ms |   1.00 |     0.04 |
| Array_ClassComparableComparer |             Constant |    100 |  5.064 ms | 0.1377 ms | 0.0995 ms |   1.24 |     0.04 |
|                         Span_ |             Constant |    100 |  5.577 ms | 0.2324 ms | 0.1680 ms |   1.37 |     0.05 |
|             Span_NullComparer |             Constant |    100 |  5.663 ms | 0.1982 ms | 0.1433 ms |   1.39 |     0.05 |
|  Span_ClassComparableComparer |             Constant |    100 |  8.109 ms | 0.2625 ms | 0.1898 ms |   1.99 |     0.06 |
| Span_StructComparableComparer |             Constant |    100 |  8.074 ms | 0.2863 ms | 0.2070 ms |   1.98 |     0.07 |
|               Span_Comparison |             Constant |    100 |  9.021 ms | 0.2908 ms | 0.2102 ms |   2.21 |     0.07 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |             **Constant** |   **1000** |  **6.627 ms** | **0.2517 ms** | **0.1820 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |  6.650 ms | 0.2646 ms | 0.1913 ms |   1.00 |     0.04 |
| Array_ClassComparableComparer |             Constant |   1000 |  8.075 ms | 0.2987 ms | 0.2160 ms |   1.22 |     0.04 |
|                         Span_ |             Constant |   1000 | 10.230 ms | 0.3482 ms | 0.2517 ms |   1.54 |     0.05 |
|             Span_NullComparer |             Constant |   1000 | 10.285 ms | 0.3102 ms | 0.2243 ms |   1.55 |     0.05 |
|  Span_ClassComparableComparer |             Constant |   1000 | 14.587 ms | 0.2684 ms | 0.1940 ms |   2.20 |     0.06 |
| Span_StructComparableComparer |             Constant |   1000 | 14.602 ms | 0.6202 ms | 0.4484 ms |   2.21 |     0.09 |
|               Span_Comparison |             Constant |   1000 | 15.778 ms | 0.4023 ms | 0.2909 ms |   2.38 |     0.07 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |             **Constant** |  **10000** | **10.149 ms** | **0.3032 ms** | **0.2192 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 | 10.165 ms | 0.2860 ms | 0.2068 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |             Constant |  10000 | 12.752 ms | 0.4711 ms | 0.3406 ms |   1.26 |     0.04 |
|                         Span_ |             Constant |  10000 | 16.376 ms | 0.3071 ms | 0.2220 ms |   1.61 |     0.04 |
|             Span_NullComparer |             Constant |  10000 | 16.490 ms | 0.1405 ms | 0.1016 ms |   1.63 |     0.03 |
|  Span_ClassComparableComparer |             Constant |  10000 | 23.084 ms | 0.3307 ms | 0.2391 ms |   2.28 |     0.05 |
| Span_StructComparableComparer |             Constant |  10000 | 22.948 ms | 0.3142 ms | 0.2272 ms |   2.26 |     0.05 |
|               Span_Comparison |             Constant |  10000 | 25.009 ms | 0.4931 ms | 0.3566 ms |   2.47 |     0.06 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **3.479 ms** | **0.0825 ms** | **0.0597 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  3.381 ms | 0.1336 ms | 0.0966 ms |   0.97 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |      2 |  3.811 ms | 0.2019 ms | 0.1460 ms |   1.10 |     0.04 |
|                         Span_ |         Decrementing |      2 |  4.916 ms | 0.2168 ms | 0.1568 ms |   1.41 |     0.05 |
|             Span_NullComparer |         Decrementing |      2 |  5.142 ms | 0.1975 ms | 0.1428 ms |   1.48 |     0.05 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  8.994 ms | 0.2793 ms | 0.2019 ms |   2.59 |     0.07 |
| Span_StructComparableComparer |         Decrementing |      2 |  6.332 ms | 0.2573 ms | 0.1860 ms |   1.82 |     0.06 |
|               Span_Comparison |         Decrementing |      2 |  6.595 ms | 0.4443 ms | 0.3212 ms |   1.90 |     0.09 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **3.407 ms** | **0.1109 ms** | **0.0802 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  3.292 ms | 0.1151 ms | 0.0832 ms |   0.97 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |      3 |  3.657 ms | 0.1401 ms | 0.1013 ms |   1.07 |     0.04 |
|                         Span_ |         Decrementing |      3 |  3.855 ms | 0.1508 ms | 0.1090 ms |   1.13 |     0.04 |
|             Span_NullComparer |         Decrementing |      3 |  4.069 ms | 0.1584 ms | 0.1146 ms |   1.19 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  7.166 ms | 0.3086 ms | 0.2232 ms |   2.10 |     0.08 |
| Span_StructComparableComparer |         Decrementing |      3 |  5.541 ms | 0.2568 ms | 0.1857 ms |   1.63 |     0.06 |
|               Span_Comparison |         Decrementing |      3 |  5.691 ms | 0.1857 ms | 0.1343 ms |   1.67 |     0.05 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **5.452 ms** | **0.2949 ms** | **0.2133 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  5.383 ms | 0.2957 ms | 0.2138 ms |   0.99 |     0.05 |
| Array_ClassComparableComparer |         Decrementing |     10 |  6.904 ms | 0.3560 ms | 0.2574 ms |   1.27 |     0.06 |
|                         Span_ |         Decrementing |     10 |  5.160 ms | 0.1731 ms | 0.1251 ms |   0.95 |     0.04 |
|             Span_NullComparer |         Decrementing |     10 |  5.378 ms | 0.3173 ms | 0.2294 ms |   0.99 |     0.05 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  8.630 ms | 0.3498 ms | 0.2529 ms |   1.58 |     0.07 |
| Span_StructComparableComparer |         Decrementing |     10 |  8.581 ms | 0.2336 ms | 0.1689 ms |   1.58 |     0.06 |
|               Span_Comparison |         Decrementing |     10 |  9.005 ms | 0.4219 ms | 0.3051 ms |   1.65 |     0.08 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **5.053 ms** | **0.2568 ms** | **0.1857 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  5.196 ms | 0.3727 ms | 0.2695 ms |   1.03 |     0.06 |
| Array_ClassComparableComparer |         Decrementing |    100 |  6.570 ms | 0.3731 ms | 0.2698 ms |   1.30 |     0.07 |
|                         Span_ |         Decrementing |    100 |  7.380 ms | 0.3991 ms | 0.2886 ms |   1.46 |     0.07 |
|             Span_NullComparer |         Decrementing |    100 |  7.451 ms | 0.3805 ms | 0.2751 ms |   1.48 |     0.07 |
|  Span_ClassComparableComparer |         Decrementing |    100 | 10.897 ms | 0.2521 ms | 0.1823 ms |   2.16 |     0.08 |
| Span_StructComparableComparer |         Decrementing |    100 | 11.301 ms | 0.6231 ms | 0.4505 ms |   2.24 |     0.11 |
|               Span_Comparison |         Decrementing |    100 | 11.968 ms | 0.1628 ms | 0.1177 ms |   2.37 |     0.08 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **1000** |  **8.103 ms** | **0.2383 ms** | **0.1723 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 |  8.009 ms | 0.2977 ms | 0.2153 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |   1000 | 10.808 ms | 0.6892 ms | 0.4983 ms |   1.33 |     0.06 |
|                         Span_ |         Decrementing |   1000 | 13.924 ms | 0.5258 ms | 0.3802 ms |   1.72 |     0.06 |
|             Span_NullComparer |         Decrementing |   1000 | 13.961 ms | 0.2354 ms | 0.1702 ms |   1.72 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |   1000 | 20.852 ms | 0.3365 ms | 0.2433 ms |   2.57 |     0.06 |
| Span_StructComparableComparer |         Decrementing |   1000 | 20.921 ms | 0.3358 ms | 0.2428 ms |   2.58 |     0.06 |
|               Span_Comparison |         Decrementing |   1000 | 22.688 ms | 0.4134 ms | 0.2989 ms |   2.80 |     0.07 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Decrementing** |  **10000** | **11.761 ms** | **0.4889 ms** | **0.3535 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 | 11.770 ms | 0.3563 ms | 0.2576 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 16.250 ms | 0.3221 ms | 0.2329 ms |   1.38 |     0.04 |
|                         Span_ |         Decrementing |  10000 | 21.814 ms | 0.7794 ms | 0.5635 ms |   1.86 |     0.07 |
|             Span_NullComparer |         Decrementing |  10000 | 21.778 ms | 0.3173 ms | 0.2295 ms |   1.85 |     0.05 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 32.563 ms | 0.2520 ms | 0.1822 ms |   2.77 |     0.08 |
| Span_StructComparableComparer |         Decrementing |  10000 | 32.549 ms | 0.3059 ms | 0.2212 ms |   2.77 |     0.08 |
|               Span_Comparison |         Decrementing |  10000 | 35.741 ms | 1.1397 ms | 0.8241 ms |   3.04 |     0.11 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **2.974 ms** | **0.1110 ms** | **0.0803 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  2.947 ms | 0.1356 ms | 0.0981 ms |   0.99 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |      2 |  3.450 ms | 0.0925 ms | 0.0669 ms |   1.16 |     0.04 |
|                         Span_ |         Incrementing |      2 |  4.615 ms | 0.2025 ms | 0.1464 ms |   1.55 |     0.06 |
|             Span_NullComparer |         Incrementing |      2 |  4.785 ms | 0.2092 ms | 0.1513 ms |   1.61 |     0.06 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  9.003 ms | 0.2143 ms | 0.1550 ms |   3.03 |     0.09 |
| Span_StructComparableComparer |         Incrementing |      2 |  6.056 ms | 0.2581 ms | 0.1867 ms |   2.04 |     0.08 |
|               Span_Comparison |         Incrementing |      2 |  6.215 ms | 0.3670 ms | 0.2654 ms |   2.09 |     0.10 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **2.526 ms** | **0.0748 ms** | **0.0541 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  2.501 ms | 0.1259 ms | 0.0911 ms |   0.99 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |      3 |  3.045 ms | 0.0853 ms | 0.0617 ms |   1.21 |     0.03 |
|                         Span_ |         Incrementing |      3 |  3.269 ms | 0.1397 ms | 0.1010 ms |   1.29 |     0.05 |
|             Span_NullComparer |         Incrementing |      3 |  3.474 ms | 0.1244 ms | 0.0900 ms |   1.38 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  6.637 ms | 0.2441 ms | 0.1765 ms |   2.63 |     0.09 |
| Span_StructComparableComparer |         Incrementing |      3 |  4.848 ms | 0.2442 ms | 0.1766 ms |   1.92 |     0.08 |
|               Span_Comparison |         Incrementing |      3 |  4.960 ms | 0.2460 ms | 0.1779 ms |   1.96 |     0.08 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **10** |  **1.643 ms** | **0.0421 ms** | **0.0304 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |  1.644 ms | 0.0468 ms | 0.0338 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |     10 |  1.927 ms | 0.0719 ms | 0.0520 ms |   1.17 |     0.04 |
|                         Span_ |         Incrementing |     10 |  1.388 ms | 0.0614 ms | 0.0444 ms |   0.84 |     0.03 |
|             Span_NullComparer |         Incrementing |     10 |  1.448 ms | 0.0766 ms | 0.0554 ms |   0.88 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  2.711 ms | 0.0897 ms | 0.0649 ms |   1.65 |     0.05 |
| Span_StructComparableComparer |         Incrementing |     10 |  2.190 ms | 0.0682 ms | 0.0493 ms |   1.33 |     0.04 |
|               Span_Comparison |         Incrementing |     10 |  2.415 ms | 0.1505 ms | 0.1088 ms |   1.47 |     0.07 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **3.164 ms** | **0.1603 ms** | **0.1159 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  3.151 ms | 0.1243 ms | 0.0899 ms |   1.00 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |    100 |  4.178 ms | 0.2429 ms | 0.1757 ms |   1.32 |     0.07 |
|                         Span_ |         Incrementing |    100 |  4.742 ms | 0.3589 ms | 0.2595 ms |   1.50 |     0.09 |
|             Span_NullComparer |         Incrementing |    100 |  4.801 ms | 0.1629 ms | 0.1178 ms |   1.52 |     0.06 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  7.215 ms | 0.3548 ms | 0.2565 ms |   2.28 |     0.11 |
| Span_StructComparableComparer |         Incrementing |    100 |  7.189 ms | 0.2689 ms | 0.1944 ms |   2.27 |     0.10 |
|               Span_Comparison |         Incrementing |    100 |  7.713 ms | 0.1793 ms | 0.1296 ms |   2.44 |     0.09 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **1000** |  **4.732 ms** | **0.1657 ms** | **0.1198 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 |  4.811 ms | 0.3758 ms | 0.2717 ms |   1.02 |     0.06 |
| Array_ClassComparableComparer |         Incrementing |   1000 |  6.464 ms | 0.2920 ms | 0.2111 ms |   1.37 |     0.05 |
|                         Span_ |         Incrementing |   1000 |  8.209 ms | 0.1798 ms | 0.1300 ms |   1.74 |     0.05 |
|             Span_NullComparer |         Incrementing |   1000 |  8.208 ms | 0.2735 ms | 0.1978 ms |   1.74 |     0.06 |
|  Span_ClassComparableComparer |         Incrementing |   1000 | 12.291 ms | 0.2963 ms | 0.2142 ms |   2.60 |     0.08 |
| Span_StructComparableComparer |         Incrementing |   1000 | 12.513 ms | 0.4416 ms | 0.3193 ms |   2.65 |     0.09 |
|               Span_Comparison |         Incrementing |   1000 | 13.347 ms | 0.2143 ms | 0.1550 ms |   2.82 |     0.07 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **7.023 ms** | **0.2212 ms** | **0.1599 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  6.964 ms | 0.3103 ms | 0.2243 ms |   0.99 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |  10000 | 10.086 ms | 0.3324 ms | 0.2403 ms |   1.44 |     0.05 |
|                         Span_ |         Incrementing |  10000 | 13.090 ms | 0.2615 ms | 0.1891 ms |   1.86 |     0.05 |
|             Span_NullComparer |         Incrementing |  10000 | 13.111 ms | 0.2738 ms | 0.1980 ms |   1.87 |     0.05 |
|  Span_ClassComparableComparer |         Incrementing |  10000 | 19.657 ms | 0.2847 ms | 0.2058 ms |   2.80 |     0.07 |
| Span_StructComparableComparer |         Incrementing |  10000 | 19.831 ms | 0.3477 ms | 0.2514 ms |   2.83 |     0.07 |
|               Span_Comparison |         Incrementing |  10000 | 21.475 ms | 0.4095 ms | 0.2961 ms |   3.06 |     0.08 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **2.973 ms** | **0.0867 ms** | **0.0627 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  2.900 ms | 0.1742 ms | 0.1260 ms |   0.98 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |  3.468 ms | 0.1424 ms | 0.1030 ms |   1.17 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |      2 |  4.619 ms | 0.1957 ms | 0.1415 ms |   1.55 |     0.06 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  4.838 ms | 0.1924 ms | 0.1391 ms |   1.63 |     0.06 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  8.836 ms | 0.2372 ms | 0.1715 ms |   2.97 |     0.08 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  5.971 ms | 0.1419 ms | 0.1026 ms |   2.01 |     0.05 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  6.241 ms | 0.3718 ms | 0.2688 ms |   2.10 |     0.10 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **2.572 ms** | **0.0872 ms** | **0.0631 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  2.428 ms | 0.0981 ms | 0.0709 ms |   0.94 |     0.03 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |  3.041 ms | 0.0963 ms | 0.0696 ms |   1.18 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |      3 |  3.323 ms | 0.1449 ms | 0.1047 ms |   1.29 |     0.05 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  3.504 ms | 0.1565 ms | 0.1132 ms |   1.36 |     0.05 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  6.570 ms | 0.3047 ms | 0.2203 ms |   2.56 |     0.10 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  4.909 ms | 0.2730 ms | 0.1974 ms |   1.91 |     0.09 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  5.033 ms | 0.3410 ms | 0.2466 ms |   1.96 |     0.10 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **2.716 ms** | **0.0907 ms** | **0.0656 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  2.658 ms | 0.1564 ms | 0.1131 ms |   0.98 |     0.05 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  3.543 ms | 0.1308 ms | 0.0946 ms |   1.31 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |     10 |  2.626 ms | 0.1469 ms | 0.1062 ms |   0.97 |     0.04 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  2.687 ms | 0.1003 ms | 0.0725 ms |   0.99 |     0.03 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  4.837 ms | 0.2822 ms | 0.2041 ms |   1.78 |     0.08 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  4.551 ms | 0.2153 ms | 0.1557 ms |   1.68 |     0.07 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  4.819 ms | 0.2066 ms | 0.1494 ms |   1.78 |     0.07 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **6.267 ms** | **0.2739 ms** | **0.1981 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  6.187 ms | 0.2986 ms | 0.2159 ms |   0.99 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  8.416 ms | 0.2968 ms | 0.2146 ms |   1.34 |     0.05 |
|                         Span_ |  MedianOfThreeKiller |    100 |  9.708 ms | 0.6911 ms | 0.4997 ms |   1.55 |     0.09 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  9.606 ms | 0.2486 ms | 0.1798 ms |   1.53 |     0.05 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 | 14.393 ms | 0.3130 ms | 0.2263 ms |   2.30 |     0.08 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 | 14.363 ms | 0.2904 ms | 0.2100 ms |   2.29 |     0.08 |
|               Span_Comparison |  MedianOfThreeKiller |    100 | 15.787 ms | 0.4073 ms | 0.2945 ms |   2.52 |     0.09 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** | **10.179 ms** | **0.1848 ms** | **0.1336 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 | 10.104 ms | 0.1775 ms | 0.1283 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 13.518 ms | 0.5622 ms | 0.4065 ms |   1.33 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 17.467 ms | 0.2826 ms | 0.2043 ms |   1.72 |     0.03 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 17.589 ms | 0.2095 ms | 0.1515 ms |   1.73 |     0.03 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 26.264 ms | 0.9180 ms | 0.6638 ms |   2.58 |     0.07 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 25.936 ms | 0.6323 ms | 0.4572 ms |   2.55 |     0.05 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 | 28.491 ms | 0.8500 ms | 0.6146 ms |   2.80 |     0.07 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **15.768 ms** | **0.2211 ms** | **0.1599 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 15.858 ms | 0.4704 ms | 0.3401 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 21.525 ms | 0.6491 ms | 0.4693 ms |   1.37 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 28.570 ms | 0.5429 ms | 0.3925 ms |   1.81 |     0.03 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 29.073 ms | 0.7575 ms | 0.5477 ms |   1.84 |     0.04 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 42.823 ms | 0.5990 ms | 0.4331 ms |   2.72 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 42.712 ms | 1.3827 ms | 0.9998 ms |   2.71 |     0.07 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 46.682 ms | 0.8922 ms | 0.6451 ms |   2.96 |     0.05 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **3.421 ms** | **0.2869 ms** | **0.2075 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  3.234 ms | 0.2169 ms | 0.1569 ms |   0.95 |     0.07 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |  3.865 ms | 0.2196 ms | 0.1588 ms |   1.13 |     0.08 |
|                         Span_ | PartialRandomShuffle |      2 |  4.951 ms | 0.3416 ms | 0.2470 ms |   1.45 |     0.11 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  5.252 ms | 0.5337 ms | 0.3859 ms |   1.54 |     0.14 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  9.145 ms | 0.4109 ms | 0.2971 ms |   2.68 |     0.17 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  6.547 ms | 0.3255 ms | 0.2353 ms |   1.92 |     0.13 |
|               Span_Comparison | PartialRandomShuffle |      2 |  7.066 ms | 0.4683 ms | 0.3386 ms |   2.07 |     0.15 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **3.092 ms** | **0.3052 ms** | **0.2207 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  3.068 ms | 0.2123 ms | 0.1535 ms |   1.00 |     0.08 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  3.568 ms | 0.3567 ms | 0.2579 ms |   1.16 |     0.11 |
|                         Span_ | PartialRandomShuffle |      3 |  3.977 ms | 0.4833 ms | 0.3495 ms |   1.29 |     0.14 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  4.000 ms | 0.3032 ms | 0.2192 ms |   1.30 |     0.11 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  7.172 ms | 0.3447 ms | 0.2492 ms |   2.33 |     0.17 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  5.440 ms | 0.5224 ms | 0.3777 ms |   1.77 |     0.16 |
|               Span_Comparison | PartialRandomShuffle |      3 |  5.637 ms | 0.5225 ms | 0.3778 ms |   1.83 |     0.17 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **2.582 ms** | **0.1374 ms** | **0.0994 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  2.558 ms | 0.2088 ms | 0.1510 ms |   0.99 |     0.07 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  3.089 ms | 0.1947 ms | 0.1408 ms |   1.20 |     0.07 |
|                         Span_ | PartialRandomShuffle |     10 |  2.458 ms | 0.1676 ms | 0.1212 ms |   0.95 |     0.06 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  2.523 ms | 0.1319 ms | 0.0954 ms |   0.98 |     0.05 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  4.132 ms | 0.3208 ms | 0.2320 ms |   1.60 |     0.10 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  3.889 ms | 0.3764 ms | 0.2722 ms |   1.51 |     0.11 |
|               Span_Comparison | PartialRandomShuffle |     10 |  3.995 ms | 0.2636 ms | 0.1906 ms |   1.55 |     0.09 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **7.006 ms** | **0.2861 ms** | **0.2069 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  6.892 ms | 0.3735 ms | 0.2701 ms |   0.98 |     0.05 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  8.771 ms | 0.4457 ms | 0.3223 ms |   1.25 |     0.06 |
|                         Span_ | PartialRandomShuffle |    100 |  9.115 ms | 0.6514 ms | 0.4710 ms |   1.30 |     0.07 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  8.865 ms | 0.2347 ms | 0.1697 ms |   1.27 |     0.04 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 | 12.985 ms | 0.3019 ms | 0.2183 ms |   1.85 |     0.06 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 | 13.110 ms | 0.3157 ms | 0.2283 ms |   1.87 |     0.06 |
|               Span_Comparison | PartialRandomShuffle |    100 | 14.329 ms | 1.0100 ms | 0.7303 ms |   2.05 |     0.11 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** | **10.373 ms** | **0.2811 ms** | **0.2032 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 | 10.379 ms | 0.2943 ms | 0.2128 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 | 12.563 ms | 0.3501 ms | 0.2531 ms |   1.21 |     0.03 |
|                         Span_ | PartialRandomShuffle |   1000 | 14.780 ms | 0.6221 ms | 0.4498 ms |   1.43 |     0.05 |
|             Span_NullComparer | PartialRandomShuffle |   1000 | 14.720 ms | 0.2591 ms | 0.1874 ms |   1.42 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 | 21.138 ms | 0.9317 ms | 0.6737 ms |   2.04 |     0.07 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 | 20.856 ms | 0.1956 ms | 0.1414 ms |   2.01 |     0.04 |
|               Span_Comparison | PartialRandomShuffle |   1000 | 22.490 ms | 0.5615 ms | 0.4060 ms |   2.17 |     0.06 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** | **13.436 ms** | **0.7436 ms** | **0.5376 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 | 13.159 ms | 0.1796 ms | 0.1299 ms |   0.98 |     0.04 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 16.514 ms | 0.3375 ms | 0.2441 ms |   1.23 |     0.05 |
|                         Span_ | PartialRandomShuffle |  10000 | 20.328 ms | 0.8296 ms | 0.5998 ms |   1.52 |     0.07 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 20.464 ms | 0.5485 ms | 0.3966 ms |   1.53 |     0.06 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 29.001 ms | 1.3295 ms | 0.9613 ms |   2.16 |     0.10 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 28.579 ms | 0.4950 ms | 0.3579 ms |   2.13 |     0.08 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 30.924 ms | 1.1074 ms | 0.8007 ms |   2.30 |     0.10 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |               **Random** |      **2** |  **3.548 ms** | **0.1415 ms** | **0.1023 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  3.306 ms | 0.1674 ms | 0.1211 ms |   0.93 |     0.04 |
| Array_ClassComparableComparer |               Random |      2 |  3.930 ms | 0.2466 ms | 0.1783 ms |   1.11 |     0.06 |
|                         Span_ |               Random |      2 |  5.020 ms | 0.1641 ms | 0.1187 ms |   1.42 |     0.05 |
|             Span_NullComparer |               Random |      2 |  5.235 ms | 0.1584 ms | 0.1145 ms |   1.48 |     0.05 |
|  Span_ClassComparableComparer |               Random |      2 |  9.403 ms | 0.4148 ms | 0.2999 ms |   2.65 |     0.11 |
| Span_StructComparableComparer |               Random |      2 |  6.444 ms | 0.3662 ms | 0.2648 ms |   1.82 |     0.09 |
|               Span_Comparison |               Random |      2 |  6.583 ms | 0.1477 ms | 0.1068 ms |   1.86 |     0.06 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |               **Random** |      **3** |  **3.452 ms** | **0.1763 ms** | **0.1274 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  3.266 ms | 0.1285 ms | 0.0929 ms |   0.95 |     0.04 |
| Array_ClassComparableComparer |               Random |      3 |  3.739 ms | 0.1467 ms | 0.1061 ms |   1.08 |     0.05 |
|                         Span_ |               Random |      3 |  4.069 ms | 0.2586 ms | 0.1870 ms |   1.18 |     0.07 |
|             Span_NullComparer |               Random |      3 |  4.170 ms | 0.1963 ms | 0.1419 ms |   1.21 |     0.06 |
|  Span_ClassComparableComparer |               Random |      3 |  7.199 ms | 0.1720 ms | 0.1244 ms |   2.09 |     0.08 |
| Span_StructComparableComparer |               Random |      3 |  5.521 ms | 0.2564 ms | 0.1854 ms |   1.60 |     0.08 |
|               Span_Comparison |               Random |      3 |  5.685 ms | 0.2633 ms | 0.1904 ms |   1.65 |     0.08 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |               **Random** |     **10** |  **4.129 ms** | **0.1382 ms** | **0.0999 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  4.189 ms | 0.3151 ms | 0.2278 ms |   1.02 |     0.06 |
| Array_ClassComparableComparer |               Random |     10 |  4.938 ms | 0.2380 ms | 0.1721 ms |   1.20 |     0.05 |
|                         Span_ |               Random |     10 |  3.992 ms | 0.1246 ms | 0.0901 ms |   0.97 |     0.03 |
|             Span_NullComparer |               Random |     10 |  4.114 ms | 0.2316 ms | 0.1674 ms |   1.00 |     0.05 |
|  Span_ClassComparableComparer |               Random |     10 |  6.315 ms | 0.2303 ms | 0.1665 ms |   1.53 |     0.05 |
| Span_StructComparableComparer |               Random |     10 |  6.121 ms | 0.1275 ms | 0.0922 ms |   1.48 |     0.04 |
|               Span_Comparison |               Random |     10 |  6.645 ms | 0.3180 ms | 0.2299 ms |   1.61 |     0.07 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |               **Random** |    **100** |  **7.921 ms** | **0.3077 ms** | **0.2225 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  7.974 ms | 0.3681 ms | 0.2661 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |               Random |    100 |  9.715 ms | 0.3559 ms | 0.2573 ms |   1.23 |     0.05 |
|                         Span_ |               Random |    100 |  9.891 ms | 0.2820 ms | 0.2039 ms |   1.25 |     0.04 |
|             Span_NullComparer |               Random |    100 |  9.745 ms | 0.3325 ms | 0.2404 ms |   1.23 |     0.04 |
|  Span_ClassComparableComparer |               Random |    100 | 14.081 ms | 0.4054 ms | 0.2931 ms |   1.78 |     0.06 |
| Span_StructComparableComparer |               Random |    100 | 14.251 ms | 0.2439 ms | 0.1763 ms |   1.80 |     0.05 |
|               Span_Comparison |               Random |    100 | 15.529 ms | 0.8236 ms | 0.5955 ms |   1.96 |     0.09 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |               **Random** |   **1000** | **11.649 ms** | **0.3213 ms** | **0.2323 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 | 11.727 ms | 0.3218 ms | 0.2327 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |               Random |   1000 | 13.987 ms | 0.2293 ms | 0.1658 ms |   1.20 |     0.03 |
|                         Span_ |               Random |   1000 | 16.484 ms | 0.5380 ms | 0.3890 ms |   1.42 |     0.04 |
|             Span_NullComparer |               Random |   1000 | 16.148 ms | 0.2541 ms | 0.1837 ms |   1.39 |     0.03 |
|  Span_ClassComparableComparer |               Random |   1000 | 22.849 ms | 0.3521 ms | 0.2546 ms |   1.96 |     0.04 |
| Span_StructComparableComparer |               Random |   1000 | 22.939 ms | 0.3783 ms | 0.2736 ms |   1.97 |     0.04 |
|               Span_Comparison |               Random |   1000 | 24.264 ms | 0.3304 ms | 0.2389 ms |   2.08 |     0.04 |
|                               |                      |        |           |           |           |        |          |
|                        **Array_** |               **Random** |  **10000** | **15.918 ms** | **0.5150 ms** | **0.3724 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 15.672 ms | 0.2533 ms | 0.1831 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |               Random |  10000 | 19.068 ms | 0.2984 ms | 0.2158 ms |   1.20 |     0.03 |
|                         Span_ |               Random |  10000 | 22.970 ms | 0.5991 ms | 0.4332 ms |   1.44 |     0.04 |
|             Span_NullComparer |               Random |  10000 | 22.980 ms | 0.2781 ms | 0.2011 ms |   1.44 |     0.03 |
|  Span_ClassComparableComparer |               Random |  10000 | 32.039 ms | 0.7933 ms | 0.5736 ms |   2.01 |     0.06 |
| Span_StructComparableComparer |               Random |  10000 | 31.669 ms | 0.5671 ms | 0.4100 ms |   1.99 |     0.05 |
|               Span_Comparison |               Random |  10000 | 34.119 ms | 1.1588 ms | 0.8379 ms |   2.14 |     0.07 |
