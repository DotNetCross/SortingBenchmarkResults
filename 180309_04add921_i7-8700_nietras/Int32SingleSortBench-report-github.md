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
|                        Method |               Filler |  Length |       Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |-------- |-----------:|----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |       **2** |  **30.467 ms** | **0.1892 ms** | **0.1368 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  30.478 ms | 0.0742 ms | 0.0537 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |       2 |  31.960 ms | 1.0470 ms | 0.7571 ms |   1.05 |     0.02 |
|                         Span_ |             Constant |       2 |   6.599 ms | 0.0621 ms | 0.0449 ms |   0.22 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  18.516 ms | 0.1480 ms | 0.1070 ms |   0.61 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       2 |  82.834 ms | 0.3524 ms | 0.2548 ms |   2.72 |     0.01 |
| Span_StructComparableComparer |             Constant |       2 |  40.754 ms | 0.5214 ms | 0.3770 ms |   1.34 |     0.01 |
|               Span_Comparison |             Constant |       2 |  51.473 ms | 0.5939 ms | 0.4295 ms |   1.69 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **23.527 ms** | **0.0931 ms** | **0.0673 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  23.251 ms | 0.3073 ms | 0.2222 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 |  27.396 ms | 0.8807 ms | 0.6368 ms |   1.16 |     0.03 |
|                         Span_ |             Constant |       3 |   5.007 ms | 0.1757 ms | 0.1270 ms |   0.21 |     0.01 |
|             Span_NullComparer |             Constant |       3 |  12.975 ms | 0.0613 ms | 0.0443 ms |   0.55 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  59.814 ms | 1.0130 ms | 0.7325 ms |   2.54 |     0.03 |
| Span_StructComparableComparer |             Constant |       3 |  28.157 ms | 0.4154 ms | 0.3004 ms |   1.20 |     0.01 |
|               Span_Comparison |             Constant |       3 |  35.317 ms | 0.7660 ms | 0.5539 ms |   1.50 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |   **9.181 ms** | **0.1406 ms** | **0.1016 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |   9.277 ms | 0.0885 ms | 0.0640 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |             Constant |      10 |  12.972 ms | 0.4922 ms | 0.3559 ms |   1.41 |     0.04 |
|                         Span_ |             Constant |      10 |   2.612 ms | 0.1257 ms | 0.0909 ms |   0.28 |     0.01 |
|             Span_NullComparer |             Constant |      10 |   4.680 ms | 0.0440 ms | 0.0318 ms |   0.51 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  24.219 ms | 0.3494 ms | 0.2527 ms |   2.64 |     0.04 |
| Span_StructComparableComparer |             Constant |      10 |   9.569 ms | 0.0992 ms | 0.0717 ms |   1.04 |     0.01 |
|               Span_Comparison |             Constant |      10 |  15.737 ms | 0.0914 ms | 0.0661 ms |   1.71 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **12.064 ms** | **0.4291 ms** | **0.3103 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  11.945 ms | 0.2146 ms | 0.1552 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |             Constant |     100 |  31.257 ms | 0.3207 ms | 0.2319 ms |   2.59 |     0.06 |
|                         Span_ |             Constant |     100 |   9.012 ms | 0.8125 ms | 0.5875 ms |   0.75 |     0.05 |
|             Span_NullComparer |             Constant |     100 |   8.824 ms | 0.2435 ms | 0.1761 ms |   0.73 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     100 |  46.814 ms | 0.5620 ms | 0.4063 ms |   3.88 |     0.10 |
| Span_StructComparableComparer |             Constant |     100 |  10.649 ms | 0.2373 ms | 0.1716 ms |   0.88 |     0.02 |
|               Span_Comparison |             Constant |     100 |  31.879 ms | 0.2222 ms | 0.1607 ms |   2.64 |     0.06 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **26.838 ms** | **0.2564 ms** | **0.1854 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  27.207 ms | 0.7558 ms | 0.5465 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |             Constant |   10000 |  75.612 ms | 0.7335 ms | 0.5304 ms |   2.82 |     0.03 |
|                         Span_ |             Constant |   10000 |  21.586 ms | 0.3061 ms | 0.2213 ms |   0.80 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  21.695 ms | 0.2399 ms | 0.1735 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 | 115.591 ms | 1.8638 ms | 1.3476 ms |   4.31 |     0.06 |
| Span_StructComparableComparer |             Constant |   10000 |  26.076 ms | 0.3953 ms | 0.2858 ms |   0.97 |     0.01 |
|               Span_Comparison |             Constant |   10000 |  80.672 ms | 3.9987 ms | 2.8913 ms |   3.01 |     0.10 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **38.654 ms** | **0.5980 ms** | **0.4324 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  38.789 ms | 0.3805 ms | 0.2752 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 113.054 ms | 0.9406 ms | 0.6801 ms |   2.93 |     0.04 |
|                         Span_ |             Constant | 1000000 |  32.800 ms | 0.4334 ms | 0.3134 ms |   0.85 |     0.01 |
|             Span_NullComparer |             Constant | 1000000 |  32.911 ms | 0.2381 ms | 0.1721 ms |   0.85 |     0.01 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 174.334 ms | 2.0631 ms | 1.4917 ms |   4.51 |     0.06 |
| Span_StructComparableComparer |             Constant | 1000000 |  40.202 ms | 0.5939 ms | 0.4295 ms |   1.04 |     0.02 |
|               Span_Comparison |             Constant | 1000000 | 119.162 ms | 1.2012 ms | 0.8686 ms |   3.08 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **31.495 ms** | **0.7657 ms** | **0.5537 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  30.861 ms | 0.2653 ms | 0.1918 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |       2 |  32.871 ms | 2.0101 ms | 1.4534 ms |   1.04 |     0.05 |
|                         Span_ |         Decrementing |       2 |   7.562 ms | 0.0572 ms | 0.0414 ms |   0.24 |     0.00 |
|             Span_NullComparer |         Decrementing |       2 |  18.955 ms | 0.1226 ms | 0.0886 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       2 |  84.191 ms | 1.9144 ms | 1.3842 ms |   2.67 |     0.06 |
| Span_StructComparableComparer |         Decrementing |       2 |  41.704 ms | 0.7893 ms | 0.5707 ms |   1.32 |     0.03 |
|               Span_Comparison |         Decrementing |       2 |  50.834 ms | 0.4777 ms | 0.3454 ms |   1.61 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **24.369 ms** | **0.1969 ms** | **0.1423 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  24.864 ms | 0.6880 ms | 0.4975 ms |   1.02 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |       3 |  28.043 ms | 0.1229 ms | 0.0889 ms |   1.15 |     0.01 |
|                         Span_ |         Decrementing |       3 |   6.626 ms | 0.0823 ms | 0.0595 ms |   0.27 |     0.00 |
|             Span_NullComparer |         Decrementing |       3 |  14.231 ms | 0.1153 ms | 0.0834 ms |   0.58 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  60.415 ms | 1.3311 ms | 0.9625 ms |   2.48 |     0.04 |
| Span_StructComparableComparer |         Decrementing |       3 |  29.694 ms | 0.1284 ms | 0.0928 ms |   1.22 |     0.01 |
|               Span_Comparison |         Decrementing |       3 |  36.810 ms | 0.3374 ms | 0.2439 ms |   1.51 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **18.458 ms** | **0.1835 ms** | **0.1327 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  18.918 ms | 1.3397 ms | 0.9687 ms |   1.02 |     0.05 |
| Array_ClassComparableComparer |         Decrementing |      10 |  37.835 ms | 1.2437 ms | 0.8993 ms |   2.05 |     0.05 |
|                         Span_ |         Decrementing |      10 |  11.445 ms | 0.1575 ms | 0.1139 ms |   0.62 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  13.742 ms | 0.0871 ms | 0.0630 ms |   0.74 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  63.024 ms | 1.2017 ms | 0.8689 ms |   3.41 |     0.05 |
| Span_StructComparableComparer |         Decrementing |      10 |  18.346 ms | 0.2253 ms | 0.1629 ms |   0.99 |     0.01 |
|               Span_Comparison |         Decrementing |      10 |  31.791 ms | 1.4055 ms | 1.0163 ms |   1.72 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **13.039 ms** | **0.2146 ms** | **0.1551 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  13.388 ms | 0.6345 ms | 0.4588 ms |   1.03 |     0.04 |
| Array_ClassComparableComparer |         Decrementing |     100 |  44.802 ms | 1.0229 ms | 0.7396 ms |   3.44 |     0.07 |
|                         Span_ |         Decrementing |     100 |   9.369 ms | 1.9594 ms | 1.4168 ms |   0.72 |     0.10 |
|             Span_NullComparer |         Decrementing |     100 |   8.764 ms | 0.0408 ms | 0.0295 ms |   0.67 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  66.540 ms | 7.7034 ms | 5.5701 ms |   5.10 |     0.41 |
| Span_StructComparableComparer |         Decrementing |     100 |  11.612 ms | 0.1629 ms | 0.1178 ms |   0.89 |     0.01 |
|               Span_Comparison |         Decrementing |     100 |  41.678 ms | 0.3774 ms | 0.2729 ms |   3.20 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **23.176 ms** | **0.2151 ms** | **0.1555 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  23.638 ms | 2.3287 ms | 1.6838 ms |   1.02 |     0.07 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 105.870 ms | 1.8540 ms | 1.3406 ms |   4.57 |     0.06 |
|                         Span_ |         Decrementing |   10000 |  20.257 ms | 0.3516 ms | 0.2543 ms |   0.87 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |  20.162 ms | 0.4343 ms | 0.3140 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 165.847 ms | 2.4360 ms | 1.7614 ms |   7.16 |     0.09 |
| Span_StructComparableComparer |         Decrementing |   10000 |  24.068 ms | 0.2131 ms | 0.1541 ms |   1.04 |     0.01 |
|               Span_Comparison |         Decrementing |   10000 |  93.747 ms | 0.6507 ms | 0.4705 ms |   4.05 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **33.728 ms** | **1.4403 ms** | **1.0414 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  33.483 ms | 1.1030 ms | 0.7975 ms |   0.99 |     0.04 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 175.039 ms | 1.5646 ms | 1.1313 ms |   5.19 |     0.15 |
|                         Span_ |         Decrementing | 1000000 |  31.542 ms | 0.4493 ms | 0.3249 ms |   0.94 |     0.03 |
|             Span_NullComparer |         Decrementing | 1000000 |  31.530 ms | 0.5998 ms | 0.4337 ms |   0.94 |     0.03 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 273.032 ms | 2.3073 ms | 1.6683 ms |   8.10 |     0.24 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  38.125 ms | 0.5182 ms | 0.3747 ms |   1.13 |     0.03 |
|               Span_Comparison |         Decrementing | 1000000 | 150.212 ms | 0.7224 ms | 0.5224 ms |   4.46 |     0.13 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **30.843 ms** | **0.2467 ms** | **0.1784 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  30.641 ms | 0.0525 ms | 0.0380 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |  31.528 ms | 0.6439 ms | 0.4656 ms |   1.02 |     0.02 |
|                         Span_ |         Incrementing |       2 |   6.694 ms | 0.0380 ms | 0.0275 ms |   0.22 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  18.700 ms | 0.7120 ms | 0.5148 ms |   0.61 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |       2 |  81.343 ms | 0.5467 ms | 0.3953 ms |   2.64 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       2 |  40.845 ms | 0.4467 ms | 0.3230 ms |   1.32 |     0.01 |
|               Span_Comparison |         Incrementing |       2 |  51.080 ms | 2.4382 ms | 1.7630 ms |   1.66 |     0.06 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **24.048 ms** | **1.7680 ms** | **1.2784 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  23.290 ms | 0.0871 ms | 0.0630 ms |   0.97 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |       3 |  26.349 ms | 0.3187 ms | 0.2304 ms |   1.10 |     0.05 |
|                         Span_ |         Incrementing |       3 |   5.054 ms | 0.1185 ms | 0.0857 ms |   0.21 |     0.01 |
|             Span_NullComparer |         Incrementing |       3 |  12.987 ms | 0.1055 ms | 0.0763 ms |   0.54 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  59.523 ms | 1.3760 ms | 0.9949 ms |   2.48 |     0.12 |
| Span_StructComparableComparer |         Incrementing |       3 |  30.982 ms | 0.4217 ms | 0.3049 ms |   1.29 |     0.06 |
|               Span_Comparison |         Incrementing |       3 |  34.640 ms | 0.3192 ms | 0.2308 ms |   1.44 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |   **9.397 ms** | **0.1067 ms** | **0.0772 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |   9.435 ms | 0.0523 ms | 0.0379 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      10 |  13.050 ms | 0.1364 ms | 0.0986 ms |   1.39 |     0.01 |
|                         Span_ |         Incrementing |      10 |   2.581 ms | 0.0664 ms | 0.0480 ms |   0.27 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |   4.774 ms | 0.0352 ms | 0.0254 ms |   0.51 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  24.348 ms | 0.4199 ms | 0.3036 ms |   2.59 |     0.04 |
| Span_StructComparableComparer |         Incrementing |      10 |   9.837 ms | 0.1340 ms | 0.0969 ms |   1.05 |     0.01 |
|               Span_Comparison |         Incrementing |      10 |  15.839 ms | 0.1315 ms | 0.0951 ms |   1.69 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |   **8.457 ms** | **0.3149 ms** | **0.2277 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |   9.429 ms | 1.6281 ms | 1.1772 ms |   1.12 |     0.14 |
| Array_ClassComparableComparer |         Incrementing |     100 |  28.465 ms | 0.1646 ms | 0.1190 ms |   3.37 |     0.09 |
|                         Span_ |         Incrementing |     100 |   5.211 ms | 0.8909 ms | 0.6442 ms |   0.62 |     0.07 |
|             Span_NullComparer |         Incrementing |     100 |   5.359 ms | 1.0663 ms | 0.7710 ms |   0.63 |     0.09 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  43.207 ms | 0.4446 ms | 0.3215 ms |   5.11 |     0.13 |
| Span_StructComparableComparer |         Incrementing |     100 |   7.164 ms | 0.1399 ms | 0.1012 ms |   0.85 |     0.02 |
|               Span_Comparison |         Incrementing |     100 |  26.787 ms | 0.8415 ms | 0.6084 ms |   3.17 |     0.11 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **16.002 ms** | **0.4494 ms** | **0.3249 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  15.769 ms | 0.5289 ms | 0.3824 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |   10000 |  67.310 ms | 2.3781 ms | 1.7196 ms |   4.21 |     0.13 |
|                         Span_ |         Incrementing |   10000 |  12.448 ms | 0.5498 ms | 0.3975 ms |   0.78 |     0.03 |
|             Span_NullComparer |         Incrementing |   10000 |  12.538 ms | 0.5133 ms | 0.3712 ms |   0.78 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 104.324 ms | 0.9732 ms | 0.7037 ms |   6.52 |     0.13 |
| Span_StructComparableComparer |         Incrementing |   10000 |  15.340 ms | 0.4854 ms | 0.3510 ms |   0.96 |     0.03 |
|               Span_Comparison |         Incrementing |   10000 |  58.688 ms | 1.3595 ms | 0.9830 ms |   3.67 |     0.09 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **20.284 ms** | **0.3859 ms** | **0.2790 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  20.501 ms | 0.6407 ms | 0.4633 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |         Incrementing | 1000000 |  96.634 ms | 1.5204 ms | 1.0993 ms |   4.76 |     0.08 |
|                         Span_ |         Incrementing | 1000000 |  17.010 ms | 0.4046 ms | 0.2926 ms |   0.84 |     0.02 |
|             Span_NullComparer |         Incrementing | 1000000 |  17.059 ms | 0.3696 ms | 0.2673 ms |   0.84 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 152.146 ms | 1.2582 ms | 0.9098 ms |   7.50 |     0.11 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  20.872 ms | 0.5583 ms | 0.4037 ms |   1.03 |     0.02 |
|               Span_Comparison |         Incrementing | 1000000 |  82.823 ms | 1.4036 ms | 1.0149 ms |   4.08 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **30.847 ms** | **0.1884 ms** | **0.1362 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  30.702 ms | 0.9192 ms | 0.6647 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  31.415 ms | 0.4480 ms | 0.3239 ms |   1.02 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       2 |   6.636 ms | 0.0297 ms | 0.0215 ms |   0.22 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  18.485 ms | 0.4254 ms | 0.3076 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 |  82.000 ms | 1.6911 ms | 1.2228 ms |   2.66 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  40.922 ms | 0.1678 ms | 0.1213 ms |   1.33 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  50.088 ms | 0.8020 ms | 0.5799 ms |   1.62 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **23.356 ms** | **0.2523 ms** | **0.1824 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  23.289 ms | 0.5600 ms | 0.4049 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  27.128 ms | 1.8169 ms | 1.3138 ms |   1.16 |     0.05 |
|                         Span_ |  MedianOfThreeKiller |       3 |   4.948 ms | 0.1177 ms | 0.0851 ms |   0.21 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  13.018 ms | 0.0100 ms | 0.0072 ms |   0.56 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  59.469 ms | 0.5862 ms | 0.4239 ms |   2.55 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  27.944 ms | 0.3948 ms | 0.2855 ms |   1.20 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  35.042 ms | 0.4472 ms | 0.3233 ms |   1.50 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **12.004 ms** | **0.1164 ms** | **0.0842 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  12.057 ms | 0.2346 ms | 0.1696 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  21.665 ms | 0.9691 ms | 0.7007 ms |   1.80 |     0.06 |
|                         Span_ |  MedianOfThreeKiller |      10 |   5.513 ms | 0.0897 ms | 0.0648 ms |   0.46 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |   7.944 ms | 0.2466 ms | 0.1783 ms |   0.66 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  38.021 ms | 1.3663 ms | 0.9879 ms |   3.17 |     0.08 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  12.590 ms | 0.1280 ms | 0.0926 ms |   1.05 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  21.794 ms | 0.2033 ms | 0.1470 ms |   1.82 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **15.331 ms** | **0.3763 ms** | **0.2721 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  15.222 ms | 0.2120 ms | 0.1533 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  52.171 ms | 1.0115 ms | 0.7314 ms |   3.40 |     0.07 |
|                         Span_ |  MedianOfThreeKiller |     100 |  11.152 ms | 0.2508 ms | 0.1813 ms |   0.73 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  11.147 ms | 0.0287 ms | 0.0207 ms |   0.73 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |  83.426 ms | 1.1971 ms | 0.8656 ms |   5.44 |     0.11 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  14.607 ms | 0.2881 ms | 0.2083 ms |   0.95 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  48.784 ms | 1.2497 ms | 0.9036 ms |   3.18 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **39.335 ms** | **0.3915 ms** | **0.2831 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  39.135 ms | 0.5614 ms | 0.4059 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 140.257 ms | 2.3844 ms | 1.7241 ms |   3.57 |     0.05 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  44.085 ms | 0.4076 ms | 0.2947 ms |   1.12 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  44.033 ms | 0.5405 ms | 0.3908 ms |   1.12 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 239.027 ms | 4.2692 ms | 3.0869 ms |   6.08 |     0.09 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  50.775 ms | 0.5655 ms | 0.4089 ms |   1.29 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 139.563 ms | 1.2444 ms | 0.8998 ms |   3.55 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** |  **90.182 ms** | **1.5599 ms** | **1.1279 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 |  89.849 ms | 1.8641 ms | 1.3479 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 285.002 ms | 4.8214 ms | 3.4862 ms |   3.16 |     0.05 |
|                         Span_ |  MedianOfThreeKiller | 1000000 |  72.117 ms | 2.0376 ms | 1.4733 ms |   0.80 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 |  72.225 ms | 1.7418 ms | 1.2594 ms |   0.80 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 416.418 ms | 5.9012 ms | 4.2670 ms |   4.62 |     0.07 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 |  86.282 ms | 1.2463 ms | 0.9011 ms |   0.96 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 237.396 ms | 4.4834 ms | 3.2418 ms |   2.63 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **33.109 ms** | **0.3601 ms** | **0.2603 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  31.618 ms | 0.3344 ms | 0.2418 ms |   0.96 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  32.597 ms | 0.4171 ms | 0.3016 ms |   0.98 |     0.01 |
|                         Span_ | PartialRandomShuffle |       2 |   7.894 ms | 0.0233 ms | 0.0169 ms |   0.24 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  19.673 ms | 0.2911 ms | 0.2105 ms |   0.59 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 |  82.655 ms | 1.3535 ms | 0.9786 ms |   2.50 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  42.465 ms | 0.5761 ms | 0.4166 ms |   1.28 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       2 |  50.950 ms | 0.7083 ms | 0.5122 ms |   1.54 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **26.171 ms** | **2.1199 ms** | **1.5328 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  26.269 ms | 1.9454 ms | 1.4067 ms |   1.01 |     0.07 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  28.555 ms | 0.3397 ms | 0.2456 ms |   1.09 |     0.06 |
|                         Span_ | PartialRandomShuffle |       3 |   6.573 ms | 0.1214 ms | 0.0878 ms |   0.25 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  14.670 ms | 0.1121 ms | 0.0810 ms |   0.56 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  62.606 ms | 0.7117 ms | 0.5146 ms |   2.40 |     0.12 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  29.464 ms | 0.5100 ms | 0.3688 ms |   1.13 |     0.06 |
|               Span_Comparison | PartialRandomShuffle |       3 |  37.362 ms | 0.4354 ms | 0.3148 ms |   1.43 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **14.443 ms** | **0.1043 ms** | **0.0754 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  14.390 ms | 0.1606 ms | 0.1161 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  21.380 ms | 0.4622 ms | 0.3342 ms |   1.48 |     0.02 |
|                         Span_ | PartialRandomShuffle |      10 |   7.766 ms | 0.1431 ms | 0.1035 ms |   0.54 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  10.139 ms | 0.5864 ms | 0.4240 ms |   0.70 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  34.563 ms | 0.4473 ms | 0.3235 ms |   2.39 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  15.248 ms | 0.0994 ms | 0.0719 ms |   1.06 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      10 |  22.478 ms | 0.2887 ms | 0.2088 ms |   1.56 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **36.377 ms** | **0.6318 ms** | **0.4569 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  36.759 ms | 0.4366 ms | 0.3157 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |  64.699 ms | 0.3163 ms | 0.2287 ms |   1.78 |     0.02 |
|                         Span_ | PartialRandomShuffle |     100 |  31.439 ms | 0.4886 ms | 0.3533 ms |   0.86 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  31.693 ms | 0.3355 ms | 0.2426 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 |  89.012 ms | 0.5880 ms | 0.4251 ms |   2.45 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  32.874 ms | 0.3525 ms | 0.2549 ms |   0.90 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 |  58.870 ms | 0.7764 ms | 0.5614 ms |   1.62 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **62.030 ms** | **0.7733 ms** | **0.5591 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  62.113 ms | 0.9231 ms | 0.6674 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 122.949 ms | 0.7238 ms | 0.5233 ms |   1.98 |     0.02 |
|                         Span_ | PartialRandomShuffle |   10000 |  57.363 ms | 0.7033 ms | 0.5085 ms |   0.92 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  57.368 ms | 0.1145 ms | 0.0828 ms |   0.92 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 172.408 ms | 1.5865 ms | 1.1471 ms |   2.78 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |  60.052 ms | 0.1023 ms | 0.0740 ms |   0.97 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 117.514 ms | 1.0545 ms | 0.7625 ms |   1.89 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** |  **90.703 ms** | **0.2057 ms** | **0.1488 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 |  91.089 ms | 1.2429 ms | 0.8987 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 184.035 ms | 1.5891 ms | 1.1490 ms |   2.03 |     0.01 |
|                         Span_ | PartialRandomShuffle | 1000000 |  85.900 ms | 0.5220 ms | 0.3774 ms |   0.95 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 |  85.897 ms | 1.7817 ms | 1.2883 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 260.666 ms | 0.8647 ms | 0.6253 ms |   2.87 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 |  89.762 ms | 0.2253 ms | 0.1629 ms |   0.99 |     0.00 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 177.706 ms | 0.4952 ms | 0.3581 ms |   1.96 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **34.625 ms** | **0.1912 ms** | **0.1382 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  35.008 ms | 1.1108 ms | 0.8032 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |               Random |       2 |  36.218 ms | 0.9002 ms | 0.6509 ms |   1.05 |     0.02 |
|                         Span_ |               Random |       2 |  10.062 ms | 0.1520 ms | 0.1099 ms |   0.29 |     0.00 |
|             Span_NullComparer |               Random |       2 |  21.980 ms | 0.0625 ms | 0.0452 ms |   0.63 |     0.00 |
|  Span_ClassComparableComparer |               Random |       2 |  86.216 ms | 0.1711 ms | 0.1237 ms |   2.49 |     0.01 |
| Span_StructComparableComparer |               Random |       2 |  44.399 ms | 0.1435 ms | 0.1038 ms |   1.28 |     0.01 |
|               Span_Comparison |               Random |       2 |  53.961 ms | 0.1542 ms | 0.1115 ms |   1.56 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **30.401 ms** | **0.5009 ms** | **0.3621 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  29.818 ms | 0.3511 ms | 0.2539 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |  32.995 ms | 0.0533 ms | 0.0386 ms |   1.09 |     0.01 |
|                         Span_ |               Random |       3 |  10.395 ms | 0.1452 ms | 0.1050 ms |   0.34 |     0.01 |
|             Span_NullComparer |               Random |       3 |  18.249 ms | 0.1738 ms | 0.1256 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 |  66.443 ms | 1.1195 ms | 0.8095 ms |   2.19 |     0.04 |
| Span_StructComparableComparer |               Random |       3 |  33.582 ms | 0.2928 ms | 0.2117 ms |   1.10 |     0.01 |
|               Span_Comparison |               Random |       3 |  41.556 ms | 0.3249 ms | 0.2349 ms |   1.37 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **24.631 ms** | **0.3596 ms** | **0.2600 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  24.626 ms | 0.3115 ms | 0.2252 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |      10 |  36.976 ms | 0.2042 ms | 0.1476 ms |   1.50 |     0.02 |
|                         Span_ |               Random |      10 |  17.527 ms | 0.0472 ms | 0.0341 ms |   0.71 |     0.01 |
|             Span_NullComparer |               Random |      10 |  20.398 ms | 2.0592 ms | 1.4889 ms |   0.83 |     0.06 |
|  Span_ClassComparableComparer |               Random |      10 |  56.071 ms | 1.1128 ms | 0.8046 ms |   2.28 |     0.04 |
| Span_StructComparableComparer |               Random |      10 |  24.721 ms | 0.1118 ms | 0.0808 ms |   1.00 |     0.01 |
|               Span_Comparison |               Random |      10 |  35.312 ms | 0.3732 ms | 0.2699 ms |   1.43 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **47.107 ms** | **0.2311 ms** | **0.1671 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  46.763 ms | 0.9797 ms | 0.7084 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |     100 |  78.087 ms | 2.6156 ms | 1.8912 ms |   1.66 |     0.04 |
|                         Span_ |               Random |     100 |  41.827 ms | 0.3574 ms | 0.2584 ms |   0.89 |     0.01 |
|             Span_NullComparer |               Random |     100 |  41.739 ms | 0.5689 ms | 0.4114 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 | 102.097 ms | 2.2018 ms | 1.5921 ms |   2.17 |     0.03 |
| Span_StructComparableComparer |               Random |     100 |  43.574 ms | 0.2027 ms | 0.1465 ms |   0.93 |     0.00 |
|               Span_Comparison |               Random |     100 |  70.390 ms | 1.4621 ms | 1.0572 ms |   1.49 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** |  **89.879 ms** | **1.0262 ms** | **0.7420 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 |  90.262 ms | 1.1462 ms | 0.8288 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   10000 | 153.925 ms | 2.1389 ms | 1.5466 ms |   1.71 |     0.02 |
|                         Span_ |               Random |   10000 |  85.159 ms | 0.7286 ms | 0.5268 ms |   0.95 |     0.01 |
|             Span_NullComparer |               Random |   10000 |  84.353 ms | 1.1477 ms | 0.8299 ms |   0.94 |     0.01 |
|  Span_ClassComparableComparer |               Random |   10000 | 207.417 ms | 4.3353 ms | 3.1347 ms |   2.31 |     0.04 |
| Span_StructComparableComparer |               Random |   10000 |  87.508 ms | 1.4060 ms | 1.0166 ms |   0.97 |     0.01 |
|               Span_Comparison |               Random |   10000 | 147.370 ms | 1.6703 ms | 1.2077 ms |   1.64 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **132.336 ms** | **1.0384 ms** | **0.7508 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 132.702 ms | 2.9811 ms | 2.1555 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random | 1000000 | 232.578 ms | 3.3547 ms | 2.4257 ms |   1.76 |     0.02 |
|                         Span_ |               Random | 1000000 | 126.067 ms | 3.0560 ms | 2.2097 ms |   0.95 |     0.02 |
|             Span_NullComparer |               Random | 1000000 | 124.948 ms | 2.5846 ms | 1.8688 ms |   0.94 |     0.01 |
|  Span_ClassComparableComparer |               Random | 1000000 | 320.207 ms | 5.2529 ms | 3.7982 ms |   2.42 |     0.03 |
| Span_StructComparableComparer |               Random | 1000000 | 132.415 ms | 2.1249 ms | 1.5364 ms |   1.00 |     0.01 |
|               Span_Comparison |               Random | 1000000 | 226.788 ms | 4.5028 ms | 3.2558 ms |   1.71 |     0.03 |
