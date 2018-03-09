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
|                        **Array_** |             **Constant** |      **2** |  **1,854.0 us** |    **20.311 us** |    **14.686 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |  1,761.5 us |    19.547 us |    14.134 us |   0.95 |     0.01 |
| Array_ClassComparableComparer |             Constant |      2 | 15,418.3 us |   514.720 us |   372.177 us |   8.32 |     0.20 |
|                         Span_ |             Constant |      2 |  2,794.8 us |    16.133 us |    11.665 us |   1.51 |     0.01 |
|             Span_NullComparer |             Constant |      2 |  2,806.1 us |    65.590 us |    47.426 us |   1.51 |     0.03 |
|  Span_ClassComparableComparer |             Constant |      2 |  6,132.0 us |    29.503 us |    21.333 us |   3.31 |     0.03 |
| Span_StructComparableComparer |             Constant |      2 |  3,892.0 us |    15.607 us |    11.285 us |   2.10 |     0.02 |
|               Span_Comparison |             Constant |      2 |  4,764.7 us |    36.231 us |    26.198 us |   2.57 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |      **3** |  **1,504.6 us** |     **7.702 us** |     **5.569 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |  1,508.8 us |   102.489 us |    74.106 us |   1.00 |     0.05 |
| Array_ClassComparableComparer |             Constant |      3 | 10,539.4 us |   153.978 us |   111.336 us |   7.00 |     0.07 |
|                         Span_ |             Constant |      3 |  2,130.2 us |    22.074 us |    15.961 us |   1.42 |     0.01 |
|             Span_NullComparer |             Constant |      3 |  2,125.9 us |    13.122 us |     9.488 us |   1.41 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      3 |  4,677.4 us |    26.104 us |    18.875 us |   3.11 |     0.02 |
| Span_StructComparableComparer |             Constant |      3 |  3,230.0 us |     9.328 us |     6.745 us |   2.15 |     0.01 |
|               Span_Comparison |             Constant |      3 |  3,785.2 us |     5.832 us |     4.217 us |   2.52 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |     **10** |    **885.3 us** |    **49.527 us** |    **35.811 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |    866.0 us |    14.419 us |    10.426 us |   0.98 |     0.04 |
| Array_ClassComparableComparer |             Constant |     10 |  3,676.9 us |    17.446 us |    12.615 us |   4.16 |     0.15 |
|                         Span_ |             Constant |     10 |    790.3 us |    58.548 us |    42.334 us |   0.89 |     0.06 |
|             Span_NullComparer |             Constant |     10 |    784.6 us |     8.231 us |     5.952 us |   0.89 |     0.03 |
|  Span_ClassComparableComparer |             Constant |     10 |  1,843.1 us |    11.491 us |     8.308 us |   2.08 |     0.07 |
| Span_StructComparableComparer |             Constant |     10 |  1,603.1 us |   197.874 us |   143.076 us |   1.81 |     0.17 |
|               Span_Comparison |             Constant |     10 |  1,695.8 us |    15.301 us |    11.064 us |   1.92 |     0.07 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |    **100** |  **2,447.8 us** |    **10.583 us** |     **7.652 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |  2,453.8 us |    40.023 us |    28.939 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |    100 |  3,182.8 us |    55.744 us |    40.306 us |   1.30 |     0.02 |
|                         Span_ |             Constant |    100 |  3,423.6 us |    32.827 us |    23.736 us |   1.40 |     0.01 |
|             Span_NullComparer |             Constant |    100 |  3,485.0 us |    90.248 us |    65.255 us |   1.42 |     0.03 |
|  Span_ClassComparableComparer |             Constant |    100 |  5,023.9 us |    79.350 us |    57.375 us |   2.05 |     0.02 |
| Span_StructComparableComparer |             Constant |    100 |  5,067.7 us |    49.872 us |    36.061 us |   2.07 |     0.02 |
|               Span_Comparison |             Constant |    100 |  5,619.0 us |    23.796 us |    17.206 us |   2.30 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** |  **10000** |  **6,504.4 us** |    **71.736 us** |    **51.870 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |  6,481.4 us |    50.975 us |    36.858 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |  10000 |  7,151.6 us |    33.887 us |    24.503 us |   1.10 |     0.01 |
|                         Span_ |             Constant |  10000 | 10,043.6 us |    55.548 us |    40.165 us |   1.54 |     0.01 |
|             Span_NullComparer |             Constant |  10000 | 10,030.6 us |    54.306 us |    39.267 us |   1.54 |     0.01 |
|  Span_ClassComparableComparer |             Constant |  10000 | 14,259.7 us |    62.769 us |    45.386 us |   2.19 |     0.02 |
| Span_StructComparableComparer |             Constant |  10000 | 14,551.8 us |    58.563 us |    42.345 us |   2.24 |     0.02 |
|               Span_Comparison |             Constant |  10000 | 15,816.2 us |   113.021 us |    81.722 us |   2.43 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |             **Constant** | **100000** |  **8,088.5 us** |   **268.162 us** |   **193.898 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 100000 |  8,199.5 us |    63.009 us |    45.560 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |             Constant | 100000 |  8,957.4 us |    95.757 us |    69.239 us |   1.11 |     0.03 |
|                         Span_ |             Constant | 100000 | 12,857.3 us |    54.440 us |    39.363 us |   1.59 |     0.04 |
|             Span_NullComparer |             Constant | 100000 | 12,833.9 us |    99.238 us |    71.756 us |   1.59 |     0.04 |
|  Span_ClassComparableComparer |             Constant | 100000 | 18,037.1 us |   194.361 us |   140.536 us |   2.23 |     0.05 |
| Span_StructComparableComparer |             Constant | 100000 | 18,497.5 us |    58.520 us |    42.314 us |   2.29 |     0.05 |
|               Span_Comparison |             Constant | 100000 | 20,082.9 us |   242.809 us |   175.567 us |   2.48 |     0.06 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **2,054.2 us** |   **117.383 us** |    **84.876 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  1,968.2 us |    72.868 us |    52.689 us |   0.96 |     0.04 |
| Array_ClassComparableComparer |         Decrementing |      2 | 15,394.3 us |   128.890 us |    93.196 us |   7.51 |     0.28 |
|                         Span_ |         Decrementing |      2 |  2,997.6 us |    23.385 us |    16.909 us |   1.46 |     0.05 |
|             Span_NullComparer |         Decrementing |      2 |  3,069.6 us |    25.509 us |    18.445 us |   1.50 |     0.06 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  6,221.0 us |    23.160 us |    16.746 us |   3.03 |     0.11 |
| Span_StructComparableComparer |         Decrementing |      2 |  4,166.6 us |     9.020 us |     6.522 us |   2.03 |     0.08 |
|               Span_Comparison |         Decrementing |      2 |  4,951.6 us |   123.209 us |    89.088 us |   2.41 |     0.10 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **1,904.8 us** |   **127.498 us** |    **92.190 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  1,839.3 us |    28.203 us |    20.393 us |   0.97 |     0.04 |
| Array_ClassComparableComparer |         Decrementing |      3 | 11,098.9 us |   108.814 us |    78.680 us |   5.84 |     0.25 |
|                         Span_ |         Decrementing |      3 |  2,589.7 us |   123.895 us |    89.584 us |   1.36 |     0.07 |
|             Span_NullComparer |         Decrementing |      3 |  2,581.3 us |   241.269 us |   174.453 us |   1.36 |     0.11 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  5,036.9 us |    24.734 us |    17.884 us |   2.65 |     0.11 |
| Span_StructComparableComparer |         Decrementing |      3 |  3,770.4 us |    40.518 us |    29.297 us |   1.98 |     0.09 |
|               Span_Comparison |         Decrementing |      3 |  4,287.8 us |   369.184 us |   266.944 us |   2.26 |     0.16 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **3,100.8 us** |    **12.024 us** |     **8.694 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  3,193.0 us |   331.850 us |   239.950 us |   1.03 |     0.07 |
| Array_ClassComparableComparer |         Decrementing |     10 |  6,856.2 us |   830.523 us |   600.523 us |   2.21 |     0.18 |
|                         Span_ |         Decrementing |     10 |  2,977.4 us |    42.732 us |    30.898 us |   0.96 |     0.01 |
|             Span_NullComparer |         Decrementing |     10 |  3,005.2 us |    29.372 us |    21.238 us |   0.97 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  5,898.6 us |   143.852 us |   104.015 us |   1.90 |     0.03 |
| Span_StructComparableComparer |         Decrementing |     10 |  5,737.4 us |    65.337 us |    47.243 us |   1.85 |     0.02 |
|               Span_Comparison |         Decrementing |     10 |  6,220.1 us |    60.074 us |    43.437 us |   2.01 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **3,135.1 us** |    **63.718 us** |    **46.072 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  3,135.1 us |    65.418 us |    47.301 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |    100 |  4,084.8 us |    72.819 us |    52.653 us |   1.30 |     0.02 |
|                         Span_ |         Decrementing |    100 |  4,645.9 us |    93.220 us |    67.404 us |   1.48 |     0.03 |
|             Span_NullComparer |         Decrementing |    100 |  4,702.5 us |   219.375 us |   158.623 us |   1.50 |     0.05 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  7,246.3 us |   137.050 us |    99.096 us |   2.31 |     0.04 |
| Span_StructComparableComparer |         Decrementing |    100 |  7,199.3 us |   126.250 us |    91.287 us |   2.30 |     0.04 |
|               Span_Comparison |         Decrementing |    100 |  7,736.5 us |   133.788 us |    96.738 us |   2.47 |     0.04 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** |  **10000** |  **7,130.2 us** |   **242.037 us** |   **175.009 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 |  7,060.5 us |    68.331 us |    49.407 us |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |  10000 |  8,936.8 us |   265.133 us |   191.708 us |   1.25 |     0.04 |
|                         Span_ |         Decrementing |  10000 | 12,923.5 us |   128.136 us |    92.651 us |   1.81 |     0.04 |
|             Span_NullComparer |         Decrementing |  10000 | 12,789.2 us |    40.751 us |    29.466 us |   1.79 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 20,040.0 us |    76.117 us |    55.037 us |   2.81 |     0.06 |
| Span_StructComparableComparer |         Decrementing |  10000 | 20,449.4 us |    36.726 us |    26.556 us |   2.87 |     0.06 |
|               Span_Comparison |         Decrementing |  10000 | 21,628.3 us |   256.024 us |   185.122 us |   3.03 |     0.07 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Decrementing** | **100000** |  **9,327.5 us** |   **793.645 us** |   **573.857 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 100000 |  9,181.4 us |   117.167 us |    84.719 us |   0.99 |     0.05 |
| Array_ClassComparableComparer |         Decrementing | 100000 | 11,607.3 us |    83.576 us |    60.431 us |   1.25 |     0.06 |
|                         Span_ |         Decrementing | 100000 | 17,722.4 us |    79.519 us |    57.497 us |   1.91 |     0.10 |
|             Span_NullComparer |         Decrementing | 100000 | 17,670.4 us |    66.270 us |    47.918 us |   1.90 |     0.10 |
|  Span_ClassComparableComparer |         Decrementing | 100000 | 28,308.1 us |    67.059 us |    48.488 us |   3.04 |     0.15 |
| Span_StructComparableComparer |         Decrementing | 100000 | 28,165.6 us |    62.532 us |    45.215 us |   3.03 |     0.15 |
|               Span_Comparison |         Decrementing | 100000 | 29,402.5 us |   189.967 us |   137.359 us |   3.16 |     0.16 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **1,905.4 us** |   **187.314 us** |   **135.440 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  1,762.0 us |    18.621 us |    13.464 us |   0.93 |     0.06 |
| Array_ClassComparableComparer |         Incrementing |      2 | 15,217.5 us |   100.469 us |    72.646 us |   8.02 |     0.49 |
|                         Span_ |         Incrementing |      2 |  2,782.7 us |     8.576 us |     6.201 us |   1.47 |     0.09 |
|             Span_NullComparer |         Incrementing |      2 |  2,824.9 us |    25.090 us |    18.142 us |   1.49 |     0.09 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  6,168.1 us |    40.976 us |    29.628 us |   3.25 |     0.20 |
| Span_StructComparableComparer |         Incrementing |      2 |  3,998.2 us |    22.158 us |    16.022 us |   2.11 |     0.13 |
|               Span_Comparison |         Incrementing |      2 |  4,897.9 us |    21.662 us |    15.663 us |   2.58 |     0.16 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **1,499.2 us** |     **9.914 us** |     **7.169 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  1,467.8 us |     5.174 us |     3.741 us |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      3 | 10,694.6 us |   136.617 us |    98.783 us |   7.13 |     0.07 |
|                         Span_ |         Incrementing |      3 |  2,156.2 us |    10.226 us |     7.394 us |   1.44 |     0.01 |
|             Span_NullComparer |         Incrementing |      3 |  2,170.3 us |    17.859 us |    12.913 us |   1.45 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  4,706.1 us |     7.614 us |     5.505 us |   3.14 |     0.01 |
| Span_StructComparableComparer |         Incrementing |      3 |  3,200.1 us |    25.323 us |    18.310 us |   2.13 |     0.02 |
|               Span_Comparison |         Incrementing |      3 |  3,773.5 us |    11.158 us |     8.068 us |   2.52 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |     **10** |    **894.0 us** |    **43.880 us** |    **31.728 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |    867.9 us |    29.124 us |    21.058 us |   0.97 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |     10 |  3,674.7 us |    89.381 us |    64.628 us |   4.12 |     0.15 |
|                         Span_ |         Incrementing |     10 |    764.4 us |     3.734 us |     2.700 us |   0.86 |     0.03 |
|             Span_NullComparer |         Incrementing |     10 |    779.7 us |     5.322 us |     3.848 us |   0.87 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  1,842.3 us |    22.481 us |    16.255 us |   2.06 |     0.07 |
| Span_StructComparableComparer |         Incrementing |     10 |  1,515.6 us |    58.561 us |    42.343 us |   1.70 |     0.07 |
|               Span_Comparison |         Incrementing |     10 |  1,664.4 us |    15.561 us |    11.251 us |   1.86 |     0.06 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **1,881.8 us** |    **14.545 us** |    **10.517 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  1,875.4 us |    11.906 us |     8.609 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |    100 |  2,611.8 us |    41.472 us |    29.987 us |   1.39 |     0.02 |
|                         Span_ |         Incrementing |    100 |  2,799.3 us |    17.825 us |    12.889 us |   1.49 |     0.01 |
|             Span_NullComparer |         Incrementing |    100 |  2,797.4 us |    44.567 us |    32.225 us |   1.49 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  4,461.2 us |   176.915 us |   127.921 us |   2.37 |     0.07 |
| Span_StructComparableComparer |         Incrementing |    100 |  4,455.0 us |    29.404 us |    21.261 us |   2.37 |     0.02 |
|               Span_Comparison |         Incrementing |    100 |  4,831.4 us |    19.695 us |    14.241 us |   2.57 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **4,432.9 us** |   **535.108 us** |   **386.918 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  4,273.7 us |    40.536 us |    29.311 us |   0.97 |     0.07 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  5,044.6 us |    33.412 us |    24.159 us |   1.14 |     0.08 |
|                         Span_ |         Incrementing |  10000 |  7,628.3 us |    86.347 us |    62.435 us |   1.73 |     0.12 |
|             Span_NullComparer |         Incrementing |  10000 |  7,585.4 us |    29.651 us |    21.440 us |   1.72 |     0.12 |
|  Span_ClassComparableComparer |         Incrementing |  10000 | 11,971.4 us |    49.162 us |    35.548 us |   2.72 |     0.19 |
| Span_StructComparableComparer |         Incrementing |  10000 | 11,932.0 us |    63.810 us |    46.139 us |   2.71 |     0.19 |
|               Span_Comparison |         Incrementing |  10000 | 13,039.3 us |    66.708 us |    48.234 us |   2.96 |     0.21 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |         **Incrementing** | **100000** |  **5,148.0 us** |    **74.278 us** |    **53.708 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 100000 |  5,214.1 us |    64.797 us |    46.852 us |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 100000 |  6,129.4 us |    34.228 us |    24.749 us |   1.19 |     0.01 |
|                         Span_ |         Incrementing | 100000 |  9,602.4 us |    28.900 us |    20.897 us |   1.87 |     0.02 |
|             Span_NullComparer |         Incrementing | 100000 |  9,593.7 us |    23.527 us |    17.011 us |   1.86 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing | 100000 | 15,508.4 us |   107.278 us |    77.569 us |   3.01 |     0.03 |
| Span_StructComparableComparer |         Incrementing | 100000 | 15,070.4 us |    50.334 us |    36.395 us |   2.93 |     0.03 |
|               Span_Comparison |         Incrementing | 100000 | 16,034.0 us |   130.556 us |    94.400 us |   3.11 |     0.04 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **1,860.1 us** |    **20.509 us** |    **14.829 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  1,791.2 us |    11.128 us |     8.046 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 | 14,847.1 us |    57.677 us |    41.704 us |   7.98 |     0.06 |
|                         Span_ |  MedianOfThreeKiller |      2 |  2,787.5 us |    23.544 us |    17.024 us |   1.50 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  2,782.2 us |    28.185 us |    20.379 us |   1.50 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  6,159.1 us |    33.263 us |    24.051 us |   3.31 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  3,958.7 us |    19.209 us |    13.889 us |   2.13 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  4,782.2 us |    20.959 us |    15.155 us |   2.57 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **1,497.2 us** |    **17.637 us** |    **12.753 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  1,475.2 us |    21.430 us |    15.495 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 | 10,318.2 us |    50.597 us |    36.585 us |   6.89 |     0.06 |
|                         Span_ |  MedianOfThreeKiller |      3 |  2,154.9 us |    22.467 us |    16.245 us |   1.44 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  2,219.8 us |    28.172 us |    20.370 us |   1.48 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  4,724.8 us |    68.701 us |    49.675 us |   3.16 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  3,247.9 us |    25.394 us |    18.361 us |   2.17 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  3,807.2 us |     9.727 us |     7.033 us |   2.54 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **1,505.5 us** |     **5.914 us** |     **4.276 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  1,446.6 us |    19.809 us |    14.323 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  4,454.5 us |    36.331 us |    26.270 us |   2.96 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |     10 |  1,564.9 us |    16.512 us |    11.940 us |   1.04 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  1,578.6 us |    12.975 us |     9.382 us |   1.05 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  3,277.3 us |    18.068 us |    13.065 us |   2.18 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  3,059.2 us |    60.633 us |    43.842 us |   2.03 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  3,446.4 us |   149.119 us |   107.823 us |   2.29 |     0.07 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **4,006.9 us** |   **230.677 us** |   **166.794 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  3,919.1 us |    30.579 us |    22.110 us |   0.98 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  5,108.5 us |   316.438 us |   228.805 us |   1.28 |     0.07 |
|                         Span_ |  MedianOfThreeKiller |    100 |  5,955.5 us |   127.063 us |    91.875 us |   1.49 |     0.06 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  6,058.4 us |   354.890 us |   256.608 us |   1.51 |     0.08 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  9,162.1 us |   214.759 us |   155.285 us |   2.29 |     0.09 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  9,593.5 us |   209.012 us |   151.129 us |   2.40 |     0.10 |
|               Span_Comparison |  MedianOfThreeKiller |    100 | 10,136.1 us |   141.598 us |   102.385 us |   2.53 |     0.10 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **10,134.1 us** |    **35.752 us** |    **25.851 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 10,100.6 us |    16.491 us |    11.924 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 11,784.1 us |    60.643 us |    43.849 us |   1.16 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 17,479.6 us |    79.153 us |    57.233 us |   1.72 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 17,638.0 us |    81.254 us |    58.752 us |   1.74 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 25,884.3 us |   321.812 us |   232.691 us |   2.55 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 26,565.7 us |   122.001 us |    88.215 us |   2.62 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 28,668.8 us |   294.590 us |   213.008 us |   2.83 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **100000** | **14,443.3 us** |   **223.189 us** |   **161.380 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 100000 | 14,656.3 us |   432.607 us |   312.803 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 100000 | 16,866.0 us |   237.604 us |   171.803 us |   1.17 |     0.02 |
|                         Span_ |  MedianOfThreeKiller | 100000 | 23,475.0 us |   525.391 us |   379.892 us |   1.63 |     0.03 |
|             Span_NullComparer |  MedianOfThreeKiller | 100000 | 23,348.9 us |   175.215 us |   126.692 us |   1.62 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 100000 | 35,931.0 us |   588.986 us |   425.875 us |   2.49 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 100000 | 36,436.9 us |   349.242 us |   252.525 us |   2.52 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller | 100000 | 39,310.6 us |   339.436 us |   245.434 us |   2.72 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **2,321.1 us** |   **626.939 us** |   **453.318 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  1,969.0 us |    48.076 us |    34.762 us |   0.87 |     0.13 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 | 15,070.7 us |    43.531 us |    31.476 us |   6.68 |     1.00 |
|                         Span_ | PartialRandomShuffle |      2 |  2,932.5 us |    11.827 us |     8.551 us |   1.30 |     0.19 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  3,042.8 us |    85.818 us |    62.052 us |   1.35 |     0.20 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  6,294.3 us |    26.262 us |    18.989 us |   2.79 |     0.42 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  4,164.7 us |    34.176 us |    24.711 us |   1.84 |     0.28 |
|               Span_Comparison | PartialRandomShuffle |      2 |  5,021.4 us |    39.174 us |    28.325 us |   2.22 |     0.33 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **1,783.0 us** |    **54.862 us** |    **39.669 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  1,756.9 us |    34.672 us |    25.070 us |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 | 10,723.1 us |   249.057 us |   180.085 us |   6.02 |     0.16 |
|                         Span_ | PartialRandomShuffle |      3 |  2,412.4 us |    94.532 us |    68.353 us |   1.35 |     0.05 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  2,439.9 us |    87.573 us |    63.321 us |   1.37 |     0.04 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  4,893.9 us |    12.606 us |     9.115 us |   2.75 |     0.06 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  3,493.0 us |    34.852 us |    25.200 us |   1.96 |     0.04 |
|               Span_Comparison | PartialRandomShuffle |      3 |  4,211.5 us |   295.332 us |   213.545 us |   2.36 |     0.12 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **1,652.6 us** |   **146.095 us** |   **105.636 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  1,682.1 us |   195.499 us |   141.359 us |   1.02 |     0.10 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  4,639.6 us |   241.344 us |   174.507 us |   2.82 |     0.19 |
|                         Span_ | PartialRandomShuffle |     10 |  1,522.0 us |    11.999 us |     8.676 us |   0.92 |     0.05 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  1,538.7 us |    45.630 us |    32.993 us |   0.93 |     0.06 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  2,888.4 us |     5.060 us |     3.659 us |   1.75 |     0.10 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  2,559.9 us |   115.116 us |    83.236 us |   1.55 |     0.10 |
|               Span_Comparison | PartialRandomShuffle |     10 |  2,884.2 us |   130.733 us |    94.529 us |   1.75 |     0.11 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **4,668.8 us** |   **111.515 us** |    **80.633 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  4,638.5 us |    24.817 us |    17.945 us |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  5,446.7 us |    34.423 us |    24.890 us |   1.17 |     0.02 |
|                         Span_ | PartialRandomShuffle |    100 |  5,905.6 us |   426.320 us |   308.257 us |   1.27 |     0.07 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  5,760.3 us |    42.185 us |    30.502 us |   1.23 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  8,433.5 us |   201.136 us |   145.434 us |   1.81 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  8,547.9 us |   165.457 us |   119.636 us |   1.83 |     0.04 |
|               Span_Comparison | PartialRandomShuffle |    100 |  9,008.4 us |    48.400 us |    34.997 us |   1.93 |     0.03 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **8,999.2 us** |   **224.933 us** |   **162.641 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  9,082.4 us |   393.786 us |   284.733 us |   1.01 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 10,111.2 us |   109.265 us |    79.005 us |   1.12 |     0.02 |
|                         Span_ | PartialRandomShuffle |  10000 | 13,178.8 us |   909.861 us |   657.889 us |   1.46 |     0.07 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 12,898.1 us |    65.159 us |    47.114 us |   1.43 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 18,004.5 us |   119.324 us |    86.279 us |   2.00 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 18,809.4 us |   382.020 us |   276.226 us |   2.09 |     0.05 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 19,698.1 us |   478.357 us |   345.883 us |   2.19 |     0.05 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** | **100000** |  **7,589.1 us** |    **49.048 us** |    **35.465 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 100000 |  7,556.0 us |    47.087 us |    34.047 us |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle | 100000 |  8,820.5 us |   497.280 us |   359.566 us |   1.16 |     0.05 |
|                         Span_ | PartialRandomShuffle | 100000 | 12,505.0 us |   203.720 us |   147.303 us |   1.65 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle | 100000 | 12,640.0 us |    41.640 us |    30.109 us |   1.67 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 100000 | 17,923.6 us |    76.499 us |    55.314 us |   2.36 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle | 100000 | 19,026.4 us |   167.843 us |   121.361 us |   2.51 |     0.02 |
|               Span_Comparison | PartialRandomShuffle | 100000 | 19,448.5 us |   201.411 us |   145.633 us |   2.56 |     0.02 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |      **2** |  **2,237.3 us** |   **130.182 us** |    **94.130 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  2,107.1 us |    16.337 us |    11.812 us |   0.94 |     0.03 |
| Array_ClassComparableComparer |               Random |      2 | 15,850.9 us |   853.891 us |   617.419 us |   7.10 |     0.37 |
|                         Span_ |               Random |      2 |  3,050.9 us |    28.876 us |    20.879 us |   1.37 |     0.05 |
|             Span_NullComparer |               Random |      2 |  3,040.9 us |    42.412 us |    30.667 us |   1.36 |     0.05 |
|  Span_ClassComparableComparer |               Random |      2 |  6,380.4 us |    71.193 us |    51.477 us |   2.86 |     0.11 |
| Span_StructComparableComparer |               Random |      2 |  4,272.0 us |    12.576 us |     9.093 us |   1.91 |     0.07 |
|               Span_Comparison |               Random |      2 |  5,049.7 us |    18.479 us |    13.361 us |   2.26 |     0.08 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |      **3** |  **2,111.7 us** |     **5.983 us** |     **4.326 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  2,044.2 us |    19.696 us |    14.242 us |   0.97 |     0.01 |
| Array_ClassComparableComparer |               Random |      3 | 11,157.2 us |    57.256 us |    41.400 us |   5.28 |     0.02 |
|                         Span_ |               Random |      3 |  2,673.6 us |    20.176 us |    14.588 us |   1.27 |     0.01 |
|             Span_NullComparer |               Random |      3 |  2,665.8 us |    17.415 us |    12.592 us |   1.26 |     0.01 |
|  Span_ClassComparableComparer |               Random |      3 |  5,148.8 us |    16.246 us |    11.747 us |   2.44 |     0.01 |
| Span_StructComparableComparer |               Random |      3 |  3,820.3 us |    24.077 us |    17.409 us |   1.81 |     0.01 |
|               Span_Comparison |               Random |      3 |  4,324.9 us |    15.579 us |    11.265 us |   2.05 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |     **10** |  **2,720.7 us** |    **12.970 us** |     **9.378 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  2,746.9 us |   104.042 us |    75.229 us |   1.01 |     0.03 |
| Array_ClassComparableComparer |               Random |     10 |  5,565.7 us |    67.255 us |    48.630 us |   2.05 |     0.02 |
|                         Span_ |               Random |     10 |  2,519.2 us |    16.621 us |    12.018 us |   0.93 |     0.01 |
|             Span_NullComparer |               Random |     10 |  2,518.2 us |    24.410 us |    17.650 us |   0.93 |     0.01 |
|  Span_ClassComparableComparer |               Random |     10 |  4,408.4 us |    15.191 us |    10.984 us |   1.62 |     0.01 |
| Span_StructComparableComparer |               Random |     10 |  4,122.0 us |    25.665 us |    18.557 us |   1.52 |     0.01 |
|               Span_Comparison |               Random |     10 |  4,549.9 us |    13.771 us |     9.957 us |   1.67 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |    **100** |  **5,452.9 us** |    **34.148 us** |    **24.691 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  5,547.3 us |   341.534 us |   246.951 us |   1.02 |     0.04 |
| Array_ClassComparableComparer |               Random |    100 |  6,276.6 us |    46.522 us |    33.638 us |   1.15 |     0.01 |
|                         Span_ |               Random |    100 |  6,599.8 us |    63.554 us |    45.954 us |   1.21 |     0.01 |
|             Span_NullComparer |               Random |    100 |  6,564.0 us |    42.814 us |    30.957 us |   1.20 |     0.01 |
|  Span_ClassComparableComparer |               Random |    100 |  9,242.0 us |    24.779 us |    17.917 us |   1.69 |     0.01 |
| Span_StructComparableComparer |               Random |    100 |  9,314.6 us |    64.850 us |    46.891 us |   1.71 |     0.01 |
|               Span_Comparison |               Random |    100 |  9,918.4 us |    38.089 us |    27.541 us |   1.82 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** |  **10000** | **11,123.6 us** |    **55.740 us** |    **40.303 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 11,110.8 us |   165.228 us |   119.471 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |  10000 | 12,243.2 us |    77.808 us |    56.260 us |   1.10 |     0.01 |
|                         Span_ |               Random |  10000 | 15,261.9 us |   147.679 us |   106.782 us |   1.37 |     0.01 |
|             Span_NullComparer |               Random |  10000 | 15,717.1 us | 2,186.446 us | 1,580.943 us |   1.41 |     0.14 |
|  Span_ClassComparableComparer |               Random |  10000 | 20,592.8 us |    65.841 us |    47.607 us |   1.85 |     0.01 |
| Span_StructComparableComparer |               Random |  10000 | 20,789.3 us |   473.976 us |   342.716 us |   1.87 |     0.03 |
|               Span_Comparison |               Random |  10000 | 22,043.8 us |    40.027 us |    28.942 us |   1.98 |     0.01 |
|                               |                      |        |             |              |              |        |          |
|                        **Array_** |               **Random** | **100000** | **14,793.3 us** |   **152.655 us** |   **110.380 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 100000 | 15,116.2 us |   529.541 us |   382.893 us |   1.02 |     0.03 |
| Array_ClassComparableComparer |               Random | 100000 | 16,876.1 us | 2,250.344 us | 1,627.146 us |   1.14 |     0.11 |
|                         Span_ |               Random | 100000 | 20,303.1 us |    55.057 us |    39.810 us |   1.37 |     0.01 |
|             Span_NullComparer |               Random | 100000 | 20,344.1 us |   113.193 us |    81.846 us |   1.38 |     0.01 |
|  Span_ClassComparableComparer |               Random | 100000 | 26,774.1 us |   391.572 us |   283.132 us |   1.81 |     0.02 |
| Span_StructComparableComparer |               Random | 100000 | 27,202.5 us |   737.866 us |   533.526 us |   1.84 |     0.04 |
|               Span_Comparison |               Random | 100000 | 29,085.9 us |   453.625 us |   328.001 us |   1.97 |     0.03 |
