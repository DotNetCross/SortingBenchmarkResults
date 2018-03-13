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
|                        Method |               Filler |  Length |       Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |-------- |-----------:|----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |       **2** |  **25.226 ms** | **0.1851 ms** | **0.1338 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  25.617 ms | 0.1456 ms | 0.1053 ms |   1.02 |     0.01 |
| Array_ClassComparableComparer |             Constant |       2 |  33.215 ms | 0.1769 ms | 0.1279 ms |   1.32 |     0.01 |
|                         Span_ |             Constant |       2 |  11.981 ms | 0.3052 ms | 0.2207 ms |   0.47 |     0.01 |
|             Span_NullComparer |             Constant |       2 |  23.504 ms | 0.0348 ms | 0.0252 ms |   0.93 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       2 |  84.405 ms | 0.1208 ms | 0.0874 ms |   3.35 |     0.02 |
| Span_StructComparableComparer |             Constant |       2 |  45.047 ms | 0.1578 ms | 0.1141 ms |   1.79 |     0.01 |
|               Span_Comparison |             Constant |       2 |  16.004 ms | 0.0477 ms | 0.0345 ms |   0.63 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **20.868 ms** | **0.0490 ms** | **0.0354 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  20.929 ms | 0.0839 ms | 0.0607 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |       3 |  29.739 ms | 0.0752 ms | 0.0544 ms |   1.43 |     0.00 |
|                         Span_ |             Constant |       3 |   8.933 ms | 0.0779 ms | 0.0563 ms |   0.43 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  16.787 ms | 0.0995 ms | 0.0720 ms |   0.80 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  58.134 ms | 0.3381 ms | 0.2445 ms |   2.79 |     0.01 |
| Span_StructComparableComparer |             Constant |       3 |  33.174 ms | 0.0872 ms | 0.0630 ms |   1.59 |     0.00 |
|               Span_Comparison |             Constant |       3 |  17.060 ms | 0.1428 ms | 0.1033 ms |   0.82 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **12.657 ms** | **0.1023 ms** | **0.0740 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  12.590 ms | 0.0854 ms | 0.0618 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant |      10 |  14.857 ms | 0.1601 ms | 0.1157 ms |   1.17 |     0.01 |
|                         Span_ |             Constant |      10 |   4.760 ms | 0.0319 ms | 0.0231 ms |   0.38 |     0.00 |
|             Span_NullComparer |             Constant |      10 |   7.047 ms | 0.0765 ms | 0.0553 ms |   0.56 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  21.033 ms | 0.0565 ms | 0.0409 ms |   1.66 |     0.01 |
| Span_StructComparableComparer |             Constant |      10 |  12.980 ms | 0.0520 ms | 0.0376 ms |   1.03 |     0.01 |
|               Span_Comparison |             Constant |      10 |   8.965 ms | 0.0941 ms | 0.0681 ms |   0.71 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **15.362 ms** | **0.2593 ms** | **0.1875 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  15.418 ms | 0.1835 ms | 0.1327 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |     100 |  43.870 ms | 0.1283 ms | 0.0928 ms |   2.86 |     0.03 |
|                         Span_ |             Constant |     100 |   8.778 ms | 0.2226 ms | 0.1610 ms |   0.57 |     0.01 |
|             Span_NullComparer |             Constant |     100 |   8.925 ms | 0.1499 ms | 0.1084 ms |   0.58 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     100 |  37.056 ms | 0.0413 ms | 0.0299 ms |   2.41 |     0.03 |
| Span_StructComparableComparer |             Constant |     100 |  22.630 ms | 0.1955 ms | 0.1414 ms |   1.47 |     0.02 |
|               Span_Comparison |             Constant |     100 |  33.828 ms | 0.1204 ms | 0.0871 ms |   2.20 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **28.247 ms** | **0.2729 ms** | **0.1973 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  28.361 ms | 0.3251 ms | 0.2351 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   10000 | 113.317 ms | 0.3270 ms | 0.2365 ms |   4.01 |     0.03 |
|                         Span_ |             Constant |   10000 |  20.519 ms | 0.1260 ms | 0.0911 ms |   0.73 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  20.551 ms | 0.1294 ms | 0.0936 ms |   0.73 |     0.01 |
|  Span_ClassComparableComparer |             Constant |   10000 |  90.749 ms | 0.4166 ms | 0.3012 ms |   3.21 |     0.02 |
| Span_StructComparableComparer |             Constant |   10000 |  55.356 ms | 0.2201 ms | 0.1592 ms |   1.96 |     0.01 |
|               Span_Comparison |             Constant |   10000 |  85.880 ms | 0.1586 ms | 0.1147 ms |   3.04 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **39.399 ms** | **0.1846 ms** | **0.1335 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  39.470 ms | 0.2814 ms | 0.2035 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 172.345 ms | 0.1982 ms | 0.1433 ms |   4.37 |     0.01 |
|                         Span_ |             Constant | 1000000 |  30.329 ms | 0.0457 ms | 0.0330 ms |   0.77 |     0.00 |
|             Span_NullComparer |             Constant | 1000000 |  30.358 ms | 0.1301 ms | 0.0940 ms |   0.77 |     0.00 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 135.793 ms | 0.2534 ms | 0.1832 ms |   3.45 |     0.01 |
| Span_StructComparableComparer |             Constant | 1000000 |  83.076 ms | 0.2036 ms | 0.1472 ms |   2.11 |     0.01 |
|               Span_Comparison |             Constant | 1000000 | 127.188 ms | 0.0993 ms | 0.0718 ms |   3.23 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **25.209 ms** | **0.1286 ms** | **0.0930 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  25.457 ms | 0.1539 ms | 0.1113 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       2 |  33.579 ms | 0.7934 ms | 0.5737 ms |   1.33 |     0.02 |
|                         Span_ |         Decrementing |       2 |  12.663 ms | 0.1523 ms | 0.1101 ms |   0.50 |     0.00 |
|             Span_NullComparer |         Decrementing |       2 |  24.501 ms | 0.0824 ms | 0.0596 ms |   0.97 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       2 |  82.614 ms | 0.1439 ms | 0.1040 ms |   3.28 |     0.01 |
| Span_StructComparableComparer |         Decrementing |       2 |  45.512 ms | 0.1235 ms | 0.0893 ms |   1.81 |     0.01 |
|               Span_Comparison |         Decrementing |       2 |  16.550 ms | 0.0588 ms | 0.0425 ms |   0.66 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **21.040 ms** | **0.0920 ms** | **0.0665 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  20.860 ms | 0.1124 ms | 0.0812 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       3 |  30.431 ms | 0.1143 ms | 0.0827 ms |   1.45 |     0.01 |
|                         Span_ |         Decrementing |       3 |  10.370 ms | 0.1185 ms | 0.0857 ms |   0.49 |     0.00 |
|             Span_NullComparer |         Decrementing |       3 |  18.130 ms | 0.1508 ms | 0.1091 ms |   0.86 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  59.664 ms | 0.1929 ms | 0.1395 ms |   2.84 |     0.01 |
| Span_StructComparableComparer |         Decrementing |       3 |  35.735 ms | 0.0922 ms | 0.0667 ms |   1.70 |     0.01 |
|               Span_Comparison |         Decrementing |       3 |  17.773 ms | 0.0629 ms | 0.0455 ms |   0.84 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **18.791 ms** | **0.3742 ms** | **0.2706 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  18.575 ms | 0.1101 ms | 0.0796 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |  48.542 ms | 0.1619 ms | 0.1170 ms |   2.58 |     0.04 |
|                         Span_ |         Decrementing |      10 |  14.236 ms | 0.0236 ms | 0.0170 ms |   0.76 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  16.533 ms | 0.0491 ms | 0.0355 ms |   0.88 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  47.867 ms | 0.1306 ms | 0.0944 ms |   2.55 |     0.03 |
| Span_StructComparableComparer |         Decrementing |      10 |  27.374 ms | 0.5913 ms | 0.4276 ms |   1.46 |     0.03 |
|               Span_Comparison |         Decrementing |      10 |  35.598 ms | 0.0298 ms | 0.0216 ms |   1.89 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **15.836 ms** | **0.1584 ms** | **0.1146 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  15.832 ms | 0.2415 ms | 0.1746 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |     100 |  56.500 ms | 0.0886 ms | 0.0641 ms |   3.57 |     0.02 |
|                         Span_ |         Decrementing |     100 |  10.390 ms | 1.1684 ms | 0.8448 ms |   0.66 |     0.05 |
|             Span_NullComparer |         Decrementing |     100 |  10.733 ms | 1.3661 ms | 0.9878 ms |   0.68 |     0.06 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  50.572 ms | 0.1035 ms | 0.0748 ms |   3.19 |     0.02 |
| Span_StructComparableComparer |         Decrementing |     100 |  28.437 ms | 0.9408 ms | 0.6802 ms |   1.80 |     0.04 |
|               Span_Comparison |         Decrementing |     100 |  44.919 ms | 0.2043 ms | 0.1477 ms |   2.84 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **26.793 ms** | **0.6123 ms** | **0.4428 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  26.920 ms | 0.3583 ms | 0.2590 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 148.011 ms | 0.5937 ms | 0.4293 ms |   5.53 |     0.09 |
|                         Span_ |         Decrementing |   10000 |  21.342 ms | 0.1333 ms | 0.0964 ms |   0.80 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |  21.391 ms | 0.1180 ms | 0.0853 ms |   0.80 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 130.051 ms | 0.6434 ms | 0.4652 ms |   4.86 |     0.08 |
| Span_StructComparableComparer |         Decrementing |   10000 |  73.744 ms | 0.1096 ms | 0.0792 ms |   2.75 |     0.04 |
|               Span_Comparison |         Decrementing |   10000 | 112.005 ms | 0.2934 ms | 0.2121 ms |   4.18 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **39.450 ms** | **0.9652 ms** | **0.6979 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  39.353 ms | 0.8071 ms | 0.5836 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 245.080 ms | 0.6835 ms | 0.4942 ms |   6.21 |     0.10 |
|                         Span_ |         Decrementing | 1000000 |  32.396 ms | 0.8699 ms | 0.6290 ms |   0.82 |     0.02 |
|             Span_NullComparer |         Decrementing | 1000000 |  32.227 ms | 0.1767 ms | 0.1277 ms |   0.82 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 212.410 ms | 0.3997 ms | 0.2890 ms |   5.39 |     0.09 |
| Span_StructComparableComparer |         Decrementing | 1000000 | 122.416 ms | 0.8023 ms | 0.5801 ms |   3.10 |     0.05 |
|               Span_Comparison |         Decrementing | 1000000 | 185.837 ms | 0.6648 ms | 0.4807 ms |   4.71 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **25.134 ms** | **0.2707 ms** | **0.1957 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  25.101 ms | 0.0371 ms | 0.0269 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |       2 |  33.145 ms | 1.4226 ms | 1.0286 ms |   1.32 |     0.04 |
|                         Span_ |         Incrementing |       2 |  11.918 ms | 0.0728 ms | 0.0526 ms |   0.47 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  23.520 ms | 0.0468 ms | 0.0339 ms |   0.94 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       2 |  82.100 ms | 0.0804 ms | 0.0581 ms |   3.27 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       2 |  44.652 ms | 0.3209 ms | 0.2320 ms |   1.78 |     0.02 |
|               Span_Comparison |         Incrementing |       2 |  15.540 ms | 0.0436 ms | 0.0316 ms |   0.62 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **20.831 ms** | **0.0526 ms** | **0.0380 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  20.939 ms | 0.0931 ms | 0.0673 ms |   1.01 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       3 |  29.094 ms | 0.1611 ms | 0.1165 ms |   1.40 |     0.01 |
|                         Span_ |         Incrementing |       3 |   8.849 ms | 0.0573 ms | 0.0415 ms |   0.42 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  16.773 ms | 0.0657 ms | 0.0475 ms |   0.81 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  57.439 ms | 0.2067 ms | 0.1495 ms |   2.76 |     0.01 |
| Span_StructComparableComparer |         Incrementing |       3 |  31.951 ms | 0.0523 ms | 0.0378 ms |   1.53 |     0.00 |
|               Span_Comparison |         Incrementing |       3 |  16.070 ms | 0.0531 ms | 0.0384 ms |   0.77 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **12.701 ms** | **0.2746 ms** | **0.1986 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  12.576 ms | 0.1089 ms | 0.0787 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |      10 |  14.462 ms | 0.1406 ms | 0.1016 ms |   1.14 |     0.02 |
|                         Span_ |         Incrementing |      10 |   4.806 ms | 0.1874 ms | 0.1355 ms |   0.38 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |   7.098 ms | 0.2056 ms | 0.1486 ms |   0.56 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  20.705 ms | 0.7526 ms | 0.5442 ms |   1.63 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      10 |  12.591 ms | 0.1208 ms | 0.0874 ms |   0.99 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |   8.569 ms | 0.0801 ms | 0.0579 ms |   0.67 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |  **11.291 ms** | **0.2840 ms** | **0.2054 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |  11.402 ms | 0.4877 ms | 0.3527 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |     100 |  37.656 ms | 0.1026 ms | 0.0742 ms |   3.34 |     0.06 |
|                         Span_ |         Incrementing |     100 |   6.622 ms | 0.1978 ms | 0.1430 ms |   0.59 |     0.02 |
|             Span_NullComparer |         Incrementing |     100 |   6.569 ms | 0.1633 ms | 0.1181 ms |   0.58 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  34.414 ms | 0.0278 ms | 0.0201 ms |   3.05 |     0.05 |
| Span_StructComparableComparer |         Incrementing |     100 |  18.433 ms | 0.1544 ms | 0.1116 ms |   1.63 |     0.03 |
|               Span_Comparison |         Incrementing |     100 |  29.486 ms | 0.0892 ms | 0.0645 ms |   2.61 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **19.772 ms** | **0.5891 ms** | **0.4260 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  20.397 ms | 1.1623 ms | 0.8404 ms |   1.03 |     0.05 |
| Array_ClassComparableComparer |         Incrementing |   10000 |  90.527 ms | 0.3062 ms | 0.2214 ms |   4.58 |     0.09 |
|                         Span_ |         Incrementing |   10000 |  13.857 ms | 0.5743 ms | 0.4153 ms |   0.70 |     0.02 |
|             Span_NullComparer |         Incrementing |   10000 |  14.015 ms | 1.1478 ms | 0.8299 ms |   0.71 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |   10000 |  83.032 ms | 0.2041 ms | 0.1476 ms |   4.20 |     0.08 |
| Span_StructComparableComparer |         Incrementing |   10000 |  44.445 ms | 0.1442 ms | 0.1043 ms |   2.25 |     0.05 |
|               Span_Comparison |         Incrementing |   10000 |  74.327 ms | 0.1293 ms | 0.0935 ms |   3.76 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **23.896 ms** | **0.3181 ms** | **0.2300 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  24.175 ms | 1.2193 ms | 0.8816 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 132.440 ms | 0.9869 ms | 0.7136 ms |   5.54 |     0.06 |
|                         Span_ |         Incrementing | 1000000 |  18.243 ms | 0.2580 ms | 0.1865 ms |   0.76 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |  18.328 ms | 0.2908 ms | 0.2102 ms |   0.77 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 119.578 ms | 0.3042 ms | 0.2200 ms |   5.00 |     0.05 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  63.280 ms | 0.2169 ms | 0.1568 ms |   2.65 |     0.03 |
|               Span_Comparison |         Incrementing | 1000000 | 107.655 ms | 0.2698 ms | 0.1951 ms |   4.51 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **25.137 ms** | **0.0754 ms** | **0.0545 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  25.105 ms | 0.1200 ms | 0.0867 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  32.808 ms | 0.2027 ms | 0.1466 ms |   1.31 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       2 |  11.921 ms | 0.0728 ms | 0.0526 ms |   0.47 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  23.467 ms | 0.0782 ms | 0.0565 ms |   0.93 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 |  82.164 ms | 0.2365 ms | 0.1710 ms |   3.27 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  44.629 ms | 0.3388 ms | 0.2450 ms |   1.78 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  15.555 ms | 0.0874 ms | 0.0632 ms |   0.62 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **21.047 ms** | **0.1401 ms** | **0.1013 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  20.951 ms | 0.0775 ms | 0.0560 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  29.081 ms | 0.1307 ms | 0.0945 ms |   1.38 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       3 |   8.891 ms | 0.0708 ms | 0.0512 ms |   0.42 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  16.834 ms | 0.1202 ms | 0.0869 ms |   0.80 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  57.494 ms | 0.3272 ms | 0.2366 ms |   2.73 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  31.938 ms | 0.0527 ms | 0.0381 ms |   1.52 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  16.027 ms | 0.0886 ms | 0.0640 ms |   0.76 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **14.577 ms** | **0.2863 ms** | **0.2070 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  14.441 ms | 0.1038 ms | 0.0750 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  26.007 ms | 0.1304 ms | 0.0943 ms |   1.78 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |      10 |   7.968 ms | 0.1596 ms | 0.1154 ms |   0.55 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |  10.292 ms | 0.1044 ms | 0.0755 ms |   0.71 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  30.815 ms | 0.0488 ms | 0.0353 ms |   2.11 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  17.951 ms | 0.0840 ms | 0.0608 ms |   1.23 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  18.242 ms | 0.9311 ms | 0.6732 ms |   1.25 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **17.462 ms** | **0.1725 ms** | **0.1247 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  17.710 ms | 0.8733 ms | 0.6315 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  72.069 ms | 0.1818 ms | 0.1314 ms |   4.13 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |     100 |  12.133 ms | 0.1145 ms | 0.0828 ms |   0.69 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  12.594 ms | 0.5510 ms | 0.3984 ms |   0.72 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |  66.152 ms | 0.6235 ms | 0.4508 ms |   3.79 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  33.825 ms | 0.4620 ms | 0.3341 ms |   1.94 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  59.262 ms | 0.1631 ms | 0.1179 ms |   3.39 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **55.146 ms** | **0.4016 ms** | **0.2904 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  55.159 ms | 0.1338 ms | 0.0968 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 192.807 ms | 0.7142 ms | 0.5164 ms |   3.50 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  47.626 ms | 0.0971 ms | 0.0702 ms |   0.86 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  47.723 ms | 0.1859 ms | 0.1344 ms |   0.87 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 193.480 ms | 0.5901 ms | 0.4267 ms |   3.51 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 | 112.190 ms | 0.1621 ms | 0.1172 ms |   2.03 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 177.016 ms | 0.2688 ms | 0.1943 ms |   3.21 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** |  **86.595 ms** | **0.5495 ms** | **0.3973 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 |  86.616 ms | 0.3797 ms | 0.2746 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 376.868 ms | 1.1312 ms | 0.8179 ms |   4.35 |     0.02 |
|                         Span_ |  MedianOfThreeKiller | 1000000 |  81.509 ms | 0.1597 ms | 0.1155 ms |   0.94 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 |  81.560 ms | 0.3179 ms | 0.2299 ms |   0.94 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 325.300 ms | 0.3437 ms | 0.2485 ms |   3.76 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 191.063 ms | 0.1877 ms | 0.1357 ms |   2.21 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 301.695 ms | 0.5753 ms | 0.4159 ms |   3.48 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **26.189 ms** | **0.0575 ms** | **0.0416 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  26.325 ms | 0.0496 ms | 0.0359 ms |   1.01 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  34.201 ms | 0.0491 ms | 0.0355 ms |   1.31 |     0.00 |
|                         Span_ | PartialRandomShuffle |       2 |  13.132 ms | 0.0594 ms | 0.0430 ms |   0.50 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  24.815 ms | 0.0228 ms | 0.0165 ms |   0.95 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 |  83.346 ms | 0.1419 ms | 0.1026 ms |   3.18 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  46.292 ms | 0.2414 ms | 0.1745 ms |   1.77 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       2 |  17.243 ms | 0.0687 ms | 0.0497 ms |   0.66 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **22.382 ms** | **0.0909 ms** | **0.0657 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  22.287 ms | 0.1064 ms | 0.0769 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  31.459 ms | 0.0795 ms | 0.0575 ms |   1.41 |     0.00 |
|                         Span_ | PartialRandomShuffle |       3 |  10.714 ms | 0.1005 ms | 0.0727 ms |   0.48 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  18.743 ms | 0.0858 ms | 0.0621 ms |   0.84 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  59.539 ms | 0.1733 ms | 0.1253 ms |   2.66 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  34.815 ms | 0.0376 ms | 0.0272 ms |   1.56 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |       3 |  18.865 ms | 0.1587 ms | 0.1148 ms |   0.84 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **16.079 ms** | **0.4980 ms** | **0.3601 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  15.943 ms | 0.1304 ms | 0.0943 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  25.266 ms | 0.1252 ms | 0.0905 ms |   1.57 |     0.03 |
|                         Span_ | PartialRandomShuffle |      10 |  10.027 ms | 0.0359 ms | 0.0259 ms |   0.62 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  12.599 ms | 0.0692 ms | 0.0500 ms |   0.78 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  30.597 ms | 0.1106 ms | 0.0799 ms |   1.90 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  19.845 ms | 0.0637 ms | 0.0460 ms |   1.23 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |      10 |  18.315 ms | 0.1225 ms | 0.0886 ms |   1.14 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **38.063 ms** | **0.1406 ms** | **0.1016 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  38.148 ms | 0.0609 ms | 0.0440 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |  85.288 ms | 0.0486 ms | 0.0351 ms |   2.24 |     0.01 |
|                         Span_ | PartialRandomShuffle |     100 |  34.406 ms | 0.0290 ms | 0.0210 ms |   0.90 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  34.755 ms | 0.2449 ms | 0.1771 ms |   0.91 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 |  78.390 ms | 0.0750 ms | 0.0542 ms |   2.06 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  53.536 ms | 0.1059 ms | 0.0766 ms |   1.41 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |     100 |  71.977 ms | 0.1259 ms | 0.0910 ms |   1.89 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **65.320 ms** | **0.1866 ms** | **0.1349 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  65.268 ms | 0.1655 ms | 0.1197 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 170.939 ms | 0.0850 ms | 0.0614 ms |   2.62 |     0.01 |
|                         Span_ | PartialRandomShuffle |   10000 |  60.253 ms | 0.1224 ms | 0.0885 ms |   0.92 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  60.436 ms | 0.3406 ms | 0.2463 ms |   0.93 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 157.088 ms | 0.4135 ms | 0.2990 ms |   2.40 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 | 103.443 ms | 0.1399 ms | 0.1011 ms |   1.58 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 142.502 ms | 0.0904 ms | 0.0654 ms |   2.18 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** |  **95.563 ms** | **0.2701 ms** | **0.1953 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 |  95.378 ms | 0.3719 ms | 0.2689 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 259.684 ms | 0.3982 ms | 0.2879 ms |   2.72 |     0.01 |
|                         Span_ | PartialRandomShuffle | 1000000 |  89.278 ms | 0.2504 ms | 0.1810 ms |   0.93 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 |  89.159 ms | 0.1824 ms | 0.1319 ms |   0.93 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 237.497 ms | 0.2144 ms | 0.1551 ms |   2.49 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 156.631 ms | 0.1168 ms | 0.0845 ms |   1.64 |     0.00 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 216.233 ms | 0.1546 ms | 0.1118 ms |   2.26 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **28.394 ms** | **0.0608 ms** | **0.0439 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  28.380 ms | 0.0472 ms | 0.0342 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |       2 |  36.693 ms | 0.1180 ms | 0.0853 ms |   1.29 |     0.00 |
|                         Span_ |               Random |       2 |  15.400 ms | 0.0961 ms | 0.0695 ms |   0.54 |     0.00 |
|             Span_NullComparer |               Random |       2 |  27.347 ms | 0.0660 ms | 0.0477 ms |   0.96 |     0.00 |
|  Span_ClassComparableComparer |               Random |       2 |  86.081 ms | 0.9396 ms | 0.6794 ms |   3.03 |     0.02 |
| Span_StructComparableComparer |               Random |       2 |  49.550 ms | 0.3013 ms | 0.2178 ms |   1.75 |     0.01 |
|               Span_Comparison |               Random |       2 |  20.383 ms | 0.0961 ms | 0.0695 ms |   0.72 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **25.319 ms** | **0.0528 ms** | **0.0382 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  25.126 ms | 0.0498 ms | 0.0360 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |               Random |       3 |  35.748 ms | 0.4349 ms | 0.3145 ms |   1.41 |     0.01 |
|                         Span_ |               Random |       3 |  14.749 ms | 0.0590 ms | 0.0427 ms |   0.58 |     0.00 |
|             Span_NullComparer |               Random |       3 |  22.849 ms | 0.1239 ms | 0.0896 ms |   0.90 |     0.00 |
|  Span_ClassComparableComparer |               Random |       3 |  63.960 ms | 0.2668 ms | 0.1929 ms |   2.53 |     0.01 |
| Span_StructComparableComparer |               Random |       3 |  40.082 ms | 0.0658 ms | 0.0476 ms |   1.58 |     0.00 |
|               Span_Comparison |               Random |       3 |  24.059 ms | 0.0983 ms | 0.0710 ms |   0.95 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **25.414 ms** | **0.0354 ms** | **0.0256 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  25.331 ms | 0.0250 ms | 0.0181 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |      10 |  46.542 ms | 0.2048 ms | 0.1481 ms |   1.83 |     0.01 |
|                         Span_ |               Random |      10 |  21.062 ms | 0.0704 ms | 0.0509 ms |   0.83 |     0.00 |
|             Span_NullComparer |               Random |      10 |  23.568 ms | 0.0885 ms | 0.0640 ms |   0.93 |     0.00 |
|  Span_ClassComparableComparer |               Random |      10 |  49.381 ms | 0.1249 ms | 0.0903 ms |   1.94 |     0.00 |
| Span_StructComparableComparer |               Random |      10 |  34.163 ms | 0.0585 ms | 0.0423 ms |   1.34 |     0.00 |
|               Span_Comparison |               Random |      10 |  37.224 ms | 0.0565 ms | 0.0408 ms |   1.46 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **49.103 ms** | **0.1749 ms** | **0.1265 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  49.311 ms | 0.1460 ms | 0.1056 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |     100 | 102.855 ms | 0.1638 ms | 0.1185 ms |   2.09 |     0.01 |
|                         Span_ |               Random |     100 |  45.586 ms | 0.0354 ms | 0.0256 ms |   0.93 |     0.00 |
|             Span_NullComparer |               Random |     100 |  45.820 ms | 0.0508 ms | 0.0367 ms |   0.93 |     0.00 |
|  Span_ClassComparableComparer |               Random |     100 |  94.144 ms | 0.1643 ms | 0.1188 ms |   1.92 |     0.01 |
| Span_StructComparableComparer |               Random |     100 |  67.342 ms | 0.1010 ms | 0.0730 ms |   1.37 |     0.00 |
|               Span_Comparison |               Random |     100 |  87.925 ms | 0.2222 ms | 0.1607 ms |   1.79 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** |  **94.935 ms** | **0.1602 ms** | **0.1159 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 |  95.022 ms | 0.4360 ms | 0.3152 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |   10000 | 217.391 ms | 0.1761 ms | 0.1273 ms |   2.29 |     0.00 |
|                         Span_ |               Random |   10000 |  90.477 ms | 0.0497 ms | 0.0359 ms |   0.95 |     0.00 |
|             Span_NullComparer |               Random |   10000 |  90.628 ms | 0.2799 ms | 0.2024 ms |   0.95 |     0.00 |
|  Span_ClassComparableComparer |               Random |   10000 | 200.586 ms | 0.3147 ms | 0.2276 ms |   2.11 |     0.00 |
| Span_StructComparableComparer |               Random |   10000 | 141.628 ms | 0.2499 ms | 0.1807 ms |   1.49 |     0.00 |
|               Span_Comparison |               Random |   10000 | 184.025 ms | 0.1841 ms | 0.1331 ms |   1.94 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **139.312 ms** | **0.2582 ms** | **0.1867 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 139.208 ms | 0.3211 ms | 0.2322 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 | 335.174 ms | 1.4231 ms | 1.0290 ms |   2.41 |     0.01 |
|                         Span_ |               Random | 1000000 | 133.970 ms | 0.1298 ms | 0.0938 ms |   0.96 |     0.00 |
|             Span_NullComparer |               Random | 1000000 | 133.799 ms | 0.1501 ms | 0.1085 ms |   0.96 |     0.00 |
|  Span_ClassComparableComparer |               Random | 1000000 | 308.866 ms | 0.3125 ms | 0.2260 ms |   2.22 |     0.00 |
| Span_StructComparableComparer |               Random | 1000000 | 215.471 ms | 0.2990 ms | 0.2162 ms |   1.55 |     0.00 |
|               Span_Comparison |               Random | 1000000 | 283.580 ms | 0.1531 ms | 0.1107 ms |   2.04 |     0.00 |
