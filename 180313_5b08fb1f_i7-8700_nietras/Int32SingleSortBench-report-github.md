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
|                        **Array_** |             **Constant** |       **2** |  **30.817 ms** | **0.1377 ms** | **0.0996 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  30.348 ms | 0.0856 ms | 0.0619 ms |   0.98 |     0.00 |
| Array_ClassComparableComparer |             Constant |       2 |  32.288 ms | 0.0513 ms | 0.0371 ms |   1.05 |     0.00 |
|                         Span_ |             Constant |       2 |  15.042 ms | 0.1009 ms | 0.0730 ms |   0.49 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  21.457 ms | 0.0482 ms | 0.0348 ms |   0.70 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       2 |  80.974 ms | 0.0372 ms | 0.0269 ms |   2.63 |     0.01 |
| Span_StructComparableComparer |             Constant |       2 |  43.101 ms | 0.0563 ms | 0.0407 ms |   1.40 |     0.00 |
|               Span_Comparison |             Constant |       2 |  12.874 ms | 0.0406 ms | 0.0294 ms |   0.42 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **23.534 ms** | **0.0528 ms** | **0.0382 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  23.166 ms | 0.0823 ms | 0.0595 ms |   0.98 |     0.00 |
| Array_ClassComparableComparer |             Constant |       3 |  28.080 ms | 0.0612 ms | 0.0442 ms |   1.19 |     0.00 |
|                         Span_ |             Constant |       3 |  10.548 ms | 0.0817 ms | 0.0591 ms |   0.45 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  15.065 ms | 0.0888 ms | 0.0642 ms |   0.64 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  55.362 ms | 0.0440 ms | 0.0318 ms |   2.35 |     0.00 |
| Span_StructComparableComparer |             Constant |       3 |  29.130 ms | 0.0682 ms | 0.0493 ms |   1.24 |     0.00 |
|               Span_Comparison |             Constant |       3 |  13.600 ms | 0.3326 ms | 0.2405 ms |   0.58 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |   **9.271 ms** | **0.1259 ms** | **0.0910 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |   9.463 ms | 0.7668 ms | 0.5544 ms |   1.02 |     0.06 |
| Array_ClassComparableComparer |             Constant |      10 |  13.007 ms | 0.0965 ms | 0.0698 ms |   1.40 |     0.01 |
|                         Span_ |             Constant |      10 |   4.325 ms | 0.2049 ms | 0.1482 ms |   0.47 |     0.02 |
|             Span_NullComparer |             Constant |      10 |   5.628 ms | 0.1080 ms | 0.0781 ms |   0.61 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  19.908 ms | 0.0669 ms | 0.0484 ms |   2.15 |     0.02 |
| Span_StructComparableComparer |             Constant |      10 |   9.970 ms | 0.0478 ms | 0.0346 ms |   1.08 |     0.01 |
|               Span_Comparison |             Constant |      10 |   7.691 ms | 0.3135 ms | 0.2267 ms |   0.83 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **11.767 ms** | **0.1580 ms** | **0.1142 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  11.897 ms | 0.5520 ms | 0.3991 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |             Constant |     100 |  31.246 ms | 0.0583 ms | 0.0422 ms |   2.66 |     0.02 |
|                         Span_ |             Constant |     100 |  10.365 ms | 0.1629 ms | 0.1178 ms |   0.88 |     0.01 |
|             Span_NullComparer |             Constant |     100 |  10.604 ms | 0.2759 ms | 0.1995 ms |   0.90 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     100 |  29.841 ms | 0.1551 ms | 0.1122 ms |   2.54 |     0.03 |
| Span_StructComparableComparer |             Constant |     100 |   9.873 ms | 0.2480 ms | 0.1793 ms |   0.84 |     0.02 |
|               Span_Comparison |             Constant |     100 |  27.933 ms | 0.1710 ms | 0.1236 ms |   2.37 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **27.003 ms** | **0.1148 ms** | **0.0830 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  27.051 ms | 0.0984 ms | 0.0711 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |   10000 |  76.625 ms | 0.0830 ms | 0.0600 ms |   2.84 |     0.01 |
|                         Span_ |             Constant |   10000 |  25.514 ms | 0.2381 ms | 0.1721 ms |   0.94 |     0.01 |
|             Span_NullComparer |             Constant |   10000 |  25.476 ms | 0.1514 ms | 0.1094 ms |   0.94 |     0.00 |
|  Span_ClassComparableComparer |             Constant |   10000 |  73.350 ms | 0.1295 ms | 0.0936 ms |   2.72 |     0.01 |
| Span_StructComparableComparer |             Constant |   10000 |  23.675 ms | 0.0942 ms | 0.0681 ms |   0.88 |     0.00 |
|               Span_Comparison |             Constant |   10000 |  70.427 ms | 0.1217 ms | 0.0880 ms |   2.61 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **39.342 ms** | **0.1229 ms** | **0.0889 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  39.211 ms | 0.0685 ms | 0.0495 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant | 1000000 | 113.405 ms | 0.1999 ms | 0.1445 ms |   2.88 |     0.01 |
|                         Span_ |             Constant | 1000000 |  37.905 ms | 0.1965 ms | 0.1421 ms |   0.96 |     0.00 |
|             Span_NullComparer |             Constant | 1000000 |  37.826 ms | 0.0846 ms | 0.0612 ms |   0.96 |     0.00 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 109.904 ms | 0.1952 ms | 0.1411 ms |   2.79 |     0.01 |
| Span_StructComparableComparer |             Constant | 1000000 |  36.344 ms | 0.1015 ms | 0.0734 ms |   0.92 |     0.00 |
|               Span_Comparison |             Constant | 1000000 | 103.437 ms | 0.4487 ms | 0.3245 ms |   2.63 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **31.587 ms** | **0.0332 ms** | **0.0240 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  31.516 ms | 0.1178 ms | 0.0851 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       2 |  32.441 ms | 0.0559 ms | 0.0404 ms |   1.03 |     0.00 |
|                         Span_ |         Decrementing |       2 |  15.716 ms | 0.1147 ms | 0.0829 ms |   0.50 |     0.00 |
|             Span_NullComparer |         Decrementing |       2 |  22.092 ms | 0.0622 ms | 0.0450 ms |   0.70 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       2 |  84.146 ms | 0.0519 ms | 0.0375 ms |   2.66 |     0.00 |
| Span_StructComparableComparer |         Decrementing |       2 |  43.814 ms | 0.0341 ms | 0.0247 ms |   1.39 |     0.00 |
|               Span_Comparison |         Decrementing |       2 |  13.330 ms | 0.1097 ms | 0.0793 ms |   0.42 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **24.800 ms** | **0.0188 ms** | **0.0136 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  24.515 ms | 0.0877 ms | 0.0634 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       3 |  28.654 ms | 0.4278 ms | 0.3093 ms |   1.16 |     0.01 |
|                         Span_ |         Decrementing |       3 |  12.191 ms | 0.1182 ms | 0.0855 ms |   0.49 |     0.00 |
|             Span_NullComparer |         Decrementing |       3 |  16.148 ms | 0.1457 ms | 0.1054 ms |   0.65 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  56.602 ms | 0.0836 ms | 0.0604 ms |   2.28 |     0.00 |
| Span_StructComparableComparer |         Decrementing |       3 |  30.629 ms | 0.0584 ms | 0.0423 ms |   1.24 |     0.00 |
|               Span_Comparison |         Decrementing |       3 |  14.905 ms | 0.1759 ms | 0.1272 ms |   0.60 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **18.508 ms** | **0.0914 ms** | **0.0661 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  18.125 ms | 0.2435 ms | 0.1761 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      10 |  37.906 ms | 0.0608 ms | 0.0440 ms |   2.05 |     0.01 |
|                         Span_ |         Decrementing |      10 |  13.657 ms | 0.5138 ms | 0.3715 ms |   0.74 |     0.02 |
|             Span_NullComparer |         Decrementing |      10 |  14.483 ms | 0.1295 ms | 0.0936 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  41.581 ms | 0.2533 ms | 0.1831 ms |   2.25 |     0.01 |
| Span_StructComparableComparer |         Decrementing |      10 |  18.828 ms | 0.0372 ms | 0.0269 ms |   1.02 |     0.00 |
|               Span_Comparison |         Decrementing |      10 |  22.260 ms | 0.1741 ms | 0.1259 ms |   1.20 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **13.259 ms** | **0.1187 ms** | **0.0858 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  13.413 ms | 0.5635 ms | 0.4075 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |     100 |  43.398 ms | 0.1108 ms | 0.0801 ms |   3.27 |     0.02 |
|                         Span_ |         Decrementing |     100 |  11.828 ms | 0.2652 ms | 0.1918 ms |   0.89 |     0.01 |
|             Span_NullComparer |         Decrementing |     100 |  11.890 ms | 0.1811 ms | 0.1310 ms |   0.90 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  38.149 ms | 0.0682 ms | 0.0493 ms |   2.88 |     0.02 |
| Span_StructComparableComparer |         Decrementing |     100 |  10.734 ms | 0.5107 ms | 0.3693 ms |   0.81 |     0.03 |
|               Span_Comparison |         Decrementing |     100 |  34.208 ms | 0.3994 ms | 0.2888 ms |   2.58 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **26.435 ms** | **0.0470 ms** | **0.0340 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  26.438 ms | 0.1099 ms | 0.0795 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 108.215 ms | 0.4929 ms | 0.3564 ms |   4.09 |     0.01 |
|                         Span_ |         Decrementing |   10000 |  26.027 ms | 0.0771 ms | 0.0557 ms |   0.98 |     0.00 |
|             Span_NullComparer |         Decrementing |   10000 |  26.144 ms | 0.4179 ms | 0.3021 ms |   0.99 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 |  87.432 ms | 0.0578 ms | 0.0418 ms |   3.31 |     0.00 |
| Span_StructComparableComparer |         Decrementing |   10000 |  23.111 ms | 0.0432 ms | 0.0312 ms |   0.87 |     0.00 |
|               Span_Comparison |         Decrementing |   10000 |  84.182 ms | 0.1520 ms | 0.1099 ms |   3.18 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **39.497 ms** | **0.2269 ms** | **0.1641 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  39.398 ms | 0.1563 ms | 0.1130 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 175.346 ms | 0.2112 ms | 0.1527 ms |   4.44 |     0.02 |
|                         Span_ |         Decrementing | 1000000 |  40.573 ms | 0.4644 ms | 0.3358 ms |   1.03 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |  40.363 ms | 0.1564 ms | 0.1131 ms |   1.02 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 140.479 ms | 0.2573 ms | 0.1861 ms |   3.56 |     0.01 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  36.939 ms | 0.2298 ms | 0.1661 ms |   0.94 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 | 139.130 ms | 0.1445 ms | 0.1045 ms |   3.52 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **30.780 ms** | **0.0250 ms** | **0.0181 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  30.587 ms | 0.0409 ms | 0.0296 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       2 |  31.767 ms | 0.1340 ms | 0.0969 ms |   1.03 |     0.00 |
|                         Span_ |         Incrementing |       2 |  14.898 ms | 0.1179 ms | 0.0853 ms |   0.48 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  21.246 ms | 0.1485 ms | 0.1074 ms |   0.69 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       2 |  83.442 ms | 0.1153 ms | 0.0834 ms |   2.71 |     0.00 |
| Span_StructComparableComparer |         Incrementing |       2 |  42.875 ms | 0.0418 ms | 0.0303 ms |   1.39 |     0.00 |
|               Span_Comparison |         Incrementing |       2 |  12.661 ms | 0.0815 ms | 0.0589 ms |   0.41 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **23.608 ms** | **0.0414 ms** | **0.0300 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  23.382 ms | 0.0751 ms | 0.0543 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       3 |  27.436 ms | 0.0478 ms | 0.0346 ms |   1.16 |     0.00 |
|                         Span_ |         Incrementing |       3 |  10.436 ms | 0.0505 ms | 0.0365 ms |   0.44 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  14.660 ms | 0.2116 ms | 0.1530 ms |   0.62 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  54.947 ms | 0.0478 ms | 0.0346 ms |   2.33 |     0.00 |
| Span_StructComparableComparer |         Incrementing |       3 |  29.128 ms | 0.0523 ms | 0.0378 ms |   1.23 |     0.00 |
|               Span_Comparison |         Incrementing |       3 |  12.874 ms | 0.0601 ms | 0.0435 ms |   0.55 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |   **9.452 ms** | **0.1390 ms** | **0.1005 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |   9.446 ms | 0.1456 ms | 0.1053 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      10 |  12.968 ms | 0.0869 ms | 0.0628 ms |   1.37 |     0.02 |
|                         Span_ |         Incrementing |      10 |   4.972 ms | 0.6705 ms | 0.4848 ms |   0.53 |     0.05 |
|             Span_NullComparer |         Incrementing |      10 |   6.083 ms | 0.4791 ms | 0.3464 ms |   0.64 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  20.380 ms | 0.6600 ms | 0.4772 ms |   2.16 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      10 |  10.218 ms | 0.0441 ms | 0.0319 ms |   1.08 |     0.01 |
|               Span_Comparison |         Incrementing |      10 |   7.604 ms | 0.0941 ms | 0.0680 ms |   0.80 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |   **8.822 ms** | **0.2052 ms** | **0.1484 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |   8.854 ms | 0.2178 ms | 0.1575 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |     100 |  28.476 ms | 0.2204 ms | 0.1594 ms |   3.23 |     0.05 |
|                         Span_ |         Incrementing |     100 |   7.286 ms | 0.4681 ms | 0.3384 ms |   0.83 |     0.04 |
|             Span_NullComparer |         Incrementing |     100 |   7.360 ms | 0.8527 ms | 0.6165 ms |   0.83 |     0.07 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  25.267 ms | 0.2428 ms | 0.1755 ms |   2.86 |     0.05 |
| Span_StructComparableComparer |         Incrementing |     100 |   6.556 ms | 0.3055 ms | 0.2209 ms |   0.74 |     0.03 |
|               Span_Comparison |         Incrementing |     100 |  21.686 ms | 0.3687 ms | 0.2666 ms |   2.46 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **18.576 ms** | **0.8343 ms** | **0.6032 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  18.468 ms | 0.3091 ms | 0.2235 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |   10000 |  68.271 ms | 0.1237 ms | 0.0895 ms |   3.68 |     0.11 |
|                         Span_ |         Incrementing |   10000 |  17.416 ms | 0.4759 ms | 0.3441 ms |   0.94 |     0.03 |
|             Span_NullComparer |         Incrementing |   10000 |  17.429 ms | 0.4030 ms | 0.2914 ms |   0.94 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |   10000 |  56.037 ms | 0.1417 ms | 0.1025 ms |   3.02 |     0.09 |
| Span_StructComparableComparer |         Incrementing |   10000 |  14.939 ms | 0.5602 ms | 0.4051 ms |   0.80 |     0.03 |
|               Span_Comparison |         Incrementing |   10000 |  50.717 ms | 0.1699 ms | 0.1228 ms |   2.73 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **23.306 ms** | **0.3048 ms** | **0.2204 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  23.286 ms | 0.2014 ms | 0.1456 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 |  97.730 ms | 0.2459 ms | 0.1778 ms |   4.19 |     0.04 |
|                         Span_ |         Incrementing | 1000000 |  23.203 ms | 0.2543 ms | 0.1839 ms |   1.00 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |  22.952 ms | 0.2059 ms | 0.1489 ms |   0.98 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 |  80.346 ms | 0.3673 ms | 0.2656 ms |   3.45 |     0.03 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  19.692 ms | 0.3288 ms | 0.2377 ms |   0.84 |     0.01 |
|               Span_Comparison |         Incrementing | 1000000 |  72.822 ms | 0.2444 ms | 0.1767 ms |   3.12 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **30.873 ms** | **0.4356 ms** | **0.3149 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  31.459 ms | 3.5557 ms | 2.5710 ms |   1.02 |     0.08 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  32.679 ms | 2.4512 ms | 1.7724 ms |   1.06 |     0.06 |
|                         Span_ |  MedianOfThreeKiller |       2 |  15.296 ms | 0.9114 ms | 0.6590 ms |   0.50 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  21.428 ms | 0.3611 ms | 0.2611 ms |   0.69 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 |  88.225 ms | 2.0480 ms | 1.4808 ms |   2.86 |     0.05 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  43.212 ms | 0.6155 ms | 0.4451 ms |   1.40 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  12.703 ms | 0.0831 ms | 0.0601 ms |   0.41 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **23.577 ms** | **0.0340 ms** | **0.0246 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  23.280 ms | 0.4407 ms | 0.3186 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  28.072 ms | 0.8111 ms | 0.5865 ms |   1.19 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |       3 |  10.578 ms | 0.0736 ms | 0.0532 ms |   0.45 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  14.624 ms | 0.1059 ms | 0.0766 ms |   0.62 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  55.024 ms | 0.1491 ms | 0.1078 ms |   2.33 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  29.211 ms | 0.4425 ms | 0.3200 ms |   1.24 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  12.887 ms | 0.0851 ms | 0.0615 ms |   0.55 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **12.141 ms** | **0.1539 ms** | **0.1113 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  12.011 ms | 0.1536 ms | 0.1111 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  21.902 ms | 0.6992 ms | 0.5056 ms |   1.80 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |      10 |   7.351 ms | 0.2080 ms | 0.1504 ms |   0.61 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |   8.666 ms | 0.1627 ms | 0.1177 ms |   0.71 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  28.105 ms | 0.0878 ms | 0.0635 ms |   2.32 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  12.956 ms | 0.0719 ms | 0.0520 ms |   1.07 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  13.674 ms | 0.1857 ms | 0.1342 ms |   1.13 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **15.207 ms** | **0.2758 ms** | **0.1995 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  15.250 ms | 0.2743 ms | 0.1984 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  52.521 ms | 0.5517 ms | 0.3989 ms |   3.45 |     0.05 |
|                         Span_ |  MedianOfThreeKiller |     100 |  15.531 ms | 0.9234 ms | 0.6677 ms |   1.02 |     0.04 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  15.763 ms | 0.7219 ms | 0.5220 ms |   1.04 |     0.04 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |  47.312 ms | 1.2829 ms | 0.9276 ms |   3.11 |     0.07 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  13.052 ms | 0.2932 ms | 0.2120 ms |   0.86 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  40.166 ms | 0.8729 ms | 0.6312 ms |   2.64 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **41.471 ms** | **0.2613 ms** | **0.1889 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  41.392 ms | 0.2427 ms | 0.1755 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 142.950 ms | 0.4077 ms | 0.2948 ms |   3.45 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  52.749 ms | 0.1313 ms | 0.0949 ms |   1.27 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  52.748 ms | 0.0700 ms | 0.0506 ms |   1.27 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 138.486 ms | 0.4720 ms | 0.3413 ms |   3.34 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  48.574 ms | 0.0407 ms | 0.0294 ms |   1.17 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 124.539 ms | 1.6286 ms | 1.1776 ms |   3.00 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** |  **95.633 ms** | **0.4860 ms** | **0.3514 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 |  95.305 ms | 0.5484 ms | 0.3965 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 287.147 ms | 0.3381 ms | 0.2444 ms |   3.00 |     0.01 |
|                         Span_ |  MedianOfThreeKiller | 1000000 |  85.765 ms | 0.3068 ms | 0.2218 ms |   0.90 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 |  85.877 ms | 0.7089 ms | 0.5125 ms |   0.90 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 232.781 ms | 0.5219 ms | 0.3774 ms |   2.43 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 |  81.904 ms | 0.3629 ms | 0.2624 ms |   0.86 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 211.711 ms | 0.8783 ms | 0.6351 ms |   2.21 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **32.858 ms** | **0.1276 ms** | **0.0923 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  31.876 ms | 0.0467 ms | 0.0338 ms |   0.97 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  33.461 ms | 0.1533 ms | 0.1108 ms |   1.02 |     0.00 |
|                         Span_ | PartialRandomShuffle |       2 |  16.188 ms | 0.0654 ms | 0.0473 ms |   0.49 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  22.639 ms | 0.0887 ms | 0.0642 ms |   0.69 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 |  83.391 ms | 0.3377 ms | 0.2442 ms |   2.54 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  44.170 ms | 0.1027 ms | 0.0743 ms |   1.34 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |       2 |  13.146 ms | 0.1216 ms | 0.0879 ms |   0.40 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **25.714 ms** | **0.0622 ms** | **0.0450 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  25.169 ms | 0.1401 ms | 0.1013 ms |   0.98 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  29.942 ms | 0.2651 ms | 0.1917 ms |   1.16 |     0.01 |
|                         Span_ | PartialRandomShuffle |       3 |  12.282 ms | 0.0738 ms | 0.0533 ms |   0.48 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  16.533 ms | 0.1178 ms | 0.0851 ms |   0.64 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  57.257 ms | 0.0653 ms | 0.0473 ms |   2.23 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  30.918 ms | 0.0500 ms | 0.0361 ms |   1.20 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |       3 |  14.514 ms | 0.2252 ms | 0.1628 ms |   0.56 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **14.714 ms** | **0.0680 ms** | **0.0492 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  14.640 ms | 0.0799 ms | 0.0578 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  21.730 ms | 0.1623 ms | 0.1174 ms |   1.48 |     0.01 |
|                         Span_ | PartialRandomShuffle |      10 |   9.921 ms | 0.3583 ms | 0.2591 ms |   0.67 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  10.958 ms | 0.3809 ms | 0.2754 ms |   0.74 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  28.336 ms | 0.1970 ms | 0.1424 ms |   1.93 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  15.628 ms | 0.0578 ms | 0.0418 ms |   1.06 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |      10 |  14.021 ms | 0.0274 ms | 0.0198 ms |   0.95 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **36.089 ms** | **0.2743 ms** | **0.1983 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  36.200 ms | 0.2598 ms | 0.1878 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |  66.253 ms | 2.1694 ms | 1.5686 ms |   1.84 |     0.04 |
|                         Span_ | PartialRandomShuffle |     100 |  34.192 ms | 0.3593 ms | 0.2598 ms |   0.95 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  34.352 ms | 0.0930 ms | 0.0673 ms |   0.95 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 |  59.128 ms | 0.2933 ms | 0.2121 ms |   1.64 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  33.229 ms | 0.2155 ms | 0.1558 ms |   0.92 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |     100 |  51.663 ms | 0.1855 ms | 0.1341 ms |   1.43 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **62.318 ms** | **0.2598 ms** | **0.1878 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  62.174 ms | 0.2663 ms | 0.1926 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 126.286 ms | 0.2939 ms | 0.2125 ms |   2.03 |     0.01 |
|                         Span_ | PartialRandomShuffle |   10000 |  63.687 ms | 0.1894 ms | 0.1370 ms |   1.02 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  63.673 ms | 0.1064 ms | 0.0769 ms |   1.02 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 113.640 ms | 0.5097 ms | 0.3685 ms |   1.82 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |  60.246 ms | 0.0487 ms | 0.0352 ms |   0.97 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 105.689 ms | 0.3251 ms | 0.2351 ms |   1.70 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** |  **91.460 ms** | **0.3004 ms** | **0.2172 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 |  90.877 ms | 0.3239 ms | 0.2342 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 188.148 ms | 0.5501 ms | 0.3977 ms |   2.06 |     0.01 |
|                         Span_ | PartialRandomShuffle | 1000000 |  95.367 ms | 0.1204 ms | 0.0871 ms |   1.04 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 |  95.409 ms | 0.1685 ms | 0.1218 ms |   1.04 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 171.426 ms | 0.7099 ms | 0.5133 ms |   1.87 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 |  90.499 ms | 0.4836 ms | 0.3497 ms |   0.99 |     0.00 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 160.180 ms | 0.4454 ms | 0.3220 ms |   1.75 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **34.568 ms** | **0.0372 ms** | **0.0269 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  34.569 ms | 0.0927 ms | 0.0670 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |       2 |  36.274 ms | 0.0571 ms | 0.0413 ms |   1.05 |     0.00 |
|                         Span_ |               Random |       2 |  18.817 ms | 0.0908 ms | 0.0656 ms |   0.54 |     0.00 |
|             Span_NullComparer |               Random |       2 |  25.213 ms | 0.1623 ms | 0.1174 ms |   0.73 |     0.00 |
|  Span_ClassComparableComparer |               Random |       2 |  84.712 ms | 0.1522 ms | 0.1101 ms |   2.45 |     0.00 |
| Span_StructComparableComparer |               Random |       2 |  46.608 ms | 0.0645 ms | 0.0467 ms |   1.35 |     0.00 |
|               Span_Comparison |               Random |       2 |  15.389 ms | 0.0695 ms | 0.0502 ms |   0.45 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **30.093 ms** | **0.0504 ms** | **0.0365 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  29.112 ms | 0.3660 ms | 0.2647 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer |               Random |       3 |  34.534 ms | 0.3587 ms | 0.2594 ms |   1.15 |     0.01 |
|                         Span_ |               Random |       3 |  16.231 ms | 0.0604 ms | 0.0437 ms |   0.54 |     0.00 |
|             Span_NullComparer |               Random |       3 |  20.229 ms | 0.0385 ms | 0.0278 ms |   0.67 |     0.00 |
|  Span_ClassComparableComparer |               Random |       3 |  61.243 ms | 0.0674 ms | 0.0487 ms |   2.04 |     0.00 |
| Span_StructComparableComparer |               Random |       3 |  34.948 ms | 0.0391 ms | 0.0283 ms |   1.16 |     0.00 |
|               Span_Comparison |               Random |       3 |  18.585 ms | 0.0706 ms | 0.0510 ms |   0.62 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **25.641 ms** | **0.2896 ms** | **0.2094 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  25.472 ms | 0.2765 ms | 0.1999 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |      10 |  38.994 ms | 0.0590 ms | 0.0427 ms |   1.52 |     0.01 |
|                         Span_ |               Random |      10 |  19.523 ms | 0.0629 ms | 0.0455 ms |   0.76 |     0.01 |
|             Span_NullComparer |               Random |      10 |  20.760 ms | 0.0282 ms | 0.0204 ms |   0.81 |     0.01 |
|  Span_ClassComparableComparer |               Random |      10 |  42.597 ms | 0.2968 ms | 0.2146 ms |   1.66 |     0.02 |
| Span_StructComparableComparer |               Random |      10 |  24.941 ms | 0.0599 ms | 0.0433 ms |   0.97 |     0.01 |
|               Span_Comparison |               Random |      10 |  25.618 ms | 0.5053 ms | 0.3654 ms |   1.00 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **47.810 ms** | **1.0875 ms** | **0.7863 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  47.842 ms | 0.8282 ms | 0.5988 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random |     100 |  79.202 ms | 1.2154 ms | 0.8788 ms |   1.66 |     0.03 |
|                         Span_ |               Random |     100 |  45.389 ms | 0.8251 ms | 0.5966 ms |   0.95 |     0.02 |
|             Span_NullComparer |               Random |     100 |  45.374 ms | 0.3535 ms | 0.2556 ms |   0.95 |     0.02 |
|  Span_ClassComparableComparer |               Random |     100 |  72.075 ms | 3.5937 ms | 2.5985 ms |   1.51 |     0.06 |
| Span_StructComparableComparer |               Random |     100 |  43.723 ms | 0.3834 ms | 0.2772 ms |   0.91 |     0.02 |
|               Span_Comparison |               Random |     100 |  63.242 ms | 0.1387 ms | 0.1003 ms |   1.32 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** |  **90.832 ms** | **0.1910 ms** | **0.1381 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 |  91.004 ms | 0.3849 ms | 0.2783 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |   10000 | 159.285 ms | 0.7031 ms | 0.5084 ms |   1.75 |     0.01 |
|                         Span_ |               Random |   10000 |  92.714 ms | 0.0372 ms | 0.0269 ms |   1.02 |     0.00 |
|             Span_NullComparer |               Random |   10000 |  92.853 ms | 0.2127 ms | 0.1538 ms |   1.02 |     0.00 |
|  Span_ClassComparableComparer |               Random |   10000 | 145.587 ms | 1.6610 ms | 1.2010 ms |   1.60 |     0.01 |
| Span_StructComparableComparer |               Random |   10000 |  88.682 ms | 0.1147 ms | 0.0830 ms |   0.98 |     0.00 |
|               Span_Comparison |               Random |   10000 | 135.727 ms | 0.4484 ms | 0.3242 ms |   1.49 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **133.714 ms** | **0.2485 ms** | **0.1797 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 133.067 ms | 0.3165 ms | 0.2289 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 | 240.472 ms | 0.7668 ms | 0.5544 ms |   1.80 |     0.00 |
|                         Span_ |               Random | 1000000 | 139.515 ms | 0.1892 ms | 0.1368 ms |   1.04 |     0.00 |
|             Span_NullComparer |               Random | 1000000 | 139.402 ms | 0.2290 ms | 0.1656 ms |   1.04 |     0.00 |
|  Span_ClassComparableComparer |               Random | 1000000 | 222.801 ms | 0.7163 ms | 0.5179 ms |   1.67 |     0.00 |
| Span_StructComparableComparer |               Random | 1000000 | 133.318 ms | 0.1187 ms | 0.0858 ms |   1.00 |     0.00 |
|               Span_Comparison |               Random | 1000000 | 209.108 ms | 0.4385 ms | 0.3170 ms |   1.56 |     0.00 |
