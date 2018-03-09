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
|                        Method |               Filler | Length |        Mean |        Error |       StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |------------:|-------------:|-------------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |  **1,910.9 us** |    **20.995 us** |    **15.181 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |  1,857.8 us |   142.307 us |   102.897 us |   0.97 |     0.05 |
| Array_ClassComparableComparer |             Constant |      2 |  2,331.6 us |     6.725 us |     4.863 us |   1.22 |     0.01 |
|                         Span_ |             Constant |      2 |  2,931.6 us |    83.453 us |    60.342 us |   1.53 |     0.03 |
|             Span_NullComparer |             Constant |      2 |  2,853.4 us |     5.310 us |     3.839 us |   1.49 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      2 |  6,398.0 us |    13.485 us |     9.750 us |   3.35 |     0.03 |
| Span_StructComparableComparer |             Constant |      2 |  4,096.0 us |     6.065 us |     4.386 us |   2.14 |     0.02 |
|               Span_Comparison |             Constant |      2 |  4,417.5 us |    29.758 us |    21.517 us |   2.31 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |      **3** |  **1,616.6 us** |    **36.413 us** |    **26.329 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |  1,597.2 us |    16.730 us |    12.097 us |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |      3 |  2,117.6 us |   183.702 us |   132.829 us |   1.31 |     0.08 |
|                         Span_ |             Constant |      3 |  2,044.3 us |    30.859 us |    22.313 us |   1.26 |     0.02 |
|             Span_NullComparer |             Constant |      3 |  2,105.7 us |    91.929 us |    66.471 us |   1.30 |     0.04 |
|  Span_ClassComparableComparer |             Constant |      3 |  4,814.2 us |    27.120 us |    19.610 us |   2.98 |     0.05 |
| Span_StructComparableComparer |             Constant |      3 |  3,369.4 us |    33.690 us |    24.360 us |   2.08 |     0.03 |
|               Span_Comparison |             Constant |      3 |  3,649.3 us |    36.953 us |    26.720 us |   2.26 |     0.04 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |     **10** |    **933.6 us** |    **30.372 us** |    **21.961 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |    918.3 us |    33.360 us |    24.121 us |   0.98 |     0.03 |
| Array_ClassComparableComparer |             Constant |     10 |  1,202.2 us |     7.385 us |     5.340 us |   1.29 |     0.03 |
|                         Span_ |             Constant |     10 |    826.1 us |    16.570 us |    11.981 us |   0.89 |     0.02 |
|             Span_NullComparer |             Constant |     10 |    825.0 us |     6.558 us |     4.742 us |   0.88 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     10 |  1,835.8 us |     8.155 us |     5.897 us |   1.97 |     0.04 |
| Span_StructComparableComparer |             Constant |     10 |  1,436.9 us |     9.897 us |     7.156 us |   1.54 |     0.03 |
|               Span_Comparison |             Constant |     10 |  1,600.1 us |    19.228 us |    13.903 us |   1.71 |     0.04 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |    **100** |  **2,312.8 us** |     **4.688 us** |     **3.390 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |  2,331.7 us |    43.527 us |    31.473 us |   1.01 |     0.01 |
| Array_ClassComparableComparer |             Constant |    100 |  3,122.8 us |    51.323 us |    37.110 us |   1.35 |     0.02 |
|                         Span_ |             Constant |    100 |  3,571.8 us |     7.678 us |     5.552 us |   1.54 |     0.00 |
|             Span_NullComparer |             Constant |    100 |  3,403.0 us |    16.427 us |    11.878 us |   1.47 |     0.01 |
|  Span_ClassComparableComparer |             Constant |    100 |  5,227.7 us |    25.767 us |    18.632 us |   2.26 |     0.01 |
| Span_StructComparableComparer |             Constant |    100 |  5,230.1 us |    99.716 us |    72.101 us |   2.26 |     0.03 |
|               Span_Comparison |             Constant |    100 |  5,619.4 us |    30.613 us |    22.135 us |   2.43 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |   **1000** |  **3,687.1 us** |     **9.449 us** |     **6.833 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |  3,699.3 us |    30.452 us |    22.018 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   1000 |  5,166.1 us |    47.594 us |    34.414 us |   1.40 |     0.01 |
|                         Span_ |             Constant |   1000 |  6,180.3 us |    30.316 us |    21.920 us |   1.68 |     0.01 |
|             Span_NullComparer |             Constant |   1000 |  6,175.9 us |    18.771 us |    13.573 us |   1.68 |     0.00 |
|  Span_ClassComparableComparer |             Constant |   1000 |  9,853.1 us |    29.924 us |    21.637 us |   2.67 |     0.01 |
| Span_StructComparableComparer |             Constant |   1000 |  9,332.9 us |    24.310 us |    17.578 us |   2.53 |     0.01 |
|               Span_Comparison |             Constant |   1000 |  9,903.8 us |    29.983 us |    21.679 us |   2.69 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |  **10000** |  **5,752.0 us** |    **17.512 us** |    **12.662 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |  5,773.2 us |    42.475 us |    30.712 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |  10000 |  8,010.5 us |    25.288 us |    18.285 us |   1.39 |     0.00 |
|                         Span_ |             Constant |  10000 |  9,976.3 us |    42.424 us |    30.675 us |   1.73 |     0.01 |
|             Span_NullComparer |             Constant |  10000 | 10,010.5 us |    17.021 us |    12.308 us |   1.74 |     0.00 |
|  Span_ClassComparableComparer |             Constant |  10000 | 14,926.6 us |   178.164 us |   128.824 us |   2.60 |     0.02 |
| Span_StructComparableComparer |             Constant |  10000 | 15,165.0 us |    44.952 us |    32.503 us |   2.64 |     0.01 |
|               Span_Comparison |             Constant |  10000 | 16,246.9 us |    40.843 us |    29.532 us |   2.82 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **2,100.9 us** |    **15.564 us** |    **11.254 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  2,036.3 us |    33.829 us |    24.461 us |   0.97 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      2 |  2,501.6 us |     6.968 us |     5.039 us |   1.19 |     0.01 |
|                         Span_ |         Decrementing |      2 |  3,126.4 us |    48.734 us |    35.238 us |   1.49 |     0.02 |
|             Span_NullComparer |         Decrementing |      2 |  3,119.1 us |    45.428 us |    32.847 us |   1.48 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  6,515.5 us |     8.200 us |     5.929 us |   3.10 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      2 |  4,382.7 us |    19.699 us |    14.244 us |   2.09 |     0.01 |
|               Span_Comparison |         Decrementing |      2 |  4,694.9 us |    19.241 us |    13.912 us |   2.23 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **1,982.6 us** |    **28.314 us** |    **20.473 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  1,925.1 us |    12.340 us |     8.923 us |   0.97 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      3 |  2,562.0 us |    12.133 us |     8.773 us |   1.29 |     0.01 |
|                         Span_ |         Decrementing |      3 |  2,388.4 us |     7.384 us |     5.339 us |   1.20 |     0.01 |
|             Span_NullComparer |         Decrementing |      3 |  2,449.9 us |     6.627 us |     4.792 us |   1.24 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  5,151.6 us |    73.644 us |    53.250 us |   2.60 |     0.04 |
| Span_StructComparableComparer |         Decrementing |      3 |  3,640.5 us |    51.240 us |    37.050 us |   1.84 |     0.03 |
|               Span_Comparison |         Decrementing |      3 |  3,864.4 us |     8.243 us |     5.960 us |   1.95 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **3,179.8 us** |   **164.688 us** |   **119.080 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  3,134.8 us |    32.462 us |    23.472 us |   0.99 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |     10 |  4,283.6 us |    65.215 us |    47.154 us |   1.35 |     0.05 |
|                         Span_ |         Decrementing |     10 |  3,323.2 us |    26.785 us |    19.367 us |   1.05 |     0.03 |
|             Span_NullComparer |         Decrementing |     10 |  3,329.0 us |    14.830 us |    10.723 us |   1.05 |     0.03 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  5,983.2 us |    56.070 us |    40.542 us |   1.88 |     0.06 |
| Span_StructComparableComparer |         Decrementing |     10 |  5,590.5 us |    27.538 us |    19.912 us |   1.76 |     0.06 |
|               Span_Comparison |         Decrementing |     10 |  6,366.3 us |    73.060 us |    52.827 us |   2.00 |     0.07 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **3,060.6 us** |    **98.621 us** |    **71.309 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  3,077.2 us |    52.684 us |    38.094 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |    100 |  4,222.7 us |    22.489 us |    16.261 us |   1.38 |     0.03 |
|                         Span_ |         Decrementing |    100 |  4,566.9 us |    14.829 us |    10.722 us |   1.49 |     0.03 |
|             Span_NullComparer |         Decrementing |    100 |  4,655.2 us |   133.155 us |    96.280 us |   1.52 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  7,162.7 us |    98.026 us |    70.879 us |   2.34 |     0.05 |
| Span_StructComparableComparer |         Decrementing |    100 |  7,038.6 us |    22.597 us |    16.339 us |   2.30 |     0.05 |
|               Span_Comparison |         Decrementing |    100 |  7,732.7 us |    95.747 us |    69.231 us |   2.53 |     0.06 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |   **1000** |  **4,695.4 us** |    **44.390 us** |    **32.097 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 |  4,662.2 us |    18.235 us |    13.185 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |   1000 |  6,944.7 us |    40.545 us |    29.317 us |   1.48 |     0.01 |
|                         Span_ |         Decrementing |   1000 |  8,699.6 us |    29.762 us |    21.520 us |   1.85 |     0.01 |
|             Span_NullComparer |         Decrementing |   1000 |  8,594.4 us |    58.756 us |    42.484 us |   1.83 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   1000 | 13,359.0 us |   729.916 us |   527.777 us |   2.85 |     0.11 |
| Span_StructComparableComparer |         Decrementing |   1000 | 13,305.6 us |   140.316 us |   101.458 us |   2.83 |     0.03 |
|               Span_Comparison |         Decrementing |   1000 | 14,532.1 us |   130.622 us |    94.449 us |   3.10 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |  **10000** |  **6,702.4 us** |    **66.222 us** |    **47.883 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 |  6,722.2 us |    41.525 us |    30.026 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 10,429.0 us |    56.907 us |    41.147 us |   1.56 |     0.01 |
|                         Span_ |         Decrementing |  10000 | 13,509.5 us |   101.625 us |    73.481 us |   2.02 |     0.02 |
|             Span_NullComparer |         Decrementing |  10000 | 13,353.2 us |   127.373 us |    92.099 us |   1.99 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 20,464.8 us |   177.531 us |   128.366 us |   3.05 |     0.03 |
| Span_StructComparableComparer |         Decrementing |  10000 | 20,348.6 us |    90.475 us |    65.419 us |   3.04 |     0.02 |
|               Span_Comparison |         Decrementing |  10000 | 21,848.1 us |   238.026 us |   172.108 us |   3.26 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **1,901.6 us** |    **12.810 us** |     **9.263 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  1,870.3 us |   176.163 us |   127.377 us |   0.98 |     0.06 |
| Array_ClassComparableComparer |         Incrementing |      2 |  2,343.2 us |     3.774 us |     2.729 us |   1.23 |     0.01 |
|                         Span_ |         Incrementing |      2 |  2,917.6 us |     6.921 us |     5.005 us |   1.53 |     0.01 |
|             Span_NullComparer |         Incrementing |      2 |  2,846.1 us |     9.969 us |     7.208 us |   1.50 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  6,185.3 us |    85.452 us |    61.787 us |   3.25 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      2 |  4,060.8 us |     6.897 us |     4.987 us |   2.14 |     0.01 |
|               Span_Comparison |         Incrementing |      2 |  4,467.0 us |   151.330 us |   109.422 us |   2.35 |     0.06 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **1,633.1 us** |    **99.004 us** |    **71.587 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  1,546.6 us |    11.092 us |     8.020 us |   0.95 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |      3 |  2,007.6 us |     9.926 us |     7.177 us |   1.23 |     0.05 |
|                         Span_ |         Incrementing |      3 |  2,062.9 us |    31.888 us |    23.057 us |   1.27 |     0.05 |
|             Span_NullComparer |         Incrementing |      3 |  2,035.3 us |     9.574 us |     6.922 us |   1.25 |     0.05 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  4,648.0 us |    22.003 us |    15.909 us |   2.85 |     0.11 |
| Span_StructComparableComparer |         Incrementing |      3 |  3,260.8 us |    10.976 us |     7.937 us |   2.00 |     0.08 |
|               Span_Comparison |         Incrementing |      3 |  3,397.4 us |     5.129 us |     3.709 us |   2.08 |     0.08 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |     **10** |    **930.6 us** |     **9.904 us** |     **7.161 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |    921.7 us |     7.844 us |     5.672 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |     10 |  1,236.3 us |    25.804 us |    18.658 us |   1.33 |     0.02 |
|                         Span_ |         Incrementing |     10 |    818.9 us |    16.965 us |    12.267 us |   0.88 |     0.01 |
|             Span_NullComparer |         Incrementing |     10 |    834.7 us |    30.657 us |    22.167 us |   0.90 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  1,882.6 us |    11.543 us |     8.346 us |   2.02 |     0.02 |
| Span_StructComparableComparer |         Incrementing |     10 |  1,415.0 us |     7.741 us |     5.597 us |   1.52 |     0.01 |
|               Span_Comparison |         Incrementing |     10 |  1,613.2 us |     7.083 us |     5.122 us |   1.73 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **1,957.5 us** |    **20.674 us** |    **14.949 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  1,956.7 us |    38.312 us |    27.702 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |    100 |  2,675.3 us |    19.702 us |    14.246 us |   1.37 |     0.01 |
|                         Span_ |         Incrementing |    100 |  2,893.4 us |    25.253 us |    18.260 us |   1.48 |     0.01 |
|             Span_NullComparer |         Incrementing |    100 |  2,923.1 us |     7.937 us |     5.739 us |   1.49 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  4,507.2 us |   110.864 us |    80.162 us |   2.30 |     0.04 |
| Span_StructComparableComparer |         Incrementing |    100 |  4,967.7 us | 1,814.363 us | 1,311.904 us |   2.54 |     0.64 |
|               Span_Comparison |         Incrementing |    100 |  4,936.2 us |    41.064 us |    29.692 us |   2.52 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |   **1000** |  **2,885.5 us** |    **29.459 us** |    **21.301 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 |  2,855.9 us |    17.617 us |    12.738 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   1000 |  4,160.2 us |    56.317 us |    40.721 us |   1.44 |     0.02 |
|                         Span_ |         Incrementing |   1000 |  5,036.2 us |    82.305 us |    59.512 us |   1.75 |     0.02 |
|             Span_NullComparer |         Incrementing |   1000 |  4,934.6 us |    31.968 us |    23.115 us |   1.71 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   1000 |  7,656.1 us |    73.631 us |    53.240 us |   2.65 |     0.03 |
| Span_StructComparableComparer |         Incrementing |   1000 |  7,569.0 us |   112.979 us |    81.691 us |   2.62 |     0.03 |
|               Span_Comparison |         Incrementing |   1000 |  8,260.4 us |    67.377 us |    48.718 us |   2.86 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **4,346.2 us** |    **46.067 us** |    **33.309 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  4,409.4 us |   194.099 us |   140.346 us |   1.01 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  6,277.5 us |    82.769 us |    59.847 us |   1.44 |     0.02 |
|                         Span_ |         Incrementing |  10000 |  7,845.4 us |    40.133 us |    29.018 us |   1.81 |     0.01 |
|             Span_NullComparer |         Incrementing |  10000 |  7,847.0 us |    25.300 us |    18.294 us |   1.81 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |  10000 | 12,386.0 us |    94.238 us |    68.140 us |   2.85 |     0.03 |
| Span_StructComparableComparer |         Incrementing |  10000 | 12,749.8 us | 3,594.186 us | 2,598.832 us |   2.93 |     0.57 |
|               Span_Comparison |         Incrementing |  10000 | 13,066.9 us |    86.017 us |    62.196 us |   3.01 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **1,929.3 us** |    **14.496 us** |    **10.481 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  1,848.1 us |   134.246 us |    97.069 us |   0.96 |     0.05 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |  2,400.0 us |   151.096 us |   109.252 us |   1.24 |     0.05 |
|                         Span_ |  MedianOfThreeKiller |      2 |  2,920.8 us |     8.404 us |     6.077 us |   1.51 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  3,020.5 us |   501.039 us |   362.284 us |   1.57 |     0.18 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  6,262.8 us |    72.020 us |    52.075 us |   3.25 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  4,256.1 us |    36.940 us |    26.710 us |   2.21 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  4,444.2 us |    27.112 us |    19.604 us |   2.30 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **1,618.6 us** |    **12.827 us** |     **9.275 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  1,553.8 us |     7.590 us |     5.488 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |  1,999.5 us |    11.837 us |     8.559 us |   1.24 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |      3 |  2,004.6 us |    10.810 us |     7.816 us |   1.24 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  2,039.6 us |    22.162 us |    16.024 us |   1.26 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  4,687.9 us |    96.532 us |    69.799 us |   2.90 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  3,231.7 us |    21.557 us |    15.587 us |   2.00 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  3,469.6 us |    16.279 us |    11.771 us |   2.14 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **1,640.6 us** |   **332.004 us** |   **240.061 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  1,547.9 us |     5.070 us |     3.666 us |   0.96 |     0.10 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  2,412.1 us |    20.136 us |    14.559 us |   1.49 |     0.15 |
|                         Span_ |  MedianOfThreeKiller |     10 |  1,655.2 us |    20.068 us |    14.510 us |   1.02 |     0.10 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  1,705.5 us |   156.422 us |   113.103 us |   1.05 |     0.12 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  3,345.0 us |    56.489 us |    40.845 us |   2.07 |     0.21 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  2,925.5 us |    83.101 us |    60.087 us |   1.81 |     0.18 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  3,316.2 us |    55.420 us |    40.072 us |   2.05 |     0.21 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **3,953.9 us** |    **23.453 us** |    **16.958 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  3,969.8 us |    96.543 us |    69.807 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  5,643.5 us |   280.948 us |   203.144 us |   1.43 |     0.05 |
|                         Span_ |  MedianOfThreeKiller |    100 |  6,013.9 us |   152.351 us |   110.159 us |   1.52 |     0.03 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  6,195.0 us |   337.938 us |   244.351 us |   1.57 |     0.06 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  9,588.1 us |   314.348 us |   227.294 us |   2.43 |     0.06 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  9,413.9 us |   278.055 us |   201.052 us |   2.38 |     0.05 |
|               Span_Comparison |  MedianOfThreeKiller |    100 | 10,185.2 us |   480.552 us |   347.471 us |   2.58 |     0.08 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** |  **6,337.2 us** |    **47.122 us** |    **34.072 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 |  6,389.4 us |   151.274 us |   109.381 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 |  8,929.4 us |   115.890 us |    83.796 us |   1.41 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 10,726.7 us |    34.701 us |    25.091 us |   1.69 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 11,071.1 us |   115.643 us |    83.618 us |   1.75 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 16,762.7 us |   175.364 us |   126.800 us |   2.65 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 16,318.2 us |   155.724 us |   112.599 us |   2.58 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 | 17,569.1 us |   175.855 us |   127.154 us |   2.77 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **10,153.5 us** |    **45.295 us** |    **32.751 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 10,148.0 us |    23.390 us |    16.912 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 14,266.4 us |    87.802 us |    63.486 us |   1.41 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 18,029.3 us |   222.877 us |   161.155 us |   1.78 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 17,741.9 us |   184.385 us |   133.322 us |   1.75 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 27,303.3 us |   117.320 us |    84.830 us |   2.69 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 26,609.0 us |   302.711 us |   218.880 us |   2.62 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 29,682.3 us |   344.494 us |   249.092 us |   2.92 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **2,124.9 us** |    **15.217 us** |    **11.003 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  2,003.2 us |    15.369 us |    11.113 us |   0.94 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |  2,615.8 us |     9.919 us |     7.172 us |   1.23 |     0.01 |
|                         Span_ | PartialRandomShuffle |      2 |  3,087.6 us |    11.144 us |     8.058 us |   1.45 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  3,052.1 us |    13.529 us |     9.783 us |   1.44 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  6,633.4 us |    32.344 us |    23.387 us |   3.12 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  4,288.2 us |    37.883 us |    27.392 us |   2.02 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |      2 |  4,737.5 us |    72.201 us |    52.206 us |   2.23 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **1,865.8 us** |     **7.589 us** |     **5.487 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  1,817.4 us |     6.940 us |     5.018 us |   0.97 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  2,281.7 us |     6.168 us |     4.460 us |   1.22 |     0.00 |
|                         Span_ | PartialRandomShuffle |      3 |  2,270.2 us |    10.314 us |     7.458 us |   1.22 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  2,345.6 us |     6.441 us |     4.657 us |   1.26 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  4,935.9 us |    21.058 us |    15.226 us |   2.65 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  3,524.2 us |   119.678 us |    86.535 us |   1.89 |     0.04 |
|               Span_Comparison | PartialRandomShuffle |      3 |  3,694.0 us |    19.770 us |    14.295 us |   1.98 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **1,648.1 us** |    **18.120 us** |    **13.102 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  1,646.1 us |     7.250 us |     5.242 us |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  2,032.3 us |     5.244 us |     3.792 us |   1.23 |     0.01 |
|                         Span_ | PartialRandomShuffle |     10 |  1,627.4 us |    37.120 us |    26.840 us |   0.99 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  1,652.0 us |    36.315 us |    26.258 us |   1.00 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  2,925.9 us |    14.874 us |    10.755 us |   1.78 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  2,462.1 us |     9.693 us |     7.009 us |   1.49 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     10 |  2,718.1 us |     3.995 us |     2.889 us |   1.65 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **4,688.1 us** |    **44.578 us** |    **32.233 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  4,704.2 us |    41.814 us |    30.234 us |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  5,948.5 us |    73.333 us |    53.025 us |   1.27 |     0.01 |
|                         Span_ | PartialRandomShuffle |    100 |  5,936.4 us |   125.306 us |    90.605 us |   1.27 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  6,063.4 us |   131.694 us |    95.224 us |   1.29 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  8,717.2 us |    85.074 us |    61.514 us |   1.86 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  8,622.8 us |   171.362 us |   123.906 us |   1.84 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |    100 |  9,287.2 us |    37.002 us |    26.755 us |   1.98 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** |  **6,823.3 us** |   **103.001 us** |    **74.477 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 |  6,815.0 us |    32.406 us |    23.431 us |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 |  8,697.5 us |    71.960 us |    52.032 us |   1.27 |     0.01 |
|                         Span_ | PartialRandomShuffle |   1000 |  9,413.9 us |    32.303 us |    23.357 us |   1.38 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   1000 |  9,518.8 us |   130.087 us |    94.061 us |   1.40 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 | 14,055.2 us |   217.570 us |   157.318 us |   2.06 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 | 13,273.3 us |   193.760 us |   140.101 us |   1.95 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |   1000 | 14,409.5 us |   130.607 us |    94.437 us |   2.11 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **8,882.7 us** |    **87.117 us** |    **62.991 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  8,987.2 us |   110.519 us |    79.912 us |   1.01 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 11,496.6 us |   159.114 us |   115.050 us |   1.29 |     0.02 |
|                         Span_ | PartialRandomShuffle |  10000 | 12,991.6 us |    76.166 us |    55.073 us |   1.46 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 13,057.2 us |   206.313 us |   149.178 us |   1.47 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 18,830.7 us |   263.925 us |   190.835 us |   2.12 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 18,596.3 us |    49.762 us |    35.981 us |   2.09 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 19,997.7 us |   362.838 us |   262.356 us |   2.25 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |      **2** |  **2,334.5 us** |    **13.371 us** |     **9.668 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  2,211.2 us |   132.819 us |    96.037 us |   0.95 |     0.04 |
| Array_ClassComparableComparer |               Random |      2 |  2,658.4 us |    31.748 us |    22.956 us |   1.14 |     0.01 |
|                         Span_ |               Random |      2 |  3,201.7 us |    12.460 us |     9.009 us |   1.37 |     0.01 |
|             Span_NullComparer |               Random |      2 |  3,185.6 us |    16.010 us |    11.576 us |   1.36 |     0.01 |
|  Span_ClassComparableComparer |               Random |      2 |  6,634.8 us |    95.313 us |    68.918 us |   2.84 |     0.03 |
| Span_StructComparableComparer |               Random |      2 |  4,541.6 us |    16.425 us |    11.877 us |   1.95 |     0.01 |
|               Span_Comparison |               Random |      2 |  4,898.7 us |    43.627 us |    31.546 us |   2.10 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |      **3** |  **2,166.6 us** |   **109.596 us** |    **79.245 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  2,095.9 us |    13.147 us |     9.506 us |   0.97 |     0.03 |
| Array_ClassComparableComparer |               Random |      3 |  2,585.8 us |     8.463 us |     6.119 us |   1.19 |     0.04 |
|                         Span_ |               Random |      3 |  2,552.1 us |     7.114 us |     5.144 us |   1.18 |     0.04 |
|             Span_NullComparer |               Random |      3 |  2,621.6 us |    10.388 us |     7.511 us |   1.21 |     0.04 |
|  Span_ClassComparableComparer |               Random |      3 |  5,388.9 us |    19.698 us |    14.243 us |   2.49 |     0.08 |
| Span_StructComparableComparer |               Random |      3 |  3,795.3 us |    10.038 us |     7.258 us |   1.75 |     0.06 |
|               Span_Comparison |               Random |      3 |  4,029.7 us |    22.575 us |    16.323 us |   1.86 |     0.06 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |     **10** |  **2,750.3 us** |    **23.346 us** |    **16.881 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  2,741.3 us |    11.906 us |     8.609 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |     10 |  3,476.1 us |    28.075 us |    20.300 us |   1.26 |     0.01 |
|                         Span_ |               Random |     10 |  2,731.3 us |    21.091 us |    15.250 us |   0.99 |     0.01 |
|             Span_NullComparer |               Random |     10 |  2,740.4 us |    43.152 us |    31.202 us |   1.00 |     0.01 |
|  Span_ClassComparableComparer |               Random |     10 |  4,545.1 us |    19.557 us |    14.141 us |   1.65 |     0.01 |
| Span_StructComparableComparer |               Random |     10 |  4,050.2 us |     7.932 us |     5.736 us |   1.47 |     0.01 |
|               Span_Comparison |               Random |     10 |  4,534.9 us |    11.912 us |     8.613 us |   1.65 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |    **100** |  **5,545.0 us** |    **43.843 us** |    **31.702 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  5,591.8 us |    81.534 us |    58.955 us |   1.01 |     0.01 |
| Array_ClassComparableComparer |               Random |    100 |  6,875.3 us |   153.453 us |   110.957 us |   1.24 |     0.02 |
|                         Span_ |               Random |    100 |  6,710.8 us |    60.930 us |    44.056 us |   1.21 |     0.01 |
|             Span_NullComparer |               Random |    100 |  6,749.3 us |   322.133 us |   232.923 us |   1.22 |     0.04 |
|  Span_ClassComparableComparer |               Random |    100 |  9,456.6 us |    25.725 us |    18.601 us |   1.71 |     0.01 |
| Span_StructComparableComparer |               Random |    100 |  9,434.4 us |    69.833 us |    50.494 us |   1.70 |     0.01 |
|               Span_Comparison |               Random |    100 | 10,229.7 us |    97.654 us |    70.610 us |   1.84 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |   **1000** |  **8,187.5 us** |    **64.382 us** |    **46.553 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 |  8,224.5 us |    32.937 us |    23.815 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   1000 | 10,088.8 us |    48.558 us |    35.111 us |   1.23 |     0.01 |
|                         Span_ |               Random |   1000 | 10,986.2 us |    98.130 us |    70.954 us |   1.34 |     0.01 |
|             Span_NullComparer |               Random |   1000 | 10,886.7 us |    93.229 us |    67.411 us |   1.33 |     0.01 |
|  Span_ClassComparableComparer |               Random |   1000 | 15,312.7 us |   114.962 us |    83.125 us |   1.87 |     0.01 |
| Span_StructComparableComparer |               Random |   1000 | 14,927.9 us |   146.416 us |   105.868 us |   1.82 |     0.02 |
|               Span_Comparison |               Random |   1000 | 16,088.5 us |   119.452 us |    86.372 us |   1.97 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |  **10000** | **11,244.7 us** |    **57.801 us** |    **41.794 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 11,098.5 us |   139.872 us |   101.136 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |  10000 | 13,731.1 us |   140.418 us |   101.531 us |   1.22 |     0.01 |
|                         Span_ |               Random |  10000 | 15,338.9 us |    88.983 us |    64.341 us |   1.36 |     0.01 |
|             Span_NullComparer |               Random |  10000 | 15,288.9 us |    52.373 us |    37.869 us |   1.36 |     0.01 |
|  Span_ClassComparableComparer |               Random |  10000 | 21,419.2 us |   197.627 us |   142.897 us |   1.90 |     0.01 |
| Span_StructComparableComparer |               Random |  10000 | 20,987.5 us |   293.326 us |   212.094 us |   1.87 |     0.02 |
|               Span_Comparison |               Random |  10000 | 22,356.4 us |    97.551 us |    70.536 us |   1.99 |     0.01 |
