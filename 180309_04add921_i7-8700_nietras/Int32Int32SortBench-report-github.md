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
|                        **Array_** |             **Constant** |       **2** |  **18.059 ms** | **0.1821 ms** | **0.1317 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  17.985 ms | 0.0934 ms | 0.0675 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |       2 |  30.870 ms | 0.3372 ms | 0.2438 ms |   1.71 |     0.02 |
|                         Span_ |             Constant |       2 |   6.582 ms | 0.0591 ms | 0.0427 ms |   0.36 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  18.442 ms | 0.0707 ms | 0.0511 ms |   1.02 |     0.01 |
|  Span_ClassComparableComparer |             Constant |       2 |  81.161 ms | 1.1366 ms | 0.8218 ms |   4.49 |     0.05 |
| Span_StructComparableComparer |             Constant |       2 |  41.703 ms | 0.3077 ms | 0.2225 ms |   2.31 |     0.02 |
|               Span_Comparison |             Constant |       2 |  49.042 ms | 0.9835 ms | 0.7111 ms |   2.72 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **15.763 ms** | **0.0506 ms** | **0.0366 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  15.889 ms | 0.1821 ms | 0.1317 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |             Constant |       3 |  26.709 ms | 0.2416 ms | 0.1747 ms |   1.69 |     0.01 |
|                         Span_ |             Constant |       3 |   4.755 ms | 0.0297 ms | 0.0215 ms |   0.30 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  12.891 ms | 0.1024 ms | 0.0741 ms |   0.82 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  60.192 ms | 1.3815 ms | 0.9989 ms |   3.82 |     0.06 |
| Span_StructComparableComparer |             Constant |       3 |  28.831 ms | 0.3599 ms | 0.2603 ms |   1.83 |     0.02 |
|               Span_Comparison |             Constant |       3 |  34.908 ms | 0.2195 ms | 0.1587 ms |   2.21 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |   **8.894 ms** | **0.1529 ms** | **0.1106 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |   8.854 ms | 0.0994 ms | 0.0719 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |      10 |  13.133 ms | 0.2160 ms | 0.1562 ms |   1.48 |     0.02 |
|                         Span_ |             Constant |      10 |   2.668 ms | 0.3111 ms | 0.2249 ms |   0.30 |     0.02 |
|             Span_NullComparer |             Constant |      10 |   4.730 ms | 0.0842 ms | 0.0609 ms |   0.53 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  23.932 ms | 0.1830 ms | 0.1323 ms |   2.69 |     0.04 |
| Span_StructComparableComparer |             Constant |      10 |   9.906 ms | 0.1313 ms | 0.0950 ms |   1.11 |     0.02 |
|               Span_Comparison |             Constant |      10 |  14.602 ms | 0.1344 ms | 0.0972 ms |   1.64 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **10.287 ms** | **0.1834 ms** | **0.1326 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  10.423 ms | 0.2120 ms | 0.1533 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |             Constant |     100 |  30.832 ms | 0.3172 ms | 0.2294 ms |   3.00 |     0.04 |
|                         Span_ |             Constant |     100 |   8.451 ms | 0.4787 ms | 0.3461 ms |   0.82 |     0.03 |
|             Span_NullComparer |             Constant |     100 |   8.656 ms | 0.2166 ms | 0.1566 ms |   0.84 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     100 |  44.730 ms | 0.1687 ms | 0.1220 ms |   4.35 |     0.05 |
| Span_StructComparableComparer |             Constant |     100 |  10.577 ms | 0.2029 ms | 0.1467 ms |   1.03 |     0.02 |
|               Span_Comparison |             Constant |     100 |  32.615 ms | 0.1194 ms | 0.0864 ms |   3.17 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **18.927 ms** | **0.3208 ms** | **0.2320 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  18.870 ms | 0.6196 ms | 0.4480 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |             Constant |   10000 |  74.758 ms | 0.7151 ms | 0.5171 ms |   3.95 |     0.05 |
|                         Span_ |             Constant |   10000 |  21.631 ms | 0.2314 ms | 0.1673 ms |   1.14 |     0.02 |
|             Span_NullComparer |             Constant |   10000 |  21.435 ms | 0.5531 ms | 0.3999 ms |   1.13 |     0.02 |
|  Span_ClassComparableComparer |             Constant |   10000 | 108.576 ms | 2.2588 ms | 1.6333 ms |   5.74 |     0.11 |
| Span_StructComparableComparer |             Constant |   10000 |  25.704 ms | 0.3380 ms | 0.2444 ms |   1.36 |     0.02 |
|               Span_Comparison |             Constant |   10000 |  84.229 ms | 1.5511 ms | 1.1215 ms |   4.45 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **26.887 ms** | **0.2591 ms** | **0.1873 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  26.347 ms | 0.4564 ms | 0.3300 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 111.773 ms | 1.3744 ms | 0.9938 ms |   4.16 |     0.04 |
|                         Span_ |             Constant | 1000000 |  32.351 ms | 0.5439 ms | 0.3933 ms |   1.20 |     0.02 |
|             Span_NullComparer |             Constant | 1000000 |  32.770 ms | 0.7356 ms | 0.5319 ms |   1.22 |     0.02 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 162.115 ms | 2.4475 ms | 1.7697 ms |   6.03 |     0.07 |
| Span_StructComparableComparer |             Constant | 1000000 |  39.844 ms | 0.5820 ms | 0.4208 ms |   1.48 |     0.02 |
|               Span_Comparison |             Constant | 1000000 | 126.623 ms | 1.8867 ms | 1.3642 ms |   4.71 |     0.06 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **18.446 ms** | **0.1999 ms** | **0.1445 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  18.544 ms | 0.1962 ms | 0.1418 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       2 |  31.765 ms | 0.2221 ms | 0.1606 ms |   1.72 |     0.02 |
|                         Span_ |         Decrementing |       2 |   7.312 ms | 0.1605 ms | 0.1161 ms |   0.40 |     0.01 |
|             Span_NullComparer |         Decrementing |       2 |  18.919 ms | 0.7849 ms | 0.5675 ms |   1.03 |     0.03 |
|  Span_ClassComparableComparer |         Decrementing |       2 |  83.847 ms | 1.4966 ms | 1.0821 ms |   4.55 |     0.07 |
| Span_StructComparableComparer |         Decrementing |       2 |  42.266 ms | 0.6862 ms | 0.4962 ms |   2.29 |     0.03 |
|               Span_Comparison |         Decrementing |       2 |  52.331 ms | 0.8666 ms | 0.6266 ms |   2.84 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **15.903 ms** | **0.7265 ms** | **0.5253 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  15.585 ms | 0.1766 ms | 0.1277 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |       3 |  27.778 ms | 0.1363 ms | 0.0986 ms |   1.75 |     0.05 |
|                         Span_ |         Decrementing |       3 |   6.602 ms | 0.2101 ms | 0.1519 ms |   0.42 |     0.02 |
|             Span_NullComparer |         Decrementing |       3 |  14.141 ms | 0.1367 ms | 0.0988 ms |   0.89 |     0.03 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  61.317 ms | 0.2706 ms | 0.1956 ms |   3.86 |     0.11 |
| Span_StructComparableComparer |         Decrementing |       3 |  30.301 ms | 0.2600 ms | 0.1880 ms |   1.91 |     0.06 |
|               Span_Comparison |         Decrementing |       3 |  35.961 ms | 0.1127 ms | 0.0815 ms |   2.26 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **25.147 ms** | **0.4188 ms** | **0.3028 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  25.375 ms | 1.3000 ms | 0.9400 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |         Decrementing |      10 |  37.920 ms | 0.3083 ms | 0.2229 ms |   1.51 |     0.02 |
|                         Span_ |         Decrementing |      10 |  11.446 ms | 0.1366 ms | 0.0988 ms |   0.46 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  13.776 ms | 0.1329 ms | 0.0961 ms |   0.55 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  58.361 ms | 0.7356 ms | 0.5319 ms |   2.32 |     0.03 |
| Span_StructComparableComparer |         Decrementing |      10 |  18.621 ms | 0.1703 ms | 0.1232 ms |   0.74 |     0.01 |
|               Span_Comparison |         Decrementing |      10 |  32.209 ms | 0.1616 ms | 0.1169 ms |   1.28 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **13.995 ms** | **0.2460 ms** | **0.1779 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  13.914 ms | 0.3172 ms | 0.2293 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |     100 |  44.728 ms | 2.4523 ms | 1.7732 ms |   3.20 |     0.13 |
|                         Span_ |         Decrementing |     100 |   8.985 ms | 0.2382 ms | 0.1722 ms |   0.64 |     0.01 |
|             Span_NullComparer |         Decrementing |     100 |   9.304 ms | 0.1803 ms | 0.1303 ms |   0.66 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  64.698 ms | 1.4928 ms | 1.0794 ms |   4.62 |     0.09 |
| Span_StructComparableComparer |         Decrementing |     100 |  11.034 ms | 0.2950 ms | 0.2133 ms |   0.79 |     0.02 |
|               Span_Comparison |         Decrementing |     100 |  42.102 ms | 1.5863 ms | 1.1470 ms |   3.01 |     0.09 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **23.311 ms** | **0.7873 ms** | **0.5693 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  23.270 ms | 0.2467 ms | 0.1784 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 106.234 ms | 1.7150 ms | 1.2401 ms |   4.56 |     0.12 |
|                         Span_ |         Decrementing |   10000 |  22.242 ms | 0.5317 ms | 0.3844 ms |   0.95 |     0.03 |
|             Span_NullComparer |         Decrementing |   10000 |  21.875 ms | 0.4206 ms | 0.3041 ms |   0.94 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 170.412 ms | 3.7375 ms | 2.7025 ms |   7.31 |     0.20 |
| Span_StructComparableComparer |         Decrementing |   10000 |  24.148 ms | 0.9859 ms | 0.7129 ms |   1.04 |     0.04 |
|               Span_Comparison |         Decrementing |   10000 |  94.068 ms | 1.1910 ms | 0.8612 ms |   4.04 |     0.10 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **32.569 ms** | **0.4173 ms** | **0.3017 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  32.161 ms | 0.6639 ms | 0.4800 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 174.171 ms | 2.2816 ms | 1.6498 ms |   5.35 |     0.07 |
|                         Span_ |         Decrementing | 1000000 |  34.624 ms | 0.4132 ms | 0.2987 ms |   1.06 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |  34.928 ms | 0.4120 ms | 0.2979 ms |   1.07 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 284.745 ms | 1.7486 ms | 1.2643 ms |   8.74 |     0.09 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  37.230 ms | 0.6363 ms | 0.4601 ms |   1.14 |     0.02 |
|               Span_Comparison |         Decrementing | 1000000 | 150.230 ms | 0.7856 ms | 0.5681 ms |   4.61 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **18.262 ms** | **0.2330 ms** | **0.1685 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  18.106 ms | 0.2134 ms | 0.1543 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |  30.697 ms | 0.3646 ms | 0.2637 ms |   1.68 |     0.02 |
|                         Span_ |         Incrementing |       2 |   6.576 ms | 0.0177 ms | 0.0128 ms |   0.36 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  18.232 ms | 0.2759 ms | 0.1995 ms |   1.00 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       2 |  82.463 ms | 0.7647 ms | 0.5529 ms |   4.52 |     0.05 |
| Span_StructComparableComparer |         Incrementing |       2 |  41.882 ms | 0.4390 ms | 0.3174 ms |   2.29 |     0.03 |
|               Span_Comparison |         Incrementing |       2 |  49.405 ms | 0.1837 ms | 0.1328 ms |   2.71 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **15.845 ms** | **0.1384 ms** | **0.1000 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  15.830 ms | 0.0816 ms | 0.0590 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       3 |  25.962 ms | 0.3308 ms | 0.2392 ms |   1.64 |     0.02 |
|                         Span_ |         Incrementing |       3 |   4.777 ms | 0.0243 ms | 0.0176 ms |   0.30 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  12.894 ms | 0.2122 ms | 0.1535 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  59.257 ms | 0.5499 ms | 0.3976 ms |   3.74 |     0.03 |
| Span_StructComparableComparer |         Incrementing |       3 |  29.099 ms | 0.3764 ms | 0.2722 ms |   1.84 |     0.02 |
|               Span_Comparison |         Incrementing |       3 |  34.624 ms | 0.4826 ms | 0.3490 ms |   2.19 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |   **8.952 ms** | **0.1841 ms** | **0.1331 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |   8.844 ms | 0.1109 ms | 0.0802 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |      10 |  13.318 ms | 0.1885 ms | 0.1363 ms |   1.49 |     0.03 |
|                         Span_ |         Incrementing |      10 |   2.588 ms | 0.0225 ms | 0.0162 ms |   0.29 |     0.00 |
|             Span_NullComparer |         Incrementing |      10 |   4.764 ms | 0.0650 ms | 0.0470 ms |   0.53 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  23.854 ms | 0.3883 ms | 0.2808 ms |   2.67 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      10 |  10.255 ms | 0.0956 ms | 0.0692 ms |   1.15 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |  14.936 ms | 0.2377 ms | 0.1719 ms |   1.67 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |   **8.839 ms** | **0.2954 ms** | **0.2136 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |   8.945 ms | 0.1314 ms | 0.0950 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |     100 |  28.237 ms | 0.5230 ms | 0.3781 ms |   3.20 |     0.09 |
|                         Span_ |         Incrementing |     100 |   5.646 ms | 0.2783 ms | 0.2012 ms |   0.64 |     0.03 |
|             Span_NullComparer |         Incrementing |     100 |   5.760 ms | 0.2444 ms | 0.1767 ms |   0.65 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  43.840 ms | 0.1046 ms | 0.0756 ms |   4.96 |     0.12 |
| Span_StructComparableComparer |         Incrementing |     100 |   6.895 ms | 0.1039 ms | 0.0751 ms |   0.78 |     0.02 |
|               Span_Comparison |         Incrementing |     100 |  25.481 ms | 0.4463 ms | 0.3227 ms |   2.88 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **15.928 ms** | **0.5431 ms** | **0.3927 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  15.646 ms | 1.2215 ms | 0.8832 ms |   0.98 |     0.06 |
| Array_ClassComparableComparer |         Incrementing |   10000 |  66.226 ms | 1.1270 ms | 0.8149 ms |   4.16 |     0.11 |
|                         Span_ |         Incrementing |   10000 |  13.589 ms | 0.4234 ms | 0.3061 ms |   0.85 |     0.03 |
|             Span_NullComparer |         Incrementing |   10000 |  13.843 ms | 0.4100 ms | 0.2965 ms |   0.87 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 103.653 ms | 1.6668 ms | 1.2052 ms |   6.51 |     0.17 |
| Span_StructComparableComparer |         Incrementing |   10000 |  14.970 ms | 0.7300 ms | 0.5279 ms |   0.94 |     0.04 |
|               Span_Comparison |         Incrementing |   10000 |  57.877 ms | 0.9306 ms | 0.6729 ms |   3.64 |     0.09 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **19.662 ms** | **0.4079 ms** | **0.2949 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  19.572 ms | 0.3940 ms | 0.2849 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing | 1000000 |  97.074 ms | 0.4208 ms | 0.3043 ms |   4.94 |     0.07 |
|                         Span_ |         Incrementing | 1000000 |  18.610 ms | 0.3822 ms | 0.2764 ms |   0.95 |     0.02 |
|             Span_NullComparer |         Incrementing | 1000000 |  18.727 ms | 0.3865 ms | 0.2795 ms |   0.95 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 155.576 ms | 1.2140 ms | 0.8778 ms |   7.91 |     0.12 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  20.376 ms | 0.6033 ms | 0.4362 ms |   1.04 |     0.03 |
|               Span_Comparison |         Incrementing | 1000000 |  81.372 ms | 1.2466 ms | 0.9014 ms |   4.14 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **18.113 ms** | **0.1642 ms** | **0.1187 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  18.002 ms | 0.2282 ms | 0.1650 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  31.197 ms | 0.3666 ms | 0.2651 ms |   1.72 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       2 |   6.549 ms | 0.0526 ms | 0.0380 ms |   0.36 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  18.449 ms | 0.0895 ms | 0.0647 ms |   1.02 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 |  84.413 ms | 0.8118 ms | 0.5870 ms |   4.66 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  41.876 ms | 0.1906 ms | 0.1378 ms |   2.31 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  49.253 ms | 0.6922 ms | 0.5005 ms |   2.72 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **15.673 ms** | **0.2093 ms** | **0.1513 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  15.734 ms | 0.0422 ms | 0.0305 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  26.082 ms | 0.1008 ms | 0.0729 ms |   1.66 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       3 |   4.781 ms | 0.0242 ms | 0.0175 ms |   0.31 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  12.913 ms | 0.1117 ms | 0.0808 ms |   0.82 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  59.675 ms | 0.1231 ms | 0.0890 ms |   3.81 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  29.130 ms | 0.1176 ms | 0.0850 ms |   1.86 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  34.771 ms | 0.1251 ms | 0.0905 ms |   2.22 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **13.916 ms** | **0.0836 ms** | **0.0605 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  13.838 ms | 0.0993 ms | 0.0718 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  21.977 ms | 0.1158 ms | 0.0837 ms |   1.58 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |      10 |   5.574 ms | 0.1799 ms | 0.1301 ms |   0.40 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |   7.748 ms | 0.0437 ms | 0.0316 ms |   0.56 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  37.442 ms | 1.0052 ms | 0.7269 ms |   2.69 |     0.05 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  12.723 ms | 0.1797 ms | 0.1299 ms |   0.91 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  21.879 ms | 0.3005 ms | 0.2173 ms |   1.57 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **16.758 ms** | **0.9505 ms** | **0.6873 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  17.247 ms | 2.1983 ms | 1.5895 ms |   1.03 |     0.10 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  53.272 ms | 2.3919 ms | 1.7295 ms |   3.18 |     0.15 |
|                         Span_ |  MedianOfThreeKiller |     100 |  11.325 ms | 0.4423 ms | 0.3198 ms |   0.68 |     0.03 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  11.580 ms | 0.2728 ms | 0.1973 ms |   0.69 |     0.03 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |  82.389 ms | 1.7002 ms | 1.2293 ms |   4.92 |     0.19 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  13.344 ms | 0.1532 ms | 0.1108 ms |   0.80 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  48.111 ms | 0.5225 ms | 0.3778 ms |   2.87 |     0.10 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **47.676 ms** | **0.4035 ms** | **0.2918 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  48.394 ms | 0.9952 ms | 0.7196 ms |   1.02 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 141.001 ms | 1.8122 ms | 1.3104 ms |   2.96 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  45.871 ms | 0.5376 ms | 0.3887 ms |   0.96 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  45.952 ms | 0.2824 ms | 0.2042 ms |   0.96 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 239.938 ms | 1.3358 ms | 0.9659 ms |   5.03 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  49.203 ms | 0.4479 ms | 0.3239 ms |   1.03 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 140.185 ms | 0.3757 ms | 0.2717 ms |   2.94 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** |  **73.641 ms** | **1.0901 ms** | **0.7882 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 |  74.301 ms | 0.9663 ms | 0.6987 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 280.606 ms | 3.1822 ms | 2.3009 ms |   3.81 |     0.05 |
|                         Span_ |  MedianOfThreeKiller | 1000000 |  72.956 ms | 1.9600 ms | 1.4172 ms |   0.99 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 |  72.929 ms | 1.9032 ms | 1.3761 ms |   0.99 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 417.519 ms | 7.2247 ms | 5.2239 ms |   5.67 |     0.09 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 |  83.621 ms | 1.7184 ms | 1.2425 ms |   1.14 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 235.699 ms | 1.5869 ms | 1.1474 ms |   3.20 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **19.404 ms** | **0.1351 ms** | **0.0977 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  19.042 ms | 0.0672 ms | 0.0486 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  32.474 ms | 0.6031 ms | 0.4361 ms |   1.67 |     0.02 |
|                         Span_ | PartialRandomShuffle |       2 |   7.858 ms | 0.0847 ms | 0.0612 ms |   0.40 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  19.654 ms | 0.0527 ms | 0.0381 ms |   1.01 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 |  84.636 ms | 1.5174 ms | 1.0971 ms |   4.36 |     0.06 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  43.265 ms | 0.5814 ms | 0.4204 ms |   2.23 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       2 |  49.448 ms | 1.2081 ms | 0.8736 ms |   2.55 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **16.875 ms** | **0.2460 ms** | **0.1779 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  16.903 ms | 0.2272 ms | 0.1643 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  28.057 ms | 0.4210 ms | 0.3044 ms |   1.66 |     0.02 |
|                         Span_ | PartialRandomShuffle |       3 |   6.558 ms | 0.1060 ms | 0.0766 ms |   0.39 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  14.539 ms | 0.2543 ms | 0.1838 ms |   0.86 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  61.370 ms | 1.5628 ms | 1.1300 ms |   3.64 |     0.07 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  30.714 ms | 0.3697 ms | 0.2673 ms |   1.82 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |       3 |  36.571 ms | 1.1887 ms | 0.8595 ms |   2.17 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **15.216 ms** | **0.1962 ms** | **0.1419 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  15.243 ms | 0.1631 ms | 0.1179 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  22.060 ms | 0.7478 ms | 0.5407 ms |   1.45 |     0.04 |
|                         Span_ | PartialRandomShuffle |      10 |   7.575 ms | 0.0983 ms | 0.0711 ms |   0.50 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |   9.860 ms | 0.0783 ms | 0.0566 ms |   0.65 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  33.789 ms | 0.5877 ms | 0.4250 ms |   2.22 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  15.429 ms | 0.3178 ms | 0.2298 ms |   1.01 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |      10 |  22.286 ms | 0.2553 ms | 0.1846 ms |   1.46 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **39.013 ms** | **0.4488 ms** | **0.3245 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  38.908 ms | 0.3642 ms | 0.2633 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |  65.770 ms | 1.5090 ms | 1.0911 ms |   1.69 |     0.03 |
|                         Span_ | PartialRandomShuffle |     100 |  31.102 ms | 0.5804 ms | 0.4197 ms |   0.80 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  30.824 ms | 0.4436 ms | 0.3207 ms |   0.79 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 |  86.756 ms | 1.4353 ms | 1.0378 ms |   2.22 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  32.468 ms | 0.2218 ms | 0.1604 ms |   0.83 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 |  58.671 ms | 0.3817 ms | 0.2760 ms |   1.50 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **60.425 ms** | **0.7550 ms** | **0.5459 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  60.445 ms | 1.2910 ms | 0.9335 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 121.063 ms | 2.4499 ms | 1.7714 ms |   2.00 |     0.03 |
|                         Span_ | PartialRandomShuffle |   10000 |  56.603 ms | 0.7867 ms | 0.5688 ms |   0.94 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  56.648 ms | 0.9097 ms | 0.6578 ms |   0.94 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 169.853 ms | 4.0457 ms | 2.9253 ms |   2.81 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |  58.236 ms | 1.1830 ms | 0.8554 ms |   0.96 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 116.725 ms | 1.9237 ms | 1.3909 ms |   1.93 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** |  **87.118 ms** | **1.2192 ms** | **0.8816 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 |  86.284 ms | 1.3584 ms | 0.9822 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 183.786 ms | 1.7739 ms | 1.2826 ms |   2.11 |     0.02 |
|                         Span_ | PartialRandomShuffle | 1000000 |  85.319 ms | 0.7652 ms | 0.5533 ms |   0.98 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 |  85.634 ms | 1.8336 ms | 1.3258 ms |   0.98 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 255.336 ms | 2.8350 ms | 2.0499 ms |   2.93 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 |  87.377 ms | 1.6493 ms | 1.1926 ms |   1.00 |     0.02 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 178.235 ms | 2.7900 ms | 2.0174 ms |   2.05 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **21.691 ms** | **0.1448 ms** | **0.1047 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  21.423 ms | 0.1847 ms | 0.1336 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |       2 |  34.461 ms | 0.2783 ms | 0.2012 ms |   1.59 |     0.01 |
|                         Span_ |               Random |       2 |   9.955 ms | 0.0814 ms | 0.0589 ms |   0.46 |     0.00 |
|             Span_NullComparer |               Random |       2 |  21.444 ms | 0.2757 ms | 0.1994 ms |   0.99 |     0.01 |
|  Span_ClassComparableComparer |               Random |       2 |  87.979 ms | 0.9819 ms | 0.7100 ms |   4.06 |     0.04 |
| Span_StructComparableComparer |               Random |       2 |  46.067 ms | 0.7036 ms | 0.5087 ms |   2.12 |     0.02 |
|               Span_Comparison |               Random |       2 |  55.081 ms | 0.9310 ms | 0.6732 ms |   2.54 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **19.377 ms** | **0.1256 ms** | **0.0908 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  19.300 ms | 0.0744 ms | 0.0538 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |  32.272 ms | 0.4635 ms | 0.3351 ms |   1.67 |     0.02 |
|                         Span_ |               Random |       3 |  10.260 ms | 0.4243 ms | 0.3068 ms |   0.53 |     0.02 |
|             Span_NullComparer |               Random |       3 |  17.959 ms | 0.1036 ms | 0.0749 ms |   0.93 |     0.01 |
|  Span_ClassComparableComparer |               Random |       3 |  65.401 ms | 1.0427 ms | 0.7539 ms |   3.38 |     0.04 |
| Span_StructComparableComparer |               Random |       3 |  34.258 ms | 0.4573 ms | 0.3307 ms |   1.77 |     0.02 |
|               Span_Comparison |               Random |       3 |  40.580 ms | 0.5264 ms | 0.3806 ms |   2.09 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **26.206 ms** | **0.6611 ms** | **0.4780 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  26.314 ms | 0.4335 ms | 0.3134 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random |      10 |  37.272 ms | 0.8799 ms | 0.6362 ms |   1.42 |     0.03 |
|                         Span_ |               Random |      10 |  17.324 ms | 0.3817 ms | 0.2760 ms |   0.66 |     0.02 |
|             Span_NullComparer |               Random |      10 |  19.635 ms | 0.0588 ms | 0.0425 ms |   0.75 |     0.01 |
|  Span_ClassComparableComparer |               Random |      10 |  53.707 ms | 0.1114 ms | 0.0806 ms |   2.05 |     0.04 |
| Span_StructComparableComparer |               Random |      10 |  24.782 ms | 0.3887 ms | 0.2811 ms |   0.95 |     0.02 |
|               Span_Comparison |               Random |      10 |  35.328 ms | 0.6899 ms | 0.4989 ms |   1.35 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **47.795 ms** | **0.4281 ms** | **0.3095 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  48.044 ms | 0.2141 ms | 0.1548 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |               Random |     100 |  77.498 ms | 1.9985 ms | 1.4450 ms |   1.62 |     0.03 |
|                         Span_ |               Random |     100 |  41.502 ms | 1.2932 ms | 0.9351 ms |   0.87 |     0.02 |
|             Span_NullComparer |               Random |     100 |  41.502 ms | 0.2151 ms | 0.1555 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer |               Random |     100 |  99.669 ms | 1.0168 ms | 0.7352 ms |   2.09 |     0.02 |
| Span_StructComparableComparer |               Random |     100 |  42.476 ms | 0.4159 ms | 0.3008 ms |   0.89 |     0.01 |
|               Span_Comparison |               Random |     100 |  70.456 ms | 0.8763 ms | 0.6336 ms |   1.47 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** |  **87.776 ms** | **0.4705 ms** | **0.3402 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 |  87.661 ms | 0.4848 ms | 0.3505 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   10000 | 153.251 ms | 3.7959 ms | 2.7447 ms |   1.75 |     0.03 |
|                         Span_ |               Random |   10000 |  84.399 ms | 0.8821 ms | 0.6378 ms |   0.96 |     0.01 |
|             Span_NullComparer |               Random |   10000 |  84.474 ms | 0.5328 ms | 0.3852 ms |   0.96 |     0.01 |
|  Span_ClassComparableComparer |               Random |   10000 | 202.824 ms | 3.4863 ms | 2.5208 ms |   2.31 |     0.03 |
| Span_StructComparableComparer |               Random |   10000 |  87.146 ms | 1.0877 ms | 0.7865 ms |   0.99 |     0.01 |
|               Span_Comparison |               Random |   10000 | 148.111 ms | 1.3672 ms | 0.9886 ms |   1.69 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **126.979 ms** | **1.4529 ms** | **1.0505 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 126.939 ms | 1.2058 ms | 0.8719 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random | 1000000 | 231.165 ms | 1.7272 ms | 1.2489 ms |   1.82 |     0.02 |
|                         Span_ |               Random | 1000000 | 125.478 ms | 2.1329 ms | 1.5422 ms |   0.99 |     0.01 |
|             Span_NullComparer |               Random | 1000000 | 125.568 ms | 1.4335 ms | 1.0365 ms |   0.99 |     0.01 |
|  Span_ClassComparableComparer |               Random | 1000000 | 311.372 ms | 4.4240 ms | 3.1988 ms |   2.45 |     0.03 |
| Span_StructComparableComparer |               Random | 1000000 | 130.743 ms | 1.1591 ms | 0.8381 ms |   1.03 |     0.01 |
|               Span_Comparison |               Random | 1000000 | 232.346 ms | 9.8037 ms | 7.0887 ms |   1.83 |     0.06 |
