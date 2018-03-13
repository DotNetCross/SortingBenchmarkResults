``` ini

BenchmarkDotNet=v0.10.13, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.248)
Intel Core i7-8700 CPU 3.20GHz (Coffee Lake), 1 CPU, 12 logical cores and 6 physical cores
Frequency=3117186 Hz, Resolution=320.8022 ns, Timer=TSC
.NET Core SDK=2.1.300-preview1-008174
  [Host] : .NET Core 2.0.5 (CoreCLR 4.6.26020.03, CoreFX 4.6.26018.01), 64bit RyuJIT

Platform=X64  Runtime=Core  Toolchain=InProcessToolchain  
LaunchCount=1  RunStrategy=Monitoring  TargetCount=11  
UnrollFactor=1  WarmupCount=3  

```
|                        Method |               Filler | Length |         Mean |        Error |       StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |-------------:|-------------:|-------------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |   **1,887.7 us** |    **10.454 us** |     **7.559 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |   1,847.7 us |   193.784 us |   140.119 us |   0.98 |     0.07 |
| Array_ClassComparableComparer |             Constant |      2 |   2,483.4 us |   110.253 us |    79.720 us |   1.32 |     0.04 |
|                         Span_ |             Constant |      2 |   3,732.4 us |    34.594 us |    25.014 us |   1.98 |     0.01 |
|             Span_NullComparer |             Constant |      2 |   3,469.8 us |    24.523 us |    17.732 us |   1.84 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      2 |   6,680.0 us |   103.758 us |    75.024 us |   3.54 |     0.04 |
| Span_StructComparableComparer |             Constant |      2 |   4,588.1 us |    19.810 us |    14.324 us |   2.43 |     0.01 |
|               Span_Comparison |             Constant |      2 |   3,324.1 us |    25.049 us |    18.112 us |   1.76 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |             **Constant** |      **3** |   **1,645.0 us** |    **19.437 us** |    **14.054 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |   1,643.4 us |   242.360 us |   175.242 us |   1.00 |     0.10 |
| Array_ClassComparableComparer |             Constant |      3 |   2,117.5 us |    16.704 us |    12.078 us |   1.29 |     0.01 |
|                         Span_ |             Constant |      3 |   2,581.4 us |    15.981 us |    11.555 us |   1.57 |     0.01 |
|             Span_NullComparer |             Constant |      3 |   2,294.6 us |    36.581 us |    26.450 us |   1.39 |     0.02 |
|  Span_ClassComparableComparer |             Constant |      3 |   5,082.5 us |    23.040 us |    16.659 us |   3.09 |     0.03 |
| Span_StructComparableComparer |             Constant |      3 |   3,411.5 us |    15.520 us |    11.222 us |   2.07 |     0.02 |
|               Span_Comparison |             Constant |      3 |   2,275.4 us |    32.319 us |    23.369 us |   1.38 |     0.02 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |             **Constant** |     **10** |     **914.1 us** |    **12.724 us** |     **9.200 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |     882.5 us |    36.482 us |    26.379 us |   0.97 |     0.03 |
| Array_ClassComparableComparer |             Constant |     10 |   1,215.1 us |     8.801 us |     6.363 us |   1.33 |     0.01 |
|                         Span_ |             Constant |     10 |     984.5 us |    13.754 us |     9.945 us |   1.08 |     0.01 |
|             Span_NullComparer |             Constant |     10 |     892.3 us |     5.669 us |     4.099 us |   0.98 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     10 |   1,797.7 us |    24.109 us |    17.432 us |   1.97 |     0.03 |
| Span_StructComparableComparer |             Constant |     10 |   1,384.3 us |    17.412 us |    12.590 us |   1.51 |     0.02 |
|               Span_Comparison |             Constant |     10 |     944.4 us |    14.033 us |    10.147 us |   1.03 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |             **Constant** |    **100** |   **2,444.3 us** |    **15.555 us** |    **11.248 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |   2,450.3 us |    20.075 us |    14.516 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |    100 |   3,194.2 us |    24.751 us |    17.897 us |   1.31 |     0.01 |
|                         Span_ |             Constant |    100 |   3,511.5 us |    31.861 us |    23.037 us |   1.44 |     0.01 |
|             Span_NullComparer |             Constant |    100 |   3,571.4 us |    32.294 us |    23.350 us |   1.46 |     0.01 |
|  Span_ClassComparableComparer |             Constant |    100 |   4,728.9 us |    24.368 us |    17.620 us |   1.93 |     0.01 |
| Span_StructComparableComparer |             Constant |    100 |   4,387.3 us |    28.802 us |    20.825 us |   1.79 |     0.01 |
|               Span_Comparison |             Constant |    100 |   2,929.2 us |    16.356 us |    11.827 us |   1.20 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |             **Constant** |   **1000** |   **3,983.1 us** |    **41.659 us** |    **30.122 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |   3,972.8 us |    37.815 us |    27.343 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   1000 |   5,297.2 us |    76.635 us |    55.412 us |   1.33 |     0.02 |
|                         Span_ |             Constant |   1000 |   6,389.2 us |    50.237 us |    36.325 us |   1.60 |     0.01 |
|             Span_NullComparer |             Constant |   1000 |   7,274.0 us |   165.150 us |   119.414 us |   1.83 |     0.03 |
|  Span_ClassComparableComparer |             Constant |   1000 |   7,807.3 us |    92.460 us |    66.854 us |   1.96 |     0.02 |
| Span_StructComparableComparer |             Constant |   1000 |   7,724.1 us |    35.412 us |    25.605 us |   1.94 |     0.02 |
|               Span_Comparison |             Constant |   1000 |   5,072.9 us |    58.787 us |    42.507 us |   1.27 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |             **Constant** |  **10000** |   **6,222.5 us** |    **50.723 us** |    **36.676 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |   6,193.1 us |    24.228 us |    17.519 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |  10000 |   8,186.9 us |    35.723 us |    25.830 us |   1.32 |     0.01 |
|                         Span_ |             Constant |  10000 |  10,325.7 us |    42.525 us |    30.748 us |   1.66 |     0.01 |
|             Span_NullComparer |             Constant |  10000 |  10,263.3 us |    41.882 us |    30.284 us |   1.65 |     0.01 |
|  Span_ClassComparableComparer |             Constant |  10000 |  12,338.8 us |    64.397 us |    46.563 us |   1.98 |     0.01 |
| Span_StructComparableComparer |             Constant |  10000 |  12,377.1 us |    54.695 us |    39.548 us |   1.99 |     0.01 |
|               Span_Comparison |             Constant |  10000 |   7,989.4 us |    29.411 us |    21.266 us |   1.28 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Decrementing** |      **2** |   **5,822.5 us** |    **28.606 us** |    **20.684 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |   5,680.9 us |   159.177 us |   115.096 us |   0.98 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |      2 |   6,523.4 us |    30.986 us |    22.405 us |   1.12 |     0.01 |
|                         Span_ |         Decrementing |      2 |   7,765.6 us |    54.729 us |    39.573 us |   1.33 |     0.01 |
|             Span_NullComparer |         Decrementing |      2 |   7,478.1 us |    34.359 us |    24.844 us |   1.28 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  11,280.3 us |    42.762 us |    30.920 us |   1.94 |     0.01 |
| Span_StructComparableComparer |         Decrementing |      2 |   8,975.2 us |    38.258 us |    27.663 us |   1.54 |     0.01 |
|               Span_Comparison |         Decrementing |      2 |   7,159.7 us |    41.632 us |    30.103 us |   1.23 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Decrementing** |      **3** |   **8,958.3 us** |    **68.247 us** |    **49.347 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |   9,168.5 us |    42.687 us |    30.866 us |   1.02 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      3 |   9,637.5 us |    50.842 us |    36.762 us |   1.08 |     0.01 |
|                         Span_ |         Decrementing |      3 |  10,750.7 us |    22.287 us |    16.115 us |   1.20 |     0.01 |
|             Span_NullComparer |         Decrementing |      3 |   9,937.1 us |    30.720 us |    22.213 us |   1.11 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  13,588.3 us |    43.389 us |    31.373 us |   1.52 |     0.01 |
| Span_StructComparableComparer |         Decrementing |      3 |  11,020.1 us |    32.010 us |    23.145 us |   1.23 |     0.01 |
|               Span_Comparison |         Decrementing |      3 |   9,850.3 us |    65.249 us |    47.179 us |   1.10 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **36,055.5 us** |    **67.993 us** |    **49.164 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  33,779.0 us |    84.601 us |    61.172 us |   0.94 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |     10 |  34,672.5 us |   174.879 us |   126.449 us |   0.96 |     0.00 |
|                         Span_ |         Decrementing |     10 |  34,815.9 us |   680.275 us |   491.883 us |   0.97 |     0.01 |
|             Span_NullComparer |         Decrementing |     10 |  32,871.5 us |    87.734 us |    63.437 us |   0.91 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  37,001.8 us |    48.715 us |    35.224 us |   1.03 |     0.00 |
| Span_StructComparableComparer |         Decrementing |     10 |  34,980.8 us |   137.421 us |    99.364 us |   0.97 |     0.00 |
|               Span_Comparison |         Decrementing |     10 |  33,540.5 us |    38.020 us |    27.491 us |   0.93 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **41,191.1 us** |   **174.974 us** |   **126.518 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  41,972.2 us |   237.144 us |   171.470 us |   1.02 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |    100 |  46,386.3 us |   168.859 us |   122.096 us |   1.13 |     0.00 |
|                         Span_ |         Decrementing |    100 |  44,734.9 us |   174.335 us |   126.056 us |   1.09 |     0.00 |
|             Span_NullComparer |         Decrementing |    100 |  44,267.5 us |   136.692 us |    98.837 us |   1.07 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  48,655.5 us |   108.301 us |    78.309 us |   1.18 |     0.00 |
| Span_StructComparableComparer |         Decrementing |    100 |  47,535.4 us |   135.139 us |    97.714 us |   1.15 |     0.00 |
|               Span_Comparison |         Decrementing |    100 |  46,309.0 us |    99.889 us |    72.227 us |   1.12 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Decrementing** |   **1000** |  **78,402.4 us** |    **89.618 us** |    **64.799 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 |  77,945.2 us |    71.083 us |    51.397 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |   1000 |  83,244.2 us |    91.914 us |    66.460 us |   1.06 |     0.00 |
|                         Span_ |         Decrementing |   1000 |  87,186.9 us |    64.392 us |    46.559 us |   1.11 |     0.00 |
|             Span_NullComparer |         Decrementing |   1000 |  83,591.2 us |   144.203 us |   104.268 us |   1.07 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |   1000 |  89,989.4 us |    62.856 us |    45.449 us |   1.15 |     0.00 |
| Span_StructComparableComparer |         Decrementing |   1000 |  88,108.2 us |    72.442 us |    52.380 us |   1.12 |     0.00 |
|               Span_Comparison |         Decrementing |   1000 |  83,093.5 us |   981.345 us |   709.577 us |   1.06 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Decrementing** |  **10000** | **121,532.1 us** |   **108.272 us** |    **78.287 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 | 126,986.4 us |    66.866 us |    48.349 us |   1.04 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 129,699.1 us |   119.255 us |    86.229 us |   1.07 |     0.00 |
|                         Span_ |         Decrementing |  10000 | 132,372.9 us |   101.695 us |    73.532 us |   1.09 |     0.00 |
|             Span_NullComparer |         Decrementing |  10000 | 130,179.2 us |    94.350 us |    68.222 us |   1.07 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 141,055.3 us |   273.370 us |   197.664 us |   1.16 |     0.00 |
| Span_StructComparableComparer |         Decrementing |  10000 | 140,934.3 us |   147.543 us |   106.683 us |   1.16 |     0.00 |
|               Span_Comparison |         Decrementing |  10000 | 125,544.0 us |    46.063 us |    33.306 us |   1.03 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Incrementing** |      **2** |   **5,540.5 us** |   **192.422 us** |   **139.134 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |   5,408.9 us |   142.788 us |   103.245 us |   0.98 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |      2 |   6,043.4 us |   122.094 us |    88.282 us |   1.09 |     0.03 |
|                         Span_ |         Incrementing |      2 |   7,822.6 us |    56.660 us |    40.969 us |   1.41 |     0.03 |
|             Span_NullComparer |         Incrementing |      2 |   7,355.4 us |    45.732 us |    33.067 us |   1.33 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  11,286.4 us |    34.677 us |    25.074 us |   2.04 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      2 |   8,623.7 us |    35.781 us |    25.872 us |   1.56 |     0.04 |
|               Span_Comparison |         Incrementing |      2 |   6,983.5 us |    33.388 us |    24.142 us |   1.26 |     0.03 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Incrementing** |      **3** |   **8,325.3 us** |    **22.158 us** |    **16.022 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |   8,559.7 us |    34.407 us |    24.879 us |   1.03 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |      3 |   9,402.8 us |    48.144 us |    34.811 us |   1.13 |     0.00 |
|                         Span_ |         Incrementing |      3 |  10,308.0 us |    17.372 us |    12.561 us |   1.24 |     0.00 |
|             Span_NullComparer |         Incrementing |      3 |   9,705.8 us |    23.515 us |    17.003 us |   1.17 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  12,468.6 us |    63.516 us |    45.926 us |   1.50 |     0.01 |
| Span_StructComparableComparer |         Incrementing |      3 |  10,561.4 us |    27.955 us |    20.213 us |   1.27 |     0.00 |
|               Span_Comparison |         Incrementing |      3 |   9,482.2 us |    37.004 us |    26.757 us |   1.14 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Incrementing** |     **10** |   **6,888.6 us** |    **49.410 us** |    **35.727 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |   6,951.3 us |    31.935 us |    23.091 us |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |     10 |   7,384.9 us |    51.594 us |    37.306 us |   1.07 |     0.01 |
|                         Span_ |         Incrementing |     10 |   7,447.3 us |    46.208 us |    33.411 us |   1.08 |     0.01 |
|             Span_NullComparer |         Incrementing |     10 |   6,942.0 us |    31.640 us |    22.878 us |   1.01 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |     10 |   8,252.1 us |    69.039 us |    49.919 us |   1.20 |     0.01 |
| Span_StructComparableComparer |         Incrementing |     10 |   7,535.7 us |   104.682 us |    75.692 us |   1.09 |     0.01 |
|               Span_Comparison |         Incrementing |     10 |   7,293.4 us |    28.200 us |    20.391 us |   1.06 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **27,163.5 us** |   **120.401 us** |    **87.057 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  27,677.0 us |   152.810 us |   110.492 us |   1.02 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |    100 |  29,430.3 us |   132.286 us |    95.651 us |   1.08 |     0.00 |
|                         Span_ |         Incrementing |    100 |  30,145.6 us |    92.009 us |    66.528 us |   1.11 |     0.00 |
|             Span_NullComparer |         Incrementing |    100 |  28,968.4 us |    85.768 us |    62.016 us |   1.07 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  31,244.0 us |    67.092 us |    48.512 us |   1.15 |     0.00 |
| Span_StructComparableComparer |         Incrementing |    100 |  30,609.0 us |    76.870 us |    55.582 us |   1.13 |     0.00 |
|               Span_Comparison |         Incrementing |    100 |  28,300.0 us |   168.102 us |   121.549 us |   1.04 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Incrementing** |   **1000** |  **46,469.9 us** |    **50.458 us** |    **36.484 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 |  47,725.1 us |   176.277 us |   127.460 us |   1.03 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |   1000 |  52,674.0 us |   167.580 us |   121.171 us |   1.13 |     0.00 |
|                         Span_ |         Incrementing |   1000 |  50,467.9 us |    69.419 us |    50.195 us |   1.09 |     0.00 |
|             Span_NullComparer |         Incrementing |   1000 |  50,430.4 us |    64.521 us |    46.653 us |   1.09 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |   1000 |  54,929.5 us |   147.358 us |   106.549 us |   1.18 |     0.00 |
| Span_StructComparableComparer |         Incrementing |   1000 |  53,478.6 us |    47.335 us |    34.226 us |   1.15 |     0.00 |
|               Span_Comparison |         Incrementing |   1000 |  49,736.5 us |   158.757 us |   114.792 us |   1.07 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **74,179.7 us** |   **139.418 us** |   **100.808 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  73,416.5 us |   124.319 us |    89.890 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  77,733.8 us |    57.116 us |    41.299 us |   1.05 |     0.00 |
|                         Span_ |         Incrementing |  10000 |  78,683.4 us |    76.388 us |    55.234 us |   1.06 |     0.00 |
|             Span_NullComparer |         Incrementing |  10000 |  78,483.0 us |   241.854 us |   174.876 us |   1.06 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |  10000 |  84,640.1 us |   273.337 us |   197.641 us |   1.14 |     0.00 |
| Span_StructComparableComparer |         Incrementing |  10000 |  86,441.3 us |   328.618 us |   237.613 us |   1.17 |     0.00 |
|               Span_Comparison |         Incrementing |  10000 |  78,210.3 us |    65.703 us |    47.508 us |   1.05 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |   **5,448.1 us** |   **128.157 us** |    **92.666 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |   5,495.1 us |   136.684 us |    98.831 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |   6,104.0 us |    35.284 us |    25.513 us |   1.12 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |      2 |   7,832.6 us |    42.871 us |    30.998 us |   1.44 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |   7,311.5 us |    39.721 us |    28.721 us |   1.34 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  11,194.1 us |    25.633 us |    18.534 us |   2.06 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |   8,839.4 us |    32.697 us |    23.642 us |   1.62 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |   6,977.0 us |    47.077 us |    34.040 us |   1.28 |     0.02 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |   **8,548.2 us** |    **38.126 us** |    **27.567 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |   8,687.3 us |    48.233 us |    34.876 us |   1.02 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |   9,150.9 us |    62.314 us |    45.057 us |   1.07 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |      3 |   9,844.2 us |    23.346 us |    16.881 us |   1.15 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |   9,434.2 us |    25.531 us |    18.461 us |   1.10 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  13,102.2 us |   105.214 us |    76.077 us |   1.53 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  11,254.6 us |    36.962 us |    26.726 us |   1.32 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |   9,413.4 us |    67.051 us |    48.483 us |   1.10 |     0.01 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **17,756.3 us** |    **46.807 us** |    **33.844 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  17,112.5 us |    29.373 us |    21.239 us |   0.96 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  18,037.5 us |    43.064 us |    31.138 us |   1.02 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |     10 |  16,757.7 us |    60.345 us |    43.633 us |   0.94 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  17,619.9 us |    31.578 us |    22.833 us |   0.99 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  18,253.7 us |   137.282 us |    99.264 us |   1.03 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  17,457.6 us |    79.594 us |    57.552 us |   0.98 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  16,737.3 us |    64.898 us |    46.925 us |   0.94 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **54,001.3 us** |   **204.271 us** |   **147.701 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  53,685.9 us |   114.332 us |    82.669 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  57,425.3 us |   129.453 us |    93.603 us |   1.06 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |    100 |  56,297.5 us |   386.647 us |   279.571 us |   1.04 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  56,395.6 us |    54.705 us |    39.555 us |   1.04 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  62,822.7 us |    76.759 us |    55.502 us |   1.16 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  59,785.6 us |    57.154 us |    41.326 us |   1.11 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |    100 |  55,279.8 us |    44.027 us |    31.835 us |   1.02 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** |  **97,160.3 us** |    **87.866 us** |    **63.533 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 |  96,097.2 us | 1,721.369 us | 1,244.663 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 103,137.4 us |   306.642 us |   221.723 us |   1.06 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 102,563.2 us |   152.440 us |   110.224 us |   1.06 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 103,146.1 us |   201.129 us |   145.429 us |   1.06 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 112,783.6 us |   394.752 us |   285.432 us |   1.16 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 113,541.7 us |    93.972 us |    67.948 us |   1.17 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 |  98,246.7 us |   198.463 us |   143.502 us |   1.01 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **164,900.3 us** |   **195.070 us** |   **141.048 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 164,499.9 us |   140.889 us |   101.872 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 174,673.2 us |   164.533 us |   118.968 us |   1.06 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 175,675.3 us |   130.252 us |    94.181 us |   1.07 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 175,091.1 us |   458.048 us |   331.198 us |   1.06 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 197,110.6 us |   219.736 us |   158.883 us |   1.20 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 182,257.2 us |   238.629 us |   172.544 us |   1.11 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 167,885.0 us |   332.181 us |   240.188 us |   1.02 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |   **5,827.6 us** |   **330.695 us** |   **239.114 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |   5,824.9 us |   240.651 us |   174.006 us |   1.00 |     0.05 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |   6,390.6 us |   165.458 us |   119.637 us |   1.10 |     0.05 |
|                         Span_ | PartialRandomShuffle |      2 |   7,969.5 us |   192.256 us |   139.013 us |   1.37 |     0.06 |
|             Span_NullComparer | PartialRandomShuffle |      2 |   7,561.9 us |   191.536 us |   138.493 us |   1.30 |     0.05 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  11,521.2 us |   159.374 us |   115.238 us |   1.98 |     0.08 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |   9,127.1 us |   193.274 us |   139.750 us |   1.57 |     0.06 |
|               Span_Comparison | PartialRandomShuffle |      2 |   7,454.9 us |   232.776 us |   168.312 us |   1.28 |     0.05 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |   **9,020.3 us** |   **226.014 us** |   **163.423 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |   8,909.5 us |   247.664 us |   179.077 us |   0.99 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |   9,804.3 us |   349.427 us |   252.658 us |   1.09 |     0.03 |
|                         Span_ | PartialRandomShuffle |      3 |  10,410.4 us |   138.213 us |    99.937 us |   1.15 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  10,068.3 us |   220.131 us |   159.169 us |   1.12 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  13,104.4 us |   249.310 us |   180.268 us |   1.45 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  11,196.6 us |   276.513 us |   199.937 us |   1.24 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |      3 |   9,995.5 us |   316.179 us |   228.618 us |   1.11 |     0.03 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **12,167.2 us** |   **210.725 us** |   **152.368 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  12,037.0 us |   177.371 us |   128.251 us |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  13,380.3 us |   183.106 us |   132.397 us |   1.10 |     0.02 |
|                         Span_ | PartialRandomShuffle |     10 |  12,034.1 us |   188.065 us |   135.983 us |   0.99 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  11,926.5 us |   237.245 us |   171.544 us |   0.98 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  13,850.2 us |   221.306 us |   160.019 us |   1.14 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  12,698.8 us |   253.279 us |   183.138 us |   1.04 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |     10 |  12,385.6 us |   201.019 us |   145.350 us |   1.02 |     0.02 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **49,034.3 us** |   **166.551 us** |   **120.427 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  49,542.0 us |   202.713 us |   146.575 us |   1.01 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  53,873.6 us |   135.866 us |    98.240 us |   1.10 |     0.00 |
|                         Span_ | PartialRandomShuffle |    100 |  50,154.3 us |   218.313 us |   157.855 us |   1.02 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  49,983.4 us |   259.098 us |   187.345 us |   1.02 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  53,118.5 us |   193.759 us |   140.101 us |   1.08 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  52,772.6 us |   213.088 us |   154.077 us |   1.08 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |    100 |  50,321.8 us |   196.202 us |   141.867 us |   1.03 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** |  **72,479.4 us** |   **131.401 us** |    **95.012 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 |  76,159.1 us |   172.700 us |   124.873 us |   1.05 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 |  79,605.1 us |   173.190 us |   125.228 us |   1.10 |     0.00 |
|                         Span_ | PartialRandomShuffle |   1000 |  77,514.1 us |   160.083 us |   115.750 us |   1.07 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   1000 |  78,857.6 us |   101.571 us |    73.443 us |   1.09 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 |  83,233.1 us |   120.042 us |    86.798 us |   1.15 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 |  84,568.9 us |   130.386 us |    94.278 us |   1.17 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |   1000 |  75,559.8 us |   153.302 us |   110.848 us |   1.04 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **98,212.6 us** |   **177.536 us** |   **128.370 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  99,379.0 us |   163.609 us |   118.300 us |   1.01 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 106,289.6 us |   104.644 us |    75.664 us |   1.08 |     0.00 |
|                         Span_ | PartialRandomShuffle |  10000 | 104,777.6 us |   161.549 us |   116.811 us |   1.07 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 108,118.6 us |   216.756 us |   156.729 us |   1.10 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 119,106.0 us |   226.283 us |   163.618 us |   1.21 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 110,305.6 us |   212.515 us |   153.662 us |   1.12 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 102,395.0 us |   231.111 us |   167.109 us |   1.04 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |               **Random** |      **2** |   **5,760.1 us** |   **112.773 us** |    **81.542 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |   5,539.5 us |   171.549 us |   124.041 us |   0.96 |     0.02 |
| Array_ClassComparableComparer |               Random |      2 |   6,145.7 us |    30.253 us |    21.875 us |   1.07 |     0.01 |
|                         Span_ |               Random |      2 |   7,592.7 us |    40.495 us |    29.280 us |   1.32 |     0.02 |
|             Span_NullComparer |               Random |      2 |   7,273.2 us |    32.924 us |    23.806 us |   1.26 |     0.02 |
|  Span_ClassComparableComparer |               Random |      2 |  11,510.4 us |    35.461 us |    25.641 us |   2.00 |     0.03 |
| Span_StructComparableComparer |               Random |      2 |   8,681.8 us |    36.777 us |    26.592 us |   1.51 |     0.02 |
|               Span_Comparison |               Random |      2 |   7,009.4 us |    32.096 us |    23.207 us |   1.22 |     0.02 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |               **Random** |      **3** |   **8,430.3 us** |    **32.671 us** |    **23.623 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |   8,293.3 us |    30.481 us |    22.040 us |   0.98 |     0.00 |
| Array_ClassComparableComparer |               Random |      3 |   9,341.2 us |    47.726 us |    34.509 us |   1.11 |     0.00 |
|                         Span_ |               Random |      3 |   9,836.8 us |    33.062 us |    23.906 us |   1.17 |     0.00 |
|             Span_NullComparer |               Random |      3 |   9,527.7 us |    28.938 us |    20.924 us |   1.13 |     0.00 |
|  Span_ClassComparableComparer |               Random |      3 |  12,591.4 us |    53.102 us |    38.396 us |   1.49 |     0.01 |
| Span_StructComparableComparer |               Random |      3 |  10,663.9 us |    38.511 us |    27.846 us |   1.26 |     0.00 |
|               Span_Comparison |               Random |      3 |   9,914.9 us |    40.182 us |    29.055 us |   1.18 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |               **Random** |     **10** |  **20,949.0 us** |    **88.432 us** |    **63.942 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  20,379.8 us |    40.637 us |    29.384 us |   0.97 |     0.00 |
| Array_ClassComparableComparer |               Random |     10 |  21,807.6 us |    80.642 us |    58.309 us |   1.04 |     0.00 |
|                         Span_ |               Random |     10 |  20,423.7 us |    37.344 us |    27.002 us |   0.97 |     0.00 |
|             Span_NullComparer |               Random |     10 |  20,442.0 us |    45.419 us |    32.841 us |   0.98 |     0.00 |
|  Span_ClassComparableComparer |               Random |     10 |  22,844.7 us |    34.766 us |    25.138 us |   1.09 |     0.00 |
| Span_StructComparableComparer |               Random |     10 |  22,482.1 us |    77.856 us |    56.295 us |   1.07 |     0.00 |
|               Span_Comparison |               Random |     10 |  20,766.6 us |    32.079 us |    23.195 us |   0.99 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |               **Random** |    **100** |  **46,765.2 us** |   **142.938 us** |   **103.354 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  50,385.8 us |   134.548 us |    97.287 us |   1.08 |     0.00 |
| Array_ClassComparableComparer |               Random |    100 |  49,590.5 us |    92.803 us |    67.102 us |   1.06 |     0.00 |
|                         Span_ |               Random |    100 |  50,422.1 us |    91.021 us |    65.815 us |   1.08 |     0.00 |
|             Span_NullComparer |               Random |    100 |  51,070.3 us |   165.029 us |   119.326 us |   1.09 |     0.00 |
|  Span_ClassComparableComparer |               Random |    100 |  57,109.6 us |   107.452 us |    77.695 us |   1.22 |     0.00 |
| Span_StructComparableComparer |               Random |    100 |  52,797.4 us |    67.507 us |    48.812 us |   1.13 |     0.00 |
|               Span_Comparison |               Random |    100 |  49,881.8 us |   117.068 us |    84.648 us |   1.07 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |               **Random** |   **1000** |  **77,280.4 us** |    **73.823 us** |    **53.379 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 |  73,506.7 us |    93.880 us |    67.881 us |   0.95 |     0.00 |
| Array_ClassComparableComparer |               Random |   1000 |  82,108.1 us |   222.462 us |   160.855 us |   1.06 |     0.00 |
|                         Span_ |               Random |   1000 |  78,027.0 us |    85.776 us |    62.022 us |   1.01 |     0.00 |
|             Span_NullComparer |               Random |   1000 |  78,165.4 us |    83.198 us |    60.157 us |   1.01 |     0.00 |
|  Span_ClassComparableComparer |               Random |   1000 |  87,022.6 us |   138.444 us |   100.104 us |   1.13 |     0.00 |
| Span_StructComparableComparer |               Random |   1000 |  80,568.4 us |    62.532 us |    45.215 us |   1.04 |     0.00 |
|               Span_Comparison |               Random |   1000 |  76,227.4 us |   295.373 us |   213.574 us |   0.99 |     0.00 |
|                               |                      |        |              |              |              |        |          |
|                        **Array_** |               **Random** |  **10000** | **102,052.2 us** |   **348.594 us** |   **252.056 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 105,989.2 us |   200.465 us |   144.949 us |   1.04 |     0.00 |
| Array_ClassComparableComparer |               Random |  10000 | 108,429.5 us |   131.980 us |    95.430 us |   1.06 |     0.00 |
|                         Span_ |               Random |  10000 | 107,497.5 us |   125.076 us |    90.438 us |   1.05 |     0.00 |
|             Span_NullComparer |               Random |  10000 | 109,962.3 us |   152.665 us |   110.387 us |   1.08 |     0.00 |
|  Span_ClassComparableComparer |               Random |  10000 | 115,098.4 us |   283.998 us |   205.349 us |   1.13 |     0.00 |
| Span_StructComparableComparer |               Random |  10000 | 116,855.6 us |   183.153 us |   132.432 us |   1.15 |     0.00 |
|               Span_Comparison |               Random |  10000 | 103,774.6 us |   111.166 us |    80.381 us |   1.02 |     0.00 |
