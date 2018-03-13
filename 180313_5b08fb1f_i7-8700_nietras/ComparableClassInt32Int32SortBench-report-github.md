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
|                        Method |               Filler | Length |        Mean |      Error |     StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |------------:|-----------:|-----------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |  **1,923.6 us** |   **9.134 us** |   **6.605 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |  1,756.7 us |  14.952 us |  10.811 us |   0.91 |     0.01 |
| Array_ClassComparableComparer |             Constant |      2 |  2,513.4 us |  18.662 us |  13.494 us |   1.31 |     0.01 |
|                         Span_ |             Constant |      2 |  3,775.8 us |  29.061 us |  21.013 us |   1.96 |     0.01 |
|             Span_NullComparer |             Constant |      2 |  3,371.6 us |  17.310 us |  12.517 us |   1.75 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      2 |  6,283.4 us |  24.280 us |  17.556 us |   3.27 |     0.01 |
| Span_StructComparableComparer |             Constant |      2 |  4,653.1 us |  37.700 us |  27.259 us |   2.42 |     0.02 |
|               Span_Comparison |             Constant |      2 |  3,146.2 us | 104.205 us |  75.347 us |   1.64 |     0.04 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |      **3** |  **1,732.8 us** |   **7.305 us** |   **5.282 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |  1,600.5 us | 127.042 us |  91.860 us |   0.92 |     0.05 |
| Array_ClassComparableComparer |             Constant |      3 |  2,018.7 us |  68.089 us |  49.233 us |   1.17 |     0.03 |
|                         Span_ |             Constant |      3 |  2,542.0 us |  16.598 us |  12.002 us |   1.47 |     0.01 |
|             Span_NullComparer |             Constant |      3 |  2,268.7 us |  10.186 us |   7.365 us |   1.31 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      3 |  4,498.8 us |  21.218 us |  15.342 us |   2.60 |     0.01 |
| Span_StructComparableComparer |             Constant |      3 |  3,520.9 us |  25.170 us |  18.200 us |   2.03 |     0.01 |
|               Span_Comparison |             Constant |      3 |  2,263.2 us |  47.443 us |  34.304 us |   1.31 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |     **10** |    **905.8 us** |   **5.221 us** |   **3.775 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |    875.4 us |   3.709 us |   2.682 us |   0.97 |     0.00 |
| Array_ClassComparableComparer |             Constant |     10 |  1,155.6 us |   8.032 us |   5.808 us |   1.28 |     0.01 |
|                         Span_ |             Constant |     10 |    987.8 us |   6.669 us |   4.822 us |   1.09 |     0.01 |
|             Span_NullComparer |             Constant |     10 |    902.2 us |   8.082 us |   5.844 us |   1.00 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     10 |  1,757.6 us |  18.947 us |  13.700 us |   1.94 |     0.02 |
| Span_StructComparableComparer |             Constant |     10 |  1,410.3 us |  35.651 us |  25.778 us |   1.56 |     0.03 |
|               Span_Comparison |             Constant |     10 |    928.0 us |  22.728 us |  16.434 us |   1.02 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |    **100** |  **2,420.2 us** |  **23.385 us** |  **16.909 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |  2,415.4 us |   9.207 us |   6.657 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |    100 |  3,054.7 us |  33.161 us |  23.978 us |   1.26 |     0.01 |
|                         Span_ |             Constant |    100 |  3,524.9 us |  35.840 us |  25.914 us |   1.46 |     0.01 |
|             Span_NullComparer |             Constant |    100 |  3,444.8 us |  18.224 us |  13.177 us |   1.42 |     0.01 |
|  Span_ClassComparableComparer |             Constant |    100 |  4,419.4 us |  18.066 us |  13.063 us |   1.83 |     0.01 |
| Span_StructComparableComparer |             Constant |    100 |  4,444.3 us |  27.700 us |  20.029 us |   1.84 |     0.01 |
|               Span_Comparison |             Constant |    100 |  2,832.9 us |  19.713 us |  14.254 us |   1.17 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |   **1000** |  **3,948.1 us** |  **31.906 us** |  **23.070 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |  3,959.1 us |  36.053 us |  26.068 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   1000 |  5,035.2 us |  67.411 us |  48.743 us |   1.28 |     0.01 |
|                         Span_ |             Constant |   1000 |  6,246.2 us |  63.215 us |  45.709 us |   1.58 |     0.01 |
|             Span_NullComparer |             Constant |   1000 |  6,278.4 us |  97.926 us |  70.807 us |   1.59 |     0.02 |
|  Span_ClassComparableComparer |             Constant |   1000 |  7,720.0 us |  82.617 us |  59.737 us |   1.96 |     0.02 |
| Span_StructComparableComparer |             Constant |   1000 |  7,634.0 us |  58.499 us |  42.299 us |   1.93 |     0.01 |
|               Span_Comparison |             Constant |   1000 |  4,791.8 us |  38.043 us |  27.508 us |   1.21 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |  **10000** |  **6,116.5 us** |  **25.144 us** |  **18.181 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |  6,116.5 us |  24.163 us |  17.472 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |  10000 |  7,801.2 us |  27.235 us |  19.693 us |   1.28 |     0.00 |
|                         Span_ |             Constant |  10000 | 10,041.0 us |  38.706 us |  27.987 us |   1.64 |     0.01 |
|             Span_NullComparer |             Constant |  10000 |  9,989.9 us |  41.201 us |  29.791 us |   1.63 |     0.01 |
|  Span_ClassComparableComparer |             Constant |  10000 | 12,330.2 us |  72.504 us |  52.425 us |   2.02 |     0.01 |
| Span_StructComparableComparer |             Constant |  10000 | 12,202.4 us |  39.243 us |  28.375 us |   2.00 |     0.01 |
|               Span_Comparison |             Constant |  10000 |  7,538.8 us |  48.122 us |  34.796 us |   1.23 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **2,124.8 us** |  **18.857 us** |  **13.635 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  2,033.4 us |  13.811 us |   9.986 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      2 |  2,610.7 us |  30.795 us |  22.267 us |   1.23 |     0.01 |
|                         Span_ |         Decrementing |      2 |  3,902.2 us |  31.406 us |  22.709 us |   1.84 |     0.02 |
|             Span_NullComparer |         Decrementing |      2 |  3,620.5 us |  20.714 us |  14.977 us |   1.70 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  6,520.3 us |  22.228 us |  16.072 us |   3.07 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      2 |  5,112.7 us |  26.143 us |  18.903 us |   2.41 |     0.02 |
|               Span_Comparison |         Decrementing |      2 |  3,432.8 us |  25.788 us |  18.646 us |   1.62 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **2,136.7 us** |  **20.334 us** |  **14.703 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  2,042.1 us |  52.389 us |  37.880 us |   0.96 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |      3 |  2,319.9 us |  11.428 us |   8.263 us |   1.09 |     0.01 |
|                         Span_ |         Decrementing |      3 |  2,927.9 us |  22.673 us |  16.394 us |   1.37 |     0.01 |
|             Span_NullComparer |         Decrementing |      3 |  2,668.4 us |  18.510 us |  13.384 us |   1.25 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  5,024.2 us | 109.068 us |  78.863 us |   2.35 |     0.04 |
| Span_StructComparableComparer |         Decrementing |      3 |  3,917.2 us |  18.645 us |  13.482 us |   1.83 |     0.01 |
|               Span_Comparison |         Decrementing |      3 |  2,672.8 us |  29.873 us |  21.600 us |   1.25 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **3,399.3 us** |  **33.892 us** |  **24.506 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  3,370.5 us |  26.324 us |  19.034 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |     10 |  4,270.6 us |  18.159 us |  13.130 us |   1.26 |     0.01 |
|                         Span_ |         Decrementing |     10 |  3,268.0 us | 124.007 us |  89.665 us |   0.96 |     0.03 |
|             Span_NullComparer |         Decrementing |     10 |  3,159.2 us |  28.883 us |  20.884 us |   0.93 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  5,159.4 us |  46.496 us |  33.620 us |   1.52 |     0.01 |
| Span_StructComparableComparer |         Decrementing |     10 |  4,776.8 us |  15.714 us |  11.362 us |   1.41 |     0.01 |
|               Span_Comparison |         Decrementing |     10 |  3,781.0 us | 141.429 us | 102.262 us |   1.11 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **3,249.9 us** | **128.793 us** |  **93.126 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  3,273.2 us | 140.726 us | 101.754 us |   1.01 |     0.04 |
| Array_ClassComparableComparer |         Decrementing |    100 |  4,343.4 us | 107.240 us |  77.542 us |   1.34 |     0.04 |
|                         Span_ |         Decrementing |    100 |  4,657.9 us | 148.102 us | 107.088 us |   1.43 |     0.05 |
|             Span_NullComparer |         Decrementing |    100 |  4,708.4 us | 134.021 us |  96.906 us |   1.45 |     0.05 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  6,015.9 us |  93.849 us |  67.859 us |   1.85 |     0.05 |
| Span_StructComparableComparer |         Decrementing |    100 |  5,920.8 us | 111.980 us |  80.969 us |   1.82 |     0.05 |
|               Span_Comparison |         Decrementing |    100 |  3,722.5 us | 159.565 us | 115.376 us |   1.15 |     0.05 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |   **1000** |  **4,847.0 us** |  **67.536 us** |  **48.833 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 |  4,892.9 us |  95.120 us |  68.778 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |   1000 |  7,115.2 us |  91.867 us |  66.426 us |   1.47 |     0.02 |
|                         Span_ |         Decrementing |   1000 |  8,481.7 us | 124.978 us |  90.367 us |   1.75 |     0.02 |
|             Span_NullComparer |         Decrementing |   1000 |  8,771.8 us | 118.054 us |  85.361 us |   1.81 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |   1000 | 11,068.7 us | 123.336 us |  89.180 us |   2.28 |     0.03 |
| Span_StructComparableComparer |         Decrementing |   1000 | 10,633.4 us |  94.219 us |  68.126 us |   2.19 |     0.02 |
|               Span_Comparison |         Decrementing |   1000 |  5,885.9 us |  65.169 us |  47.121 us |   1.21 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |  **10000** |  **6,932.2 us** |  **43.639 us** |  **31.554 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 |  6,918.0 us |  39.337 us |  28.444 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 10,437.6 us |  50.686 us |  36.649 us |   1.51 |     0.01 |
|                         Span_ |         Decrementing |  10000 | 12,999.5 us |  65.730 us |  47.527 us |   1.88 |     0.01 |
|             Span_NullComparer |         Decrementing |  10000 | 13,045.4 us | 101.720 us |  73.550 us |   1.88 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 17,035.7 us |  38.958 us |  28.169 us |   2.46 |     0.01 |
| Span_StructComparableComparer |         Decrementing |  10000 | 16,136.9 us |  35.914 us |  25.968 us |   2.33 |     0.01 |
|               Span_Comparison |         Decrementing |  10000 |  8,624.9 us |  41.617 us |  30.092 us |   1.24 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **1,973.5 us** | **197.682 us** | **142.937 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  1,806.4 us | 146.484 us | 105.917 us |   0.92 |     0.08 |
| Array_ClassComparableComparer |         Incrementing |      2 |  2,366.2 us |  37.392 us |  27.037 us |   1.20 |     0.08 |
|                         Span_ |         Incrementing |      2 |  3,756.0 us |  24.817 us |  17.944 us |   1.91 |     0.12 |
|             Span_NullComparer |         Incrementing |      2 |  3,383.7 us |  19.261 us |  13.927 us |   1.72 |     0.11 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  6,325.7 us |  32.241 us |  23.312 us |   3.22 |     0.20 |
| Span_StructComparableComparer |         Incrementing |      2 |  4,784.3 us |  16.988 us |  12.283 us |   2.43 |     0.15 |
|               Span_Comparison |         Incrementing |      2 |  3,146.3 us |  15.275 us |  11.045 us |   1.60 |     0.10 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **1,673.2 us** |  **26.245 us** |  **18.977 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  1,570.4 us |  22.896 us |  16.556 us |   0.94 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      3 |  2,061.6 us | 113.226 us |  81.870 us |   1.23 |     0.05 |
|                         Span_ |         Incrementing |      3 |  2,536.5 us |   8.823 us |   6.379 us |   1.52 |     0.02 |
|             Span_NullComparer |         Incrementing |      3 |  2,236.6 us |  24.040 us |  17.382 us |   1.34 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  4,530.6 us |  22.750 us |  16.450 us |   2.71 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      3 |  3,497.4 us |  41.056 us |  29.686 us |   2.09 |     0.03 |
|               Span_Comparison |         Incrementing |      3 |  2,243.6 us |  24.745 us |  17.892 us |   1.34 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |     **10** |    **921.2 us** |  **32.938 us** |  **23.817 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |    889.5 us |   9.798 us |   7.084 us |   0.97 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |     10 |  1,202.1 us |   9.035 us |   6.533 us |   1.31 |     0.03 |
|                         Span_ |         Incrementing |     10 |    975.1 us |   8.796 us |   6.360 us |   1.06 |     0.03 |
|             Span_NullComparer |         Incrementing |     10 |    898.7 us |  18.057 us |  13.057 us |   0.98 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  1,777.7 us |  28.079 us |  20.303 us |   1.93 |     0.05 |
| Span_StructComparableComparer |         Incrementing |     10 |  1,422.1 us |   9.560 us |   6.912 us |   1.54 |     0.04 |
|               Span_Comparison |         Incrementing |     10 |    932.3 us |  26.671 us |  19.285 us |   1.01 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **1,943.7 us** |  **79.523 us** |  **57.501 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  1,937.2 us |  45.686 us |  33.034 us |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |    100 |  2,717.7 us |  82.371 us |  59.559 us |   1.40 |     0.05 |
|                         Span_ |         Incrementing |    100 |  2,899.5 us |  63.411 us |  45.850 us |   1.49 |     0.05 |
|             Span_NullComparer |         Incrementing |    100 |  2,960.4 us |  58.076 us |  41.993 us |   1.52 |     0.05 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  3,952.6 us |  73.011 us |  52.792 us |   2.04 |     0.06 |
| Span_StructComparableComparer |         Incrementing |    100 |  3,767.9 us |  91.319 us |  66.030 us |   1.94 |     0.06 |
|               Span_Comparison |         Incrementing |    100 |  2,148.6 us |  88.387 us |  63.909 us |   1.11 |     0.04 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |   **1000** |  **2,837.6 us** | **121.065 us** |  **87.538 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 |  2,822.4 us |  71.803 us |  51.918 us |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |   1000 |  4,117.6 us |  85.633 us |  61.918 us |   1.45 |     0.05 |
|                         Span_ |         Incrementing |   1000 |  4,888.8 us | 121.077 us |  87.547 us |   1.72 |     0.06 |
|             Span_NullComparer |         Incrementing |   1000 |  4,888.5 us |  69.215 us |  50.047 us |   1.72 |     0.05 |
|  Span_ClassComparableComparer |         Incrementing |   1000 |  6,473.5 us |  51.443 us |  37.197 us |   2.28 |     0.07 |
| Span_StructComparableComparer |         Incrementing |   1000 |  6,265.9 us | 114.284 us |  82.635 us |   2.21 |     0.07 |
|               Span_Comparison |         Incrementing |   1000 |  3,214.1 us |  78.685 us |  56.895 us |   1.13 |     0.04 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **4,156.0 us** |  **51.125 us** |  **36.967 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  4,183.1 us |  66.954 us |  48.412 us |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  6,222.3 us |  59.775 us |  43.221 us |   1.50 |     0.02 |
|                         Span_ |         Incrementing |  10000 |  7,676.0 us |  73.871 us |  53.414 us |   1.85 |     0.02 |
|             Span_NullComparer |         Incrementing |  10000 |  7,713.9 us |  92.129 us |  66.615 us |   1.86 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |  10000 | 10,132.0 us |  93.931 us |  67.918 us |   2.44 |     0.03 |
| Span_StructComparableComparer |         Incrementing |  10000 |  9,682.5 us |  64.034 us |  46.301 us |   2.33 |     0.02 |
|               Span_Comparison |         Incrementing |  10000 |  4,926.8 us | 133.756 us |  96.715 us |   1.19 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **1,977.7 us** | **164.876 us** | **119.216 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  1,823.6 us |  13.129 us |   9.493 us |   0.92 |     0.05 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |  2,362.6 us |  25.154 us |  18.188 us |   1.20 |     0.06 |
|                         Span_ |  MedianOfThreeKiller |      2 |  3,772.4 us |  43.622 us |  31.542 us |   1.91 |     0.10 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  3,388.6 us |  20.784 us |  15.028 us |   1.72 |     0.09 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  6,338.0 us | 106.127 us |  76.737 us |   3.21 |     0.17 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  4,990.5 us |  25.882 us |  18.715 us |   2.53 |     0.13 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  3,215.3 us |  18.892 us |  13.660 us |   1.63 |     0.09 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **1,636.2 us** |  **16.470 us** |  **11.909 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  1,571.1 us |  16.455 us |  11.898 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |  2,039.6 us |   7.837 us |   5.667 us |   1.25 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |      3 |  2,574.9 us |  14.580 us |  10.542 us |   1.57 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  2,245.9 us |  20.377 us |  14.734 us |   1.37 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  4,487.4 us |  14.923 us |  10.790 us |   2.74 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  3,488.9 us |  17.918 us |  12.956 us |   2.13 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  2,231.8 us |  29.231 us |  21.136 us |   1.36 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **1,642.6 us** |  **10.119 us** |   **7.317 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  1,613.3 us |  11.966 us |   8.652 us |   0.98 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  2,329.2 us |   9.514 us |   6.879 us |   1.42 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |     10 |  1,773.8 us |  13.315 us |   9.628 us |   1.08 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  1,689.7 us |  26.704 us |  19.308 us |   1.03 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  2,766.6 us |  34.601 us |  25.018 us |   1.68 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  2,419.4 us |  14.075 us |  10.177 us |   1.47 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  1,839.2 us |  16.580 us |  11.988 us |   1.12 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **4,113.4 us** | **505.698 us** | **365.653 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  3,972.1 us |  87.666 us |  63.389 us |   0.97 |     0.07 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  5,595.0 us |  95.378 us |  68.965 us |   1.37 |     0.10 |
|                         Span_ |  MedianOfThreeKiller |    100 |  5,850.6 us | 102.779 us |  74.316 us |   1.43 |     0.11 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  5,912.1 us | 355.182 us | 256.820 us |   1.45 |     0.12 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  7,773.6 us | 115.414 us |  83.452 us |   1.90 |     0.14 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  7,544.3 us |  70.202 us |  50.760 us |   1.85 |     0.14 |
|               Span_Comparison |  MedianOfThreeKiller |    100 |  4,674.2 us |  92.524 us |  66.901 us |   1.14 |     0.09 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** |  **6,251.5 us** |  **79.899 us** |  **57.772 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 |  6,288.9 us | 158.908 us | 114.901 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 |  8,845.2 us |  80.995 us |  58.564 us |   1.41 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 10,540.0 us | 106.276 us |  76.845 us |   1.69 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 10,791.6 us | 365.531 us | 264.303 us |   1.73 |     0.04 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 14,020.0 us | 244.406 us | 176.722 us |   2.24 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 13,676.1 us | 103.431 us |  74.787 us |   2.19 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 |  7,573.2 us | 107.212 us |  77.521 us |   1.21 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** |  **9,778.5 us** |  **39.101 us** |  **28.273 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 |  9,794.1 us |  47.072 us |  34.036 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 14,074.8 us |  58.138 us |  42.038 us |   1.44 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 17,624.2 us |  65.264 us |  47.190 us |   1.80 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 17,283.2 us |  51.602 us |  37.312 us |   1.77 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 22,791.0 us | 135.434 us |  97.927 us |   2.33 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 22,030.9 us | 114.891 us |  83.074 us |   2.25 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 12,454.3 us |  59.374 us |  42.931 us |   1.27 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **2,179.9 us** |  **34.091 us** |  **24.650 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  2,126.5 us |  27.558 us |  19.926 us |   0.98 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |  2,767.0 us | 140.008 us | 101.235 us |   1.27 |     0.05 |
|                         Span_ | PartialRandomShuffle |      2 |  3,965.2 us |  90.832 us |  65.677 us |   1.82 |     0.03 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  3,570.3 us |  88.673 us |  64.117 us |   1.64 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  6,515.2 us |  84.153 us |  60.848 us |   2.99 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  5,080.9 us | 160.161 us | 115.807 us |   2.33 |     0.06 |
|               Span_Comparison | PartialRandomShuffle |      2 |  3,414.8 us |  58.159 us |  42.053 us |   1.57 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **1,964.6 us** |  **38.889 us** |  **28.119 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  1,890.9 us |  53.537 us |  38.711 us |   0.96 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  2,312.5 us |  77.405 us |  55.969 us |   1.18 |     0.03 |
|                         Span_ | PartialRandomShuffle |      3 |  2,843.4 us |  40.812 us |  29.510 us |   1.45 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  2,561.4 us |  38.266 us |  27.669 us |   1.30 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  4,808.0 us |  39.069 us |  28.250 us |   2.45 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  3,877.5 us | 109.906 us |  79.469 us |   1.97 |     0.05 |
|               Span_Comparison | PartialRandomShuffle |      3 |  2,609.8 us |  51.085 us |  36.938 us |   1.33 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **1,705.9 us** | **110.174 us** |  **79.663 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  1,673.8 us | 122.715 us |  88.731 us |   0.98 |     0.06 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  2,037.9 us |  37.873 us |  27.385 us |   1.20 |     0.05 |
|                         Span_ | PartialRandomShuffle |     10 |  1,799.3 us |  42.138 us |  30.469 us |   1.06 |     0.05 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  1,692.6 us |  38.090 us |  27.541 us |   0.99 |     0.04 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  2,703.7 us | 111.957 us |  80.952 us |   1.59 |     0.08 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  2,319.3 us |  67.846 us |  49.057 us |   1.36 |     0.06 |
|               Span_Comparison | PartialRandomShuffle |     10 |  1,780.3 us |  44.381 us |  32.090 us |   1.05 |     0.05 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **4,833.5 us** |  **85.650 us** |  **61.931 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  4,837.7 us |  78.174 us |  56.525 us |   1.00 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  6,042.0 us | 170.936 us | 123.598 us |   1.25 |     0.03 |
|                         Span_ | PartialRandomShuffle |    100 |  6,158.0 us | 258.379 us | 186.825 us |   1.27 |     0.04 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  5,951.9 us | 140.568 us | 101.640 us |   1.23 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  7,386.4 us | 150.296 us | 108.674 us |   1.53 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  7,304.0 us | 109.591 us |  79.242 us |   1.51 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |    100 |  5,184.7 us | 142.600 us | 103.109 us |   1.07 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** |  **7,051.4 us** | **111.251 us** |  **80.442 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 |  7,098.4 us | 172.104 us | 124.442 us |   1.01 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 |  8,744.0 us | 123.193 us |  89.077 us |   1.24 |     0.02 |
|                         Span_ | PartialRandomShuffle |   1000 |  9,497.9 us | 154.866 us | 111.979 us |   1.35 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |   1000 |  9,466.2 us | 150.387 us | 108.740 us |   1.34 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 | 11,723.5 us | 172.460 us | 124.700 us |   1.66 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 | 11,816.9 us | 117.718 us |  85.118 us |   1.68 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |   1000 |  7,766.1 us | 116.554 us |  84.276 us |   1.10 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **9,068.3 us** |  **98.092 us** |  **70.927 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  9,115.4 us | 121.050 us |  87.527 us |   1.01 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 11,320.7 us |  57.895 us |  41.862 us |   1.25 |     0.01 |
|                         Span_ | PartialRandomShuffle |  10000 | 13,037.5 us | 156.841 us | 113.406 us |   1.44 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 13,044.1 us | 186.315 us | 134.718 us |   1.44 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 16,013.6 us | 201.986 us | 146.049 us |   1.77 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 15,605.5 us | 110.020 us |  79.552 us |   1.72 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 10,183.5 us | 160.315 us | 115.918 us |   1.12 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |      **2** |  **2,392.8 us** |  **14.602 us** |  **10.558 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  2,167.5 us |  26.874 us |  19.432 us |   0.91 |     0.01 |
| Array_ClassComparableComparer |               Random |      2 |  2,803.7 us |  17.438 us |  12.609 us |   1.17 |     0.01 |
|                         Span_ |               Random |      2 |  3,983.8 us |  31.674 us |  22.902 us |   1.66 |     0.01 |
|             Span_NullComparer |               Random |      2 |  3,630.2 us |  19.972 us |  14.441 us |   1.52 |     0.01 |
|  Span_ClassComparableComparer |               Random |      2 |  6,679.6 us | 120.401 us |  87.057 us |   2.79 |     0.04 |
| Span_StructComparableComparer |               Random |      2 |  5,176.0 us |  25.261 us |  18.265 us |   2.16 |     0.01 |
|               Span_Comparison |               Random |      2 |  3,515.1 us |  37.951 us |  27.441 us |   1.47 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |      **3** |  **2,243.5 us** |  **18.214 us** |  **13.170 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  2,189.6 us |  32.648 us |  23.606 us |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |      3 |  2,778.9 us |  60.436 us |  43.699 us |   1.24 |     0.02 |
|                         Span_ |               Random |      3 |  3,102.0 us |  20.769 us |  15.018 us |   1.38 |     0.01 |
|             Span_NullComparer |               Random |      3 |  2,844.8 us |  21.458 us |  15.516 us |   1.27 |     0.01 |
|  Span_ClassComparableComparer |               Random |      3 |  5,200.1 us |  24.789 us |  17.924 us |   2.32 |     0.01 |
| Span_StructComparableComparer |               Random |      3 |  4,093.9 us |  29.527 us |  21.350 us |   1.82 |     0.01 |
|               Span_Comparison |               Random |      3 |  2,831.5 us |  15.789 us |  11.417 us |   1.26 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |     **10** |  **2,806.5 us** |  **17.646 us** |  **12.759 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  2,761.8 us |  17.973 us |  12.995 us |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |     10 |  3,451.9 us |  20.748 us |  15.002 us |   1.23 |     0.01 |
|                         Span_ |               Random |     10 |  2,860.7 us |  19.107 us |  13.816 us |   1.02 |     0.01 |
|             Span_NullComparer |               Random |     10 |  2,717.7 us |  38.458 us |  27.808 us |   0.97 |     0.01 |
|  Span_ClassComparableComparer |               Random |     10 |  3,947.1 us |  32.875 us |  23.771 us |   1.41 |     0.01 |
| Span_StructComparableComparer |               Random |     10 |  3,652.8 us |  30.303 us |  21.911 us |   1.30 |     0.01 |
|               Span_Comparison |               Random |     10 |  2,922.8 us |  20.382 us |  14.737 us |   1.04 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |    **100** |  **5,725.4 us** |  **77.402 us** |  **55.967 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  5,735.7 us | 116.757 us |  84.423 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random |    100 |  6,841.0 us |  90.048 us |  65.111 us |   1.19 |     0.02 |
|                         Span_ |               Random |    100 |  6,831.2 us |  97.425 us |  70.445 us |   1.19 |     0.02 |
|             Span_NullComparer |               Random |    100 |  6,815.3 us | 152.085 us | 109.967 us |   1.19 |     0.02 |
|  Span_ClassComparableComparer |               Random |    100 |  8,246.9 us | 150.648 us | 108.928 us |   1.44 |     0.02 |
| Span_StructComparableComparer |               Random |    100 |  8,181.2 us | 135.675 us |  98.102 us |   1.43 |     0.02 |
|               Span_Comparison |               Random |    100 |  6,024.2 us | 116.195 us |  84.017 us |   1.05 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |   **1000** |  **8,473.8 us** |  **96.728 us** |  **69.940 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 |  8,471.9 us |  81.667 us |  59.050 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   1000 | 10,092.5 us |  90.647 us |  65.544 us |   1.19 |     0.01 |
|                         Span_ |               Random |   1000 | 10,946.9 us | 130.525 us |  94.378 us |   1.29 |     0.01 |
|             Span_NullComparer |               Random |   1000 | 10,919.0 us |  81.248 us |  58.748 us |   1.29 |     0.01 |
|  Span_ClassComparableComparer |               Random |   1000 | 13,096.1 us |  99.981 us |  72.293 us |   1.55 |     0.01 |
| Span_StructComparableComparer |               Random |   1000 | 12,979.2 us | 110.934 us |  80.213 us |   1.53 |     0.01 |
|               Span_Comparison |               Random |   1000 |  9,034.5 us |  62.135 us |  44.928 us |   1.07 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |  **10000** | **11,454.9 us** |  **51.452 us** |  **37.203 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 11,486.0 us |  54.818 us |  39.637 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |  10000 | 13,710.6 us |  42.109 us |  30.447 us |   1.20 |     0.00 |
|                         Span_ |               Random |  10000 | 15,311.2 us |  64.106 us |  46.353 us |   1.34 |     0.01 |
|             Span_NullComparer |               Random |  10000 | 15,317.7 us |  75.554 us |  54.631 us |   1.34 |     0.01 |
|  Span_ClassComparableComparer |               Random |  10000 | 18,372.8 us |  64.161 us |  46.393 us |   1.60 |     0.01 |
| Span_StructComparableComparer |               Random |  10000 | 18,014.3 us |  73.220 us |  52.943 us |   1.57 |     0.01 |
|               Span_Comparison |               Random |  10000 | 12,409.8 us |  68.506 us |  49.534 us |   1.08 |     0.01 |
