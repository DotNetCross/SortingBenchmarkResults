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
|                        **Array_** |             **Constant** |      **2** |  **1,842.1 us** |  **20.545 us** |  **14.855 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |  1,736.9 us |  21.672 us |  15.670 us |   0.94 |     0.01 |
| Array_ClassComparableComparer |             Constant |      2 | 15,354.5 us |  62.969 us |  45.531 us |   8.34 |     0.07 |
|                         Span_ |             Constant |      2 |  3,936.9 us |  11.697 us |   8.458 us |   2.14 |     0.02 |
|             Span_NullComparer |             Constant |      2 |  3,565.0 us |  14.055 us |  10.163 us |   1.94 |     0.02 |
|  Span_ClassComparableComparer |             Constant |      2 |  6,072.6 us |  20.320 us |  14.693 us |   3.30 |     0.03 |
| Span_StructComparableComparer |             Constant |      2 |  4,553.5 us |  15.042 us |  10.877 us |   2.47 |     0.02 |
|               Span_Comparison |             Constant |      2 |  3,229.6 us |  17.967 us |  12.991 us |   1.75 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |      **3** |  **1,581.6 us** |  **15.692 us** |  **11.346 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |  1,439.1 us |  16.434 us |  11.883 us |   0.91 |     0.01 |
| Array_ClassComparableComparer |             Constant |      3 | 10,891.5 us |  39.946 us |  28.884 us |   6.89 |     0.05 |
|                         Span_ |             Constant |      3 |  2,884.1 us |  13.443 us |   9.720 us |   1.82 |     0.01 |
|             Span_NullComparer |             Constant |      3 |  2,671.3 us |  10.489 us |   7.584 us |   1.69 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      3 |  4,547.0 us |  35.982 us |  26.017 us |   2.88 |     0.03 |
| Span_StructComparableComparer |             Constant |      3 |  3,434.8 us |  14.035 us |  10.148 us |   2.17 |     0.02 |
|               Span_Comparison |             Constant |      3 |  2,480.9 us |  10.053 us |   7.269 us |   1.57 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |     **10** |    **870.9 us** |  **21.015 us** |  **15.196 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |    863.2 us |  15.936 us |  11.523 us |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |     10 |  3,758.2 us |  23.006 us |  16.635 us |   4.32 |     0.07 |
|                         Span_ |             Constant |     10 |  1,002.2 us |   3.358 us |   2.428 us |   1.15 |     0.02 |
|             Span_NullComparer |             Constant |     10 |    944.3 us |  19.291 us |  13.948 us |   1.08 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     10 |  1,670.8 us |  29.875 us |  21.602 us |   1.92 |     0.04 |
| Span_StructComparableComparer |             Constant |     10 |  1,356.7 us |   6.567 us |   4.748 us |   1.56 |     0.03 |
|               Span_Comparison |             Constant |     10 |    939.7 us |  29.377 us |  21.241 us |   1.08 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |    **100** |  **2,395.4 us** |  **19.214 us** |  **13.893 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |  2,384.7 us |   8.447 us |   6.108 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |    100 |  3,101.3 us |  23.848 us |  17.244 us |   1.29 |     0.01 |
|                         Span_ |             Constant |    100 |  3,361.7 us |  24.876 us |  17.987 us |   1.40 |     0.01 |
|             Span_NullComparer |             Constant |    100 |  3,330.7 us |  20.480 us |  14.809 us |   1.39 |     0.01 |
|  Span_ClassComparableComparer |             Constant |    100 |  4,329.5 us |  22.671 us |  16.393 us |   1.81 |     0.01 |
| Span_StructComparableComparer |             Constant |    100 |  4,205.8 us |  15.955 us |  11.537 us |   1.76 |     0.01 |
|               Span_Comparison |             Constant |    100 |  2,693.6 us |  24.841 us |  17.962 us |   1.12 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |  **10000** |  **6,376.0 us** |  **27.374 us** |  **19.793 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |  6,365.5 us |  26.766 us |  19.354 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |  10000 |  7,129.8 us | 119.394 us |  86.330 us |   1.12 |     0.01 |
|                         Span_ |             Constant |  10000 |  9,820.5 us |  41.915 us |  30.307 us |   1.54 |     0.01 |
|             Span_NullComparer |             Constant |  10000 |  9,816.1 us |  54.705 us |  39.555 us |   1.54 |     0.01 |
|  Span_ClassComparableComparer |             Constant |  10000 | 12,185.1 us |  49.289 us |  35.639 us |   1.91 |     0.01 |
| Span_StructComparableComparer |             Constant |  10000 | 12,126.8 us |  55.930 us |  40.441 us |   1.90 |     0.01 |
|               Span_Comparison |             Constant |  10000 |  7,264.1 us |  23.953 us |  17.319 us |   1.14 |     0.00 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** | **100000** |  **8,003.5 us** |  **17.801 us** |  **12.872 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 100000 |  8,012.3 us |  20.671 us |  14.947 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant | 100000 |  8,894.2 us |  46.240 us |  33.435 us |   1.11 |     0.00 |
|                         Span_ |             Constant | 100000 | 12,769.9 us |  72.656 us |  52.535 us |   1.60 |     0.01 |
|             Span_NullComparer |             Constant | 100000 | 12,642.1 us |  86.239 us |  62.356 us |   1.58 |     0.01 |
|  Span_ClassComparableComparer |             Constant | 100000 | 16,064.1 us |  63.352 us |  45.807 us |   2.01 |     0.01 |
| Span_StructComparableComparer |             Constant | 100000 | 15,665.0 us |  52.677 us |  38.089 us |   1.96 |     0.01 |
|               Span_Comparison |             Constant | 100000 |  9,219.1 us |  21.769 us |  15.740 us |   1.15 |     0.00 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **2,017.9 us** |  **12.798 us** |   **9.254 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  1,934.2 us |  27.765 us |  20.076 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      2 | 15,578.3 us |  32.078 us |  23.195 us |   7.72 |     0.04 |
|                         Span_ |         Decrementing |      2 |  4,059.3 us |  17.569 us |  12.703 us |   2.01 |     0.01 |
|             Span_NullComparer |         Decrementing |      2 |  3,739.8 us |   9.664 us |   6.988 us |   1.85 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  6,407.9 us |  45.890 us |  33.181 us |   3.18 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      2 |  4,651.9 us |  26.372 us |  19.069 us |   2.31 |     0.01 |
|               Span_Comparison |         Decrementing |      2 |  3,439.8 us |  13.350 us |   9.653 us |   1.70 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **1,857.1 us** |  **12.965 us** |   **9.375 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  1,798.3 us |  29.969 us |  21.670 us |   0.97 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      3 | 11,253.3 us |  65.189 us |  47.136 us |   6.06 |     0.04 |
|                         Span_ |         Decrementing |      3 |  3,214.6 us |  18.065 us |  13.062 us |   1.73 |     0.01 |
|             Span_NullComparer |         Decrementing |      3 |  2,983.1 us |  16.210 us |  11.721 us |   1.61 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  4,871.1 us |  20.999 us |  15.184 us |   2.62 |     0.01 |
| Span_StructComparableComparer |         Decrementing |      3 |  3,791.4 us |  12.107 us |   8.754 us |   2.04 |     0.01 |
|               Span_Comparison |         Decrementing |      3 |  2,934.5 us |  15.819 us |  11.438 us |   1.58 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **3,075.1 us** |  **25.821 us** |  **18.670 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  3,078.4 us | 106.577 us |  77.062 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |     10 |  6,484.4 us |  30.927 us |  22.362 us |   2.11 |     0.01 |
|                         Span_ |         Decrementing |     10 |  3,404.1 us |  24.062 us |  17.398 us |   1.11 |     0.01 |
|             Span_NullComparer |         Decrementing |     10 |  3,302.5 us |  73.587 us |  53.208 us |   1.07 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  4,977.8 us |  22.466 us |  16.244 us |   1.62 |     0.01 |
| Span_StructComparableComparer |         Decrementing |     10 |  4,585.7 us |  63.927 us |  46.223 us |   1.49 |     0.02 |
|               Span_Comparison |         Decrementing |     10 |  3,594.9 us |  31.200 us |  22.560 us |   1.17 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **3,050.0 us** |  **70.061 us** |  **50.659 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  3,074.1 us |  69.883 us |  50.530 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |    100 |  4,063.5 us |  98.808 us |  71.445 us |   1.33 |     0.03 |
|                         Span_ |         Decrementing |    100 |  4,499.3 us |  38.379 us |  27.750 us |   1.48 |     0.02 |
|             Span_NullComparer |         Decrementing |    100 |  4,518.1 us |  60.175 us |  43.511 us |   1.48 |     0.03 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  6,007.2 us |  69.168 us |  50.013 us |   1.97 |     0.03 |
| Span_StructComparableComparer |         Decrementing |    100 |  5,703.7 us |  87.056 us |  62.947 us |   1.87 |     0.04 |
|               Span_Comparison |         Decrementing |    100 |  3,636.1 us | 116.731 us |  84.404 us |   1.19 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |  **10000** |  **6,626.7 us** |  **54.679 us** |  **39.536 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 |  6,617.8 us |  36.919 us |  26.695 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |  10000 |  8,600.4 us |  50.228 us |  36.318 us |   1.30 |     0.01 |
|                         Span_ |         Decrementing |  10000 | 12,952.3 us | 101.862 us |  73.653 us |   1.95 |     0.02 |
|             Span_NullComparer |         Decrementing |  10000 | 12,939.3 us |  70.267 us |  50.808 us |   1.95 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 16,703.9 us |  87.026 us |  62.926 us |   2.52 |     0.02 |
| Span_StructComparableComparer |         Decrementing |  10000 | 16,051.2 us |  56.014 us |  40.502 us |   2.42 |     0.01 |
|               Span_Comparison |         Decrementing |  10000 |  8,486.3 us |  25.623 us |  18.527 us |   1.28 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** | **100000** |  **8,586.9 us** |  **58.141 us** |  **42.040 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 100000 |  8,611.4 us |  97.264 us |  70.328 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 100000 | 11,352.5 us |  48.529 us |  35.090 us |   1.32 |     0.01 |
|                         Span_ |         Decrementing | 100000 | 17,852.7 us |  39.530 us |  28.583 us |   2.08 |     0.01 |
|             Span_NullComparer |         Decrementing | 100000 | 17,811.4 us |  80.252 us |  58.027 us |   2.07 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 100000 | 23,243.3 us |  97.072 us |  70.190 us |   2.71 |     0.01 |
| Span_StructComparableComparer |         Decrementing | 100000 | 21,841.9 us |  36.759 us |  26.579 us |   2.54 |     0.01 |
|               Span_Comparison |         Decrementing | 100000 | 11,229.9 us |  87.346 us |  63.157 us |   1.31 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **1,870.7 us** |  **10.921 us** |   **7.896 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  1,788.2 us |  14.466 us |  10.460 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      2 | 15,002.9 us |  55.503 us |  40.132 us |   8.02 |     0.04 |
|                         Span_ |         Incrementing |      2 |  3,909.6 us |  12.016 us |   8.688 us |   2.09 |     0.01 |
|             Span_NullComparer |         Incrementing |      2 |  3,568.3 us |  28.932 us |  20.920 us |   1.91 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  6,071.8 us |  55.230 us |  39.935 us |   3.25 |     0.02 |
| Span_StructComparableComparer |         Incrementing |      2 |  4,391.5 us |  22.342 us |  16.154 us |   2.35 |     0.01 |
|               Span_Comparison |         Incrementing |      2 |  3,367.3 us |  45.931 us |  33.211 us |   1.80 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **1,512.6 us** |  **19.058 us** |  **13.780 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  1,453.7 us | 100.339 us |  72.552 us |   0.96 |     0.05 |
| Array_ClassComparableComparer |         Incrementing |      3 | 10,382.9 us |  42.542 us |  30.760 us |   6.87 |     0.06 |
|                         Span_ |         Incrementing |      3 |  2,869.1 us |  12.722 us |   9.199 us |   1.90 |     0.02 |
|             Span_NullComparer |         Incrementing |      3 |  2,673.1 us |  12.718 us |   9.196 us |   1.77 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  4,507.2 us |  39.475 us |  28.543 us |   2.98 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      3 |  3,417.9 us |  31.014 us |  22.425 us |   2.26 |     0.02 |
|               Span_Comparison |         Incrementing |      3 |  2,479.7 us |  13.577 us |   9.817 us |   1.64 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |     **10** |    **886.2 us** |  **11.497 us** |   **8.313 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |    868.8 us |  20.424 us |  14.768 us |   0.98 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |     10 |  3,744.8 us |  22.271 us |  16.103 us |   4.23 |     0.04 |
|                         Span_ |         Incrementing |     10 |  1,011.1 us |  15.738 us |  11.379 us |   1.14 |     0.02 |
|             Span_NullComparer |         Incrementing |     10 |    946.4 us |  10.548 us |   7.627 us |   1.07 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  1,698.6 us |   9.906 us |   7.163 us |   1.92 |     0.02 |
| Span_StructComparableComparer |         Incrementing |     10 |  1,372.8 us |   6.136 us |   4.437 us |   1.55 |     0.01 |
|               Span_Comparison |         Incrementing |     10 |    936.1 us |  16.069 us |  11.619 us |   1.06 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **1,777.2 us** |  **21.687 us** |  **15.681 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  1,796.9 us |  60.610 us |  43.825 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |    100 |  2,565.9 us |  49.283 us |  35.635 us |   1.44 |     0.02 |
|                         Span_ |         Incrementing |    100 |  2,936.8 us |  42.031 us |  30.391 us |   1.65 |     0.02 |
|             Span_NullComparer |         Incrementing |    100 |  2,787.3 us |  40.834 us |  29.525 us |   1.57 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  3,715.1 us |  76.437 us |  55.269 us |   2.09 |     0.03 |
| Span_StructComparableComparer |         Incrementing |    100 |  3,592.5 us |  72.638 us |  52.522 us |   2.02 |     0.03 |
|               Span_Comparison |         Incrementing |    100 |  2,097.8 us |  66.161 us |  47.839 us |   1.18 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **3,774.0 us** |  **48.538 us** |  **35.096 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  3,781.8 us |  49.054 us |  35.470 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  4,999.2 us |  47.472 us |  34.325 us |   1.32 |     0.01 |
|                         Span_ |         Incrementing |  10000 |  7,613.6 us |  29.916 us |  21.631 us |   2.02 |     0.02 |
|             Span_NullComparer |         Incrementing |  10000 |  7,580.8 us |  29.708 us |  21.481 us |   2.01 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |  10000 |  9,855.6 us |  36.611 us |  26.472 us |   2.61 |     0.02 |
| Span_StructComparableComparer |         Incrementing |  10000 |  9,372.9 us |  44.270 us |  32.010 us |   2.48 |     0.02 |
|               Span_Comparison |         Incrementing |  10000 |  4,790.0 us |  21.389 us |  15.465 us |   1.27 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** | **100000** |  **4,622.9 us** |  **60.611 us** |  **43.826 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 100000 |  4,616.4 us |  48.862 us |  35.330 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 100000 |  6,056.7 us |  44.418 us |  32.117 us |   1.31 |     0.01 |
|                         Span_ |         Incrementing | 100000 |  9,598.1 us |  46.412 us |  33.559 us |   2.08 |     0.02 |
|             Span_NullComparer |         Incrementing | 100000 |  9,641.9 us |  61.583 us |  44.529 us |   2.09 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing | 100000 | 12,774.6 us |  55.178 us |  39.898 us |   2.76 |     0.03 |
| Span_StructComparableComparer |         Incrementing | 100000 | 11,944.0 us |  64.398 us |  46.564 us |   2.58 |     0.03 |
|               Span_Comparison |         Incrementing | 100000 |  5,894.5 us |  50.262 us |  36.343 us |   1.28 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **1,846.5 us** |  **16.622 us** |  **12.019 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  1,741.7 us |  17.501 us |  12.654 us |   0.94 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 | 15,550.6 us |  59.848 us |  43.274 us |   8.42 |     0.06 |
|                         Span_ |  MedianOfThreeKiller |      2 |  3,934.3 us |  18.661 us |  13.493 us |   2.13 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  3,570.0 us |  18.554 us |  13.416 us |   1.93 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  6,166.0 us |  31.831 us |  23.016 us |   3.34 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  4,396.7 us |  20.126 us |  14.552 us |   2.38 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  3,215.7 us |  15.913 us |  11.506 us |   1.74 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **1,484.9 us** |   **8.633 us** |   **6.242 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  1,453.6 us |  99.289 us |  71.793 us |   0.98 |     0.05 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 | 10,368.6 us |  50.901 us |  36.805 us |   6.98 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |      3 |  2,993.1 us |  17.271 us |  12.488 us |   2.02 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  2,666.1 us |  16.705 us |  12.079 us |   1.80 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  4,506.5 us |  41.678 us |  30.136 us |   3.03 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  3,410.0 us |  21.867 us |  15.811 us |   2.30 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  2,480.8 us |  10.095 us |   7.300 us |   1.67 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **1,505.5 us** |   **9.248 us** |   **6.687 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  1,552.4 us | 314.520 us | 227.418 us |   1.03 |     0.14 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  4,500.2 us |  19.654 us |  14.211 us |   2.99 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |     10 |  1,775.4 us |  14.812 us |  10.710 us |   1.18 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  1,718.8 us |  11.619 us |   8.401 us |   1.14 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  2,686.2 us | 149.433 us | 108.050 us |   1.78 |     0.07 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  2,338.3 us |   9.659 us |   6.984 us |   1.55 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  1,909.1 us | 127.379 us |  92.104 us |   1.27 |     0.06 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **3,811.6 us** | **212.439 us** | **153.607 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  3,814.3 us | 153.927 us | 111.299 us |   1.00 |     0.05 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  4,880.2 us |  52.843 us |  38.209 us |   1.28 |     0.05 |
|                         Span_ |  MedianOfThreeKiller |    100 |  5,815.8 us |  61.152 us |  44.217 us |   1.53 |     0.06 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  5,803.7 us |  66.637 us |  48.183 us |   1.52 |     0.06 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  7,464.2 us |  90.627 us |  65.529 us |   1.96 |     0.07 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  7,535.7 us |  47.861 us |  34.607 us |   1.98 |     0.07 |
|               Span_Comparison |  MedianOfThreeKiller |    100 |  4,549.0 us |  69.685 us |  50.387 us |   1.20 |     0.04 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** |  **9,252.7 us** |  **70.395 us** |  **50.900 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 |  9,238.1 us |  83.987 us |  60.728 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 11,552.8 us |  59.062 us |  42.706 us |   1.25 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 17,452.2 us |  71.720 us |  51.858 us |   1.89 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 17,490.9 us |  50.497 us |  36.512 us |   1.89 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 22,355.3 us |  68.249 us |  49.349 us |   2.42 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 21,522.8 us |  67.771 us |  49.003 us |   2.33 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 11,975.4 us |  27.974 us |  20.227 us |   1.29 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **100000** | **13,795.9 us** |  **99.835 us** |  **72.187 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 100000 | 13,840.8 us | 176.735 us | 127.791 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 100000 | 16,718.2 us | 122.832 us |  88.815 us |   1.21 |     0.01 |
|                         Span_ |  MedianOfThreeKiller | 100000 | 23,222.5 us | 103.773 us |  75.035 us |   1.68 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller | 100000 | 23,239.3 us | 127.193 us |  91.969 us |   1.68 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 100000 | 29,710.5 us |  59.256 us |  42.846 us |   2.15 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 100000 | 28,400.9 us | 152.036 us | 109.932 us |   2.06 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 100000 | 16,383.2 us | 112.716 us |  81.501 us |   1.19 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **2,078.7 us** |  **45.151 us** |  **32.647 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  1,942.5 us |  31.270 us |  22.611 us |   0.93 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 | 15,560.8 us | 116.278 us |  84.077 us |   7.49 |     0.12 |
|                         Span_ | PartialRandomShuffle |      2 |  4,405.0 us | 122.280 us |  88.416 us |   2.12 |     0.05 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  3,746.0 us |  26.776 us |  19.361 us |   1.80 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  6,297.2 us |  47.027 us |  34.004 us |   3.03 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  4,607.4 us |  40.189 us |  29.059 us |   2.22 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |      2 |  3,455.0 us |  41.798 us |  30.223 us |   1.66 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **1,795.0 us** |  **21.070 us** |  **15.235 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  1,712.9 us |  22.202 us |  16.054 us |   0.95 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 | 10,877.1 us | 184.561 us | 133.450 us |   6.06 |     0.09 |
|                         Span_ | PartialRandomShuffle |      3 |  3,142.1 us |  27.865 us |  20.148 us |   1.75 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  2,969.2 us |  27.464 us |  19.858 us |   1.65 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  4,832.7 us |  74.420 us |  53.811 us |   2.69 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  3,705.9 us |  20.815 us |  15.051 us |   2.06 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |      3 |  2,748.1 us |  17.342 us |  12.540 us |   1.53 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **1,567.5 us** |   **5.661 us** |   **4.093 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  1,559.7 us |  89.001 us |  64.354 us |   1.00 |     0.04 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  4,506.5 us | 125.969 us |  91.084 us |   2.87 |     0.06 |
|                         Span_ | PartialRandomShuffle |     10 |  1,780.8 us |  35.758 us |  25.856 us |   1.14 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  1,720.5 us |  25.878 us |  18.712 us |   1.10 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  2,579.6 us |  15.381 us |  11.122 us |   1.65 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  2,263.6 us |  68.199 us |  49.312 us |   1.44 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |     10 |  1,800.6 us |  70.912 us |  51.274 us |   1.15 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **4,559.9 us** |  **76.411 us** |  **55.250 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  4,584.3 us | 112.379 us |  81.258 us |   1.01 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  5,458.4 us |  99.283 us |  71.788 us |   1.20 |     0.02 |
|                         Span_ | PartialRandomShuffle |    100 |  5,944.1 us | 448.343 us | 324.181 us |   1.30 |     0.07 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  5,821.5 us |  82.461 us |  59.625 us |   1.28 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  7,203.6 us | 164.617 us | 119.029 us |   1.58 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  7,083.5 us | 104.968 us |  75.899 us |   1.55 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |    100 |  5,045.2 us | 162.906 us | 117.792 us |   1.11 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **8,581.2 us** |  **73.046 us** |  **52.817 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  8,581.1 us |  86.280 us |  62.386 us |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 |  9,772.1 us | 122.799 us |  88.792 us |   1.14 |     0.01 |
|                         Span_ | PartialRandomShuffle |  10000 | 12,969.9 us | 124.482 us |  90.009 us |   1.51 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 13,153.3 us | 118.654 us |  85.794 us |   1.53 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 15,624.6 us | 191.227 us | 138.270 us |   1.82 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 15,344.1 us | 199.791 us | 144.462 us |   1.79 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 10,027.9 us | 139.609 us | 100.947 us |   1.17 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** | **100000** |  **7,070.3 us** |  **41.013 us** |  **29.655 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 100000 |  7,087.8 us |  85.800 us |  62.039 us |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle | 100000 |  8,441.2 us |  82.057 us |  59.332 us |   1.19 |     0.01 |
|                         Span_ | PartialRandomShuffle | 100000 | 12,436.4 us | 118.122 us |  85.410 us |   1.76 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle | 100000 | 12,554.4 us | 115.421 us |  83.457 us |   1.78 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 100000 | 15,397.0 us |  95.646 us |  69.158 us |   2.18 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle | 100000 | 14,784.4 us | 146.863 us | 106.191 us |   2.09 |     0.02 |
|               Span_Comparison | PartialRandomShuffle | 100000 |  8,420.7 us |  70.276 us |  50.814 us |   1.19 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |      **2** |  **2,180.7 us** |  **21.864 us** |  **15.809 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  2,095.9 us |  17.078 us |  12.348 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |               Random |      2 | 15,957.7 us |  47.715 us |  34.501 us |   7.32 |     0.05 |
|                         Span_ |               Random |      2 |  4,182.5 us |  18.330 us |  13.254 us |   1.92 |     0.01 |
|             Span_NullComparer |               Random |      2 |  3,873.5 us |  18.429 us |  13.326 us |   1.78 |     0.01 |
|  Span_ClassComparableComparer |               Random |      2 |  6,582.7 us |  33.716 us |  24.379 us |   3.02 |     0.02 |
| Span_StructComparableComparer |               Random |      2 |  4,765.8 us |  50.595 us |  36.583 us |   2.19 |     0.02 |
|               Span_Comparison |               Random |      2 |  3,500.5 us |  27.840 us |  20.130 us |   1.61 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |      **3** |  **2,046.2 us** |  **21.941 us** |  **15.865 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  1,988.1 us |  11.787 us |   8.522 us |   0.97 |     0.01 |
| Array_ClassComparableComparer |               Random |      3 | 11,256.1 us |  22.870 us |  16.537 us |   5.50 |     0.04 |
|                         Span_ |               Random |      3 |  3,400.7 us |  19.233 us |  13.907 us |   1.66 |     0.01 |
|             Span_NullComparer |               Random |      3 |  3,212.1 us |  18.290 us |  13.225 us |   1.57 |     0.01 |
|  Span_ClassComparableComparer |               Random |      3 |  5,136.1 us |  35.495 us |  25.665 us |   2.51 |     0.02 |
| Span_StructComparableComparer |               Random |      3 |  4,042.8 us |  25.915 us |  18.738 us |   1.98 |     0.02 |
|               Span_Comparison |               Random |      3 |  3,023.3 us |  15.282 us |  11.050 us |   1.48 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |     **10** |  **2,716.9 us** |  **25.288 us** |  **18.285 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  2,694.2 us |  29.614 us |  21.413 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |     10 |  5,627.5 us |  41.580 us |  30.065 us |   2.07 |     0.02 |
|                         Span_ |               Random |     10 |  2,868.0 us |  19.411 us |  14.035 us |   1.06 |     0.01 |
|             Span_NullComparer |               Random |     10 |  2,804.4 us |  34.378 us |  24.858 us |   1.03 |     0.01 |
|  Span_ClassComparableComparer |               Random |     10 |  3,853.6 us |  17.563 us |  12.699 us |   1.42 |     0.01 |
| Span_StructComparableComparer |               Random |     10 |  3,618.2 us |  32.666 us |  23.620 us |   1.33 |     0.01 |
|               Span_Comparison |               Random |     10 |  2,939.3 us |  50.816 us |  36.743 us |   1.08 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |    **100** |  **5,444.1 us** |  **98.171 us** |  **70.984 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  5,427.0 us |  67.996 us |  49.166 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random |    100 |  6,266.6 us |  82.126 us |  59.382 us |   1.15 |     0.02 |
|                         Span_ |               Random |    100 |  6,693.7 us |  66.617 us |  48.169 us |   1.23 |     0.02 |
|             Span_NullComparer |               Random |    100 |  6,719.1 us | 147.871 us | 106.921 us |   1.23 |     0.02 |
|  Span_ClassComparableComparer |               Random |    100 |  8,026.9 us | 111.041 us |  80.290 us |   1.47 |     0.02 |
| Span_StructComparableComparer |               Random |    100 |  8,023.4 us | 105.532 us |  76.306 us |   1.47 |     0.02 |
|               Span_Comparison |               Random |    100 |  5,900.0 us |  90.200 us |  65.220 us |   1.08 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |  **10000** | **10,809.4 us** |  **70.440 us** |  **50.933 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 10,779.4 us |  42.759 us |  30.918 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |  10000 | 11,866.0 us |  43.648 us |  31.561 us |   1.10 |     0.01 |
|                         Span_ |               Random |  10000 | 15,245.2 us |  46.979 us |  33.969 us |   1.41 |     0.01 |
|             Span_NullComparer |               Random |  10000 | 15,300.5 us |  94.909 us |  68.626 us |   1.42 |     0.01 |
|  Span_ClassComparableComparer |               Random |  10000 | 18,011.1 us |  65.968 us |  47.699 us |   1.67 |     0.01 |
| Span_StructComparableComparer |               Random |  10000 | 17,746.7 us |  55.488 us |  40.122 us |   1.64 |     0.01 |
|               Span_Comparison |               Random |  10000 | 12,235.7 us |  43.287 us |  31.300 us |   1.13 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** | **100000** | **14,443.9 us** | **101.480 us** |  **73.377 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 100000 | 14,441.3 us |  84.918 us |  61.401 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random | 100000 | 15,847.2 us |  63.612 us |  45.996 us |   1.10 |     0.01 |
|                         Span_ |               Random | 100000 | 20,506.7 us | 135.733 us |  98.144 us |   1.42 |     0.01 |
|             Span_NullComparer |               Random | 100000 | 20,714.0 us | 116.402 us |  84.166 us |   1.43 |     0.01 |
|  Span_ClassComparableComparer |               Random | 100000 | 23,759.6 us | 114.798 us |  83.007 us |   1.64 |     0.01 |
| Span_StructComparableComparer |               Random | 100000 | 23,432.4 us |  67.259 us |  48.633 us |   1.62 |     0.01 |
|               Span_Comparison |               Random | 100000 | 16,474.2 us | 139.143 us | 100.610 us |   1.14 |     0.01 |
