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
|                        Method |               Filler |  Length |        Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |-------- |------------:|----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |       **2** |    **57.80 ms** | **0.2774 ms** | **0.2006 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |    57.76 ms | 0.4041 ms | 0.2922 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |       2 |   224.44 ms | 5.7937 ms | 4.1893 ms |   3.88 |     0.07 |
|                         Span_ |             Constant |       2 |    19.78 ms | 0.3092 ms | 0.2236 ms |   0.34 |     0.00 |
|             Span_NullComparer |             Constant |       2 |    50.03 ms | 0.4450 ms | 0.3218 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       2 |   195.98 ms | 0.9536 ms | 0.6895 ms |   3.39 |     0.02 |
| Span_StructComparableComparer |             Constant |       2 |   112.61 ms | 1.0944 ms | 0.7913 ms |   1.95 |     0.01 |
|               Span_Comparison |             Constant |       2 |   130.25 ms | 0.8142 ms | 0.5887 ms |   2.25 |     0.01 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |    **47.58 ms** | **0.7051 ms** | **0.5098 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |    47.75 ms | 0.6298 ms | 0.4554 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 |   166.25 ms | 6.5899 ms | 4.7650 ms |   3.49 |     0.10 |
|                         Span_ |             Constant |       3 |    16.62 ms | 0.3453 ms | 0.2497 ms |   0.35 |     0.01 |
|             Span_NullComparer |             Constant |       3 |    36.06 ms | 0.4364 ms | 0.3156 ms |   0.76 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       3 |   148.90 ms | 0.8487 ms | 0.6137 ms |   3.13 |     0.03 |
| Span_StructComparableComparer |             Constant |       3 |    83.76 ms | 0.6371 ms | 0.4607 ms |   1.76 |     0.02 |
|               Span_Comparison |             Constant |       3 |   102.72 ms | 0.6863 ms | 0.4963 ms |   2.16 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |    **28.80 ms** | **0.3540 ms** | **0.2560 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |    28.77 ms | 0.3596 ms | 0.2600 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |      10 |    62.85 ms | 0.3338 ms | 0.2413 ms |   2.18 |     0.02 |
|                         Span_ |             Constant |      10 |    12.37 ms | 0.2575 ms | 0.1862 ms |   0.43 |     0.01 |
|             Span_NullComparer |             Constant |      10 |    17.99 ms | 0.3138 ms | 0.2269 ms |   0.62 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |    63.41 ms | 0.3860 ms | 0.2791 ms |   2.20 |     0.02 |
| Span_StructComparableComparer |             Constant |      10 |    35.15 ms | 0.5050 ms | 0.3651 ms |   1.22 |     0.02 |
|               Span_Comparison |             Constant |      10 |    49.90 ms | 0.5529 ms | 0.3997 ms |   1.73 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |    **41.35 ms** | **0.5106 ms** | **0.3692 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |    41.03 ms | 0.3724 ms | 0.2693 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant |     100 |    83.57 ms | 0.6634 ms | 0.4797 ms |   2.02 |     0.02 |
|                         Span_ |             Constant |     100 |    20.72 ms | 0.3043 ms | 0.2200 ms |   0.50 |     0.01 |
|             Span_NullComparer |             Constant |     100 |    21.16 ms | 0.2505 ms | 0.1811 ms |   0.51 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     100 |   126.90 ms | 0.7337 ms | 0.5305 ms |   3.07 |     0.03 |
| Span_StructComparableComparer |             Constant |     100 |    57.00 ms | 0.7031 ms | 0.5084 ms |   1.38 |     0.02 |
|               Span_Comparison |             Constant |     100 |    96.79 ms | 0.4777 ms | 0.3454 ms |   2.34 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |    **77.59 ms** | **0.5500 ms** | **0.3977 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |    77.63 ms | 0.2934 ms | 0.2121 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   10000 |   202.93 ms | 1.5698 ms | 1.1351 ms |   2.62 |     0.02 |
|                         Span_ |             Constant |   10000 |    41.70 ms | 0.4547 ms | 0.3288 ms |   0.54 |     0.00 |
|             Span_NullComparer |             Constant |   10000 |    41.48 ms | 0.5920 ms | 0.4281 ms |   0.53 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 |   325.25 ms | 1.3944 ms | 1.0083 ms |   4.19 |     0.02 |
| Span_StructComparableComparer |             Constant |   10000 |   140.22 ms | 0.6694 ms | 0.4840 ms |   1.81 |     0.01 |
|               Span_Comparison |             Constant |   10000 |   238.88 ms | 1.0517 ms | 0.7604 ms |   3.08 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |   **106.54 ms** | **0.5120 ms** | **0.3702 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |   106.52 ms | 0.6101 ms | 0.4411 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 |   309.42 ms | 0.8119 ms | 0.5870 ms |   2.90 |     0.01 |
|                         Span_ |             Constant | 1000000 |    57.62 ms | 0.6086 ms | 0.4401 ms |   0.54 |     0.00 |
|             Span_NullComparer |             Constant | 1000000 |    57.12 ms | 0.6495 ms | 0.4696 ms |   0.54 |     0.00 |
|  Span_ClassComparableComparer |             Constant | 1000000 |   494.46 ms | 2.5799 ms | 1.8655 ms |   4.64 |     0.02 |
| Span_StructComparableComparer |             Constant | 1000000 |   212.80 ms | 0.9757 ms | 0.7055 ms |   2.00 |     0.01 |
|               Span_Comparison |             Constant | 1000000 |   360.96 ms | 2.4494 ms | 1.7711 ms |   3.39 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |    **58.79 ms** | **1.0730 ms** | **0.7759 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |    58.56 ms | 0.7288 ms | 0.5270 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |       2 |   218.97 ms | 0.9664 ms | 0.6988 ms |   3.73 |     0.05 |
|                         Span_ |         Decrementing |       2 |    19.78 ms | 0.4141 ms | 0.2994 ms |   0.34 |     0.01 |
|             Span_NullComparer |         Decrementing |       2 |    49.58 ms | 0.5912 ms | 0.4275 ms |   0.84 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       2 |   193.46 ms | 1.0192 ms | 0.7370 ms |   3.29 |     0.04 |
| Span_StructComparableComparer |         Decrementing |       2 |   111.41 ms | 0.6790 ms | 0.4909 ms |   1.90 |     0.03 |
|               Span_Comparison |         Decrementing |       2 |   129.09 ms | 0.7891 ms | 0.5706 ms |   2.20 |     0.03 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |    **49.51 ms** | **0.4328 ms** | **0.3129 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |    49.58 ms | 0.5764 ms | 0.4168 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       3 |   165.13 ms | 1.3171 ms | 0.9523 ms |   3.34 |     0.03 |
|                         Span_ |         Decrementing |       3 |    16.66 ms | 0.3000 ms | 0.2169 ms |   0.34 |     0.00 |
|             Span_NullComparer |         Decrementing |       3 |    36.92 ms | 0.3731 ms | 0.2698 ms |   0.75 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       3 |   146.71 ms | 0.9875 ms | 0.7140 ms |   2.96 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       3 |    82.28 ms | 0.5478 ms | 0.3961 ms |   1.66 |     0.01 |
|               Span_Comparison |         Decrementing |       3 |   100.79 ms | 1.0069 ms | 0.7280 ms |   2.04 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |    **46.94 ms** | **0.4066 ms** | **0.2940 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |    47.06 ms | 0.6079 ms | 0.4396 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |   121.47 ms | 0.6369 ms | 0.4605 ms |   2.59 |     0.02 |
|                         Span_ |         Decrementing |      10 |    27.61 ms | 0.3394 ms | 0.2454 ms |   0.59 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |    33.19 ms | 0.4247 ms | 0.3071 ms |   0.71 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      10 |   159.98 ms | 0.9392 ms | 0.6791 ms |   3.41 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      10 |    64.89 ms | 1.3135 ms | 0.9497 ms |   1.38 |     0.02 |
|               Span_Comparison |         Decrementing |      10 |   119.04 ms | 1.0367 ms | 0.7496 ms |   2.54 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |    **43.41 ms** | **0.4915 ms** | **0.3554 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |    43.54 ms | 0.6165 ms | 0.4458 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |     100 |   106.38 ms | 1.0832 ms | 0.7832 ms |   2.45 |     0.03 |
|                         Span_ |         Decrementing |     100 |    27.20 ms | 0.4089 ms | 0.2956 ms |   0.63 |     0.01 |
|             Span_NullComparer |         Decrementing |     100 |    27.57 ms | 0.5879 ms | 0.4251 ms |   0.64 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 |   172.69 ms | 1.3154 ms | 0.9511 ms |   3.98 |     0.04 |
| Span_StructComparableComparer |         Decrementing |     100 |    68.57 ms | 0.6203 ms | 0.4485 ms |   1.58 |     0.02 |
|               Span_Comparison |         Decrementing |     100 |   127.56 ms | 0.6708 ms | 0.4851 ms |   2.94 |     0.03 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |    **82.29 ms** | **1.5557 ms** | **1.1249 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |    82.50 ms | 1.4179 ms | 1.0252 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |   10000 |   277.93 ms | 1.6712 ms | 1.2084 ms |   3.38 |     0.05 |
|                         Span_ |         Decrementing |   10000 |    61.46 ms | 0.6149 ms | 0.4446 ms |   0.75 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |    61.11 ms | 0.6298 ms | 0.4554 ms |   0.74 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 |   474.54 ms | 1.7367 ms | 1.2557 ms |   5.77 |     0.08 |
| Span_StructComparableComparer |         Decrementing |   10000 |   179.44 ms | 0.6060 ms | 0.4382 ms |   2.18 |     0.03 |
|               Span_Comparison |         Decrementing |   10000 |   337.83 ms | 1.0638 ms | 0.7692 ms |   4.11 |     0.05 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |   **120.22 ms** | **0.6935 ms** | **0.5015 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |   120.64 ms | 1.0629 ms | 0.7686 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 |   458.21 ms | 1.5760 ms | 1.1396 ms |   3.81 |     0.02 |
|                         Span_ |         Decrementing | 1000000 |    97.87 ms | 0.9893 ms | 0.7153 ms |   0.81 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |    97.35 ms | 1.1899 ms | 0.8604 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 |   792.49 ms | 3.8666 ms | 2.7958 ms |   6.59 |     0.03 |
| Span_StructComparableComparer |         Decrementing | 1000000 |   299.94 ms | 1.5092 ms | 1.0913 ms |   2.49 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 |   562.19 ms | 1.2378 ms | 0.8950 ms |   4.68 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |    **57.13 ms** | **0.7293 ms** | **0.5273 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |    57.25 ms | 0.8116 ms | 0.5869 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |   226.87 ms | 7.0370 ms | 5.0882 ms |   3.97 |     0.09 |
|                         Span_ |         Incrementing |       2 |    19.76 ms | 0.4064 ms | 0.2938 ms |   0.35 |     0.01 |
|             Span_NullComparer |         Incrementing |       2 |    49.58 ms | 0.4896 ms | 0.3540 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       2 |   193.16 ms | 1.2450 ms | 0.9002 ms |   3.38 |     0.03 |
| Span_StructComparableComparer |         Incrementing |       2 |   110.21 ms | 0.8557 ms | 0.6187 ms |   1.93 |     0.02 |
|               Span_Comparison |         Incrementing |       2 |   128.34 ms | 0.6027 ms | 0.4358 ms |   2.25 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |    **47.73 ms** | **0.4063 ms** | **0.2938 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |    47.86 ms | 0.6208 ms | 0.4489 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       3 |   162.04 ms | 5.0054 ms | 3.6192 ms |   3.40 |     0.08 |
|                         Span_ |         Incrementing |       3 |    16.74 ms | 0.3108 ms | 0.2247 ms |   0.35 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |    36.98 ms | 0.5867 ms | 0.4242 ms |   0.77 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       3 |   145.10 ms | 1.0941 ms | 0.7911 ms |   3.04 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       3 |    80.45 ms | 0.8173 ms | 0.5910 ms |   1.69 |     0.02 |
|               Span_Comparison |         Incrementing |       3 |    99.27 ms | 0.6934 ms | 0.5014 ms |   2.08 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |    **28.75 ms** | **0.3788 ms** | **0.2739 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |    28.68 ms | 0.2363 ms | 0.1709 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      10 |    62.02 ms | 0.5854 ms | 0.4233 ms |   2.16 |     0.02 |
|                         Span_ |         Incrementing |      10 |    12.35 ms | 0.2129 ms | 0.1539 ms |   0.43 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |    17.99 ms | 0.3362 ms | 0.2431 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |    62.38 ms | 0.5198 ms | 0.3759 ms |   2.17 |     0.02 |
| Span_StructComparableComparer |         Incrementing |      10 |    34.23 ms | 0.4677 ms | 0.3382 ms |   1.19 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |    46.98 ms | 0.6678 ms | 0.4829 ms |   1.63 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |    **32.81 ms** | **0.3473 ms** | **0.2511 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |    33.04 ms | 0.4522 ms | 0.3270 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |     100 |    73.16 ms | 0.6317 ms | 0.4567 ms |   2.23 |     0.02 |
|                         Span_ |         Incrementing |     100 |    19.45 ms | 0.4859 ms | 0.3513 ms |   0.59 |     0.01 |
|             Span_NullComparer |         Incrementing |     100 |    19.92 ms | 0.3971 ms | 0.2871 ms |   0.61 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |     100 |   118.93 ms | 1.1887 ms | 0.8595 ms |   3.63 |     0.04 |
| Span_StructComparableComparer |         Incrementing |     100 |    47.13 ms | 0.6875 ms | 0.4971 ms |   1.44 |     0.02 |
|               Span_Comparison |         Incrementing |     100 |    88.83 ms | 0.6243 ms | 0.4514 ms |   2.71 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |    **52.69 ms** | **0.4672 ms** | **0.3378 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |    52.68 ms | 0.6723 ms | 0.4861 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   10000 |   168.90 ms | 0.8737 ms | 0.6317 ms |   3.21 |     0.02 |
|                         Span_ |         Incrementing |   10000 |    39.68 ms | 0.3535 ms | 0.2556 ms |   0.75 |     0.01 |
|             Span_NullComparer |         Incrementing |   10000 |    39.47 ms | 0.5656 ms | 0.4089 ms |   0.75 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   10000 |   291.60 ms | 1.0405 ms | 0.7523 ms |   5.53 |     0.04 |
| Span_StructComparableComparer |         Incrementing |   10000 |   108.66 ms | 0.8150 ms | 0.5893 ms |   2.06 |     0.02 |
|               Span_Comparison |         Incrementing |   10000 |   208.24 ms | 1.1756 ms | 0.8500 ms |   3.95 |     0.03 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |    **69.00 ms** | **0.4123 ms** | **0.2981 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |    69.23 ms | 0.4462 ms | 0.3226 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 |   252.12 ms | 1.1636 ms | 0.8413 ms |   3.65 |     0.02 |
|                         Span_ |         Incrementing | 1000000 |    55.89 ms | 0.6266 ms | 0.4531 ms |   0.81 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |    55.70 ms | 0.6409 ms | 0.4634 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 |   436.23 ms | 1.1565 ms | 0.8362 ms |   6.32 |     0.03 |
| Span_StructComparableComparer |         Incrementing | 1000000 |   160.91 ms | 0.9494 ms | 0.6865 ms |   2.33 |     0.01 |
|               Span_Comparison |         Incrementing | 1000000 |   310.89 ms | 0.9691 ms | 0.7007 ms |   4.51 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |    **57.03 ms** | **0.3168 ms** | **0.2291 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |    57.22 ms | 0.6200 ms | 0.4483 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |   221.77 ms | 1.4382 ms | 1.0399 ms |   3.89 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       2 |    19.81 ms | 0.3224 ms | 0.2331 ms |   0.35 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |    49.88 ms | 0.4918 ms | 0.3556 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 |   192.83 ms | 1.2329 ms | 0.8915 ms |   3.38 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |   110.11 ms | 0.6715 ms | 0.4855 ms |   1.93 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |   128.55 ms | 1.1198 ms | 0.8097 ms |   2.25 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |    **47.52 ms** | **0.3736 ms** | **0.2702 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |    47.67 ms | 0.3549 ms | 0.2566 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |   163.06 ms | 3.1451 ms | 2.2741 ms |   3.43 |     0.05 |
|                         Span_ |  MedianOfThreeKiller |       3 |    16.80 ms | 0.2397 ms | 0.1733 ms |   0.35 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |    35.88 ms | 0.4200 ms | 0.3037 ms |   0.76 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |   145.07 ms | 0.8890 ms | 0.6428 ms |   3.05 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |    80.14 ms | 0.7937 ms | 0.5739 ms |   1.69 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |    99.55 ms | 0.6222 ms | 0.4499 ms |   2.10 |     0.01 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |    **35.14 ms** | **0.4330 ms** | **0.3131 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |    35.20 ms | 0.5730 ms | 0.4143 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |    81.87 ms | 0.6290 ms | 0.4548 ms |   2.33 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |      10 |    15.25 ms | 0.4648 ms | 0.3361 ms |   0.43 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |    21.19 ms | 0.4475 ms | 0.3236 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |    92.75 ms | 0.9064 ms | 0.6554 ms |   2.64 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |    43.63 ms | 0.5220 ms | 0.3775 ms |   1.24 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |    70.06 ms | 0.7879 ms | 0.5697 ms |   1.99 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |    **49.18 ms** | **0.5800 ms** | **0.4194 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |    49.25 ms | 0.6769 ms | 0.4895 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |   134.27 ms | 1.4463 ms | 1.0458 ms |   2.73 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |     100 |    31.14 ms | 0.4159 ms | 0.3007 ms |   0.63 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |    31.68 ms | 0.2174 ms | 0.1572 ms |   0.64 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |   223.63 ms | 1.1018 ms | 0.7967 ms |   4.55 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |    81.05 ms | 0.8363 ms | 0.6047 ms |   1.65 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |   161.29 ms | 0.8499 ms | 0.6145 ms |   3.28 |     0.03 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |   **136.02 ms** | **0.8352 ms** | **0.6039 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |   136.39 ms | 0.6776 ms | 0.4899 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 |   364.09 ms | 0.8773 ms | 0.6343 ms |   2.68 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |   10000 |   110.61 ms | 1.0431 ms | 0.7542 ms |   0.81 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |   110.16 ms | 0.8870 ms | 0.6414 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 |   659.02 ms | 2.3574 ms | 1.7046 ms |   4.85 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |   267.09 ms | 0.8697 ms | 0.6289 ms |   1.96 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 |   471.28 ms | 2.6425 ms | 1.9107 ms |   3.46 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** |   **214.59 ms** | **1.4614 ms** | **1.0567 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 |   214.83 ms | 1.5186 ms | 1.0981 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 |   704.04 ms | 1.2654 ms | 0.9150 ms |   3.28 |     0.02 |
|                         Span_ |  MedianOfThreeKiller | 1000000 |   181.54 ms | 1.2442 ms | 0.8996 ms |   0.85 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 |   180.92 ms | 1.0911 ms | 0.7889 ms |   0.84 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 1,151.51 ms | 3.9807 ms | 2.8783 ms |   5.37 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 |   458.65 ms | 1.4724 ms | 1.0647 ms |   2.14 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 |   809.77 ms | 4.2881 ms | 3.1006 ms |   3.77 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |    **59.91 ms** | **0.6475 ms** | **0.4682 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |    59.95 ms | 1.0273 ms | 0.7428 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |   223.19 ms | 5.2814 ms | 3.8188 ms |   3.73 |     0.07 |
|                         Span_ | PartialRandomShuffle |       2 |    22.12 ms | 0.3699 ms | 0.2674 ms |   0.37 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       2 |    51.91 ms | 0.7192 ms | 0.5200 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 |   194.30 ms | 0.9361 ms | 0.6769 ms |   3.24 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |   112.48 ms | 1.0095 ms | 0.7299 ms |   1.88 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       2 |   131.08 ms | 0.6484 ms | 0.4688 ms |   2.19 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |    **51.40 ms** | **0.6087 ms** | **0.4401 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |    51.39 ms | 0.4896 ms | 0.3540 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |   165.89 ms | 2.1223 ms | 1.5345 ms |   3.23 |     0.04 |
|                         Span_ | PartialRandomShuffle |       3 |    20.11 ms | 0.3876 ms | 0.2803 ms |   0.39 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       3 |    39.58 ms | 0.5595 ms | 0.4045 ms |   0.77 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |   149.46 ms | 0.8479 ms | 0.6131 ms |   2.91 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |    84.25 ms | 0.9294 ms | 0.6720 ms |   1.64 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       3 |   102.75 ms | 0.9281 ms | 0.6711 ms |   2.00 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |    **41.23 ms** | **0.2928 ms** | **0.2117 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |    41.21 ms | 0.4143 ms | 0.2996 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |    80.20 ms | 0.6845 ms | 0.4950 ms |   1.95 |     0.01 |
|                         Span_ | PartialRandomShuffle |      10 |    20.83 ms | 0.3497 ms | 0.2528 ms |   0.51 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |    26.45 ms | 0.2829 ms | 0.2046 ms |   0.64 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |    86.00 ms | 1.0362 ms | 0.7492 ms |   2.09 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |    46.86 ms | 0.4478 ms | 0.3238 ms |   1.14 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      10 |    66.26 ms | 0.8886 ms | 0.6425 ms |   1.61 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |    **83.72 ms** | **0.6679 ms** | **0.4829 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |    83.64 ms | 0.6867 ms | 0.4965 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |   150.94 ms | 1.1889 ms | 0.8596 ms |   1.80 |     0.01 |
|                         Span_ | PartialRandomShuffle |     100 |    65.34 ms | 0.3739 ms | 0.2704 ms |   0.78 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |    65.63 ms | 0.5595 ms | 0.4045 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 |   225.45 ms | 1.4201 ms | 1.0268 ms |   2.69 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |   107.92 ms | 0.6985 ms | 0.5051 ms |   1.29 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 |   172.73 ms | 1.5129 ms | 1.0939 ms |   2.06 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |   **144.99 ms** | **1.4391 ms** | **1.0406 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |   144.67 ms | 1.0843 ms | 0.7840 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 |   292.52 ms | 1.8247 ms | 1.3193 ms |   2.02 |     0.02 |
|                         Span_ | PartialRandomShuffle |   10000 |   119.95 ms | 0.8891 ms | 0.6429 ms |   0.83 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |   119.64 ms | 1.1504 ms | 0.8318 ms |   0.83 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 |   452.21 ms | 1.4138 ms | 1.0222 ms |   3.12 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |   214.06 ms | 1.3575 ms | 0.9816 ms |   1.48 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 |   338.32 ms | 1.7033 ms | 1.2316 ms |   2.33 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** |   **205.61 ms** | **1.1565 ms** | **0.8362 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 |   205.96 ms | 0.8663 ms | 0.6264 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 |   441.12 ms | 1.1287 ms | 0.8161 ms |   2.15 |     0.01 |
|                         Span_ | PartialRandomShuffle | 1000000 |   178.08 ms | 0.7461 ms | 0.5395 ms |   0.87 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 |   176.85 ms | 0.6187 ms | 0.4473 ms |   0.86 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 |   685.48 ms | 2.8698 ms | 2.0751 ms |   3.33 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 |   323.90 ms | 1.6956 ms | 1.2260 ms |   1.58 |     0.01 |
|               Span_Comparison | PartialRandomShuffle | 1000000 |   507.70 ms | 1.7236 ms | 1.2463 ms |   2.47 |     0.01 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |    **65.67 ms** | **0.3573 ms** | **0.2584 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |    65.56 ms | 0.6933 ms | 0.5013 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 |   227.43 ms | 0.7608 ms | 0.5501 ms |   3.46 |     0.02 |
|                         Span_ |               Random |       2 |    26.46 ms | 0.3890 ms | 0.2813 ms |   0.40 |     0.00 |
|             Span_NullComparer |               Random |       2 |    56.23 ms | 0.6379 ms | 0.4613 ms |   0.86 |     0.01 |
|  Span_ClassComparableComparer |               Random |       2 |   200.39 ms | 1.1026 ms | 0.7972 ms |   3.05 |     0.02 |
| Span_StructComparableComparer |               Random |       2 |   119.20 ms | 0.8322 ms | 0.6018 ms |   1.82 |     0.01 |
|               Span_Comparison |               Random |       2 |   136.75 ms | 0.7621 ms | 0.5510 ms |   2.08 |     0.01 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |    **59.87 ms** | **0.5227 ms** | **0.3779 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |    59.68 ms | 0.6165 ms | 0.4457 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |   174.17 ms | 1.3599 ms | 0.9833 ms |   2.91 |     0.02 |
|                         Span_ |               Random |       3 |    26.75 ms | 0.3833 ms | 0.2771 ms |   0.45 |     0.01 |
|             Span_NullComparer |               Random |       3 |    46.69 ms | 0.4721 ms | 0.3414 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 |   157.46 ms | 0.8201 ms | 0.5930 ms |   2.63 |     0.02 |
| Span_StructComparableComparer |               Random |       3 |    92.54 ms | 1.0167 ms | 0.7352 ms |   1.55 |     0.01 |
|               Span_Comparison |               Random |       3 |   110.41 ms | 0.9893 ms | 0.7154 ms |   1.84 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |    **57.20 ms** | **0.5527 ms** | **0.3996 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |    57.42 ms | 1.0325 ms | 0.7465 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |      10 |   114.96 ms | 1.0172 ms | 0.7355 ms |   2.01 |     0.02 |
|                         Span_ |               Random |      10 |    38.85 ms | 0.4904 ms | 0.3546 ms |   0.68 |     0.01 |
|             Span_NullComparer |               Random |      10 |    44.44 ms | 0.4286 ms | 0.3099 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer |               Random |      10 |   135.37 ms | 1.0326 ms | 0.7467 ms |   2.37 |     0.02 |
| Span_StructComparableComparer |               Random |      10 |    72.21 ms | 0.8067 ms | 0.5833 ms |   1.26 |     0.01 |
|               Span_Comparison |               Random |      10 |   105.01 ms | 1.2106 ms | 0.8754 ms |   1.84 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |   **104.65 ms** | **0.4571 ms** | **0.3305 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |   104.94 ms | 0.7411 ms | 0.5359 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |     100 |   175.89 ms | 1.2412 ms | 0.8975 ms |   1.68 |     0.01 |
|                         Span_ |               Random |     100 |    85.90 ms | 0.9022 ms | 0.6523 ms |   0.82 |     0.01 |
|             Span_NullComparer |               Random |     100 |    86.25 ms | 1.0005 ms | 0.7234 ms |   0.82 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 |   256.22 ms | 1.8101 ms | 1.3088 ms |   2.45 |     0.01 |
| Span_StructComparableComparer |               Random |     100 |   131.78 ms | 0.6909 ms | 0.4995 ms |   1.26 |     0.01 |
|               Span_Comparison |               Random |     100 |   197.77 ms | 0.7547 ms | 0.5457 ms |   1.89 |     0.01 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** |   **200.25 ms** | **2.1817 ms** | **1.5775 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 |   200.64 ms | 0.6278 ms | 0.4539 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   10000 |   358.57 ms | 2.1959 ms | 1.5878 ms |   1.79 |     0.02 |
|                         Span_ |               Random |   10000 |   175.25 ms | 1.6869 ms | 1.2197 ms |   0.88 |     0.01 |
|             Span_NullComparer |               Random |   10000 |   174.80 ms | 1.2974 ms | 0.9381 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |               Random |   10000 |   531.13 ms | 2.1937 ms | 1.5862 ms |   2.65 |     0.02 |
| Span_StructComparableComparer |               Random |   10000 |   278.97 ms | 0.9606 ms | 0.6945 ms |   1.39 |     0.01 |
|               Span_Comparison |               Random |   10000 |   404.58 ms | 1.3100 ms | 0.9472 ms |   2.02 |     0.02 |
|                               |                      |         |             |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** |   **291.26 ms** | **1.2604 ms** | **0.9114 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 |   291.94 ms | 1.5167 ms | 1.0967 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 |   546.75 ms | 1.6270 ms | 1.1764 ms |   1.88 |     0.01 |
|                         Span_ |               Random | 1000000 |   261.01 ms | 1.5213 ms | 1.1000 ms |   0.90 |     0.00 |
|             Span_NullComparer |               Random | 1000000 |   260.32 ms | 0.8748 ms | 0.6326 ms |   0.89 |     0.00 |
|  Span_ClassComparableComparer |               Random | 1000000 |   815.71 ms | 1.4971 ms | 1.0825 ms |   2.80 |     0.01 |
| Span_StructComparableComparer |               Random | 1000000 |   424.34 ms | 0.9424 ms | 0.6814 ms |   1.46 |     0.00 |
|               Span_Comparison |               Random | 1000000 |   616.65 ms | 2.3357 ms | 1.6889 ms |   2.12 |     0.01 |
