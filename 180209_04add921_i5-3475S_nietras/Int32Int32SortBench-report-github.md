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
|                        Method |               Filler |  Length |       Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |-------- |-----------:|----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |       **2** |  **32.291 ms** | **0.4588 ms** | **0.3318 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  31.747 ms | 0.3861 ms | 0.2792 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |             Constant |       2 |  59.189 ms | 0.9074 ms | 0.6561 ms |   1.83 |     0.03 |
|                         Span_ |             Constant |       2 |  10.604 ms | 0.2592 ms | 0.1875 ms |   0.33 |     0.01 |
|             Span_NullComparer |             Constant |       2 |  30.858 ms | 0.5546 ms | 0.4010 ms |   0.96 |     0.02 |
|  Span_ClassComparableComparer |             Constant |       2 | 133.064 ms | 1.3077 ms | 0.9455 ms |   4.12 |     0.05 |
| Span_StructComparableComparer |             Constant |       2 |  71.045 ms | 0.6083 ms | 0.4399 ms |   2.20 |     0.03 |
|               Span_Comparison |             Constant |       2 |  83.144 ms | 0.6808 ms | 0.4923 ms |   2.58 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **24.114 ms** | **0.4130 ms** | **0.2986 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  23.526 ms | 0.4069 ms | 0.2942 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |       3 |  50.712 ms | 0.4543 ms | 0.3285 ms |   2.10 |     0.03 |
|                         Span_ |             Constant |       3 |   7.758 ms | 0.2057 ms | 0.1487 ms |   0.32 |     0.01 |
|             Span_NullComparer |             Constant |       3 |  21.065 ms | 0.4076 ms | 0.2948 ms |   0.87 |     0.02 |
|  Span_ClassComparableComparer |             Constant |       3 |  98.845 ms | 0.4846 ms | 0.3504 ms |   4.10 |     0.05 |
| Span_StructComparableComparer |             Constant |       3 |  49.199 ms | 0.5340 ms | 0.3861 ms |   2.04 |     0.03 |
|               Span_Comparison |             Constant |       3 |  60.152 ms | 0.7037 ms | 0.5088 ms |   2.49 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **14.781 ms** | **0.1919 ms** | **0.1387 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  14.511 ms | 0.2652 ms | 0.1918 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |      10 |  24.806 ms | 0.3620 ms | 0.2617 ms |   1.68 |     0.02 |
|                         Span_ |             Constant |      10 |   4.890 ms | 0.1253 ms | 0.0906 ms |   0.33 |     0.01 |
|             Span_NullComparer |             Constant |      10 |   8.814 ms | 0.2331 ms | 0.1686 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  41.363 ms | 0.5423 ms | 0.3921 ms |   2.80 |     0.04 |
| Span_StructComparableComparer |             Constant |      10 |  17.119 ms | 0.3244 ms | 0.2346 ms |   1.16 |     0.02 |
|               Span_Comparison |             Constant |      10 |  25.757 ms | 0.3487 ms | 0.2521 ms |   1.74 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **18.360 ms** | **0.2822 ms** | **0.2040 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  18.282 ms | 0.3317 ms | 0.2398 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |             Constant |     100 |  53.152 ms | 0.6969 ms | 0.5039 ms |   2.90 |     0.04 |
|                         Span_ |             Constant |     100 |  13.231 ms | 0.2986 ms | 0.2159 ms |   0.72 |     0.01 |
|             Span_NullComparer |             Constant |     100 |  13.458 ms | 0.3760 ms | 0.2719 ms |   0.73 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     100 |  79.796 ms | 0.4471 ms | 0.3233 ms |   4.35 |     0.05 |
| Span_StructComparableComparer |             Constant |     100 |  15.610 ms | 0.3779 ms | 0.2732 ms |   0.85 |     0.02 |
|               Span_Comparison |             Constant |     100 |  45.603 ms | 0.6689 ms | 0.4837 ms |   2.48 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **35.309 ms** | **0.3380 ms** | **0.2444 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  35.380 ms | 0.4856 ms | 0.3511 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   10000 | 132.296 ms | 0.7016 ms | 0.5073 ms |   3.75 |     0.03 |
|                         Span_ |             Constant |   10000 |  30.000 ms | 0.5155 ms | 0.3728 ms |   0.85 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  30.010 ms | 0.4406 ms | 0.3186 ms |   0.85 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 | 202.660 ms | 0.8541 ms | 0.6176 ms |   5.74 |     0.04 |
| Span_StructComparableComparer |             Constant |   10000 |  35.057 ms | 0.5092 ms | 0.3682 ms |   0.99 |     0.01 |
|               Span_Comparison |             Constant |   10000 | 113.266 ms | 0.6587 ms | 0.4763 ms |   3.21 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **49.618 ms** | **0.6552 ms** | **0.4737 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  49.321 ms | 0.7284 ms | 0.5266 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 196.867 ms | 1.0038 ms | 0.7258 ms |   3.97 |     0.04 |
|                         Span_ |             Constant | 1000000 |  42.047 ms | 0.4414 ms | 0.3192 ms |   0.85 |     0.01 |
|             Span_NullComparer |             Constant | 1000000 |  41.827 ms | 0.4972 ms | 0.3595 ms |   0.84 |     0.01 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 305.835 ms | 1.5601 ms | 1.1280 ms |   6.16 |     0.06 |
| Span_StructComparableComparer |             Constant | 1000000 |  51.098 ms | 0.7061 ms | 0.5106 ms |   1.03 |     0.01 |
|               Span_Comparison |             Constant | 1000000 | 169.691 ms | 1.0716 ms | 0.7748 ms |   3.42 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **33.309 ms** | **0.5217 ms** | **0.3772 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  32.964 ms | 0.5799 ms | 0.4193 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |       2 |  59.848 ms | 0.5855 ms | 0.4234 ms |   1.80 |     0.02 |
|                         Span_ |         Decrementing |       2 |  11.366 ms | 0.3217 ms | 0.2326 ms |   0.34 |     0.01 |
|             Span_NullComparer |         Decrementing |       2 |  31.438 ms | 0.4830 ms | 0.3493 ms |   0.94 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       2 | 133.758 ms | 0.6253 ms | 0.4521 ms |   4.02 |     0.05 |
| Span_StructComparableComparer |         Decrementing |       2 |  72.146 ms | 0.6309 ms | 0.4562 ms |   2.17 |     0.03 |
|               Span_Comparison |         Decrementing |       2 |  84.193 ms | 0.4872 ms | 0.3523 ms |   2.53 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **26.288 ms** | **0.5427 ms** | **0.3924 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  25.874 ms | 0.3092 ms | 0.2235 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |       3 |  51.537 ms | 0.3999 ms | 0.2892 ms |   1.96 |     0.03 |
|                         Span_ |         Decrementing |       3 |  10.044 ms | 0.2192 ms | 0.1585 ms |   0.38 |     0.01 |
|             Span_NullComparer |         Decrementing |       3 |  22.946 ms | 0.5320 ms | 0.3847 ms |   0.87 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |       3 | 100.539 ms | 1.1920 ms | 0.8619 ms |   3.83 |     0.06 |
| Span_StructComparableComparer |         Decrementing |       3 |  51.166 ms | 0.5706 ms | 0.4126 ms |   1.95 |     0.03 |
|               Span_Comparison |         Decrementing |       3 |  61.578 ms | 0.5621 ms | 0.4065 ms |   2.34 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **41.496 ms** | **0.2957 ms** | **0.2138 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  41.475 ms | 0.4296 ms | 0.3107 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |  75.028 ms | 0.6409 ms | 0.4634 ms |   1.81 |     0.01 |
|                         Span_ |         Decrementing |      10 |  16.517 ms | 0.3948 ms | 0.2855 ms |   0.40 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  20.811 ms | 0.4403 ms | 0.3183 ms |   0.50 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  96.486 ms | 0.8316 ms | 0.6013 ms |   2.33 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      10 |  30.208 ms | 0.2130 ms | 0.1540 ms |   0.73 |     0.01 |
|               Span_Comparison |         Decrementing |      10 |  57.948 ms | 0.3398 ms | 0.2457 ms |   1.40 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **23.598 ms** | **0.5099 ms** | **0.3687 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  23.486 ms | 0.4799 ms | 0.3470 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |     100 |  73.807 ms | 0.6335 ms | 0.4581 ms |   3.13 |     0.05 |
|                         Span_ |         Decrementing |     100 |  15.974 ms | 0.5021 ms | 0.3630 ms |   0.68 |     0.02 |
|             Span_NullComparer |         Decrementing |     100 |  16.443 ms | 0.3340 ms | 0.2415 ms |   0.70 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 | 110.434 ms | 0.8259 ms | 0.5971 ms |   4.68 |     0.07 |
| Span_StructComparableComparer |         Decrementing |     100 |  19.286 ms | 0.3109 ms | 0.2248 ms |   0.82 |     0.02 |
|               Span_Comparison |         Decrementing |     100 |  64.349 ms | 0.7433 ms | 0.5374 ms |   2.73 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **40.739 ms** | **0.3158 ms** | **0.2283 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  40.903 ms | 0.4801 ms | 0.3471 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 185.174 ms | 0.8436 ms | 0.6099 ms |   4.55 |     0.03 |
|                         Span_ |         Decrementing |   10000 |  33.900 ms | 0.3872 ms | 0.2799 ms |   0.83 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |  34.139 ms | 0.4838 ms | 0.3498 ms |   0.84 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 309.232 ms | 4.7371 ms | 3.4252 ms |   7.59 |     0.09 |
| Span_StructComparableComparer |         Decrementing |   10000 |  37.311 ms | 0.4867 ms | 0.3519 ms |   0.92 |     0.01 |
|               Span_Comparison |         Decrementing |   10000 | 171.113 ms | 1.9449 ms | 1.4063 ms |   4.20 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **57.071 ms** | **0.8569 ms** | **0.6196 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  57.311 ms | 0.5465 ms | 0.3952 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 302.105 ms | 1.5852 ms | 1.1462 ms |   5.29 |     0.06 |
|                         Span_ |         Decrementing | 1000000 |  50.681 ms | 0.4346 ms | 0.3142 ms |   0.89 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |  52.091 ms | 1.8648 ms | 1.3484 ms |   0.91 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 513.445 ms | 1.2794 ms | 0.9251 ms |   9.00 |     0.09 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  54.016 ms | 0.7202 ms | 0.5208 ms |   0.95 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 | 281.267 ms | 1.1112 ms | 0.8035 ms |   4.93 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **31.870 ms** | **0.3386 ms** | **0.2448 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  31.522 ms | 0.4160 ms | 0.3008 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |  58.074 ms | 0.5057 ms | 0.3657 ms |   1.82 |     0.02 |
|                         Span_ |         Incrementing |       2 |  10.422 ms | 0.2569 ms | 0.1857 ms |   0.33 |     0.01 |
|             Span_NullComparer |         Incrementing |       2 |  31.281 ms | 0.4941 ms | 0.3572 ms |   0.98 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       2 | 130.931 ms | 0.8532 ms | 0.6169 ms |   4.11 |     0.04 |
| Span_StructComparableComparer |         Incrementing |       2 |  70.665 ms | 0.3602 ms | 0.2604 ms |   2.22 |     0.02 |
|               Span_Comparison |         Incrementing |       2 |  83.220 ms | 0.6666 ms | 0.4820 ms |   2.61 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **23.603 ms** | **0.3798 ms** | **0.2746 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  23.397 ms | 0.4286 ms | 0.3099 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |       3 |  49.050 ms | 0.5429 ms | 0.3926 ms |   2.08 |     0.03 |
|                         Span_ |         Incrementing |       3 |   7.797 ms | 0.2539 ms | 0.1836 ms |   0.33 |     0.01 |
|             Span_NullComparer |         Incrementing |       3 |  21.034 ms | 0.3290 ms | 0.2379 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  96.318 ms | 0.8853 ms | 0.6401 ms |   4.08 |     0.05 |
| Span_StructComparableComparer |         Incrementing |       3 |  48.634 ms | 0.5676 ms | 0.4104 ms |   2.06 |     0.03 |
|               Span_Comparison |         Incrementing |       3 |  59.272 ms | 0.4818 ms | 0.3483 ms |   2.51 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **14.658 ms** | **0.2294 ms** | **0.1659 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  14.457 ms | 0.2029 ms | 0.1467 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      10 |  25.301 ms | 0.4091 ms | 0.2958 ms |   1.73 |     0.03 |
|                         Span_ |         Incrementing |      10 |   4.865 ms | 0.1536 ms | 0.1110 ms |   0.33 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |   8.694 ms | 0.1841 ms | 0.1331 ms |   0.59 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  41.124 ms | 0.2484 ms | 0.1796 ms |   2.81 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      10 |  17.191 ms | 0.3484 ms | 0.2519 ms |   1.17 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |  25.757 ms | 0.5539 ms | 0.4005 ms |   1.76 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |  **15.387 ms** | **0.3182 ms** | **0.2301 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |  15.313 ms | 0.2989 ms | 0.2161 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |     100 |  49.012 ms | 0.8949 ms | 0.6471 ms |   3.19 |     0.06 |
|                         Span_ |         Incrementing |     100 |  10.843 ms | 0.3351 ms | 0.2423 ms |   0.70 |     0.02 |
|             Span_NullComparer |         Incrementing |     100 |  11.131 ms | 0.2614 ms | 0.1890 ms |   0.72 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  75.446 ms | 0.8408 ms | 0.6079 ms |   4.90 |     0.08 |
| Span_StructComparableComparer |         Incrementing |     100 |  12.384 ms | 0.3147 ms | 0.2275 ms |   0.81 |     0.02 |
|               Span_Comparison |         Incrementing |     100 |  43.403 ms | 0.5204 ms | 0.3763 ms |   2.82 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **27.012 ms** | **0.4474 ms** | **0.3235 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  26.801 ms | 0.4840 ms | 0.3500 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |   10000 | 113.470 ms | 0.7094 ms | 0.5129 ms |   4.20 |     0.05 |
|                         Span_ |         Incrementing |   10000 |  23.119 ms | 0.3812 ms | 0.2756 ms |   0.86 |     0.01 |
|             Span_NullComparer |         Incrementing |   10000 |  23.343 ms | 0.4023 ms | 0.2909 ms |   0.86 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 185.571 ms | 1.0249 ms | 0.7411 ms |   6.87 |     0.08 |
| Span_StructComparableComparer |         Incrementing |   10000 |  23.852 ms | 0.5316 ms | 0.3844 ms |   0.88 |     0.02 |
|               Span_Comparison |         Incrementing |   10000 | 103.908 ms | 0.7608 ms | 0.5501 ms |   3.85 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **32.534 ms** | **0.4209 ms** | **0.3043 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  32.219 ms | 0.4838 ms | 0.3498 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 165.485 ms | 1.4583 ms | 1.0544 ms |   5.09 |     0.05 |
|                         Span_ |         Incrementing | 1000000 |  28.759 ms | 0.5121 ms | 0.3702 ms |   0.88 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |  28.903 ms | 0.7257 ms | 0.5247 ms |   0.89 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 275.765 ms | 1.5490 ms | 1.1200 ms |   8.48 |     0.08 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  29.907 ms | 0.4330 ms | 0.3131 ms |   0.92 |     0.01 |
|               Span_Comparison |         Incrementing | 1000000 | 152.620 ms | 0.6557 ms | 0.4741 ms |   4.69 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **32.037 ms** | **0.4647 ms** | **0.3360 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  31.398 ms | 0.4689 ms | 0.3390 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  57.947 ms | 0.4973 ms | 0.3596 ms |   1.81 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       2 |  10.508 ms | 0.2239 ms | 0.1619 ms |   0.33 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  30.465 ms | 0.5246 ms | 0.3793 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 | 130.259 ms | 0.6499 ms | 0.4700 ms |   4.07 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  70.664 ms | 0.6706 ms | 0.4849 ms |   2.21 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  83.294 ms | 0.7860 ms | 0.5684 ms |   2.60 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **23.959 ms** | **0.7135 ms** | **0.5159 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  23.376 ms | 0.4045 ms | 0.2925 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  48.949 ms | 0.5235 ms | 0.3785 ms |   2.04 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |       3 |   7.780 ms | 0.1605 ms | 0.1161 ms |   0.32 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  20.995 ms | 0.4038 ms | 0.2919 ms |   0.88 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  96.171 ms | 0.4733 ms | 0.3422 ms |   4.02 |     0.08 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  48.727 ms | 0.3464 ms | 0.2505 ms |   2.03 |     0.04 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  59.005 ms | 0.5667 ms | 0.4097 ms |   2.46 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **22.227 ms** | **0.2893 ms** | **0.2092 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  22.115 ms | 0.3408 ms | 0.2464 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  41.602 ms | 0.8553 ms | 0.6184 ms |   1.87 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |      10 |   8.326 ms | 0.2393 ms | 0.1730 ms |   0.37 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |  12.431 ms | 0.3014 ms | 0.2179 ms |   0.56 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  58.014 ms | 0.6834 ms | 0.4942 ms |   2.61 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  20.939 ms | 0.4621 ms | 0.3341 ms |   0.94 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  36.334 ms | 0.5151 ms | 0.3725 ms |   1.63 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **29.371 ms** | **0.2163 ms** | **0.1564 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  29.163 ms | 0.4942 ms | 0.3574 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  89.742 ms | 0.8495 ms | 0.6142 ms |   3.06 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |     100 |  19.713 ms | 0.4350 ms | 0.3145 ms |   0.67 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  20.057 ms | 0.2862 ms | 0.2070 ms |   0.68 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 | 137.293 ms | 0.7152 ms | 0.5171 ms |   4.67 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  22.881 ms | 0.5018 ms | 0.3629 ms |   0.78 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  77.274 ms | 0.8501 ms | 0.6147 ms |   2.63 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **72.333 ms** | **0.6723 ms** | **0.4861 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  72.257 ms | 0.6699 ms | 0.4844 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 240.852 ms | 1.5452 ms | 1.1173 ms |   3.33 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  64.993 ms | 0.6894 ms | 0.4985 ms |   0.90 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  65.562 ms | 0.7853 ms | 0.5678 ms |   0.91 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 417.118 ms | 1.1885 ms | 0.8594 ms |   5.77 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  70.059 ms | 0.9148 ms | 0.6615 ms |   0.97 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 236.969 ms | 1.4092 ms | 1.0190 ms |   3.28 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** | **115.848 ms** | **1.4426 ms** | **1.0431 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 | 115.191 ms | 0.7078 ms | 0.5118 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 476.522 ms | 1.5488 ms | 1.1199 ms |   4.11 |     0.04 |
|                         Span_ |  MedianOfThreeKiller | 1000000 | 106.947 ms | 0.8391 ms | 0.6067 ms |   0.92 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 | 106.679 ms | 0.9436 ms | 0.6823 ms |   0.92 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 728.118 ms | 1.7596 ms | 1.2723 ms |   6.29 |     0.05 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 128.159 ms | 0.7238 ms | 0.5233 ms |   1.11 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 410.638 ms | 2.2108 ms | 1.5985 ms |   3.54 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **34.687 ms** | **0.3150 ms** | **0.2278 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  34.554 ms | 0.3659 ms | 0.2646 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  60.298 ms | 0.7632 ms | 0.5518 ms |   1.74 |     0.02 |
|                         Span_ | PartialRandomShuffle |       2 |  12.414 ms | 0.2938 ms | 0.2124 ms |   0.36 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  33.085 ms | 0.4735 ms | 0.3424 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 | 132.986 ms | 1.4115 ms | 1.0206 ms |   3.83 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  73.033 ms | 0.6316 ms | 0.4567 ms |   2.11 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       2 |  85.568 ms | 0.6303 ms | 0.4557 ms |   2.47 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **27.101 ms** | **0.5173 ms** | **0.3741 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  26.837 ms | 0.4167 ms | 0.3013 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  51.838 ms | 0.5329 ms | 0.3853 ms |   1.91 |     0.03 |
|                         Span_ | PartialRandomShuffle |       3 |  10.384 ms | 0.2323 ms | 0.1680 ms |   0.38 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  23.528 ms | 0.3153 ms | 0.2280 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  99.452 ms | 0.7037 ms | 0.5088 ms |   3.67 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  51.385 ms | 0.4053 ms | 0.2930 ms |   1.90 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |       3 |  61.381 ms | 0.6000 ms | 0.4338 ms |   2.27 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **23.369 ms** | **0.6334 ms** | **0.4580 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  23.103 ms | 0.4429 ms | 0.3202 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  38.554 ms | 0.6287 ms | 0.4546 ms |   1.65 |     0.04 |
|                         Span_ | PartialRandomShuffle |      10 |  11.122 ms | 0.2569 ms | 0.1858 ms |   0.48 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  14.967 ms | 0.3124 ms | 0.2259 ms |   0.64 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  53.904 ms | 0.7993 ms | 0.5780 ms |   2.31 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  23.772 ms | 0.4054 ms | 0.2931 ms |   1.02 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |      10 |  35.576 ms | 0.2802 ms | 0.2026 ms |   1.52 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **53.144 ms** | **0.5787 ms** | **0.4184 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  52.988 ms | 0.2878 ms | 0.2081 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 | 102.162 ms | 0.7928 ms | 0.5732 ms |   1.92 |     0.02 |
|                         Span_ | PartialRandomShuffle |     100 |  42.605 ms | 0.5288 ms | 0.3824 ms |   0.80 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  43.177 ms | 0.5027 ms | 0.3635 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 | 135.610 ms | 0.8220 ms | 0.5944 ms |   2.55 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  44.851 ms | 0.4496 ms | 0.3251 ms |   0.84 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 |  84.796 ms | 0.5698 ms | 0.4120 ms |   1.60 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **85.182 ms** | **0.7893 ms** | **0.5707 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  84.913 ms | 0.6365 ms | 0.4602 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 195.334 ms | 0.9007 ms | 0.6513 ms |   2.29 |     0.02 |
|                         Span_ | PartialRandomShuffle |   10000 |  77.803 ms | 1.0329 ms | 0.7469 ms |   0.91 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  77.835 ms | 0.5764 ms | 0.4168 ms |   0.91 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 276.058 ms | 1.0213 ms | 0.7385 ms |   3.24 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |  79.356 ms | 0.6364 ms | 0.4602 ms |   0.93 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 168.042 ms | 0.6819 ms | 0.4930 ms |   1.97 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** | **122.209 ms** | **1.0866 ms** | **0.7856 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 | 122.243 ms | 1.0937 ms | 0.7908 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 292.115 ms | 1.0603 ms | 0.7666 ms |   2.39 |     0.02 |
|                         Span_ | PartialRandomShuffle | 1000000 | 118.036 ms | 1.2083 ms | 0.8737 ms |   0.97 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 | 118.271 ms | 0.9989 ms | 0.7222 ms |   0.97 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 422.367 ms | 0.9886 ms | 0.7149 ms |   3.46 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 119.035 ms | 0.4923 ms | 0.3560 ms |   0.97 |     0.01 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 255.642 ms | 0.8663 ms | 0.6264 ms |   2.09 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **38.419 ms** | **0.2686 ms** | **0.1942 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  38.070 ms | 0.5374 ms | 0.3885 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 |  63.275 ms | 0.6515 ms | 0.4711 ms |   1.65 |     0.01 |
|                         Span_ |               Random |       2 |  15.180 ms | 0.2737 ms | 0.1979 ms |   0.40 |     0.01 |
|             Span_NullComparer |               Random |       2 |  35.355 ms | 0.6393 ms | 0.4622 ms |   0.92 |     0.01 |
|  Span_ClassComparableComparer |               Random |       2 | 136.746 ms | 1.0825 ms | 0.7827 ms |   3.56 |     0.03 |
| Span_StructComparableComparer |               Random |       2 |  75.812 ms | 0.4680 ms | 0.3384 ms |   1.97 |     0.01 |
|               Span_Comparison |               Random |       2 |  87.776 ms | 0.8848 ms | 0.6398 ms |   2.28 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **32.687 ms** | **0.2727 ms** | **0.1972 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  32.430 ms | 0.3244 ms | 0.2346 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |  57.306 ms | 0.7325 ms | 0.5297 ms |   1.75 |     0.02 |
|                         Span_ |               Random |       3 |  15.126 ms | 0.1995 ms | 0.1443 ms |   0.46 |     0.00 |
|             Span_NullComparer |               Random |       3 |  27.986 ms | 0.3467 ms | 0.2507 ms |   0.86 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 | 104.992 ms | 0.7463 ms | 0.5396 ms |   3.21 |     0.02 |
| Span_StructComparableComparer |               Random |       3 |  55.971 ms | 0.5139 ms | 0.3716 ms |   1.71 |     0.01 |
|               Span_Comparison |               Random |       3 |  66.102 ms | 0.4489 ms | 0.3246 ms |   2.02 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **40.641 ms** | **0.2967 ms** | **0.2146 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  40.632 ms | 0.3051 ms | 0.2206 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |      10 |  63.420 ms | 0.6318 ms | 0.4568 ms |   1.56 |     0.01 |
|                         Span_ |               Random |      10 |  23.947 ms | 0.2569 ms | 0.1858 ms |   0.59 |     0.01 |
|             Span_NullComparer |               Random |      10 |  28.547 ms | 0.3259 ms | 0.2357 ms |   0.70 |     0.01 |
|  Span_ClassComparableComparer |               Random |      10 |  80.920 ms | 0.7617 ms | 0.5508 ms |   1.99 |     0.02 |
| Span_StructComparableComparer |               Random |      10 |  36.885 ms | 0.3608 ms | 0.2609 ms |   0.91 |     0.01 |
|               Span_Comparison |               Random |      10 |  53.393 ms | 0.3505 ms | 0.2535 ms |   1.31 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **66.411 ms** | **0.4487 ms** | **0.3244 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  66.334 ms | 0.3428 ms | 0.2479 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |     100 | 117.390 ms | 0.6998 ms | 0.5060 ms |   1.77 |     0.01 |
|                         Span_ |               Random |     100 |  56.114 ms | 0.4296 ms | 0.3106 ms |   0.84 |     0.01 |
|             Span_NullComparer |               Random |     100 |  56.621 ms | 0.6693 ms | 0.4839 ms |   0.85 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 | 151.668 ms | 0.8450 ms | 0.6110 ms |   2.28 |     0.01 |
| Span_StructComparableComparer |               Random |     100 |  58.061 ms | 0.4201 ms | 0.3038 ms |   0.87 |     0.01 |
|               Span_Comparison |               Random |     100 |  97.990 ms | 0.8821 ms | 0.6378 ms |   1.48 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** | **119.082 ms** | **0.7035 ms** | **0.5087 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 | 118.865 ms | 0.5982 ms | 0.4325 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   10000 | 231.242 ms | 0.8660 ms | 0.6262 ms |   1.94 |     0.01 |
|                         Span_ |               Random |   10000 | 113.921 ms | 0.9719 ms | 0.7028 ms |   0.96 |     0.01 |
|             Span_NullComparer |               Random |   10000 | 114.029 ms | 0.6076 ms | 0.4394 ms |   0.96 |     0.01 |
|  Span_ClassComparableComparer |               Random |   10000 | 316.598 ms | 0.6944 ms | 0.5021 ms |   2.66 |     0.01 |
| Span_StructComparableComparer |               Random |   10000 | 114.481 ms | 0.7408 ms | 0.5356 ms |   0.96 |     0.01 |
|               Span_Comparison |               Random |   10000 | 200.939 ms | 1.4635 ms | 1.0582 ms |   1.69 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **171.423 ms** | **0.7269 ms** | **0.5256 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 171.206 ms | 0.7196 ms | 0.5203 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 | 350.034 ms | 1.5840 ms | 1.1454 ms |   2.04 |     0.01 |
|                         Span_ |               Random | 1000000 | 170.691 ms | 1.2879 ms | 0.9313 ms |   1.00 |     0.01 |
|             Span_NullComparer |               Random | 1000000 | 171.079 ms | 1.0550 ms | 0.7628 ms |   1.00 |     0.01 |
|  Span_ClassComparableComparer |               Random | 1000000 | 490.361 ms | 1.5564 ms | 1.1254 ms |   2.86 |     0.01 |
| Span_StructComparableComparer |               Random | 1000000 | 171.305 ms | 1.3572 ms | 0.9813 ms |   1.00 |     0.01 |
|               Span_Comparison |               Random | 1000000 | 308.659 ms | 1.6572 ms | 1.1983 ms |   1.80 |     0.01 |
