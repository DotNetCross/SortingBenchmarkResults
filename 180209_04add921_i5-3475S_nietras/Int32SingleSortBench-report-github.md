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
|                        **Array_** |             **Constant** |       **2** |  **57.236 ms** | **0.4165 ms** | **0.3011 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  56.827 ms | 0.8129 ms | 0.5878 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant |       2 |  55.561 ms | 0.5434 ms | 0.3929 ms |   0.97 |     0.01 |
|                         Span_ |             Constant |       2 |  10.681 ms | 0.1931 ms | 0.1396 ms |   0.19 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  30.910 ms | 0.5563 ms | 0.4022 ms |   0.54 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       2 | 135.390 ms | 2.4705 ms | 1.7863 ms |   2.37 |     0.03 |
| Span_StructComparableComparer |             Constant |       2 |  68.604 ms | 0.6116 ms | 0.4422 ms |   1.20 |     0.01 |
|               Span_Comparison |             Constant |       2 |  81.045 ms | 0.4681 ms | 0.3385 ms |   1.42 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **44.836 ms** | **0.6526 ms** | **0.4718 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  44.632 ms | 0.5126 ms | 0.3707 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 |  47.691 ms | 0.6005 ms | 0.4342 ms |   1.06 |     0.01 |
|                         Span_ |             Constant |       3 |   7.651 ms | 0.1996 ms | 0.1443 ms |   0.17 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  21.387 ms | 0.3181 ms | 0.2300 ms |   0.48 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       3 |  99.334 ms | 0.8351 ms | 0.6038 ms |   2.22 |     0.03 |
| Span_StructComparableComparer |             Constant |       3 |  47.143 ms | 0.5116 ms | 0.3699 ms |   1.05 |     0.01 |
|               Span_Comparison |             Constant |       3 |  58.559 ms | 0.6258 ms | 0.4525 ms |   1.31 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **18.017 ms** | **0.3077 ms** | **0.2225 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  17.996 ms | 0.3874 ms | 0.2801 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |             Constant |      10 |  23.859 ms | 0.3957 ms | 0.2861 ms |   1.32 |     0.02 |
|                         Span_ |             Constant |      10 |   4.899 ms | 0.1574 ms | 0.1138 ms |   0.27 |     0.01 |
|             Span_NullComparer |             Constant |      10 |   8.953 ms | 0.1699 ms | 0.1228 ms |   0.50 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  41.362 ms | 0.5491 ms | 0.3970 ms |   2.30 |     0.03 |
| Span_StructComparableComparer |             Constant |      10 |  16.617 ms | 0.4050 ms | 0.2928 ms |   0.92 |     0.02 |
|               Span_Comparison |             Constant |      10 |  25.922 ms | 0.2338 ms | 0.1691 ms |   1.44 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **22.781 ms** | **0.2836 ms** | **0.2050 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  23.119 ms | 0.3183 ms | 0.2301 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |             Constant |     100 |  52.203 ms | 0.4462 ms | 0.3227 ms |   2.29 |     0.02 |
|                         Span_ |             Constant |     100 |  13.077 ms | 0.1890 ms | 0.1366 ms |   0.57 |     0.01 |
|             Span_NullComparer |             Constant |     100 |  13.363 ms | 0.2606 ms | 0.1884 ms |   0.59 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     100 |  81.237 ms | 0.5750 ms | 0.4157 ms |   3.57 |     0.04 |
| Span_StructComparableComparer |             Constant |     100 |  14.529 ms | 0.3867 ms | 0.2796 ms |   0.64 |     0.01 |
|               Span_Comparison |             Constant |     100 |  46.432 ms | 0.5684 ms | 0.4110 ms |   2.04 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **48.337 ms** | **0.7173 ms** | **0.5186 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  48.532 ms | 0.5571 ms | 0.4028 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   10000 | 128.896 ms | 0.9966 ms | 0.7206 ms |   2.67 |     0.03 |
|                         Span_ |             Constant |   10000 |  29.785 ms | 0.4502 ms | 0.3256 ms |   0.62 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  29.915 ms | 0.4032 ms | 0.2916 ms |   0.62 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 | 206.734 ms | 0.7697 ms | 0.5565 ms |   4.28 |     0.04 |
| Span_StructComparableComparer |             Constant |   10000 |  31.758 ms | 0.6832 ms | 0.4940 ms |   0.66 |     0.01 |
|               Span_Comparison |             Constant |   10000 | 116.244 ms | 1.0203 ms | 0.7377 ms |   2.41 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **68.178 ms** | **0.6853 ms** | **0.4955 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  68.287 ms | 0.5118 ms | 0.3700 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 192.522 ms | 1.0283 ms | 0.7435 ms |   2.82 |     0.02 |
|                         Span_ |             Constant | 1000000 |  41.650 ms | 0.4626 ms | 0.3345 ms |   0.61 |     0.01 |
|             Span_NullComparer |             Constant | 1000000 |  41.693 ms | 0.5389 ms | 0.3897 ms |   0.61 |     0.01 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 313.168 ms | 1.4246 ms | 1.0300 ms |   4.59 |     0.03 |
| Span_StructComparableComparer |             Constant | 1000000 |  45.454 ms | 0.7301 ms | 0.5279 ms |   0.67 |     0.01 |
|               Span_Comparison |             Constant | 1000000 | 175.395 ms | 1.1904 ms | 0.8608 ms |   2.57 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **57.186 ms** | **0.6181 ms** | **0.4470 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  56.700 ms | 0.4685 ms | 0.3387 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       2 |  55.297 ms | 0.6327 ms | 0.4575 ms |   0.97 |     0.01 |
|                         Span_ |         Decrementing |       2 |  11.438 ms | 0.2274 ms | 0.1644 ms |   0.20 |     0.00 |
|             Span_NullComparer |         Decrementing |       2 |  32.061 ms | 0.2415 ms | 0.1746 ms |   0.56 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       2 | 136.775 ms | 0.7013 ms | 0.5071 ms |   2.39 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       2 |  69.560 ms | 0.6750 ms | 0.4880 ms |   1.22 |     0.01 |
|               Span_Comparison |         Decrementing |       2 |  81.565 ms | 0.6112 ms | 0.4419 ms |   1.43 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **45.470 ms** | **0.5281 ms** | **0.3818 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  45.870 ms | 0.4165 ms | 0.3012 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       3 |  49.656 ms | 0.4676 ms | 0.3381 ms |   1.09 |     0.01 |
|                         Span_ |         Decrementing |       3 |  10.033 ms | 0.1964 ms | 0.1420 ms |   0.22 |     0.00 |
|             Span_NullComparer |         Decrementing |       3 |  23.092 ms | 0.3431 ms | 0.2481 ms |   0.51 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       3 | 101.286 ms | 0.6353 ms | 0.4593 ms |   2.23 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       3 |  48.828 ms | 0.4239 ms | 0.3065 ms |   1.07 |     0.01 |
|               Span_Comparison |         Decrementing |       3 |  59.211 ms | 0.5943 ms | 0.4297 ms |   1.30 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **35.677 ms** | **0.2342 ms** | **0.1693 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  35.642 ms | 0.5252 ms | 0.3798 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |  71.266 ms | 0.5215 ms | 0.3771 ms |   2.00 |     0.01 |
|                         Span_ |         Decrementing |      10 |  18.665 ms | 0.3304 ms | 0.2389 ms |   0.52 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  22.528 ms | 0.2696 ms | 0.1949 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      10 | 104.756 ms | 0.8581 ms | 0.6204 ms |   2.94 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      10 |  28.019 ms | 0.2842 ms | 0.2055 ms |   0.79 |     0.01 |
|               Span_Comparison |         Decrementing |      10 |  60.054 ms | 0.5593 ms | 0.4044 ms |   1.68 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **25.657 ms** | **0.5052 ms** | **0.3653 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  25.665 ms | 0.3787 ms | 0.2738 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |     100 |  72.577 ms | 0.7429 ms | 0.5372 ms |   2.83 |     0.04 |
|                         Span_ |         Decrementing |     100 |  15.906 ms | 0.4436 ms | 0.3207 ms |   0.62 |     0.01 |
|             Span_NullComparer |         Decrementing |     100 |  16.248 ms | 0.3083 ms | 0.2230 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 | 113.074 ms | 1.0088 ms | 0.7294 ms |   4.41 |     0.07 |
| Span_StructComparableComparer |         Decrementing |     100 |  18.366 ms | 0.4215 ms | 0.3048 ms |   0.72 |     0.01 |
|               Span_Comparison |         Decrementing |     100 |  64.206 ms | 0.7762 ms | 0.5612 ms |   2.50 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **45.331 ms** | **0.3502 ms** | **0.2532 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  45.378 ms | 0.3721 ms | 0.2691 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 181.150 ms | 0.8802 ms | 0.6365 ms |   4.00 |     0.03 |
|                         Span_ |         Decrementing |   10000 |  34.068 ms | 0.3728 ms | 0.2695 ms |   0.75 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |  34.082 ms | 0.4229 ms | 0.3058 ms |   0.75 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 309.929 ms | 1.0772 ms | 0.7789 ms |   6.84 |     0.04 |
| Span_StructComparableComparer |         Decrementing |   10000 |  35.462 ms | 0.2355 ms | 0.1703 ms |   0.78 |     0.01 |
|               Span_Comparison |         Decrementing |   10000 | 169.919 ms | 1.2415 ms | 0.8977 ms |   3.75 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **63.963 ms** | **0.5510 ms** | **0.3984 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  64.247 ms | 0.8093 ms | 0.5852 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 295.925 ms | 0.9155 ms | 0.6620 ms |   4.63 |     0.03 |
|                         Span_ |         Decrementing | 1000000 |  50.960 ms | 1.0414 ms | 0.7530 ms |   0.80 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |  50.975 ms | 0.6672 ms | 0.4824 ms |   0.80 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 520.300 ms | 2.7634 ms | 1.9981 ms |   8.13 |     0.06 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  52.990 ms | 0.5901 ms | 0.4267 ms |   0.83 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 | 282.522 ms | 0.7965 ms | 0.5759 ms |   4.42 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **56.592 ms** | **0.4982 ms** | **0.3603 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  55.888 ms | 0.6030 ms | 0.4360 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |  53.730 ms | 0.4820 ms | 0.3485 ms |   0.95 |     0.01 |
|                         Span_ |         Incrementing |       2 |  10.257 ms | 0.2953 ms | 0.2136 ms |   0.18 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  31.174 ms | 0.3020 ms | 0.2184 ms |   0.55 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       2 | 132.567 ms | 0.4828 ms | 0.3491 ms |   2.34 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       2 |  68.059 ms | 0.4914 ms | 0.3553 ms |   1.20 |     0.01 |
|               Span_Comparison |         Incrementing |       2 |  80.885 ms | 0.4593 ms | 0.3321 ms |   1.43 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **44.476 ms** | **0.4318 ms** | **0.3122 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  44.410 ms | 0.5346 ms | 0.3866 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       3 |  46.281 ms | 0.4505 ms | 0.3257 ms |   1.04 |     0.01 |
|                         Span_ |         Incrementing |       3 |   7.547 ms | 0.2606 ms | 0.1884 ms |   0.17 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  21.342 ms | 0.1317 ms | 0.0953 ms |   0.48 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  97.238 ms | 0.6908 ms | 0.4995 ms |   2.19 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       3 |  46.976 ms | 0.4864 ms | 0.3517 ms |   1.06 |     0.01 |
|               Span_Comparison |         Incrementing |       3 |  56.657 ms | 0.5831 ms | 0.4216 ms |   1.27 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **17.932 ms** | **0.4411 ms** | **0.3190 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  17.915 ms | 0.2965 ms | 0.2144 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |      10 |  24.301 ms | 0.4160 ms | 0.3008 ms |   1.36 |     0.03 |
|                         Span_ |         Incrementing |      10 |   4.878 ms | 0.1679 ms | 0.1214 ms |   0.27 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |   8.823 ms | 0.2547 ms | 0.1842 ms |   0.49 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  41.847 ms | 0.3994 ms | 0.2888 ms |   2.33 |     0.04 |
| Span_StructComparableComparer |         Incrementing |      10 |  17.182 ms | 0.1514 ms | 0.1095 ms |   0.96 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |  25.802 ms | 0.2431 ms | 0.1758 ms |   1.44 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |  **17.446 ms** | **0.4411 ms** | **0.3190 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |  17.374 ms | 0.4718 ms | 0.3412 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |     100 |  47.848 ms | 0.6624 ms | 0.4790 ms |   2.74 |     0.05 |
|                         Span_ |         Incrementing |     100 |  10.078 ms | 0.3469 ms | 0.2508 ms |   0.58 |     0.02 |
|             Span_NullComparer |         Incrementing |     100 |  10.482 ms | 0.2819 ms | 0.2038 ms |   0.60 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  76.884 ms | 0.9279 ms | 0.6709 ms |   4.41 |     0.09 |
| Span_StructComparableComparer |         Incrementing |     100 |  12.683 ms | 0.4123 ms | 0.2981 ms |   0.73 |     0.02 |
|               Span_Comparison |         Incrementing |     100 |  42.807 ms | 0.3715 ms | 0.2686 ms |   2.45 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **31.944 ms** | **0.5045 ms** | **0.3648 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  32.072 ms | 0.3387 ms | 0.2449 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   10000 | 111.293 ms | 0.4602 ms | 0.3327 ms |   3.48 |     0.04 |
|                         Span_ |         Incrementing |   10000 |  22.564 ms | 0.5212 ms | 0.3769 ms |   0.71 |     0.01 |
|             Span_NullComparer |         Incrementing |   10000 |  22.561 ms | 0.2669 ms | 0.1930 ms |   0.71 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 189.485 ms | 1.2670 ms | 0.9161 ms |   5.93 |     0.07 |
| Span_StructComparableComparer |         Incrementing |   10000 |  23.985 ms | 0.7475 ms | 0.5405 ms |   0.75 |     0.02 |
|               Span_Comparison |         Incrementing |   10000 | 104.086 ms | 0.8994 ms | 0.6503 ms |   3.26 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **39.246 ms** | **0.6651 ms** | **0.4809 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  39.551 ms | 0.3367 ms | 0.2434 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 162.554 ms | 0.9279 ms | 0.6709 ms |   4.14 |     0.05 |
|                         Span_ |         Incrementing | 1000000 |  28.425 ms | 0.3772 ms | 0.2728 ms |   0.72 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |  28.498 ms | 0.3264 ms | 0.2360 ms |   0.73 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 282.419 ms | 1.3140 ms | 0.9501 ms |   7.20 |     0.09 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  30.027 ms | 0.3974 ms | 0.2873 ms |   0.77 |     0.01 |
|               Span_Comparison |         Incrementing | 1000000 | 152.923 ms | 1.1211 ms | 0.8106 ms |   3.90 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **56.586 ms** | **0.4402 ms** | **0.3183 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  56.561 ms | 0.3788 ms | 0.2739 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  53.925 ms | 0.5678 ms | 0.4106 ms |   0.95 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       2 |  10.350 ms | 0.2363 ms | 0.1709 ms |   0.18 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  30.954 ms | 0.7196 ms | 0.5203 ms |   0.55 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 | 132.019 ms | 0.7399 ms | 0.5350 ms |   2.33 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  68.185 ms | 1.0575 ms | 0.7646 ms |   1.21 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  81.302 ms | 0.4321 ms | 0.3124 ms |   1.44 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **44.521 ms** | **0.3413 ms** | **0.2468 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  44.582 ms | 0.5526 ms | 0.3995 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  46.199 ms | 0.4981 ms | 0.3601 ms |   1.04 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       3 |   7.551 ms | 0.1686 ms | 0.1219 ms |   0.17 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  21.252 ms | 0.1819 ms | 0.1315 ms |   0.48 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  97.762 ms | 0.4941 ms | 0.3572 ms |   2.20 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  46.975 ms | 0.2729 ms | 0.1973 ms |   1.06 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  56.958 ms | 0.5949 ms | 0.4302 ms |   1.28 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **23.622 ms** | **0.2545 ms** | **0.1841 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  23.561 ms | 0.2633 ms | 0.1904 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  40.553 ms | 0.3679 ms | 0.2660 ms |   1.72 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |      10 |   8.775 ms | 0.2864 ms | 0.2071 ms |   0.37 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |  13.117 ms | 0.2584 ms | 0.1868 ms |   0.56 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  61.956 ms | 0.5247 ms | 0.3794 ms |   2.62 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  20.501 ms | 0.4031 ms | 0.2915 ms |   0.87 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  37.002 ms | 0.4851 ms | 0.3508 ms |   1.57 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **30.268 ms** | **0.3864 ms** | **0.2794 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  30.196 ms | 0.2677 ms | 0.1936 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  88.324 ms | 0.7090 ms | 0.5126 ms |   2.92 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |     100 |  19.082 ms | 0.2156 ms | 0.1559 ms |   0.63 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  19.599 ms | 0.5636 ms | 0.4076 ms |   0.65 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 | 142.988 ms | 0.8520 ms | 0.6161 ms |   4.72 |     0.05 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  22.122 ms | 0.6683 ms | 0.4832 ms |   0.73 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  77.281 ms | 0.9251 ms | 0.6689 ms |   2.55 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **66.672 ms** | **0.6483 ms** | **0.4688 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  66.846 ms | 0.7756 ms | 0.5608 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 235.904 ms | 1.3020 ms | 0.9414 ms |   3.54 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  64.276 ms | 0.4287 ms | 0.3100 ms |   0.96 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  64.179 ms | 0.4295 ms | 0.3105 ms |   0.96 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 423.279 ms | 1.9487 ms | 1.4090 ms |   6.35 |     0.05 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  69.311 ms | 0.7002 ms | 0.5063 ms |   1.04 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 236.265 ms | 1.7133 ms | 1.2388 ms |   3.54 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** | **146.568 ms** | **1.2988 ms** | **0.9391 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 | 147.274 ms | 0.8474 ms | 0.6127 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 481.544 ms | 1.8830 ms | 1.3616 ms |   3.29 |     0.02 |
|                         Span_ |  MedianOfThreeKiller | 1000000 | 105.591 ms | 0.8290 ms | 0.5994 ms |   0.72 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 | 105.188 ms | 0.8215 ms | 0.5940 ms |   0.72 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 743.450 ms | 2.0204 ms | 1.4609 ms |   5.07 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 123.443 ms | 0.8716 ms | 0.6302 ms |   0.84 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 406.171 ms | 2.3815 ms | 1.7219 ms |   2.77 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **58.585 ms** | **0.7019 ms** | **0.5075 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  58.337 ms | 0.7382 ms | 0.5338 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  55.534 ms | 0.3655 ms | 0.2643 ms |   0.95 |     0.01 |
|                         Span_ | PartialRandomShuffle |       2 |  12.344 ms | 0.2870 ms | 0.2075 ms |   0.21 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  32.981 ms | 0.4710 ms | 0.3406 ms |   0.56 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 | 134.767 ms | 0.6427 ms | 0.4647 ms |   2.30 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  70.238 ms | 0.8652 ms | 0.6256 ms |   1.20 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       2 |  82.899 ms | 0.6428 ms | 0.4648 ms |   1.42 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **46.842 ms** | **0.3084 ms** | **0.2230 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  46.991 ms | 0.4223 ms | 0.3054 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  48.924 ms | 0.8501 ms | 0.6147 ms |   1.04 |     0.01 |
|                         Span_ | PartialRandomShuffle |       3 |  10.360 ms | 0.2930 ms | 0.2119 ms |   0.22 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  23.757 ms | 0.3430 ms | 0.2480 ms |   0.51 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  99.832 ms | 0.8554 ms | 0.6185 ms |   2.13 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  49.278 ms | 0.5175 ms | 0.3742 ms |   1.05 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       3 |  59.804 ms | 0.6106 ms | 0.4415 ms |   1.28 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **24.278 ms** | **0.4652 ms** | **0.3364 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  24.413 ms | 0.3710 ms | 0.2682 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  37.095 ms | 0.5914 ms | 0.4276 ms |   1.53 |     0.03 |
|                         Span_ | PartialRandomShuffle |      10 |  12.031 ms | 0.1122 ms | 0.0811 ms |   0.50 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  15.547 ms | 0.3214 ms | 0.2324 ms |   0.64 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  56.298 ms | 0.5062 ms | 0.3660 ms |   2.32 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  23.457 ms | 0.3921 ms | 0.2835 ms |   0.97 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |      10 |  35.351 ms | 0.4837 ms | 0.3498 ms |   1.46 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **51.518 ms** | **0.4195 ms** | **0.3033 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  51.672 ms | 0.6531 ms | 0.4722 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 | 101.443 ms | 0.8126 ms | 0.5875 ms |   1.97 |     0.02 |
|                         Span_ | PartialRandomShuffle |     100 |  43.141 ms | 0.3508 ms | 0.2537 ms |   0.84 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  43.277 ms | 0.4304 ms | 0.3112 ms |   0.84 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 | 140.416 ms | 0.7907 ms | 0.5717 ms |   2.73 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  43.662 ms | 0.5335 ms | 0.3858 ms |   0.85 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 |  85.433 ms | 0.5603 ms | 0.4051 ms |   1.66 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **87.730 ms** | **0.9360 ms** | **0.6768 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  88.095 ms | 0.4413 ms | 0.3191 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 191.922 ms | 1.1050 ms | 0.7990 ms |   2.19 |     0.02 |
|                         Span_ | PartialRandomShuffle |   10000 |  77.262 ms | 0.8407 ms | 0.6079 ms |   0.88 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  76.996 ms | 0.4209 ms | 0.3043 ms |   0.88 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 282.444 ms | 1.2356 ms | 0.8934 ms |   3.22 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |  76.042 ms | 0.5062 ms | 0.3660 ms |   0.87 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 168.500 ms | 0.8349 ms | 0.6037 ms |   1.92 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** | **127.746 ms** | **1.1314 ms** | **0.8181 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 | 128.587 ms | 1.2770 ms | 0.9233 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 286.640 ms | 0.8082 ms | 0.5844 ms |   2.24 |     0.01 |
|                         Span_ | PartialRandomShuffle | 1000000 | 115.315 ms | 0.9742 ms | 0.7044 ms |   0.90 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 | 115.001 ms | 0.7772 ms | 0.5619 ms |   0.90 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 430.120 ms | 1.5838 ms | 1.1452 ms |   3.37 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 114.187 ms | 0.6795 ms | 0.4913 ms |   0.89 |     0.01 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 256.039 ms | 0.9712 ms | 0.7022 ms |   2.00 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **61.177 ms** | **0.5365 ms** | **0.3880 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  60.910 ms | 0.5942 ms | 0.4296 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 |  58.671 ms | 0.6004 ms | 0.4341 ms |   0.96 |     0.01 |
|                         Span_ |               Random |       2 |  15.018 ms | 0.3777 ms | 0.2731 ms |   0.25 |     0.00 |
|             Span_NullComparer |               Random |       2 |  35.473 ms | 0.3095 ms | 0.2238 ms |   0.58 |     0.00 |
|  Span_ClassComparableComparer |               Random |       2 | 139.435 ms | 1.1883 ms | 0.8592 ms |   2.28 |     0.02 |
| Span_StructComparableComparer |               Random |       2 |  72.574 ms | 0.6864 ms | 0.4963 ms |   1.19 |     0.01 |
|               Span_Comparison |               Random |       2 |  84.674 ms | 0.9877 ms | 0.7142 ms |   1.38 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **51.089 ms** | **0.7381 ms** | **0.5337 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  51.107 ms | 0.7057 ms | 0.5103 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |  53.775 ms | 0.5269 ms | 0.3810 ms |   1.05 |     0.01 |
|                         Span_ |               Random |       3 |  14.760 ms | 0.3449 ms | 0.2494 ms |   0.29 |     0.01 |
|             Span_NullComparer |               Random |       3 |  28.517 ms | 0.3689 ms | 0.2667 ms |   0.56 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 | 105.079 ms | 1.0012 ms | 0.7239 ms |   2.06 |     0.02 |
| Span_StructComparableComparer |               Random |       3 |  53.894 ms | 0.4791 ms | 0.3464 ms |   1.06 |     0.01 |
|               Span_Comparison |               Random |       3 |  64.605 ms | 0.7497 ms | 0.5421 ms |   1.26 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **38.938 ms** | **0.4983 ms** | **0.3603 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  38.968 ms | 0.7027 ms | 0.5081 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random |      10 |  62.506 ms | 0.7601 ms | 0.5496 ms |   1.61 |     0.02 |
|                         Span_ |               Random |      10 |  24.737 ms | 0.5171 ms | 0.3739 ms |   0.64 |     0.01 |
|             Span_NullComparer |               Random |      10 |  29.246 ms | 0.3816 ms | 0.2759 ms |   0.75 |     0.01 |
|  Span_ClassComparableComparer |               Random |      10 |  85.598 ms | 0.5174 ms | 0.3741 ms |   2.20 |     0.02 |
| Span_StructComparableComparer |               Random |      10 |  35.813 ms | 0.2480 ms | 0.1793 ms |   0.92 |     0.01 |
|               Span_Comparison |               Random |      10 |  54.221 ms | 0.6757 ms | 0.4886 ms |   1.39 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **64.886 ms** | **0.5512 ms** | **0.3985 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  64.937 ms | 0.7879 ms | 0.5697 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |     100 | 118.142 ms | 2.2105 ms | 1.5984 ms |   1.82 |     0.03 |
|                         Span_ |               Random |     100 |  55.960 ms | 0.5470 ms | 0.3955 ms |   0.86 |     0.01 |
|             Span_NullComparer |               Random |     100 |  56.159 ms | 0.3401 ms | 0.2459 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 | 156.209 ms | 1.1742 ms | 0.8490 ms |   2.41 |     0.02 |
| Span_StructComparableComparer |               Random |     100 |  55.983 ms | 0.5756 ms | 0.4162 ms |   0.86 |     0.01 |
|               Span_Comparison |               Random |     100 |  98.015 ms | 0.5469 ms | 0.3955 ms |   1.51 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** | **121.790 ms** | **0.6464 ms** | **0.4674 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 | 122.440 ms | 0.7028 ms | 0.5081 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |               Random |   10000 | 229.203 ms | 1.2808 ms | 0.9261 ms |   1.88 |     0.01 |
|                         Span_ |               Random |   10000 | 111.712 ms | 1.1369 ms | 0.8220 ms |   0.92 |     0.01 |
|             Span_NullComparer |               Random |   10000 | 111.711 ms | 0.4285 ms | 0.3099 ms |   0.92 |     0.00 |
|  Span_ClassComparableComparer |               Random |   10000 | 322.200 ms | 2.1019 ms | 1.5198 ms |   2.65 |     0.02 |
| Span_StructComparableComparer |               Random |   10000 | 109.423 ms | 0.5458 ms | 0.3947 ms |   0.90 |     0.00 |
|               Span_Comparison |               Random |   10000 | 201.316 ms | 0.9074 ms | 0.6561 ms |   1.65 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **178.070 ms** | **1.9447 ms** | **1.4061 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 178.593 ms | 1.0691 ms | 0.7730 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random | 1000000 | 345.864 ms | 1.6510 ms | 1.1938 ms |   1.94 |     0.02 |
|                         Span_ |               Random | 1000000 | 166.046 ms | 0.8693 ms | 0.6286 ms |   0.93 |     0.01 |
|             Span_NullComparer |               Random | 1000000 | 165.498 ms | 0.3026 ms | 0.2188 ms |   0.93 |     0.01 |
|  Span_ClassComparableComparer |               Random | 1000000 | 498.170 ms | 1.4190 ms | 1.0260 ms |   2.80 |     0.02 |
| Span_StructComparableComparer |               Random | 1000000 | 164.757 ms | 1.3139 ms | 0.9500 ms |   0.93 |     0.01 |
|               Span_Comparison |               Random | 1000000 | 310.179 ms | 1.2007 ms | 0.8682 ms |   1.74 |     0.01 |
