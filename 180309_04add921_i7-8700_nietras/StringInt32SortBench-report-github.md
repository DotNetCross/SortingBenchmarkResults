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
|                        Method |               Filler | Length |         Mean |         Error |       StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |-------------:|--------------:|-------------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |   **1,910.7 us** |      **9.078 us** |     **6.564 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |   1,828.0 us |     13.286 us |     9.606 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |             Constant |      2 |   2,413.0 us |    143.154 us |   103.510 us |   1.26 |     0.05 |
|                         Span_ |             Constant |      2 |   2,907.5 us |     24.610 us |    17.795 us |   1.52 |     0.01 |
|             Span_NullComparer |             Constant |      2 |   2,940.6 us |      5.387 us |     3.895 us |   1.54 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      2 |   6,282.2 us |     32.425 us |    23.445 us |   3.29 |     0.02 |
| Span_StructComparableComparer |             Constant |      2 |   4,126.0 us |     19.604 us |    14.175 us |   2.16 |     0.01 |
|               Span_Comparison |             Constant |      2 |   4,340.5 us |     11.228 us |     8.118 us |   2.27 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |             **Constant** |      **3** |   **1,603.5 us** |     **14.212 us** |    **10.276 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |   1,588.7 us |     95.346 us |    68.942 us |   0.99 |     0.04 |
| Array_ClassComparableComparer |             Constant |      3 |   2,085.9 us |      9.138 us |     6.607 us |   1.30 |     0.01 |
|                         Span_ |             Constant |      3 |   2,035.7 us |     13.440 us |     9.718 us |   1.27 |     0.01 |
|             Span_NullComparer |             Constant |      3 |   2,081.7 us |      6.883 us |     4.977 us |   1.30 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      3 |   5,118.9 us |     22.975 us |    16.612 us |   3.19 |     0.02 |
| Span_StructComparableComparer |             Constant |      3 |   3,505.6 us |     50.938 us |    36.831 us |   2.19 |     0.03 |
|               Span_Comparison |             Constant |      3 |   3,502.8 us |     18.278 us |    13.216 us |   2.18 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |             **Constant** |     **10** |     **935.3 us** |      **6.805 us** |     **4.920 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |     930.9 us |     18.128 us |    13.108 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |     10 |   1,258.8 us |      7.377 us |     5.334 us |   1.35 |     0.01 |
|                         Span_ |             Constant |     10 |     812.2 us |      6.602 us |     4.774 us |   0.87 |     0.01 |
|             Span_NullComparer |             Constant |     10 |     832.7 us |     24.518 us |    17.728 us |   0.89 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     10 |   1,886.5 us |     28.540 us |    20.637 us |   2.02 |     0.02 |
| Span_StructComparableComparer |             Constant |     10 |   1,466.2 us |      7.608 us |     5.501 us |   1.57 |     0.01 |
|               Span_Comparison |             Constant |     10 |   1,575.0 us |      4.429 us |     3.203 us |   1.68 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |             **Constant** |    **100** |   **2,374.5 us** |      **8.660 us** |     **6.262 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |   2,375.4 us |      8.341 us |     6.031 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |    100 |   3,287.7 us |     12.646 us |     9.144 us |   1.38 |     0.01 |
|                         Span_ |             Constant |    100 |   3,460.3 us |     10.432 us |     7.543 us |   1.46 |     0.00 |
|             Span_NullComparer |             Constant |    100 |   3,459.4 us |      8.287 us |     5.992 us |   1.46 |     0.00 |
|  Span_ClassComparableComparer |             Constant |    100 |   5,271.8 us |     10.316 us |     7.459 us |   2.22 |     0.01 |
| Span_StructComparableComparer |             Constant |    100 |   5,312.6 us |     92.985 us |    67.234 us |   2.24 |     0.03 |
|               Span_Comparison |             Constant |    100 |   5,564.4 us |     83.509 us |    60.382 us |   2.34 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |             **Constant** |   **1000** |   **3,835.8 us** |     **19.165 us** |    **13.857 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |   3,814.5 us |     10.552 us |     7.630 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |             Constant |   1000 |   5,425.4 us |     11.298 us |     8.169 us |   1.41 |     0.01 |
|                         Span_ |             Constant |   1000 |   6,297.9 us |      9.855 us |     7.126 us |   1.64 |     0.01 |
|             Span_NullComparer |             Constant |   1000 |   6,321.7 us |     37.259 us |    26.940 us |   1.65 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   1000 |   9,196.9 us |     47.193 us |    34.124 us |   2.40 |     0.01 |
| Span_StructComparableComparer |             Constant |   1000 |   9,416.0 us |     42.635 us |    30.828 us |   2.45 |     0.01 |
|               Span_Comparison |             Constant |   1000 |   9,978.5 us |    125.582 us |    90.804 us |   2.60 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |             **Constant** |  **10000** |   **5,970.0 us** |     **36.576 us** |    **26.447 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |   5,950.8 us |     11.006 us |     7.958 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |  10000 |   8,357.8 us |     25.405 us |    18.369 us |   1.40 |     0.01 |
|                         Span_ |             Constant |  10000 |  10,173.3 us |     32.049 us |    23.173 us |   1.70 |     0.01 |
|             Span_NullComparer |             Constant |  10000 |  10,690.8 us |     27.082 us |    19.582 us |   1.79 |     0.01 |
|  Span_ClassComparableComparer |             Constant |  10000 |  14,928.3 us |     49.974 us |    36.134 us |   2.50 |     0.01 |
| Span_StructComparableComparer |             Constant |  10000 |  14,967.1 us |    112.951 us |    81.671 us |   2.51 |     0.02 |
|               Span_Comparison |             Constant |  10000 |  15,940.1 us |     59.600 us |    43.095 us |   2.67 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Decrementing** |      **2** |   **5,694.8 us** |     **16.901 us** |    **12.221 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |   5,529.2 us |     16.969 us |    12.270 us |   0.97 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |      2 |   6,339.6 us |     56.895 us |    41.139 us |   1.11 |     0.01 |
|                         Span_ |         Decrementing |      2 |   7,070.6 us |     35.583 us |    25.729 us |   1.24 |     0.00 |
|             Span_NullComparer |         Decrementing |      2 |   7,125.5 us |     59.022 us |    42.677 us |   1.25 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  11,329.8 us |    128.996 us |    93.272 us |   1.99 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      2 |   8,663.1 us |     83.125 us |    60.105 us |   1.52 |     0.01 |
|               Span_Comparison |         Decrementing |      2 |   9,211.7 us |     48.865 us |    35.333 us |   1.62 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Decrementing** |      **3** |   **9,156.4 us** |     **46.926 us** |    **33.930 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |   8,782.8 us |     29.447 us |    21.292 us |   0.96 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |      3 |   9,560.7 us |     22.114 us |    15.990 us |   1.04 |     0.00 |
|                         Span_ |         Decrementing |      3 |   9,495.3 us |     20.966 us |    15.159 us |   1.04 |     0.00 |
|             Span_NullComparer |         Decrementing |      3 |   9,439.0 us |     13.536 us |     9.787 us |   1.03 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  12,904.0 us |     37.769 us |    27.310 us |   1.41 |     0.01 |
| Span_StructComparableComparer |         Decrementing |      3 |  11,076.5 us |     49.412 us |    35.728 us |   1.21 |     0.01 |
|               Span_Comparison |         Decrementing |      3 |  11,587.7 us |     20.826 us |    15.059 us |   1.27 |     0.00 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **33,419.5 us** |    **245.499 us** |   **177.512 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  34,891.0 us |    105.340 us |    76.168 us |   1.04 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |     10 |  35,565.7 us |    327.793 us |   237.016 us |   1.06 |     0.01 |
|                         Span_ |         Decrementing |     10 |  32,809.6 us |     58.995 us |    42.657 us |   0.98 |     0.01 |
|             Span_NullComparer |         Decrementing |     10 |  32,936.8 us |    173.832 us |   125.692 us |   0.99 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  37,040.5 us |    119.580 us |    86.464 us |   1.11 |     0.01 |
| Span_StructComparableComparer |         Decrementing |     10 |  44,051.0 us |    844.708 us |   610.779 us |   1.32 |     0.02 |
|               Span_Comparison |         Decrementing |     10 |  37,003.1 us |     47.923 us |    34.651 us |   1.11 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **41,396.8 us** |    **504.136 us** |   **364.523 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  40,800.3 us |    332.469 us |   240.397 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |    100 |  45,718.0 us |    453.107 us |   327.626 us |   1.10 |     0.01 |
|                         Span_ |         Decrementing |    100 |  45,078.4 us |    342.765 us |   247.841 us |   1.09 |     0.01 |
|             Span_NullComparer |         Decrementing |    100 |  44,424.4 us |    488.146 us |   352.962 us |   1.07 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  49,377.0 us |    235.528 us |   170.302 us |   1.19 |     0.01 |
| Span_StructComparableComparer |         Decrementing |    100 |  57,568.6 us |    503.748 us |   364.243 us |   1.39 |     0.01 |
|               Span_Comparison |         Decrementing |    100 |  50,752.2 us |    307.585 us |   222.404 us |   1.23 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Decrementing** |   **1000** |  **80,550.9 us** |    **410.968 us** |   **297.156 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 |  78,988.3 us |    228.854 us |   165.477 us |   0.98 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |   1000 |  81,244.3 us |    127.632 us |    92.286 us |   1.01 |     0.00 |
|                         Span_ |         Decrementing |   1000 |  85,015.9 us |    136.703 us |    98.845 us |   1.06 |     0.00 |
|             Span_NullComparer |         Decrementing |   1000 |  85,019.5 us |    123.271 us |    89.133 us |   1.06 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |   1000 |  93,869.5 us |    229.737 us |   166.115 us |   1.17 |     0.00 |
| Span_StructComparableComparer |         Decrementing |   1000 | 110,664.2 us |    192.710 us |   139.342 us |   1.37 |     0.01 |
|               Span_Comparison |         Decrementing |   1000 |  95,264.3 us |    200.013 us |   144.623 us |   1.18 |     0.00 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Decrementing** |  **10000** | **129,761.3 us** | **11,439.708 us** | **8,271.658 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 | 125,218.2 us |  6,343.617 us | 4,586.851 us |   0.97 |     0.07 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 130,772.2 us |    790.529 us |   571.604 us |   1.01 |     0.06 |
|                         Span_ |         Decrementing |  10000 | 137,155.8 us |    827.389 us |   598.256 us |   1.06 |     0.06 |
|             Span_NullComparer |         Decrementing |  10000 | 134,814.4 us |  1,512.227 us | 1,093.439 us |   1.04 |     0.06 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 147,699.7 us |  1,008.378 us |   729.124 us |   1.14 |     0.07 |
| Span_StructComparableComparer |         Decrementing |  10000 | 174,579.0 us |    666.776 us |   482.123 us |   1.35 |     0.08 |
|               Span_Comparison |         Decrementing |  10000 | 149,948.4 us |    967.840 us |   699.812 us |   1.16 |     0.07 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Incrementing** |      **2** |   **5,618.9 us** |    **107.949 us** |    **78.054 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |   5,375.6 us |     11.295 us |     8.167 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      2 |   6,121.1 us |     64.783 us |    46.843 us |   1.09 |     0.02 |
|                         Span_ |         Incrementing |      2 |   6,913.1 us |     41.699 us |    30.151 us |   1.23 |     0.02 |
|             Span_NullComparer |         Incrementing |      2 |   6,669.2 us |     12.445 us |     8.999 us |   1.19 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  11,228.7 us |     90.523 us |    65.454 us |   2.00 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      2 |   8,492.1 us |     46.374 us |    33.532 us |   1.51 |     0.02 |
|               Span_Comparison |         Incrementing |      2 |   9,158.6 us |     24.624 us |    17.805 us |   1.63 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Incrementing** |      **3** |   **8,754.1 us** |     **70.993 us** |    **51.332 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |   8,428.2 us |     40.002 us |    28.924 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      3 |   9,372.3 us |     33.448 us |    24.185 us |   1.07 |     0.01 |
|                         Span_ |         Incrementing |      3 |   9,071.8 us |     14.924 us |    10.791 us |   1.04 |     0.01 |
|             Span_NullComparer |         Incrementing |      3 |   9,125.9 us |     17.634 us |    12.751 us |   1.04 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  12,627.2 us |     34.245 us |    24.761 us |   1.44 |     0.01 |
| Span_StructComparableComparer |         Incrementing |      3 |  10,644.2 us |     94.003 us |    67.970 us |   1.22 |     0.01 |
|               Span_Comparison |         Incrementing |      3 |  11,104.4 us |     19.562 us |    14.145 us |   1.27 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Incrementing** |     **10** |   **7,049.8 us** |     **34.118 us** |    **24.670 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |   6,911.7 us |      7.199 us |     5.205 us |   0.98 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |     10 |   7,358.7 us |     32.974 us |    23.842 us |   1.04 |     0.00 |
|                         Span_ |         Incrementing |     10 |   6,799.9 us |     84.737 us |    61.270 us |   0.96 |     0.01 |
|             Span_NullComparer |         Incrementing |     10 |   6,748.0 us |     32.887 us |    23.780 us |   0.96 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |     10 |   8,730.5 us |     18.947 us |    13.700 us |   1.24 |     0.00 |
| Span_StructComparableComparer |         Incrementing |     10 |   9,251.7 us |     22.471 us |    16.248 us |   1.31 |     0.00 |
|               Span_Comparison |         Incrementing |     10 |   7,966.0 us |     96.166 us |    69.534 us |   1.13 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **27,840.0 us** |     **89.227 us** |    **64.517 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  27,255.4 us |    224.675 us |   162.455 us |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |    100 |  29,289.8 us |    231.051 us |   167.065 us |   1.05 |     0.01 |
|                         Span_ |         Incrementing |    100 |  29,164.2 us |    156.451 us |   113.124 us |   1.05 |     0.00 |
|             Span_NullComparer |         Incrementing |    100 |  29,551.9 us |    126.173 us |    91.231 us |   1.06 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  32,679.5 us |    134.076 us |    96.946 us |   1.17 |     0.00 |
| Span_StructComparableComparer |         Incrementing |    100 |  38,313.1 us |    233.697 us |   168.978 us |   1.38 |     0.01 |
|               Span_Comparison |         Incrementing |    100 |  33,117.7 us |    417.754 us |   302.063 us |   1.19 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Incrementing** |   **1000** |  **48,022.1 us** |    **318.904 us** |   **230.588 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 |  46,324.8 us |    433.635 us |   313.546 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   1000 |  51,782.1 us |    417.336 us |   301.761 us |   1.08 |     0.01 |
|                         Span_ |         Incrementing |   1000 |  52,780.5 us |    440.727 us |   318.675 us |   1.10 |     0.01 |
|             Span_NullComparer |         Incrementing |   1000 |  50,997.8 us |     45.488 us |    32.891 us |   1.06 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |   1000 |  56,307.6 us |    331.226 us |   239.498 us |   1.17 |     0.01 |
| Span_StructComparableComparer |         Incrementing |   1000 |  66,933.1 us |    638.427 us |   461.625 us |   1.39 |     0.01 |
|               Span_Comparison |         Incrementing |   1000 |  56,844.7 us |    428.480 us |   309.819 us |   1.18 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **77,562.1 us** |  **1,560.141 us** | **1,128.084 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  73,289.8 us |    599.026 us |   433.135 us |   0.95 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  75,282.6 us |    962.646 us |   696.056 us |   0.97 |     0.02 |
|                         Span_ |         Incrementing |  10000 |  79,885.9 us |    566.842 us |   409.864 us |   1.03 |     0.01 |
|             Span_NullComparer |         Incrementing |  10000 |  79,719.6 us |    660.019 us |   477.237 us |   1.03 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |  10000 |  88,080.5 us |  1,011.348 us |   731.271 us |   1.14 |     0.02 |
| Span_StructComparableComparer |         Incrementing |  10000 | 103,999.0 us |    818.136 us |   591.566 us |   1.34 |     0.02 |
|               Span_Comparison |         Incrementing |  10000 |  88,745.3 us |    687.787 us |   497.315 us |   1.14 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |   **5,763.6 us** |     **10.552 us** |     **7.630 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |   5,548.4 us |     17.193 us |    12.431 us |   0.96 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |   6,149.9 us |    107.537 us |    77.757 us |   1.07 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |      2 |   6,802.1 us |     28.433 us |    20.559 us |   1.18 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |   6,864.6 us |     33.243 us |    24.037 us |   1.19 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  11,110.5 us |     18.664 us |    13.495 us |   1.93 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |   8,715.4 us |     28.344 us |    20.494 us |   1.51 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |   9,281.0 us |     12.278 us |     8.878 us |   1.61 |     0.00 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |   **8,997.8 us** |     **92.751 us** |    **67.065 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |   8,526.7 us |     19.230 us |    13.905 us |   0.95 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |   9,094.7 us |     19.294 us |    13.951 us |   1.01 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |      3 |   9,212.6 us |     40.862 us |    29.546 us |   1.02 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |   8,926.1 us |     26.407 us |    19.094 us |   0.99 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  12,620.4 us |     27.958 us |    20.216 us |   1.40 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  10,635.6 us |     31.034 us |    22.440 us |   1.18 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  11,088.9 us |    105.526 us |    76.302 us |   1.23 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **16,816.6 us** |     **56.446 us** |    **40.814 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  16,649.3 us |    109.796 us |    79.390 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  18,050.8 us |     62.748 us |    45.371 us |   1.07 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |     10 |  16,594.3 us |    102.077 us |    73.808 us |   0.99 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  16,737.0 us |     84.648 us |    61.206 us |   1.00 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  19,233.3 us |    487.862 us |   352.756 us |   1.14 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  21,991.2 us |     31.370 us |    22.682 us |   1.31 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  18,493.0 us |     21.566 us |    15.594 us |   1.10 |     0.00 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **53,530.4 us** |    **813.629 us** |   **588.307 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  53,413.7 us |    206.613 us |   149.395 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  58,192.2 us |    517.730 us |   374.353 us |   1.09 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |    100 |  56,106.8 us |    149.934 us |   108.412 us |   1.05 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  60,182.0 us |    330.198 us |   238.755 us |   1.12 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  63,453.6 us |    157.360 us |   113.781 us |   1.19 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  73,818.5 us |    139.231 us |   100.673 us |   1.38 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |    100 |  63,463.6 us |    373.489 us |   270.057 us |   1.19 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** |  **96,779.6 us** |    **665.504 us** |   **481.203 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 |  94,023.5 us |    535.194 us |   386.980 us |   0.97 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 101,488.4 us |    185.081 us |   133.825 us |   1.05 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 103,235.1 us |  2,512.567 us | 1,816.750 us |   1.07 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 101,918.4 us |    581.926 us |   420.771 us |   1.05 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 116,772.9 us |    634.015 us |   458.434 us |   1.21 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 135,749.4 us |    911.684 us |   659.207 us |   1.40 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 | 116,953.0 us |    817.360 us |   591.005 us |   1.21 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **160,604.0 us** |  **1,017.063 us** |   **735.403 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 159,611.8 us |  1,404.942 us | 1,015.865 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 176,994.3 us |  1,272.170 us |   919.863 us |   1.10 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 174,892.9 us |    728.467 us |   526.729 us |   1.09 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 177,190.7 us |  1,774.953 us | 1,283.407 us |   1.10 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 193,056.6 us |    986.189 us |   713.079 us |   1.20 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 228,142.2 us |  1,060.391 us |   766.732 us |   1.42 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 195,497.0 us |    938.513 us |   678.606 us |   1.22 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |   **5,942.1 us** |     **60.403 us** |    **43.676 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |   5,701.3 us |    214.041 us |   154.765 us |   0.96 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |   6,550.5 us |    137.034 us |    99.084 us |   1.10 |     0.02 |
|                         Span_ | PartialRandomShuffle |      2 |   7,004.7 us |     25.156 us |    18.189 us |   1.18 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      2 |   7,054.4 us |    180.941 us |   130.832 us |   1.19 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  11,519.5 us |    230.671 us |   166.790 us |   1.94 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |   9,054.3 us |     57.935 us |    41.891 us |   1.52 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      2 |   9,597.7 us |    106.861 us |    77.268 us |   1.62 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |   **9,070.0 us** |     **98.786 us** |    **71.429 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |   8,900.5 us |    204.514 us |   147.877 us |   0.98 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  10,012.2 us |    157.130 us |   113.616 us |   1.10 |     0.01 |
|                         Span_ | PartialRandomShuffle |      3 |   9,331.6 us |     30.042 us |    21.722 us |   1.03 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      3 |   9,401.0 us |     40.272 us |    29.119 us |   1.04 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  13,057.3 us |    150.885 us |   109.099 us |   1.44 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  11,146.3 us |    128.271 us |    92.748 us |   1.23 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      3 |  11,436.0 us |    201.525 us |   145.716 us |   1.26 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **12,204.4 us** |     **98.374 us** |    **71.131 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  11,699.0 us |    105.887 us |    76.563 us |   0.96 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  12,509.7 us |    201.353 us |   145.592 us |   1.03 |     0.01 |
|                         Span_ | PartialRandomShuffle |     10 |  11,722.8 us |    136.274 us |    98.535 us |   0.96 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  11,753.2 us |    189.241 us |   136.833 us |   0.96 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  14,251.5 us |    191.010 us |   138.113 us |   1.17 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  16,024.2 us |    334.463 us |   241.839 us |   1.31 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |     10 |  14,106.3 us |     60.554 us |    43.784 us |   1.16 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **47,927.4 us** |    **563.463 us** |   **407.421 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  48,844.7 us |    573.252 us |   414.499 us |   1.02 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  50,349.2 us |    911.792 us |   659.285 us |   1.05 |     0.02 |
|                         Span_ | PartialRandomShuffle |    100 |  50,131.9 us |    786.413 us |   568.628 us |   1.05 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  49,931.9 us |    763.138 us |   551.799 us |   1.04 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  55,641.3 us |    900.399 us |   651.048 us |   1.16 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  65,142.7 us |    975.316 us |   705.217 us |   1.36 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |    100 |  55,285.4 us |  1,191.393 us |   861.455 us |   1.15 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** |  **73,657.9 us** |  **1,377.727 us** |   **996.187 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 |  72,244.4 us |    826.011 us |   597.260 us |   0.98 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 |  78,007.5 us |    842.351 us |   609.075 us |   1.06 |     0.02 |
|                         Span_ | PartialRandomShuffle |   1000 |  78,885.3 us |    777.768 us |   562.377 us |   1.07 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |   1000 |  77,084.9 us |  1,020.209 us |   737.678 us |   1.05 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 |  86,091.9 us |    665.268 us |   481.033 us |   1.17 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 | 100,401.2 us |  1,177.209 us |   851.199 us |   1.36 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |   1000 |  86,146.7 us |    364.013 us |   263.205 us |   1.17 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **98,851.9 us** |  **1,131.017 us** |   **817.799 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  98,513.9 us |  1,005.136 us |   726.779 us |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 102,198.5 us |    552.318 us |   399.362 us |   1.03 |     0.01 |
|                         Span_ | PartialRandomShuffle |  10000 | 106,526.5 us |  1,204.435 us |   870.886 us |   1.08 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 105,457.9 us |  2,206.943 us | 1,595.764 us |   1.07 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 118,261.4 us |    836.579 us |   604.902 us |   1.20 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 136,663.1 us |    853.126 us |   616.866 us |   1.38 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 118,013.1 us |    435.589 us |   314.959 us |   1.19 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |               **Random** |      **2** |   **5,624.7 us** |    **101.692 us** |    **73.530 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |   5,561.4 us |    169.714 us |   122.714 us |   0.99 |     0.02 |
| Array_ClassComparableComparer |               Random |      2 |   6,261.6 us |     28.073 us |    20.298 us |   1.11 |     0.01 |
|                         Span_ |               Random |      2 |   6,724.0 us |     33.674 us |    24.349 us |   1.20 |     0.01 |
|             Span_NullComparer |               Random |      2 |   6,840.1 us |     20.765 us |    15.015 us |   1.22 |     0.01 |
|  Span_ClassComparableComparer |               Random |      2 |  11,247.1 us |     27.538 us |    19.912 us |   2.00 |     0.02 |
| Span_StructComparableComparer |               Random |      2 |   8,551.0 us |     26.683 us |    19.293 us |   1.52 |     0.02 |
|               Span_Comparison |               Random |      2 |   9,386.1 us |     16.775 us |    12.129 us |   1.67 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |               **Random** |      **3** |   **8,818.0 us** |     **46.343 us** |    **33.509 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |   8,264.4 us |     25.100 us |    18.149 us |   0.94 |     0.00 |
| Array_ClassComparableComparer |               Random |      3 |   9,017.7 us |     30.509 us |    22.060 us |   1.02 |     0.00 |
|                         Span_ |               Random |      3 |   8,851.9 us |     39.677 us |    28.689 us |   1.00 |     0.00 |
|             Span_NullComparer |               Random |      3 |   9,136.5 us |     40.054 us |    28.962 us |   1.04 |     0.00 |
|  Span_ClassComparableComparer |               Random |      3 |  12,786.3 us |    791.216 us |   572.101 us |   1.45 |     0.06 |
| Span_StructComparableComparer |               Random |      3 |  10,842.2 us |     31.258 us |    22.602 us |   1.23 |     0.01 |
|               Span_Comparison |               Random |      3 |  10,773.1 us |     26.745 us |    19.338 us |   1.22 |     0.00 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |               **Random** |     **10** |  **20,419.2 us** |    **100.940 us** |    **72.986 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  20,295.4 us |     48.309 us |    34.931 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |               Random |     10 |  21,926.6 us |    160.154 us |   115.802 us |   1.07 |     0.01 |
|                         Span_ |               Random |     10 |  20,313.1 us |     48.537 us |    35.095 us |   0.99 |     0.00 |
|             Span_NullComparer |               Random |     10 |  20,488.6 us |    205.906 us |   148.884 us |   1.00 |     0.01 |
|  Span_ClassComparableComparer |               Random |     10 |  23,803.3 us |    872.214 us |   630.668 us |   1.17 |     0.03 |
| Span_StructComparableComparer |               Random |     10 |  28,117.8 us |  1,211.582 us |   876.053 us |   1.38 |     0.04 |
|               Span_Comparison |               Random |     10 |  23,816.6 us |    209.959 us |   151.814 us |   1.17 |     0.01 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |               **Random** |    **100** |  **46,182.9 us** |    **382.966 us** |   **276.910 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  46,624.7 us |    513.536 us |   371.320 us |   1.01 |     0.01 |
| Array_ClassComparableComparer |               Random |    100 |  50,345.5 us |    628.577 us |   454.503 us |   1.09 |     0.01 |
|                         Span_ |               Random |    100 |  50,502.4 us |    210.831 us |   152.445 us |   1.09 |     0.01 |
|             Span_NullComparer |               Random |    100 |  50,269.0 us |    271.612 us |   196.393 us |   1.09 |     0.01 |
|  Span_ClassComparableComparer |               Random |    100 |  54,426.0 us |    611.782 us |   442.358 us |   1.18 |     0.01 |
| Span_StructComparableComparer |               Random |    100 |  64,270.6 us |  1,216.065 us |   879.295 us |   1.39 |     0.02 |
|               Span_Comparison |               Random |    100 |  54,238.8 us |    938.591 us |   678.663 us |   1.17 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |               **Random** |   **1000** |  **75,843.1 us** |  **1,915.147 us** | **1,384.777 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 |  73,620.3 us |    830.653 us |   600.617 us |   0.97 |     0.02 |
| Array_ClassComparableComparer |               Random |   1000 |  79,244.6 us |  1,529.486 us | 1,105.919 us |   1.05 |     0.02 |
|                         Span_ |               Random |   1000 |  77,522.5 us |    785.543 us |   567.999 us |   1.02 |     0.02 |
|             Span_NullComparer |               Random |   1000 |  76,773.0 us |    924.489 us |   668.466 us |   1.01 |     0.02 |
|  Span_ClassComparableComparer |               Random |   1000 |  85,218.0 us |    776.821 us |   561.693 us |   1.12 |     0.02 |
| Span_StructComparableComparer |               Random |   1000 | 101,255.3 us |    686.714 us |   496.539 us |   1.34 |     0.02 |
|               Span_Comparison |               Random |   1000 |  85,886.3 us |    747.815 us |   540.719 us |   1.13 |     0.02 |
|                               |                      |        |              |               |              |        |          |
|                        **Array_** |               **Random** |  **10000** | **101,066.9 us** |  **1,464.942 us** | **1,059.249 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 100,971.9 us |  1,652.960 us | 1,195.198 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random |  10000 | 105,819.6 us |  1,184.101 us |   856.182 us |   1.05 |     0.01 |
|                         Span_ |               Random |  10000 | 108,837.7 us |  1,158.045 us |   837.342 us |   1.08 |     0.01 |
|             Span_NullComparer |               Random |  10000 | 109,038.0 us |  1,461.546 us | 1,056.793 us |   1.08 |     0.01 |
|  Span_ClassComparableComparer |               Random |  10000 | 118,019.7 us |  1,508.475 us | 1,090.726 us |   1.17 |     0.02 |
| Span_StructComparableComparer |               Random |  10000 | 139,896.6 us |  1,054.789 us |   762.682 us |   1.38 |     0.02 |
|               Span_Comparison |               Random |  10000 | 121,546.3 us |  2,658.840 us | 1,922.515 us |   1.20 |     0.02 |
