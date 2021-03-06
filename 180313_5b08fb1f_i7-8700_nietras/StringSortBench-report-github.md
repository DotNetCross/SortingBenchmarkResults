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
|                        Method |               Filler | Length |         Mean |      Error |     StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |-------------:|-----------:|-----------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |   **1,929.6 us** | **146.225 us** | **105.731 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |   1,799.9 us |  11.646 us |   8.421 us |   0.94 |     0.04 |
| Array_ClassComparableComparer |             Constant |      2 |  15,761.9 us | 123.544 us |  89.330 us |   8.19 |     0.38 |
|                         Span_ |             Constant |      2 |   3,932.8 us |  31.747 us |  22.955 us |   2.04 |     0.09 |
|             Span_NullComparer |             Constant |      2 |   3,590.9 us |  24.430 us |  17.664 us |   1.87 |     0.09 |
|  Span_ClassComparableComparer |             Constant |      2 |   6,328.0 us |  19.056 us |  13.779 us |   3.29 |     0.15 |
| Span_StructComparableComparer |             Constant |      2 |   4,468.3 us |  23.197 us |  16.773 us |   2.32 |     0.11 |
|               Span_Comparison |             Constant |      2 |   3,387.9 us |  57.911 us |  41.873 us |   1.76 |     0.08 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |             **Constant** |      **3** |   **1,534.7 us** |  **16.153 us** |  **11.680 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |   1,470.1 us |   9.518 us |   6.882 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |             Constant |      3 |  10,792.0 us | 299.683 us | 216.690 us |   7.03 |     0.14 |
|                         Span_ |             Constant |      3 |   2,905.9 us |  13.518 us |   9.775 us |   1.89 |     0.01 |
|             Span_NullComparer |             Constant |      3 |   2,733.2 us |  13.562 us |   9.806 us |   1.78 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      3 |   4,705.0 us |  24.171 us |  17.477 us |   3.07 |     0.02 |
| Span_StructComparableComparer |             Constant |      3 |   3,593.3 us |  20.530 us |  14.845 us |   2.34 |     0.02 |
|               Span_Comparison |             Constant |      3 |   2,615.2 us |  19.281 us |  13.942 us |   1.70 |     0.02 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |             **Constant** |     **10** |     **896.8 us** |  **14.367 us** |  **10.389 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |     875.6 us |  17.979 us |  13.000 us |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |     10 |   3,811.5 us |  16.951 us |  12.257 us |   4.25 |     0.05 |
|                         Span_ |             Constant |     10 |   1,035.3 us |   8.037 us |   5.811 us |   1.15 |     0.01 |
|             Span_NullComparer |             Constant |     10 |     968.7 us |   7.188 us |   5.197 us |   1.08 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     10 |   1,753.3 us |   6.865 us |   4.964 us |   1.96 |     0.02 |
| Span_StructComparableComparer |             Constant |     10 |   1,369.8 us |   5.949 us |   4.301 us |   1.53 |     0.02 |
|               Span_Comparison |             Constant |     10 |     978.0 us |   9.699 us |   7.013 us |   1.09 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |             **Constant** |    **100** |   **2,392.0 us** |  **28.931 us** |  **20.919 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |   2,389.3 us |  19.399 us |  14.027 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |    100 |   2,994.5 us |  16.055 us |  11.609 us |   1.25 |     0.01 |
|                         Span_ |             Constant |    100 |   3,409.5 us |  17.930 us |  12.965 us |   1.43 |     0.01 |
|             Span_NullComparer |             Constant |    100 |   3,403.0 us |  13.768 us |   9.955 us |   1.42 |     0.01 |
|  Span_ClassComparableComparer |             Constant |    100 |   4,351.5 us |  30.658 us |  22.168 us |   1.82 |     0.02 |
| Span_StructComparableComparer |             Constant |    100 |   4,255.1 us |  30.176 us |  21.819 us |   1.78 |     0.02 |
|               Span_Comparison |             Constant |    100 |   2,792.2 us |  26.598 us |  19.232 us |   1.17 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |             **Constant** |   **1000** |   **3,960.0 us** |  **15.893 us** |  **11.492 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |   3,960.2 us |  19.633 us |  14.196 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |   1000 |   4,372.4 us |  18.798 us |  13.592 us |   1.10 |     0.00 |
|                         Span_ |             Constant |   1000 |   6,221.0 us |  30.608 us |  22.131 us |   1.57 |     0.01 |
|             Span_NullComparer |             Constant |   1000 |   6,478.4 us |  30.093 us |  21.759 us |   1.64 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   1000 |   7,724.8 us | 105.332 us |  76.162 us |   1.95 |     0.02 |
| Span_StructComparableComparer |             Constant |   1000 |   7,612.6 us |  54.907 us |  39.701 us |   1.92 |     0.01 |
|               Span_Comparison |             Constant |   1000 |   4,758.7 us |  23.912 us |  17.290 us |   1.20 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |             **Constant** |  **10000** |   **6,225.1 us** |  **17.045 us** |  **12.325 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |   6,233.0 us |  24.523 us |  17.732 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |  10000 |   6,744.7 us |  35.559 us |  25.711 us |   1.08 |     0.00 |
|                         Span_ |             Constant |  10000 |   9,972.5 us |  39.405 us |  28.493 us |   1.60 |     0.01 |
|             Span_NullComparer |             Constant |  10000 |   9,988.7 us |  38.218 us |  27.634 us |   1.60 |     0.01 |
|  Span_ClassComparableComparer |             Constant |  10000 |  12,395.5 us |  33.195 us |  24.002 us |   1.99 |     0.01 |
| Span_StructComparableComparer |             Constant |  10000 |  12,470.6 us |  37.279 us |  26.955 us |   2.00 |     0.01 |
|               Span_Comparison |             Constant |  10000 |   7,543.2 us |  28.993 us |  20.964 us |   1.21 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **2** |   **5,566.8 us** |  **26.750 us** |  **19.342 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |   5,557.7 us | 150.911 us | 109.118 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |      2 |  20,613.6 us | 543.596 us | 393.055 us |   3.70 |     0.07 |
|                         Span_ |         Decrementing |      2 |   8,146.8 us |  32.236 us |  23.309 us |   1.46 |     0.01 |
|             Span_NullComparer |         Decrementing |      2 |   7,358.4 us |  25.890 us |  18.720 us |   1.32 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  10,722.6 us |  28.277 us |  20.446 us |   1.93 |     0.01 |
| Span_StructComparableComparer |         Decrementing |      2 |   8,889.6 us |  30.677 us |  22.182 us |   1.60 |     0.01 |
|               Span_Comparison |         Decrementing |      2 |   7,202.2 us |  40.111 us |  29.003 us |   1.29 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **3** |   **8,671.5 us** |  **26.155 us** |  **18.912 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |   8,613.8 us |  51.393 us |  37.160 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |      3 |  19,267.7 us | 361.266 us | 261.219 us |   2.22 |     0.03 |
|                         Span_ |         Decrementing |      3 |  10,338.8 us |  26.672 us |  19.286 us |   1.19 |     0.00 |
|             Span_NullComparer |         Decrementing |      3 |   9,978.3 us |  32.357 us |  23.396 us |   1.15 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  13,000.0 us |  45.034 us |  32.562 us |   1.50 |     0.00 |
| Span_StructComparableComparer |         Decrementing |      3 |  11,007.6 us |  19.428 us |  14.048 us |   1.27 |     0.00 |
|               Span_Comparison |         Decrementing |      3 |   9,968.5 us |  18.034 us |  13.040 us |   1.15 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **32,649.5 us** |  **47.975 us** |  **34.689 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  32,631.7 us |  54.459 us |  39.377 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |     10 |  37,031.0 us | 159.084 us | 115.028 us |   1.13 |     0.00 |
|                         Span_ |         Decrementing |     10 |  33,763.9 us |  52.972 us |  38.303 us |   1.03 |     0.00 |
|             Span_NullComparer |         Decrementing |     10 |  33,137.6 us |  58.990 us |  42.654 us |   1.01 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  35,224.0 us |  51.807 us |  37.459 us |   1.08 |     0.00 |
| Span_StructComparableComparer |         Decrementing |     10 |  34,232.6 us |  64.987 us |  46.990 us |   1.05 |     0.00 |
|               Span_Comparison |         Decrementing |     10 |  32,987.0 us |  48.704 us |  35.216 us |   1.01 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **40,304.0 us** | **285.107 us** | **206.151 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  40,943.9 us | 166.943 us | 120.711 us |   1.02 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |    100 |  42,868.3 us | 179.048 us | 129.464 us |   1.06 |     0.01 |
|                         Span_ |         Decrementing |    100 |  45,781.9 us | 382.527 us | 276.592 us |   1.14 |     0.01 |
|             Span_NullComparer |         Decrementing |    100 |  44,840.0 us | 124.419 us |  89.963 us |   1.11 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  47,828.8 us | 175.988 us | 127.251 us |   1.19 |     0.01 |
| Span_StructComparableComparer |         Decrementing |    100 |  46,689.1 us | 218.747 us | 158.168 us |   1.16 |     0.01 |
|               Span_Comparison |         Decrementing |    100 |  44,484.8 us | 223.762 us | 161.795 us |   1.10 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Decrementing** |   **1000** |  **80,037.1 us** |  **58.428 us** |  **42.247 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 |  78,476.6 us |  69.337 us |  50.135 us |   0.98 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |   1000 |  79,460.2 us |  95.877 us |  69.326 us |   0.99 |     0.00 |
|                         Span_ |         Decrementing |   1000 |  87,130.7 us |  59.358 us |  42.920 us |   1.09 |     0.00 |
|             Span_NullComparer |         Decrementing |   1000 |  82,361.1 us | 811.107 us | 586.483 us |   1.03 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   1000 |  92,190.6 us | 141.734 us | 102.483 us |   1.15 |     0.00 |
| Span_StructComparableComparer |         Decrementing |   1000 |  88,235.1 us |  62.578 us |  45.248 us |   1.10 |     0.00 |
|               Span_Comparison |         Decrementing |   1000 |  76,575.6 us |  53.645 us |  38.789 us |   0.96 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Decrementing** |  **10000** | **121,290.0 us** | **548.331 us** | **396.479 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 | 122,639.7 us | 193.574 us | 139.967 us |   1.01 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 124,569.6 us | 246.402 us | 178.165 us |   1.03 |     0.00 |
|                         Span_ |         Decrementing |  10000 | 134,942.8 us |  83.367 us |  60.280 us |   1.11 |     0.00 |
|             Span_NullComparer |         Decrementing |  10000 | 133,639.2 us | 193.639 us | 140.014 us |   1.10 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 143,827.5 us | 111.196 us |  80.402 us |   1.19 |     0.00 |
| Span_StructComparableComparer |         Decrementing |  10000 | 137,624.0 us | 112.740 us |  81.519 us |   1.13 |     0.00 |
|               Span_Comparison |         Decrementing |  10000 | 127,684.9 us | 103.837 us |  75.081 us |   1.05 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **2** |   **5,503.2 us** | **140.125 us** | **101.320 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |   5,298.9 us |  30.980 us |  22.401 us |   0.96 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |      2 |  20,823.0 us | 519.008 us | 375.277 us |   3.78 |     0.09 |
|                         Span_ |         Incrementing |      2 |   7,750.6 us |  22.591 us |  16.335 us |   1.41 |     0.02 |
|             Span_NullComparer |         Incrementing |      2 |   7,233.8 us |  35.938 us |  25.986 us |   1.31 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  10,632.0 us | 118.915 us |  85.983 us |   1.93 |     0.04 |
| Span_StructComparableComparer |         Incrementing |      2 |   8,292.7 us |  30.274 us |  21.890 us |   1.51 |     0.03 |
|               Span_Comparison |         Incrementing |      2 |   6,902.3 us |  29.276 us |  21.168 us |   1.25 |     0.02 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **3** |   **8,427.4 us** |  **95.018 us** |  **68.704 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |   8,424.6 us |  23.557 us |  17.033 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      3 |  19,532.9 us | 364.875 us | 263.829 us |   2.32 |     0.03 |
|                         Span_ |         Incrementing |      3 |  10,285.3 us |  28.302 us |  20.464 us |   1.22 |     0.01 |
|             Span_NullComparer |         Incrementing |      3 |  10,259.0 us |  75.273 us |  54.427 us |   1.22 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  12,351.6 us |  33.655 us |  24.335 us |   1.47 |     0.01 |
| Span_StructComparableComparer |         Incrementing |      3 |  10,813.7 us |  38.362 us |  27.738 us |   1.28 |     0.01 |
|               Span_Comparison |         Incrementing |      3 |   9,678.8 us |  36.989 us |  26.746 us |   1.15 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Incrementing** |     **10** |   **6,751.5 us** |  **40.704 us** |  **29.432 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |   6,908.9 us |  30.430 us |  22.003 us |   1.02 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |     10 |  10,315.7 us | 182.903 us | 132.251 us |   1.53 |     0.02 |
|                         Span_ |         Incrementing |     10 |   7,076.8 us |  54.334 us |  39.287 us |   1.05 |     0.01 |
|             Span_NullComparer |         Incrementing |     10 |   6,934.2 us |  30.808 us |  22.276 us |   1.03 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |     10 |   8,479.7 us |  32.060 us |  23.181 us |   1.26 |     0.01 |
| Span_StructComparableComparer |         Incrementing |     10 |   7,453.2 us |  44.411 us |  32.112 us |   1.10 |     0.01 |
|               Span_Comparison |         Incrementing |     10 |   7,245.7 us |  24.780 us |  17.917 us |   1.07 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **26,912.0 us** | **112.002 us** |  **80.985 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  29,311.8 us |  71.765 us |  51.891 us |   1.09 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |    100 |  28,139.5 us |  63.002 us |  45.554 us |   1.05 |     0.00 |
|                         Span_ |         Incrementing |    100 |  29,722.8 us | 118.790 us |  85.893 us |   1.10 |     0.00 |
|             Span_NullComparer |         Incrementing |    100 |  30,360.0 us |  63.498 us |  45.914 us |   1.13 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  31,766.2 us |  70.014 us |  50.625 us |   1.18 |     0.00 |
| Span_StructComparableComparer |         Incrementing |    100 |  30,597.3 us | 142.942 us | 103.356 us |   1.14 |     0.00 |
|               Span_Comparison |         Incrementing |    100 |  27,278.2 us | 143.062 us | 103.443 us |   1.01 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Incrementing** |   **1000** |  **45,829.9 us** |  **31.470 us** |  **22.755 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 |  45,977.5 us |  90.672 us |  65.562 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |   1000 |  47,408.6 us | 149.446 us | 108.059 us |   1.03 |     0.00 |
|                         Span_ |         Incrementing |   1000 |  50,365.6 us |  52.746 us |  38.139 us |   1.10 |     0.00 |
|             Span_NullComparer |         Incrementing |   1000 |  52,606.5 us |  64.922 us |  46.943 us |   1.15 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |   1000 |  55,608.4 us |  61.450 us |  44.432 us |   1.21 |     0.00 |
| Span_StructComparableComparer |         Incrementing |   1000 |  53,117.0 us |  45.553 us |  32.938 us |   1.16 |     0.00 |
|               Span_Comparison |         Incrementing |   1000 |  46,782.0 us |  50.701 us |  36.660 us |   1.02 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **73,846.8 us** |  **79.682 us** |  **57.616 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  77,736.3 us |  57.932 us |  41.888 us |   1.05 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  76,276.5 us | 137.026 us |  99.079 us |   1.03 |     0.00 |
|                         Span_ |         Incrementing |  10000 |  79,676.6 us |  69.335 us |  50.134 us |   1.08 |     0.00 |
|             Span_NullComparer |         Incrementing |  10000 |  78,947.1 us | 185.897 us | 134.416 us |   1.07 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |  10000 |  87,296.4 us |  72.018 us |  52.074 us |   1.18 |     0.00 |
| Span_StructComparableComparer |         Incrementing |  10000 |  85,875.0 us |  39.294 us |  28.412 us |   1.16 |     0.00 |
|               Span_Comparison |         Incrementing |  10000 |  72,343.5 us |  72.070 us |  52.111 us |   0.98 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |   **5,680.8 us** |  **43.230 us** |  **31.258 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |   5,494.1 us |  36.583 us |  26.452 us |   0.97 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |  20,425.6 us | 495.561 us | 358.323 us |   3.60 |     0.06 |
|                         Span_ |  MedianOfThreeKiller |      2 |   7,530.2 us |  39.406 us |  28.493 us |   1.33 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |   7,370.7 us |  25.414 us |  18.376 us |   1.30 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  10,775.2 us |  23.469 us |  16.969 us |   1.90 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |   8,480.8 us |  37.919 us |  27.418 us |   1.49 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |   7,177.3 us |  42.013 us |  30.378 us |   1.26 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |   **8,537.6 us** |  **24.676 us** |  **17.843 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |   8,270.0 us |  30.780 us |  22.256 us |   0.97 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |  18,978.6 us | 434.070 us | 313.861 us |   2.22 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |      3 |  10,030.4 us |  14.965 us |  10.820 us |   1.17 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |   9,960.3 us |  40.048 us |  28.957 us |   1.17 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  12,474.9 us |  47.364 us |  34.248 us |   1.46 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  10,563.7 us |  16.718 us |  12.088 us |   1.24 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |   9,554.9 us |  25.867 us |  18.704 us |   1.12 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **16,516.2 us** |  **57.895 us** |  **41.862 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  17,579.8 us |  32.574 us |  23.553 us |   1.06 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  20,744.6 us | 144.115 us | 104.204 us |   1.26 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |     10 |  17,128.7 us |  61.145 us |  44.212 us |   1.04 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  16,976.8 us | 233.858 us | 169.095 us |   1.03 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  17,982.6 us |  33.220 us |  24.021 us |   1.09 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  17,969.8 us |  75.144 us |  54.334 us |   1.09 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  16,649.5 us | 100.741 us |  72.842 us |   1.01 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **53,130.2 us** |  **84.355 us** |  **60.994 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  55,450.2 us | 121.323 us |  87.724 us |   1.04 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  54,745.7 us |  61.941 us |  44.787 us |   1.03 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |    100 |  60,410.5 us | 104.031 us |  75.221 us |   1.14 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  58,905.8 us |  71.860 us |  51.960 us |   1.11 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  64,013.8 us |  79.185 us |  57.256 us |   1.20 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  61,979.9 us | 116.027 us |  83.895 us |   1.17 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |    100 |  54,404.1 us | 118.792 us |  85.894 us |   1.02 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** |  **93,904.2 us** |  **99.487 us** |  **71.936 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 |  93,979.1 us | 133.450 us |  96.493 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 |  99,326.3 us | 137.660 us |  99.537 us |   1.06 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 107,205.2 us | 112.917 us |  81.646 us |   1.14 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 102,094.4 us | 271.608 us | 196.391 us |   1.09 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 112,428.2 us | 111.644 us |  80.726 us |   1.20 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 107,949.5 us | 285.909 us | 206.731 us |   1.15 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 |  95,528.4 us |  73.511 us |  53.153 us |   1.02 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **156,608.2 us** | **218.714 us** | **158.144 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 153,304.8 us | 222.005 us | 160.524 us |   0.98 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 159,039.9 us | 249.983 us | 180.754 us |   1.02 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 171,661.6 us | 335.955 us | 242.917 us |   1.10 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 173,510.7 us | 152.868 us | 110.534 us |   1.11 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 192,105.0 us | 149.596 us | 108.167 us |   1.23 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 181,439.8 us | 143.704 us | 103.907 us |   1.16 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 165,586.9 us | 391.580 us | 283.138 us |   1.06 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |   **5,793.4 us** | **217.442 us** | **157.225 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |   5,814.9 us | 263.743 us | 190.703 us |   1.00 |     0.04 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |  20,877.6 us | 569.436 us | 411.740 us |   3.61 |     0.11 |
|                         Span_ | PartialRandomShuffle |      2 |   7,981.4 us | 208.199 us | 150.542 us |   1.38 |     0.04 |
|             Span_NullComparer | PartialRandomShuffle |      2 |   7,469.6 us | 125.613 us |  90.827 us |   1.29 |     0.04 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  10,858.6 us | 213.810 us | 154.599 us |   1.88 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |   8,517.6 us | 213.435 us | 154.328 us |   1.47 |     0.04 |
|               Span_Comparison | PartialRandomShuffle |      2 |   7,438.1 us | 156.426 us | 113.106 us |   1.28 |     0.04 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |   **8,763.2 us** | **205.895 us** | **148.875 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |   8,751.4 us | 129.703 us |  93.784 us |   1.00 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  19,782.8 us | 439.775 us | 317.986 us |   2.26 |     0.05 |
|                         Span_ | PartialRandomShuffle |      3 |  10,551.7 us | 190.952 us | 138.070 us |   1.20 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  10,203.1 us | 191.395 us | 138.391 us |   1.16 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  12,556.1 us | 241.937 us | 174.936 us |   1.43 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  11,113.7 us | 270.309 us | 195.451 us |   1.27 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |      3 |  10,265.1 us | 217.641 us | 157.369 us |   1.17 |     0.03 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **11,789.5 us** | **184.983 us** | **133.755 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  11,896.9 us | 227.007 us | 164.141 us |   1.01 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  15,567.7 us | 193.432 us | 139.864 us |   1.32 |     0.02 |
|                         Span_ | PartialRandomShuffle |     10 |  12,190.0 us | 190.762 us | 137.934 us |   1.03 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  12,088.8 us | 121.656 us |  87.966 us |   1.03 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  13,584.0 us | 215.815 us | 156.048 us |   1.15 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  12,624.7 us | 264.787 us | 191.458 us |   1.07 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |     10 |  12,543.0 us | 256.339 us | 185.350 us |   1.06 |     0.02 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **53,018.2 us** | **233.414 us** | **168.773 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  47,388.3 us | 280.171 us | 202.582 us |   0.89 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  52,208.9 us | 229.033 us | 165.606 us |   0.98 |     0.00 |
|                         Span_ | PartialRandomShuffle |    100 |  51,628.8 us | 258.457 us | 186.881 us |   0.97 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  50,523.2 us | 216.980 us | 156.890 us |   0.95 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  55,109.7 us | 229.998 us | 166.303 us |   1.04 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  51,767.1 us | 376.118 us | 271.958 us |   0.98 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |    100 |  49,780.4 us | 303.227 us | 219.253 us |   0.94 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** |  **71,566.4 us** | **190.314 us** | **137.609 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 |  72,488.6 us | 230.324 us | 166.539 us |   1.01 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 |  73,553.9 us | 171.173 us | 123.769 us |   1.03 |     0.00 |
|                         Span_ | PartialRandomShuffle |   1000 |  76,894.3 us | 297.524 us | 215.129 us |   1.07 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   1000 |  76,463.3 us | 300.331 us | 217.159 us |   1.07 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 |  83,440.5 us | 363.192 us | 262.612 us |   1.17 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 |  84,386.8 us | 188.708 us | 136.449 us |   1.18 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |   1000 |  73,694.8 us | 229.638 us | 166.044 us |   1.03 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **97,066.6 us** | **222.057 us** | **160.562 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  97,330.1 us | 310.453 us | 224.478 us |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 103,389.1 us | 274.275 us | 198.319 us |   1.07 |     0.00 |
|                         Span_ | PartialRandomShuffle |  10000 | 109,625.3 us | 208.218 us | 150.556 us |   1.13 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 105,304.6 us | 334.664 us | 241.984 us |   1.08 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 113,920.1 us | 168.332 us | 121.715 us |   1.17 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 109,383.1 us | 233.624 us | 168.925 us |   1.13 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |  10000 |  98,529.3 us | 232.864 us | 168.376 us |   1.02 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |               **Random** |      **2** |   **5,501.0 us** |  **30.014 us** |  **21.702 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |   5,553.2 us |  31.594 us |  22.844 us |   1.01 |     0.01 |
| Array_ClassComparableComparer |               Random |      2 |  20,075.8 us | 471.928 us | 341.235 us |   3.65 |     0.06 |
|                         Span_ |               Random |      2 |   7,957.4 us |  42.486 us |  30.720 us |   1.45 |     0.01 |
|             Span_NullComparer |               Random |      2 |   7,377.8 us |  33.316 us |  24.090 us |   1.34 |     0.01 |
|  Span_ClassComparableComparer |               Random |      2 |  10,802.1 us |  52.721 us |  38.121 us |   1.96 |     0.01 |
| Span_StructComparableComparer |               Random |      2 |   8,719.0 us |  30.665 us |  22.173 us |   1.59 |     0.01 |
|               Span_Comparison |               Random |      2 |   7,184.0 us |  43.225 us |  31.254 us |   1.31 |     0.01 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |               **Random** |      **3** |   **8,419.4 us** |  **21.633 us** |  **15.642 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |   8,236.9 us |  37.090 us |  26.819 us |   0.98 |     0.00 |
| Array_ClassComparableComparer |               Random |      3 |  19,495.7 us | 323.726 us | 234.075 us |   2.32 |     0.03 |
|                         Span_ |               Random |      3 |   9,827.1 us |  34.501 us |  24.947 us |   1.17 |     0.00 |
|             Span_NullComparer |               Random |      3 |   9,750.5 us |  17.344 us |  12.541 us |   1.16 |     0.00 |
|  Span_ClassComparableComparer |               Random |      3 |  12,086.5 us |  61.022 us |  44.123 us |   1.44 |     0.01 |
| Span_StructComparableComparer |               Random |      3 |  10,417.2 us |  46.541 us |  33.653 us |   1.24 |     0.00 |
|               Span_Comparison |               Random |      3 |   9,616.4 us |  36.954 us |  26.720 us |   1.14 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |               **Random** |     **10** |  **20,104.6 us** |  **35.078 us** |  **25.364 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  19,967.3 us |  36.947 us |  26.715 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |               Random |     10 |  24,819.9 us | 125.533 us |  90.768 us |   1.23 |     0.00 |
|                         Span_ |               Random |     10 |  20,655.4 us |  76.889 us |  55.596 us |   1.03 |     0.00 |
|             Span_NullComparer |               Random |     10 |  20,187.5 us |  24.399 us |  17.642 us |   1.00 |     0.00 |
|  Span_ClassComparableComparer |               Random |     10 |  22,445.2 us |  26.921 us |  19.465 us |   1.12 |     0.00 |
| Span_StructComparableComparer |               Random |     10 |  21,454.9 us |  76.324 us |  55.187 us |   1.07 |     0.00 |
|               Span_Comparison |               Random |     10 |  21,575.0 us |  44.101 us |  31.888 us |   1.07 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |               **Random** |    **100** |  **46,331.2 us** | **168.624 us** | **121.926 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  46,244.5 us | 199.140 us | 143.991 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |    100 |  47,752.5 us | 103.455 us |  74.805 us |   1.03 |     0.00 |
|                         Span_ |               Random |    100 |  49,699.2 us | 137.057 us |  99.101 us |   1.07 |     0.00 |
|             Span_NullComparer |               Random |    100 |  48,464.8 us | 403.344 us | 291.644 us |   1.05 |     0.01 |
|  Span_ClassComparableComparer |               Random |    100 |  51,587.5 us | 119.613 us |  86.488 us |   1.11 |     0.00 |
| Span_StructComparableComparer |               Random |    100 |  52,486.1 us | 198.777 us | 143.728 us |   1.13 |     0.00 |
|               Span_Comparison |               Random |    100 |  49,906.2 us | 135.154 us |  97.725 us |   1.08 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |               **Random** |   **1000** |  **71,140.9 us** | **308.224 us** | **222.866 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 |  79,448.0 us |  59.979 us |  43.369 us |   1.12 |     0.00 |
| Array_ClassComparableComparer |               Random |   1000 |  74,641.9 us |  99.918 us |  72.247 us |   1.05 |     0.00 |
|                         Span_ |               Random |   1000 |  83,319.2 us | 114.896 us |  83.077 us |   1.17 |     0.00 |
|             Span_NullComparer |               Random |   1000 |  83,282.6 us |  85.618 us |  61.907 us |   1.17 |     0.00 |
|  Span_ClassComparableComparer |               Random |   1000 |  82,568.2 us | 152.960 us | 110.600 us |   1.16 |     0.00 |
| Span_StructComparableComparer |               Random |   1000 |  83,132.8 us |  68.632 us |  49.626 us |   1.17 |     0.00 |
|               Span_Comparison |               Random |   1000 |  73,528.3 us |  44.939 us |  32.494 us |   1.03 |     0.00 |
|                               |                      |        |              |            |            |        |          |
|                        **Array_** |               **Random** |  **10000** | **103,998.8 us** | **162.102 us** | **117.210 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 100,088.8 us | 111.937 us |  80.938 us |   0.96 |     0.00 |
| Array_ClassComparableComparer |               Random |  10000 | 102,646.7 us | 110.375 us |  79.808 us |   0.99 |     0.00 |
|                         Span_ |               Random |  10000 | 111,860.7 us | 329.968 us | 238.588 us |   1.08 |     0.00 |
|             Span_NullComparer |               Random |  10000 | 112,847.1 us |  64.894 us |  46.923 us |   1.09 |     0.00 |
|  Span_ClassComparableComparer |               Random |  10000 | 115,443.1 us | 124.157 us |  89.773 us |   1.11 |     0.00 |
| Span_StructComparableComparer |               Random |  10000 | 111,363.8 us | 133.743 us |  96.705 us |   1.07 |     0.00 |
|               Span_Comparison |               Random |  10000 | 102,097.9 us | 139.897 us | 101.154 us |   0.98 |     0.00 |
