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
|                        **Array_** |             **Constant** |       **2** |  **25.228 ms** | **0.0672 ms** | **0.0486 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  25.217 ms | 0.1639 ms | 0.1185 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |       2 | 147.844 ms | 0.1872 ms | 0.1353 ms |   5.86 |     0.01 |
|                         Span_ |             Constant |       2 |  10.402 ms | 0.0877 ms | 0.0634 ms |   0.41 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  26.990 ms | 0.0670 ms | 0.0484 ms |   1.07 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       2 | 114.985 ms | 0.1409 ms | 0.1019 ms |   4.56 |     0.01 |
| Span_StructComparableComparer |             Constant |       2 |  61.026 ms | 0.1571 ms | 0.1136 ms |   2.42 |     0.01 |
|               Span_Comparison |             Constant |       2 |  21.097 ms | 0.3435 ms | 0.2483 ms |   0.84 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **22.691 ms** | **0.0427 ms** | **0.0308 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  22.694 ms | 0.0565 ms | 0.0409 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |       3 | 108.835 ms | 0.5207 ms | 0.3765 ms |   4.80 |     0.02 |
|                         Span_ |             Constant |       3 |   7.641 ms | 0.1099 ms | 0.0794 ms |   0.34 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  18.816 ms | 0.0805 ms | 0.0582 ms |   0.83 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  75.916 ms | 0.0940 ms | 0.0680 ms |   3.35 |     0.01 |
| Span_StructComparableComparer |             Constant |       3 |  41.590 ms | 0.0520 ms | 0.0376 ms |   1.83 |     0.00 |
|               Span_Comparison |             Constant |       3 |  22.326 ms | 0.0501 ms | 0.0362 ms |   0.98 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **12.186 ms** | **0.0640 ms** | **0.0463 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  12.179 ms | 0.0477 ms | 0.0345 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |      10 |  38.699 ms | 0.3441 ms | 0.2488 ms |   3.18 |     0.02 |
|                         Span_ |             Constant |      10 |   4.346 ms | 0.1017 ms | 0.0735 ms |   0.36 |     0.01 |
|             Span_NullComparer |             Constant |      10 |   7.677 ms | 0.0779 ms | 0.0563 ms |   0.63 |     0.00 |
|  Span_ClassComparableComparer |             Constant |      10 |  27.770 ms | 0.0980 ms | 0.0709 ms |   2.28 |     0.01 |
| Span_StructComparableComparer |             Constant |      10 |  13.972 ms | 0.0914 ms | 0.0661 ms |   1.15 |     0.01 |
|               Span_Comparison |             Constant |      10 |  11.844 ms | 0.1306 ms | 0.0944 ms |   0.97 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **10.258 ms** | **0.2015 ms** | **0.1457 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  10.200 ms | 0.2147 ms | 0.1552 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |     100 |  40.115 ms | 0.1484 ms | 0.1073 ms |   3.91 |     0.05 |
|                         Span_ |             Constant |     100 |   8.479 ms | 0.1436 ms | 0.1038 ms |   0.83 |     0.01 |
|             Span_NullComparer |             Constant |     100 |   8.945 ms | 0.1736 ms | 0.1256 ms |   0.87 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     100 |  42.041 ms | 0.1435 ms | 0.1038 ms |   4.10 |     0.06 |
| Span_StructComparableComparer |             Constant |     100 |  15.665 ms | 0.4154 ms | 0.3004 ms |   1.53 |     0.03 |
|               Span_Comparison |             Constant |     100 |  38.595 ms | 0.1822 ms | 0.1318 ms |   3.76 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **20.204 ms** | **0.1241 ms** | **0.0897 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  20.169 ms | 0.0511 ms | 0.0370 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |   10000 |  88.446 ms | 0.2056 ms | 0.1487 ms |   4.38 |     0.02 |
|                         Span_ |             Constant |   10000 |  20.680 ms | 0.1621 ms | 0.1172 ms |   1.02 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  20.788 ms | 0.8029 ms | 0.5805 ms |   1.03 |     0.03 |
|  Span_ClassComparableComparer |             Constant |   10000 | 101.091 ms | 0.1902 ms | 0.1375 ms |   5.00 |     0.02 |
| Span_StructComparableComparer |             Constant |   10000 |  38.880 ms | 0.1444 ms | 0.1044 ms |   1.92 |     0.01 |
|               Span_Comparison |             Constant |   10000 |  98.408 ms | 0.2386 ms | 0.1725 ms |   4.87 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **27.586 ms** | **0.1530 ms** | **0.1107 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  27.600 ms | 0.1870 ms | 0.1352 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 132.263 ms | 0.1606 ms | 0.1161 ms |   4.79 |     0.02 |
|                         Span_ |             Constant | 1000000 |  29.859 ms | 0.1451 ms | 0.1050 ms |   1.08 |     0.01 |
|             Span_NullComparer |             Constant | 1000000 |  29.846 ms | 0.1789 ms | 0.1293 ms |   1.08 |     0.01 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 151.616 ms | 0.1138 ms | 0.0823 ms |   5.50 |     0.02 |
| Span_StructComparableComparer |             Constant | 1000000 |  59.500 ms | 0.4597 ms | 0.3324 ms |   2.16 |     0.01 |
|               Span_Comparison |             Constant | 1000000 | 148.234 ms | 0.2078 ms | 0.1503 ms |   5.37 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **25.408 ms** | **0.0467 ms** | **0.0338 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  25.386 ms | 0.0369 ms | 0.0267 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       2 | 145.828 ms | 0.5822 ms | 0.4210 ms |   5.74 |     0.02 |
|                         Span_ |         Decrementing |       2 |  10.912 ms | 0.2021 ms | 0.1461 ms |   0.43 |     0.01 |
|             Span_NullComparer |         Decrementing |       2 |  27.385 ms | 0.1406 ms | 0.1017 ms |   1.08 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       2 | 115.119 ms | 0.4329 ms | 0.3130 ms |   4.53 |     0.01 |
| Span_StructComparableComparer |         Decrementing |       2 |  61.325 ms | 0.1295 ms | 0.0936 ms |   2.41 |     0.00 |
|               Span_Comparison |         Decrementing |       2 |  20.791 ms | 0.0801 ms | 0.0579 ms |   0.82 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **22.762 ms** | **0.0242 ms** | **0.0175 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  22.776 ms | 0.0264 ms | 0.0191 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       3 | 106.564 ms | 0.2995 ms | 0.2165 ms |   4.68 |     0.01 |
|                         Span_ |         Decrementing |       3 |   8.489 ms | 0.1273 ms | 0.0920 ms |   0.37 |     0.00 |
|             Span_NullComparer |         Decrementing |       3 |  19.818 ms | 0.0403 ms | 0.0291 ms |   0.87 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  75.273 ms | 0.1382 ms | 0.0999 ms |   3.31 |     0.00 |
| Span_StructComparableComparer |         Decrementing |       3 |  42.306 ms | 0.0590 ms | 0.0426 ms |   1.86 |     0.00 |
|               Span_Comparison |         Decrementing |       3 |  20.621 ms | 0.0570 ms | 0.0412 ms |   0.91 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **21.643 ms** | **0.6956 ms** | **0.5029 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  21.567 ms | 0.4113 ms | 0.2974 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |      10 |  61.810 ms | 0.1825 ms | 0.1319 ms |   2.86 |     0.06 |
|                         Span_ |         Decrementing |      10 |  12.383 ms | 0.1027 ms | 0.0743 ms |   0.57 |     0.01 |
|             Span_NullComparer |         Decrementing |      10 |  15.719 ms | 0.2040 ms | 0.1475 ms |   0.73 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  52.865 ms | 0.3440 ms | 0.2487 ms |   2.44 |     0.05 |
| Span_StructComparableComparer |         Decrementing |      10 |  22.354 ms | 0.0797 ms | 0.0576 ms |   1.03 |     0.02 |
|               Span_Comparison |         Decrementing |      10 |  33.844 ms | 0.3918 ms | 0.2833 ms |   1.56 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **13.593 ms** | **0.2899 ms** | **0.2096 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  13.555 ms | 0.1168 ms | 0.0845 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |     100 |  55.065 ms | 0.1358 ms | 0.0982 ms |   4.05 |     0.06 |
|                         Span_ |         Decrementing |     100 |  10.396 ms | 1.9706 ms | 1.4249 ms |   0.76 |     0.10 |
|             Span_NullComparer |         Decrementing |     100 |  10.129 ms | 0.1691 ms | 0.1223 ms |   0.75 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  55.156 ms | 0.1475 ms | 0.1067 ms |   4.06 |     0.06 |
| Span_StructComparableComparer |         Decrementing |     100 |  15.176 ms | 0.1208 ms | 0.0873 ms |   1.12 |     0.02 |
|               Span_Comparison |         Decrementing |     100 |  49.743 ms | 0.1100 ms | 0.0795 ms |   3.66 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **26.941 ms** | **0.1087 ms** | **0.0786 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  26.931 ms | 0.1131 ms | 0.0818 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 128.037 ms | 0.2899 ms | 0.2096 ms |   4.75 |     0.02 |
|                         Span_ |         Decrementing |   10000 |  24.782 ms | 0.1368 ms | 0.0989 ms |   0.92 |     0.00 |
|             Span_NullComparer |         Decrementing |   10000 |  24.616 ms | 0.1007 ms | 0.0728 ms |   0.91 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 133.581 ms | 0.9275 ms | 0.6707 ms |   4.96 |     0.03 |
| Span_StructComparableComparer |         Decrementing |   10000 |  33.481 ms | 0.9673 ms | 0.6995 ms |   1.24 |     0.02 |
|               Span_Comparison |         Decrementing |   10000 | 119.779 ms | 0.2011 ms | 0.1454 ms |   4.45 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **38.456 ms** | **0.2486 ms** | **0.1798 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  38.400 ms | 0.1615 ms | 0.1168 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 208.706 ms | 0.0940 ms | 0.0680 ms |   5.43 |     0.02 |
|                         Span_ |         Decrementing | 1000000 |  37.020 ms | 0.1845 ms | 0.1334 ms |   0.96 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |  37.110 ms | 0.6363 ms | 0.4601 ms |   0.97 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 216.141 ms | 0.3105 ms | 0.2245 ms |   5.62 |     0.03 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  51.218 ms | 0.2171 ms | 0.1570 ms |   1.33 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 | 195.200 ms | 0.5901 ms | 0.4267 ms |   5.08 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **25.164 ms** | **0.0320 ms** | **0.0231 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  25.166 ms | 0.0417 ms | 0.0302 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       2 | 148.247 ms | 0.5492 ms | 0.3971 ms |   5.89 |     0.02 |
|                         Span_ |         Incrementing |       2 |  10.397 ms | 0.0649 ms | 0.0469 ms |   0.41 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  27.570 ms | 0.1242 ms | 0.0898 ms |   1.10 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       2 | 114.742 ms | 0.2124 ms | 0.1536 ms |   4.56 |     0.01 |
| Span_StructComparableComparer |         Incrementing |       2 |  60.962 ms | 0.0609 ms | 0.0440 ms |   2.42 |     0.00 |
|               Span_Comparison |         Incrementing |       2 |  20.776 ms | 0.1008 ms | 0.0729 ms |   0.83 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **22.737 ms** | **0.0512 ms** | **0.0370 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  22.706 ms | 0.0677 ms | 0.0490 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       3 | 105.521 ms | 0.3565 ms | 0.2577 ms |   4.64 |     0.01 |
|                         Span_ |         Incrementing |       3 |   7.572 ms | 0.0687 ms | 0.0497 ms |   0.33 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  18.730 ms | 0.0600 ms | 0.0434 ms |   0.82 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  74.904 ms | 0.1499 ms | 0.1084 ms |   3.29 |     0.01 |
| Span_StructComparableComparer |         Incrementing |       3 |  41.454 ms | 0.1420 ms | 0.1027 ms |   1.82 |     0.01 |
|               Span_Comparison |         Incrementing |       3 |  20.118 ms | 0.1248 ms | 0.0903 ms |   0.88 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **12.249 ms** | **0.0657 ms** | **0.0475 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  12.201 ms | 0.0507 ms | 0.0367 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |      10 |  38.584 ms | 0.2146 ms | 0.1552 ms |   3.15 |     0.02 |
|                         Span_ |         Incrementing |      10 |   4.462 ms | 0.2877 ms | 0.2080 ms |   0.36 |     0.02 |
|             Span_NullComparer |         Incrementing |      10 |   7.675 ms | 0.0800 ms | 0.0578 ms |   0.63 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  27.816 ms | 0.0734 ms | 0.0531 ms |   2.27 |     0.01 |
| Span_StructComparableComparer |         Incrementing |      10 |  14.527 ms | 0.0718 ms | 0.0519 ms |   1.19 |     0.01 |
|               Span_Comparison |         Incrementing |      10 |  11.440 ms | 0.1008 ms | 0.0729 ms |   0.93 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |   **9.197 ms** | **0.9534 ms** | **0.6894 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |   8.984 ms | 0.2402 ms | 0.1737 ms |   0.98 |     0.07 |
| Array_ClassComparableComparer |         Incrementing |     100 |  37.859 ms | 0.2850 ms | 0.2061 ms |   4.14 |     0.27 |
|                         Span_ |         Incrementing |     100 |   7.482 ms | 0.1618 ms | 0.1170 ms |   0.82 |     0.05 |
|             Span_NullComparer |         Incrementing |     100 |   7.892 ms | 0.1770 ms | 0.1280 ms |   0.86 |     0.06 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  37.173 ms | 0.2478 ms | 0.1792 ms |   4.06 |     0.26 |
| Span_StructComparableComparer |         Incrementing |     100 |   9.353 ms | 0.1302 ms | 0.0941 ms |   1.02 |     0.07 |
|               Span_Comparison |         Incrementing |     100 |  31.402 ms | 0.1374 ms | 0.0994 ms |   3.43 |     0.22 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **17.500 ms** | **0.2246 ms** | **0.1624 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  17.539 ms | 0.1921 ms | 0.1389 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   10000 |  77.181 ms | 0.1594 ms | 0.1152 ms |   4.41 |     0.04 |
|                         Span_ |         Incrementing |   10000 |  16.588 ms | 0.0519 ms | 0.0376 ms |   0.95 |     0.01 |
|             Span_NullComparer |         Incrementing |   10000 |  16.572 ms | 0.3365 ms | 0.2433 ms |   0.95 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |   10000 |  80.828 ms | 0.0868 ms | 0.0628 ms |   4.62 |     0.04 |
| Span_StructComparableComparer |         Incrementing |   10000 |  19.200 ms | 0.7943 ms | 0.5743 ms |   1.10 |     0.03 |
|               Span_Comparison |         Incrementing |   10000 |  71.975 ms | 0.0796 ms | 0.0576 ms |   4.11 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **22.642 ms** | **0.2462 ms** | **0.1780 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  22.569 ms | 0.1510 ms | 0.1092 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 112.776 ms | 0.3399 ms | 0.2458 ms |   4.98 |     0.04 |
|                         Span_ |         Incrementing | 1000000 |  22.647 ms | 0.1254 ms | 0.0907 ms |   1.00 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |  22.643 ms | 0.1451 ms | 0.1049 ms |   1.00 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 117.201 ms | 0.3323 ms | 0.2403 ms |   5.18 |     0.04 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  26.023 ms | 0.1302 ms | 0.0941 ms |   1.15 |     0.01 |
|               Span_Comparison |         Incrementing | 1000000 | 105.228 ms | 0.2306 ms | 0.1667 ms |   4.65 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **25.166 ms** | **0.0450 ms** | **0.0325 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  25.170 ms | 0.0621 ms | 0.0449 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 | 144.175 ms | 0.2620 ms | 0.1895 ms |   5.73 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       2 |  10.387 ms | 0.0443 ms | 0.0321 ms |   0.41 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  27.041 ms | 0.1842 ms | 0.1332 ms |   1.07 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 | 114.594 ms | 0.4992 ms | 0.3609 ms |   4.55 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  61.191 ms | 0.1276 ms | 0.0923 ms |   2.43 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  20.769 ms | 0.0612 ms | 0.0443 ms |   0.83 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **22.718 ms** | **0.0660 ms** | **0.0477 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  22.728 ms | 0.0459 ms | 0.0332 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 | 105.742 ms | 0.3679 ms | 0.2660 ms |   4.65 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       3 |   7.561 ms | 0.0560 ms | 0.0405 ms |   0.33 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  18.758 ms | 0.1305 ms | 0.0943 ms |   0.83 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  75.119 ms | 0.2540 ms | 0.1836 ms |   3.31 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  41.443 ms | 0.0972 ms | 0.0703 ms |   1.82 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  20.164 ms | 0.1998 ms | 0.1445 ms |   0.89 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **14.256 ms** | **0.0593 ms** | **0.0428 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  14.240 ms | 0.0324 ms | 0.0235 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  47.944 ms | 1.2637 ms | 0.9137 ms |   3.36 |     0.06 |
|                         Span_ |  MedianOfThreeKiller |      10 |   6.597 ms | 0.0834 ms | 0.0603 ms |   0.46 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |   9.815 ms | 0.0834 ms | 0.0603 ms |   0.69 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  36.591 ms | 0.0695 ms | 0.0502 ms |   2.57 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  16.606 ms | 0.1730 ms | 0.1251 ms |   1.16 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  20.147 ms | 0.0904 ms | 0.0654 ms |   1.41 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **16.801 ms** | **0.2676 ms** | **0.1935 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  16.770 ms | 0.1865 ms | 0.1349 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  64.283 ms | 2.0697 ms | 1.4965 ms |   3.83 |     0.09 |
|                         Span_ |  MedianOfThreeKiller |     100 |  13.169 ms | 0.3259 ms | 0.2356 ms |   0.78 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  13.539 ms | 0.0990 ms | 0.0716 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |  66.295 ms | 0.3171 ms | 0.2293 ms |   3.95 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  18.435 ms | 1.4336 ms | 1.0366 ms |   1.10 |     0.06 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  59.178 ms | 0.1876 ms | 0.1357 ms |   3.52 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **65.796 ms** | **0.1552 ms** | **0.1122 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  65.782 ms | 0.1386 ms | 0.1002 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 167.143 ms | 0.3428 ms | 0.2478 ms |   2.54 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  62.813 ms | 0.7036 ms | 0.5087 ms |   0.95 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  62.492 ms | 0.5807 ms | 0.4199 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 200.872 ms | 1.2508 ms | 0.9044 ms |   3.05 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  69.332 ms | 0.3354 ms | 0.2425 ms |   1.05 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 178.563 ms | 0.6816 ms | 0.4928 ms |   2.71 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** | **107.504 ms** | **0.2920 ms** | **0.2111 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 | 107.482 ms | 0.1448 ms | 0.1047 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 339.245 ms | 0.2384 ms | 0.1724 ms |   3.16 |     0.01 |
|                         Span_ |  MedianOfThreeKiller | 1000000 |  98.880 ms | 0.4048 ms | 0.2927 ms |   0.92 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 |  98.799 ms | 0.2017 ms | 0.1458 ms |   0.92 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 337.478 ms | 1.0554 ms | 0.7631 ms |   3.14 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 116.145 ms | 0.4453 ms | 0.3220 ms |   1.08 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 302.695 ms | 3.3774 ms | 2.4421 ms |   2.82 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **26.827 ms** | **0.0279 ms** | **0.0202 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  26.885 ms | 0.0292 ms | 0.0211 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 | 147.380 ms | 0.5321 ms | 0.3847 ms |   5.49 |     0.01 |
|                         Span_ | PartialRandomShuffle |       2 |  12.023 ms | 0.0954 ms | 0.0690 ms |   0.45 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  28.576 ms | 0.1178 ms | 0.0852 ms |   1.07 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 | 116.670 ms | 0.2611 ms | 0.1888 ms |   4.35 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  62.621 ms | 0.0817 ms | 0.0591 ms |   2.33 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |       2 |  22.191 ms | 0.0886 ms | 0.0641 ms |   0.83 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **24.388 ms** | **0.1830 ms** | **0.1323 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  24.281 ms | 0.0657 ms | 0.0475 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 | 109.987 ms | 0.3356 ms | 0.2426 ms |   4.51 |     0.03 |
|                         Span_ | PartialRandomShuffle |       3 |  10.050 ms | 0.0448 ms | 0.0324 ms |   0.41 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  21.256 ms | 0.0698 ms | 0.0505 ms |   0.87 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  78.329 ms | 0.2887 ms | 0.2088 ms |   3.21 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  44.098 ms | 0.0707 ms | 0.0511 ms |   1.81 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       3 |  23.126 ms | 0.0619 ms | 0.0447 ms |   0.95 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **17.178 ms** | **0.0788 ms** | **0.0570 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  17.132 ms | 0.0477 ms | 0.0345 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  49.666 ms | 0.0764 ms | 0.0552 ms |   2.89 |     0.01 |
|                         Span_ | PartialRandomShuffle |      10 |  10.496 ms | 0.0533 ms | 0.0385 ms |   0.61 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  13.834 ms | 0.0480 ms | 0.0347 ms |   0.81 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  37.330 ms | 0.0557 ms | 0.0403 ms |   2.17 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  21.408 ms | 0.0890 ms | 0.0643 ms |   1.25 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      10 |  20.954 ms | 0.0763 ms | 0.0552 ms |   1.22 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **47.613 ms** | **0.1173 ms** | **0.0849 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  47.567 ms | 0.1065 ms | 0.0770 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |  83.962 ms | 0.3461 ms | 0.2503 ms |   1.76 |     0.01 |
|                         Span_ | PartialRandomShuffle |     100 |  43.087 ms | 0.1161 ms | 0.0840 ms |   0.90 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  43.565 ms | 0.1592 ms | 0.1151 ms |   0.91 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 |  82.939 ms | 0.2494 ms | 0.1803 ms |   1.74 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  46.591 ms | 0.0775 ms | 0.0560 ms |   0.98 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |     100 |  74.770 ms | 0.1836 ms | 0.1328 ms |   1.57 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **80.713 ms** | **0.6498 ms** | **0.4698 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  80.617 ms | 0.0760 ms | 0.0550 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 151.990 ms | 0.4024 ms | 0.2910 ms |   1.88 |     0.01 |
|                         Span_ | PartialRandomShuffle |   10000 |  76.827 ms | 0.0618 ms | 0.0447 ms |   0.95 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  76.444 ms | 0.1063 ms | 0.0768 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 163.643 ms | 0.1939 ms | 0.1402 ms |   2.03 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |  87.040 ms | 0.1212 ms | 0.0877 ms |   1.08 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 151.350 ms | 0.1937 ms | 0.1400 ms |   1.88 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** | **116.193 ms** | **0.2923 ms** | **0.2114 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 | 116.188 ms | 0.2673 ms | 0.1933 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 226.890 ms | 0.2006 ms | 0.1450 ms |   1.95 |     0.00 |
|                         Span_ | PartialRandomShuffle | 1000000 | 111.398 ms | 0.1641 ms | 0.1187 ms |   0.96 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 | 111.443 ms | 0.1651 ms | 0.1193 ms |   0.96 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 245.291 ms | 0.2804 ms | 0.2027 ms |   2.11 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 130.203 ms | 0.4409 ms | 0.3188 ms |   1.12 |     0.00 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 228.511 ms | 0.7661 ms | 0.5540 ms |   1.97 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **30.370 ms** | **0.0827 ms** | **0.0598 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  30.454 ms | 0.1270 ms | 0.0918 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |       2 | 150.235 ms | 1.2059 ms | 0.8720 ms |   4.95 |     0.03 |
|                         Span_ |               Random |       2 |  15.129 ms | 0.0560 ms | 0.0405 ms |   0.50 |     0.00 |
|             Span_NullComparer |               Random |       2 |  31.790 ms | 0.1172 ms | 0.0848 ms |   1.05 |     0.00 |
|  Span_ClassComparableComparer |               Random |       2 | 119.463 ms | 0.1356 ms | 0.0980 ms |   3.93 |     0.01 |
| Span_StructComparableComparer |               Random |       2 |  66.148 ms | 0.0873 ms | 0.0631 ms |   2.18 |     0.00 |
|               Span_Comparison |               Random |       2 |  25.867 ms | 0.1196 ms | 0.0865 ms |   0.85 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **27.669 ms** | **0.0411 ms** | **0.0297 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  27.790 ms | 0.1702 ms | 0.1231 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |       3 | 118.691 ms | 0.3945 ms | 0.2852 ms |   4.29 |     0.01 |
|                         Span_ |               Random |       3 |  15.199 ms | 0.0950 ms | 0.0687 ms |   0.55 |     0.00 |
|             Span_NullComparer |               Random |       3 |  26.588 ms | 0.1194 ms | 0.0863 ms |   0.96 |     0.00 |
|  Span_ClassComparableComparer |               Random |       3 |  82.524 ms | 0.2397 ms | 0.1733 ms |   2.98 |     0.01 |
| Span_StructComparableComparer |               Random |       3 |  49.441 ms | 0.0402 ms | 0.0290 ms |   1.79 |     0.00 |
|               Span_Comparison |               Random |       3 |  28.840 ms | 0.0842 ms | 0.0609 ms |   1.04 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **29.914 ms** | **0.1328 ms** | **0.0960 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  29.989 ms | 0.2885 ms | 0.2086 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |      10 |  68.370 ms | 0.1699 ms | 0.1229 ms |   2.29 |     0.01 |
|                         Span_ |               Random |      10 |  23.610 ms | 0.0462 ms | 0.0334 ms |   0.79 |     0.00 |
|             Span_NullComparer |               Random |      10 |  26.986 ms | 0.0459 ms | 0.0332 ms |   0.90 |     0.00 |
|  Span_ClassComparableComparer |               Random |      10 |  57.044 ms | 0.1354 ms | 0.0979 ms |   1.91 |     0.01 |
| Span_StructComparableComparer |               Random |      10 |  34.112 ms | 0.2884 ms | 0.2086 ms |   1.14 |     0.01 |
|               Span_Comparison |               Random |      10 |  38.110 ms | 0.1004 ms | 0.0726 ms |   1.27 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **60.734 ms** | **0.0695 ms** | **0.0503 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  60.702 ms | 0.0505 ms | 0.0365 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |     100 |  99.133 ms | 0.1137 ms | 0.0822 ms |   1.63 |     0.00 |
|                         Span_ |               Random |     100 |  56.666 ms | 0.0508 ms | 0.0367 ms |   0.93 |     0.00 |
|             Span_NullComparer |               Random |     100 |  57.110 ms | 0.0779 ms | 0.0563 ms |   0.94 |     0.00 |
|  Span_ClassComparableComparer |               Random |     100 | 100.701 ms | 0.0888 ms | 0.0642 ms |   1.66 |     0.00 |
| Span_StructComparableComparer |               Random |     100 |  61.974 ms | 0.0442 ms | 0.0319 ms |   1.02 |     0.00 |
|               Span_Comparison |               Random |     100 |  90.866 ms | 0.2048 ms | 0.1481 ms |   1.50 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** | **118.035 ms** | **0.0435 ms** | **0.0315 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 | 118.089 ms | 0.1259 ms | 0.0911 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |   10000 | 191.686 ms | 0.2534 ms | 0.1832 ms |   1.62 |     0.00 |
|                         Span_ |               Random |   10000 | 115.530 ms | 0.2676 ms | 0.1935 ms |   0.98 |     0.00 |
|             Span_NullComparer |               Random |   10000 | 115.140 ms | 0.3989 ms | 0.2884 ms |   0.98 |     0.00 |
|  Span_ClassComparableComparer |               Random |   10000 | 210.572 ms | 0.1240 ms | 0.0897 ms |   1.78 |     0.00 |
| Span_StructComparableComparer |               Random |   10000 | 128.240 ms | 0.0800 ms | 0.0578 ms |   1.09 |     0.00 |
|               Span_Comparison |               Random |   10000 | 194.153 ms | 0.6195 ms | 0.4479 ms |   1.64 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **174.742 ms** | **0.6287 ms** | **0.4546 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 174.379 ms | 0.1467 ms | 0.1061 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 | 291.159 ms | 0.4176 ms | 0.3019 ms |   1.67 |     0.00 |
|                         Span_ |               Random | 1000000 | 171.948 ms | 0.1915 ms | 0.1385 ms |   0.98 |     0.00 |
|             Span_NullComparer |               Random | 1000000 | 171.925 ms | 0.1436 ms | 0.1039 ms |   0.98 |     0.00 |
|  Span_ClassComparableComparer |               Random | 1000000 | 322.286 ms | 0.2126 ms | 0.1537 ms |   1.84 |     0.00 |
| Span_StructComparableComparer |               Random | 1000000 | 193.199 ms | 0.3987 ms | 0.2883 ms |   1.11 |     0.00 |
|               Span_Comparison |               Random | 1000000 | 298.476 ms | 0.4527 ms | 0.3273 ms |   1.71 |     0.00 |
