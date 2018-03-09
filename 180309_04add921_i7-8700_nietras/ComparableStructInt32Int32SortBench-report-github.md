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
|                        Method |               Filler | Length |        Mean |        Error |     StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |------------:|-------------:|-----------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |  **1,923.2 us** |    **44.616 us** |  **32.260 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |  1,854.2 us |   142.875 us | 103.308 us |   0.96 |     0.05 |
| Array_ClassComparableComparer |             Constant |      2 |  2,335.0 us |    26.553 us |  19.199 us |   1.21 |     0.02 |
|                         Span_ |             Constant |      2 |  2,920.0 us |     8.787 us |   6.354 us |   1.52 |     0.02 |
|             Span_NullComparer |             Constant |      2 |  2,829.6 us |    17.126 us |  12.383 us |   1.47 |     0.02 |
|  Span_ClassComparableComparer |             Constant |      2 |  6,232.6 us |    11.583 us |   8.375 us |   3.24 |     0.05 |
| Span_StructComparableComparer |             Constant |      2 |  4,248.6 us |    28.292 us |  20.457 us |   2.21 |     0.04 |
|               Span_Comparison |             Constant |      2 |  4,721.9 us |   580.106 us | 419.455 us |   2.46 |     0.21 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |             **Constant** |      **3** |  **1,603.7 us** |    **22.939 us** |  **16.587 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |  1,590.6 us |   110.587 us |  79.962 us |   0.99 |     0.05 |
| Array_ClassComparableComparer |             Constant |      3 |  2,009.8 us |     5.379 us |   3.890 us |   1.25 |     0.01 |
|                         Span_ |             Constant |      3 |  2,067.8 us |     3.975 us |   2.874 us |   1.29 |     0.01 |
|             Span_NullComparer |             Constant |      3 |  2,076.1 us |    27.888 us |  20.165 us |   1.29 |     0.02 |
|  Span_ClassComparableComparer |             Constant |      3 |  4,871.4 us |    14.731 us |  10.651 us |   3.04 |     0.03 |
| Span_StructComparableComparer |             Constant |      3 |  3,266.2 us |    97.257 us |  70.324 us |   2.04 |     0.05 |
|               Span_Comparison |             Constant |      3 |  3,433.5 us |    21.880 us |  15.820 us |   2.14 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |             **Constant** |     **10** |    **929.0 us** |    **12.036 us** |   **8.703 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |    924.4 us |    39.302 us |  28.418 us |   1.00 |     0.03 |
| Array_ClassComparableComparer |             Constant |     10 |  1,234.6 us |    20.225 us |  14.624 us |   1.33 |     0.02 |
|                         Span_ |             Constant |     10 |    819.9 us |    11.246 us |   8.132 us |   0.88 |     0.01 |
|             Span_NullComparer |             Constant |     10 |    826.4 us |     9.366 us |   6.772 us |   0.89 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     10 |  1,844.8 us |     6.238 us |   4.510 us |   1.99 |     0.02 |
| Span_StructComparableComparer |             Constant |     10 |  1,421.7 us |    12.554 us |   9.077 us |   1.53 |     0.02 |
|               Span_Comparison |             Constant |     10 |  1,595.8 us |     7.890 us |   5.705 us |   1.72 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |             **Constant** |    **100** |  **2,352.1 us** |    **35.983 us** |  **26.018 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |  2,324.1 us |    19.719 us |  14.258 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant |    100 |  3,129.0 us |    42.179 us |  30.498 us |   1.33 |     0.02 |
|                         Span_ |             Constant |    100 |  3,474.0 us |    27.773 us |  20.082 us |   1.48 |     0.02 |
|             Span_NullComparer |             Constant |    100 |  3,444.7 us |     8.289 us |   5.993 us |   1.46 |     0.02 |
|  Span_ClassComparableComparer |             Constant |    100 |  5,234.8 us |    60.279 us |  43.586 us |   2.23 |     0.03 |
| Span_StructComparableComparer |             Constant |    100 |  5,532.5 us | 1,164.774 us | 842.208 us |   2.35 |     0.34 |
|               Span_Comparison |             Constant |    100 |  5,610.8 us |    18.120 us |  13.102 us |   2.39 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |             **Constant** |   **1000** |  **3,714.3 us** |    **53.073 us** |  **38.375 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |  3,706.9 us |    30.658 us |  22.168 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   1000 |  5,190.6 us |    46.805 us |  33.843 us |   1.40 |     0.02 |
|                         Span_ |             Constant |   1000 |  6,190.8 us |    41.034 us |  29.670 us |   1.67 |     0.02 |
|             Span_NullComparer |             Constant |   1000 |  6,258.4 us |   240.763 us | 174.087 us |   1.69 |     0.05 |
|  Span_ClassComparableComparer |             Constant |   1000 |  9,698.4 us |    12.571 us |   9.089 us |   2.61 |     0.03 |
| Span_StructComparableComparer |             Constant |   1000 |  9,515.3 us |   524.429 us | 379.196 us |   2.56 |     0.10 |
|               Span_Comparison |             Constant |   1000 |  9,974.9 us |    73.505 us |  53.149 us |   2.69 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |             **Constant** |  **10000** |  **5,771.9 us** |    **28.198 us** |  **20.389 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |  5,788.8 us |    57.614 us |  41.658 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |  10000 |  8,053.2 us |    50.596 us |  36.584 us |   1.40 |     0.01 |
|                         Span_ |             Constant |  10000 | 10,164.5 us |    18.761 us |  13.565 us |   1.76 |     0.01 |
|             Span_NullComparer |             Constant |  10000 |  9,961.8 us |    15.505 us |  11.211 us |   1.73 |     0.01 |
|  Span_ClassComparableComparer |             Constant |  10000 | 15,631.9 us |   224.153 us | 162.077 us |   2.71 |     0.03 |
| Span_StructComparableComparer |             Constant |  10000 | 15,077.0 us |    62.264 us |  45.021 us |   2.61 |     0.01 |
|               Span_Comparison |             Constant |  10000 | 15,921.9 us |   106.355 us |  76.901 us |   2.76 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **2,101.3 us** |    **20.794 us** |  **15.035 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  2,025.2 us |    10.915 us |   7.893 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      2 |  2,501.8 us |     5.536 us |   4.003 us |   1.19 |     0.01 |
|                         Span_ |         Decrementing |      2 |  3,174.4 us |    15.026 us |  10.865 us |   1.51 |     0.01 |
|             Span_NullComparer |         Decrementing |      2 |  3,129.8 us |    22.940 us |  16.587 us |   1.49 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  6,623.0 us |   121.661 us |  87.969 us |   3.15 |     0.05 |
| Span_StructComparableComparer |         Decrementing |      2 |  4,504.5 us |    36.708 us |  26.542 us |   2.14 |     0.02 |
|               Span_Comparison |         Decrementing |      2 |  4,625.4 us |    13.084 us |   9.460 us |   2.20 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **1,964.9 us** |    **19.801 us** |  **14.318 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  1,924.9 us |     9.252 us |   6.689 us |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      3 |  2,479.2 us |     9.755 us |   7.053 us |   1.26 |     0.01 |
|                         Span_ |         Decrementing |      3 |  2,392.7 us |    10.090 us |   7.296 us |   1.22 |     0.01 |
|             Span_NullComparer |         Decrementing |      3 |  2,467.0 us |    26.913 us |  19.460 us |   1.26 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  5,114.5 us |    12.805 us |   9.259 us |   2.60 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      3 |  3,640.3 us |    11.461 us |   8.287 us |   1.85 |     0.01 |
|               Span_Comparison |         Decrementing |      3 |  3,920.8 us |    12.427 us |   8.986 us |   2.00 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **3,144.4 us** |    **18.859 us** |  **13.636 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  3,135.3 us |    31.003 us |  22.417 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |     10 |  4,309.6 us |    41.559 us |  30.050 us |   1.37 |     0.01 |
|                         Span_ |         Decrementing |     10 |  3,297.1 us |    77.966 us |  56.374 us |   1.05 |     0.02 |
|             Span_NullComparer |         Decrementing |     10 |  3,326.0 us |    24.154 us |  17.465 us |   1.06 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  5,977.5 us |    31.056 us |  22.455 us |   1.90 |     0.01 |
| Span_StructComparableComparer |         Decrementing |     10 |  5,584.9 us |    18.406 us |  13.309 us |   1.78 |     0.01 |
|               Span_Comparison |         Decrementing |     10 |  6,458.1 us |    40.787 us |  29.492 us |   2.05 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **3,074.4 us** |    **82.998 us** |  **60.013 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  3,054.9 us |    46.861 us |  33.884 us |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |    100 |  4,240.7 us |    93.668 us |  67.728 us |   1.38 |     0.03 |
|                         Span_ |         Decrementing |    100 |  4,580.0 us |    27.239 us |  19.696 us |   1.49 |     0.03 |
|             Span_NullComparer |         Decrementing |    100 |  4,554.4 us |   115.756 us |  83.699 us |   1.48 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  7,261.0 us |   178.216 us | 128.862 us |   2.36 |     0.06 |
| Span_StructComparableComparer |         Decrementing |    100 |  7,510.3 us |   231.815 us | 167.617 us |   2.44 |     0.07 |
|               Span_Comparison |         Decrementing |    100 |  7,834.5 us |    71.985 us |  52.050 us |   2.55 |     0.05 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Decrementing** |   **1000** |  **4,678.1 us** |    **20.355 us** |  **14.718 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 |  4,670.1 us |    14.184 us |  10.256 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |   1000 |  6,916.5 us |    11.514 us |   8.325 us |   1.48 |     0.00 |
|                         Span_ |         Decrementing |   1000 |  8,639.0 us |    47.888 us |  34.626 us |   1.85 |     0.01 |
|             Span_NullComparer |         Decrementing |   1000 |  8,710.2 us |   108.233 us |  78.260 us |   1.86 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |   1000 | 13,151.9 us |    33.334 us |  24.102 us |   2.81 |     0.01 |
| Span_StructComparableComparer |         Decrementing |   1000 | 12,896.0 us |    20.536 us |  14.849 us |   2.76 |     0.01 |
|               Span_Comparison |         Decrementing |   1000 | 14,288.1 us |   224.543 us | 162.359 us |   3.05 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Decrementing** |  **10000** |  **6,738.9 us** |    **37.010 us** |  **26.760 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 |  6,743.7 us |    51.011 us |  36.885 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 10,469.4 us |    30.847 us |  22.304 us |   1.55 |     0.01 |
|                         Span_ |         Decrementing |  10000 | 13,432.1 us |    31.815 us |  23.005 us |   1.99 |     0.01 |
|             Span_NullComparer |         Decrementing |  10000 | 13,408.0 us |    24.031 us |  17.376 us |   1.99 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 20,484.4 us |   138.698 us | 100.288 us |   3.04 |     0.02 |
| Span_StructComparableComparer |         Decrementing |  10000 | 20,624.5 us |    90.331 us |  65.316 us |   3.06 |     0.01 |
|               Span_Comparison |         Decrementing |  10000 | 22,020.0 us |   266.609 us | 192.776 us |   3.27 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **1,919.1 us** |    **17.420 us** |  **12.596 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  1,807.6 us |    15.188 us |  10.982 us |   0.94 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      2 |  2,333.5 us |     5.802 us |   4.195 us |   1.22 |     0.01 |
|                         Span_ |         Incrementing |      2 |  2,914.7 us |     6.183 us |   4.471 us |   1.52 |     0.01 |
|             Span_NullComparer |         Incrementing |      2 |  2,909.9 us |     4.743 us |   3.429 us |   1.52 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  6,286.8 us |   112.909 us |  81.641 us |   3.28 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      2 |  4,181.7 us |    23.063 us |  16.676 us |   2.18 |     0.02 |
|               Span_Comparison |         Incrementing |      2 |  4,344.2 us |     6.119 us |   4.424 us |   2.26 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **1,616.9 us** |    **16.074 us** |  **11.622 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  1,583.1 us |   123.577 us |  89.354 us |   0.98 |     0.05 |
| Array_ClassComparableComparer |         Incrementing |      3 |  1,995.9 us |     7.414 us |   5.361 us |   1.23 |     0.01 |
|                         Span_ |         Incrementing |      3 |  2,068.7 us |     7.058 us |   5.103 us |   1.28 |     0.01 |
|             Span_NullComparer |         Incrementing |      3 |  2,054.3 us |     9.336 us |   6.751 us |   1.27 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  4,682.9 us |    16.054 us |  11.608 us |   2.90 |     0.02 |
| Span_StructComparableComparer |         Incrementing |      3 |  3,331.9 us |    11.107 us |   8.031 us |   2.06 |     0.01 |
|               Span_Comparison |         Incrementing |      3 |  3,397.4 us |     7.061 us |   5.105 us |   2.10 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Incrementing** |     **10** |    **926.7 us** |     **9.751 us** |   **7.051 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |    918.5 us |    13.804 us |   9.981 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |     10 |  1,222.4 us |    24.749 us |  17.895 us |   1.32 |     0.02 |
|                         Span_ |         Incrementing |     10 |    807.7 us |     8.596 us |   6.215 us |   0.87 |     0.01 |
|             Span_NullComparer |         Incrementing |     10 |    818.0 us |     3.723 us |   2.692 us |   0.88 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  1,897.2 us |     9.289 us |   6.717 us |   2.05 |     0.02 |
| Span_StructComparableComparer |         Incrementing |     10 |  1,427.0 us |    12.765 us |   9.230 us |   1.54 |     0.01 |
|               Span_Comparison |         Incrementing |     10 |  1,598.2 us |     9.218 us |   6.665 us |   1.72 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **1,993.1 us** |    **37.652 us** |  **27.225 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  1,969.6 us |    22.319 us |  16.138 us |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |    100 |  2,674.9 us |    17.811 us |  12.879 us |   1.34 |     0.02 |
|                         Span_ |         Incrementing |    100 |  2,917.6 us |    20.860 us |  15.083 us |   1.46 |     0.02 |
|             Span_NullComparer |         Incrementing |    100 |  2,900.7 us |    17.147 us |  12.398 us |   1.46 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  4,540.0 us |    28.068 us |  20.295 us |   2.28 |     0.03 |
| Span_StructComparableComparer |         Incrementing |    100 |  4,459.4 us |    45.882 us |  33.176 us |   2.24 |     0.03 |
|               Span_Comparison |         Incrementing |    100 |  4,849.9 us |    37.879 us |  27.389 us |   2.43 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Incrementing** |   **1000** |  **2,904.3 us** |    **55.340 us** |  **40.014 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 |  2,877.6 us |    21.653 us |  15.656 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   1000 |  4,064.9 us |    28.547 us |  20.641 us |   1.40 |     0.02 |
|                         Span_ |         Incrementing |   1000 |  4,918.5 us |    15.473 us |  11.188 us |   1.69 |     0.02 |
|             Span_NullComparer |         Incrementing |   1000 |  4,933.6 us |    38.763 us |  28.028 us |   1.70 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |   1000 |  7,732.4 us |    41.172 us |  29.770 us |   2.66 |     0.04 |
| Span_StructComparableComparer |         Incrementing |   1000 |  7,659.1 us |    27.304 us |  19.743 us |   2.64 |     0.03 |
|               Span_Comparison |         Incrementing |   1000 |  8,154.7 us |    21.769 us |  15.740 us |   2.81 |     0.04 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **4,325.6 us** |    **11.037 us** |   **7.981 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  4,352.1 us |    24.797 us |  17.930 us |   1.01 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  6,259.1 us |    36.043 us |  26.062 us |   1.45 |     0.01 |
|                         Span_ |         Incrementing |  10000 |  7,846.6 us |    74.786 us |  54.076 us |   1.81 |     0.01 |
|             Span_NullComparer |         Incrementing |  10000 |  8,156.6 us |    37.948 us |  27.439 us |   1.89 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |  10000 | 11,994.1 us |   162.463 us | 117.471 us |   2.77 |     0.03 |
| Span_StructComparableComparer |         Incrementing |  10000 | 12,191.1 us |    36.392 us |  26.314 us |   2.82 |     0.01 |
|               Span_Comparison |         Incrementing |  10000 | 13,372.6 us |    55.257 us |  39.954 us |   3.09 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **1,913.0 us** |    **32.383 us** |  **23.415 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  1,842.2 us |   137.472 us |  99.401 us |   0.96 |     0.05 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |  2,335.6 us |     7.917 us |   5.725 us |   1.22 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |      2 |  2,921.8 us |     7.609 us |   5.501 us |   1.53 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  2,853.9 us |    10.162 us |   7.348 us |   1.49 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  6,264.9 us |    22.817 us |  16.498 us |   3.28 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  4,284.8 us |    40.832 us |  29.524 us |   2.24 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  4,408.9 us |    22.183 us |  16.040 us |   2.30 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **1,599.3 us** |    **17.095 us** |  **12.361 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  1,554.1 us |    11.524 us |   8.332 us |   0.97 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |  2,057.4 us |   100.520 us |  72.683 us |   1.29 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |      3 |  2,028.8 us |     7.293 us |   5.273 us |   1.27 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  2,055.5 us |    12.853 us |   9.294 us |   1.29 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  4,693.5 us |    10.558 us |   7.634 us |   2.93 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  3,218.4 us |     8.976 us |   6.490 us |   2.01 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  3,406.1 us |    19.395 us |  14.024 us |   2.13 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **1,561.7 us** |    **10.324 us** |   **7.465 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  1,542.4 us |     8.602 us |   6.220 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  2,439.6 us |    27.891 us |  20.167 us |   1.56 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |     10 |  1,705.7 us |   183.180 us | 132.451 us |   1.09 |     0.08 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  1,661.9 us |     9.864 us |   7.132 us |   1.06 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  3,353.8 us |    18.593 us |  13.444 us |   2.15 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  2,918.4 us |   104.098 us |  75.270 us |   1.87 |     0.05 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  3,304.4 us |    25.390 us |  18.359 us |   2.12 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **3,977.9 us** |    **33.902 us** |  **24.514 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  3,950.4 us |    53.349 us |  38.575 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  5,617.3 us |   226.285 us | 163.619 us |   1.41 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |    100 |  5,952.5 us |    34.854 us |  25.202 us |   1.50 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  5,980.2 us |    58.148 us |  42.045 us |   1.50 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  9,294.0 us |   106.990 us |  77.361 us |   2.34 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  9,314.9 us |   242.406 us | 175.275 us |   2.34 |     0.04 |
|               Span_Comparison |  MedianOfThreeKiller |    100 |  9,952.6 us |    18.870 us |  13.644 us |   2.50 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** |  **6,309.5 us** |    **28.712 us** |  **20.761 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 |  6,443.9 us |   216.899 us | 156.832 us |   1.02 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 |  8,866.4 us |    29.478 us |  21.315 us |   1.41 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 10,812.9 us |    72.153 us |  52.171 us |   1.71 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 10,849.8 us |    95.877 us |  69.325 us |   1.72 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 16,584.8 us |   257.721 us | 186.349 us |   2.63 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 16,294.5 us |    38.621 us |  27.925 us |   2.58 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 | 17,756.3 us |   173.827 us | 125.689 us |   2.81 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **10,149.6 us** |    **39.601 us** |  **28.634 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 10,173.9 us |    50.400 us |  36.442 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 14,150.2 us |   193.674 us | 140.039 us |   1.39 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 17,673.4 us |    59.219 us |  42.819 us |   1.74 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 17,461.8 us |   195.676 us | 141.487 us |   1.72 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 27,140.0 us |   434.227 us | 313.975 us |   2.67 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 27,116.0 us |   161.143 us | 116.517 us |   2.67 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 29,240.5 us |   310.188 us | 224.286 us |   2.88 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **2,191.5 us** |    **94.115 us** |  **68.051 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  2,043.7 us |    33.123 us |  23.950 us |   0.93 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |  2,557.9 us |    20.691 us |  14.961 us |   1.17 |     0.03 |
|                         Span_ | PartialRandomShuffle |      2 |  3,125.7 us |    14.558 us |  10.526 us |   1.43 |     0.04 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  3,120.3 us |    22.144 us |  16.011 us |   1.43 |     0.04 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  6,487.2 us |    87.267 us |  63.100 us |   2.96 |     0.09 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  4,286.5 us |    22.252 us |  16.089 us |   1.96 |     0.06 |
|               Span_Comparison | PartialRandomShuffle |      2 |  4,573.6 us |    12.101 us |   8.750 us |   2.09 |     0.06 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **1,864.6 us** |    **15.225 us** |  **11.009 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  1,810.9 us |     6.477 us |   4.683 us |   0.97 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  2,281.9 us |     8.094 us |   5.852 us |   1.22 |     0.01 |
|                         Span_ | PartialRandomShuffle |      3 |  2,288.4 us |    22.728 us |  16.434 us |   1.23 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  2,376.9 us |    21.718 us |  15.703 us |   1.27 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  4,962.8 us |    42.111 us |  30.449 us |   2.66 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  3,546.8 us |    19.374 us |  14.009 us |   1.90 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      3 |  3,682.0 us |    11.515 us |   8.326 us |   1.97 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **1,647.7 us** |     **4.842 us** |   **3.501 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  1,672.7 us |   117.094 us |  84.666 us |   1.02 |     0.05 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  2,050.1 us |    24.524 us |  17.732 us |   1.24 |     0.01 |
|                         Span_ | PartialRandomShuffle |     10 |  1,616.9 us |    18.606 us |  13.453 us |   0.98 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  1,634.4 us |    10.133 us |   7.327 us |   0.99 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  2,917.0 us |     9.579 us |   6.926 us |   1.77 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  2,457.0 us |     5.377 us |   3.888 us |   1.49 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |     10 |  2,729.2 us |    19.364 us |  14.001 us |   1.66 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **4,724.7 us** |    **99.876 us** |  **72.217 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  4,684.8 us |   109.109 us |  78.893 us |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  5,913.8 us |    37.607 us |  27.192 us |   1.25 |     0.02 |
|                         Span_ | PartialRandomShuffle |    100 |  5,888.1 us |    35.964 us |  26.004 us |   1.25 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  5,856.3 us |    12.514 us |   9.048 us |   1.24 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  8,591.6 us |    26.905 us |  19.454 us |   1.82 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  8,681.4 us |   126.668 us |  91.589 us |   1.84 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |    100 |  9,301.1 us |   144.259 us | 104.309 us |   1.97 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** |  **6,800.7 us** |    **36.814 us** |  **26.619 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 |  6,813.0 us |    19.667 us |  14.221 us |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 |  8,702.2 us |    44.562 us |  32.221 us |   1.28 |     0.01 |
|                         Span_ | PartialRandomShuffle |   1000 |  9,573.2 us |   220.950 us | 159.761 us |   1.41 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |   1000 |  9,580.5 us |   135.742 us |  98.151 us |   1.41 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 | 13,586.7 us |    64.954 us |  46.966 us |   2.00 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 | 13,416.0 us |    18.838 us |  13.621 us |   1.97 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   1000 | 14,692.7 us |   230.699 us | 166.811 us |   2.16 |     0.02 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **8,943.5 us** |   **166.287 us** | **120.236 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  8,881.5 us |    84.309 us |  60.961 us |   0.99 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 11,407.6 us |    34.070 us |  24.635 us |   1.28 |     0.02 |
|                         Span_ | PartialRandomShuffle |  10000 | 12,903.9 us |   136.855 us |  98.955 us |   1.44 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 13,262.4 us |   133.205 us |  96.316 us |   1.48 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 19,048.4 us |    82.010 us |  59.298 us |   2.13 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 18,527.6 us |   265.916 us | 192.274 us |   2.07 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 19,878.0 us |   236.655 us | 171.117 us |   2.22 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |               **Random** |      **2** |  **2,236.9 us** |    **54.074 us** |  **39.099 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  2,180.5 us |    19.258 us |  13.924 us |   0.98 |     0.02 |
| Array_ClassComparableComparer |               Random |      2 |  2,656.1 us |    20.814 us |  15.050 us |   1.19 |     0.02 |
|                         Span_ |               Random |      2 |  3,203.0 us |    16.410 us |  11.866 us |   1.43 |     0.02 |
|             Span_NullComparer |               Random |      2 |  3,287.4 us |    17.027 us |  12.312 us |   1.47 |     0.03 |
|  Span_ClassComparableComparer |               Random |      2 |  6,522.6 us |    25.391 us |  18.359 us |   2.92 |     0.05 |
| Span_StructComparableComparer |               Random |      2 |  4,554.7 us |    41.179 us |  29.775 us |   2.04 |     0.04 |
|               Span_Comparison |               Random |      2 |  4,861.0 us |    16.874 us |  12.201 us |   2.17 |     0.04 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |               **Random** |      **3** |  **2,139.2 us** |    **19.671 us** |  **14.224 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  2,087.9 us |    15.166 us |  10.966 us |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |      3 |  2,607.9 us |     9.879 us |   7.143 us |   1.22 |     0.01 |
|                         Span_ |               Random |      3 |  2,561.9 us |     8.176 us |   5.912 us |   1.20 |     0.01 |
|             Span_NullComparer |               Random |      3 |  2,632.4 us |    27.336 us |  19.766 us |   1.23 |     0.01 |
|  Span_ClassComparableComparer |               Random |      3 |  5,244.1 us |    12.633 us |   9.134 us |   2.45 |     0.02 |
| Span_StructComparableComparer |               Random |      3 |  3,899.6 us |   201.718 us | 145.855 us |   1.82 |     0.07 |
|               Span_Comparison |               Random |      3 |  4,019.2 us |   117.290 us |  84.808 us |   1.88 |     0.04 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |               **Random** |     **10** |  **2,743.8 us** |    **14.156 us** |  **10.235 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  2,727.3 us |     8.189 us |   5.921 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |               Random |     10 |  3,384.3 us |    55.192 us |  39.908 us |   1.23 |     0.01 |
|                         Span_ |               Random |     10 |  2,771.0 us |   120.751 us |  87.311 us |   1.01 |     0.03 |
|             Span_NullComparer |               Random |     10 |  2,728.7 us |     8.876 us |   6.418 us |   0.99 |     0.00 |
|  Span_ClassComparableComparer |               Random |     10 |  4,552.4 us |    25.484 us |  18.427 us |   1.66 |     0.01 |
| Span_StructComparableComparer |               Random |     10 |  4,084.4 us |    30.278 us |  21.893 us |   1.49 |     0.01 |
|               Span_Comparison |               Random |     10 |  4,596.9 us |    34.619 us |  25.032 us |   1.68 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |               **Random** |    **100** |  **5,545.4 us** |    **58.043 us** |  **41.969 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  5,524.3 us |    39.029 us |  28.220 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |    100 |  6,816.8 us |   217.411 us | 157.202 us |   1.23 |     0.03 |
|                         Span_ |               Random |    100 |  6,706.1 us |   210.472 us | 152.185 us |   1.21 |     0.03 |
|             Span_NullComparer |               Random |    100 |  6,723.5 us |    84.244 us |  60.914 us |   1.21 |     0.01 |
|  Span_ClassComparableComparer |               Random |    100 |  9,549.2 us |   218.038 us | 157.656 us |   1.72 |     0.03 |
| Span_StructComparableComparer |               Random |    100 |  9,438.3 us |    60.039 us |  43.412 us |   1.70 |     0.01 |
|               Span_Comparison |               Random |    100 | 10,133.6 us |    40.369 us |  29.189 us |   1.83 |     0.01 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |               **Random** |   **1000** |  **8,201.8 us** |   **183.646 us** | **132.788 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 |  8,212.1 us |    46.423 us |  33.567 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random |   1000 | 10,164.8 us |   154.016 us | 111.364 us |   1.24 |     0.02 |
|                         Span_ |               Random |   1000 | 10,824.2 us |    43.565 us |  31.500 us |   1.32 |     0.02 |
|             Span_NullComparer |               Random |   1000 | 10,896.9 us |    81.749 us |  59.110 us |   1.33 |     0.02 |
|  Span_ClassComparableComparer |               Random |   1000 | 15,213.8 us |   146.508 us | 105.935 us |   1.86 |     0.03 |
| Span_StructComparableComparer |               Random |   1000 | 14,967.2 us |   272.976 us | 197.379 us |   1.83 |     0.04 |
|               Span_Comparison |               Random |   1000 | 16,029.3 us |   206.419 us | 149.255 us |   1.95 |     0.03 |
|                               |                      |        |             |              |            |        |          |
|                        **Array_** |               **Random** |  **10000** | **11,143.4 us** |   **169.840 us** | **122.805 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 11,180.2 us |    92.716 us |  67.040 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |  10000 | 13,829.7 us |   270.156 us | 195.340 us |   1.24 |     0.02 |
|                         Span_ |               Random |  10000 | 15,304.5 us |   170.573 us | 123.336 us |   1.37 |     0.02 |
|             Span_NullComparer |               Random |  10000 | 15,152.4 us |   194.198 us | 140.418 us |   1.36 |     0.02 |
|  Span_ClassComparableComparer |               Random |  10000 | 21,392.9 us |   165.428 us | 119.615 us |   1.92 |     0.02 |
| Span_StructComparableComparer |               Random |  10000 | 20,965.6 us |   235.697 us | 170.425 us |   1.88 |     0.02 |
|               Span_Comparison |               Random |  10000 | 22,080.3 us |   229.030 us | 165.603 us |   1.98 |     0.03 |
