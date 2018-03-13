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
|                        **Array_** |             **Constant** |       **2** |  **36.977 ms** | **0.1060 ms** | **0.0767 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  37.018 ms | 0.0430 ms | 0.0311 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |       2 | 133.479 ms | 0.0833 ms | 0.0602 ms |   3.61 |     0.01 |
|                         Span_ |             Constant |       2 |  14.512 ms | 0.0931 ms | 0.0673 ms |   0.39 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  31.014 ms | 0.0929 ms | 0.0672 ms |   0.84 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       2 | 118.126 ms | 0.1692 ms | 0.1223 ms |   3.19 |     0.01 |
| Span_StructComparableComparer |             Constant |       2 |  64.578 ms | 0.2330 ms | 0.1685 ms |   1.75 |     0.01 |
|               Span_Comparison |             Constant |       2 |  23.389 ms | 0.0486 ms | 0.0352 ms |   0.63 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **30.291 ms** | **0.0758 ms** | **0.0548 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  30.391 ms | 0.0994 ms | 0.0718 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |       3 | 101.973 ms | 0.3337 ms | 0.2413 ms |   3.37 |     0.01 |
|                         Span_ |             Constant |       3 |  10.902 ms | 0.1328 ms | 0.0960 ms |   0.36 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  21.890 ms | 0.0763 ms | 0.0552 ms |   0.72 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  80.299 ms | 2.9268 ms | 2.1163 ms |   2.65 |     0.07 |
| Span_StructComparableComparer |             Constant |       3 |  47.967 ms | 0.0495 ms | 0.0358 ms |   1.58 |     0.00 |
|               Span_Comparison |             Constant |       3 |  25.865 ms | 0.0665 ms | 0.0481 ms |   0.85 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |  **18.580 ms** | **0.0823 ms** | **0.0595 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |  18.582 ms | 0.1729 ms | 0.1250 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |      10 |  37.692 ms | 0.0534 ms | 0.0386 ms |   2.03 |     0.01 |
|                         Span_ |             Constant |      10 |   6.624 ms | 0.7919 ms | 0.5726 ms |   0.36 |     0.03 |
|             Span_NullComparer |             Constant |      10 |   9.718 ms | 0.1434 ms | 0.1037 ms |   0.52 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      10 |  30.622 ms | 0.0770 ms | 0.0557 ms |   1.65 |     0.01 |
| Span_StructComparableComparer |             Constant |      10 |  19.916 ms | 0.1471 ms | 0.1063 ms |   1.07 |     0.01 |
|               Span_Comparison |             Constant |      10 |  14.426 ms | 0.2762 ms | 0.1997 ms |   0.78 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **23.117 ms** | **0.1857 ms** | **0.1342 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  23.630 ms | 0.8122 ms | 0.5873 ms |   1.02 |     0.02 |
| Array_ClassComparableComparer |             Constant |     100 |  49.052 ms | 0.0505 ms | 0.0365 ms |   2.12 |     0.01 |
|                         Span_ |             Constant |     100 |  10.717 ms | 0.0920 ms | 0.0665 ms |   0.46 |     0.00 |
|             Span_NullComparer |             Constant |     100 |  11.017 ms | 0.0473 ms | 0.0342 ms |   0.48 |     0.00 |
|  Span_ClassComparableComparer |             Constant |     100 |  52.834 ms | 0.2138 ms | 0.1546 ms |   2.29 |     0.01 |
| Span_StructComparableComparer |             Constant |     100 |  34.662 ms | 0.2165 ms | 0.1565 ms |   1.50 |     0.01 |
|               Span_Comparison |             Constant |     100 |  52.840 ms | 0.0563 ms | 0.0407 ms |   2.29 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **43.991 ms** | **0.2668 ms** | **0.1929 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  43.989 ms | 0.5854 ms | 0.4233 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |   10000 | 112.776 ms | 0.0566 ms | 0.0409 ms |   2.56 |     0.01 |
|                         Span_ |             Constant |   10000 |  23.363 ms | 0.0600 ms | 0.0434 ms |   0.53 |     0.00 |
|             Span_NullComparer |             Constant |   10000 |  23.399 ms | 0.0652 ms | 0.0472 ms |   0.53 |     0.00 |
|  Span_ClassComparableComparer |             Constant |   10000 | 129.771 ms | 0.1270 ms | 0.0918 ms |   2.95 |     0.01 |
| Span_StructComparableComparer |             Constant |   10000 |  84.915 ms | 0.3450 ms | 0.2494 ms |   1.93 |     0.01 |
|               Span_Comparison |             Constant |   10000 | 136.489 ms | 0.3980 ms | 0.2877 ms |   3.10 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **58.782 ms** | **0.4083 ms** | **0.2952 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  58.451 ms | 0.4244 ms | 0.3069 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 169.409 ms | 0.1895 ms | 0.1370 ms |   2.88 |     0.01 |
|                         Span_ |             Constant | 1000000 |  33.798 ms | 0.3734 ms | 0.2700 ms |   0.57 |     0.01 |
|             Span_NullComparer |             Constant | 1000000 |  33.709 ms | 0.0474 ms | 0.0343 ms |   0.57 |     0.00 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 196.788 ms | 0.3826 ms | 0.2766 ms |   3.35 |     0.02 |
| Span_StructComparableComparer |             Constant | 1000000 | 127.765 ms | 0.4110 ms | 0.2972 ms |   2.17 |     0.01 |
|               Span_Comparison |             Constant | 1000000 | 207.706 ms | 0.1776 ms | 0.1284 ms |   3.53 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **37.370 ms** | **0.0457 ms** | **0.0330 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  37.027 ms | 0.0598 ms | 0.0432 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       2 | 133.247 ms | 0.1418 ms | 0.1025 ms |   3.57 |     0.00 |
|                         Span_ |         Decrementing |       2 |  14.829 ms | 0.0660 ms | 0.0477 ms |   0.40 |     0.00 |
|             Span_NullComparer |         Decrementing |       2 |  31.176 ms | 0.1072 ms | 0.0775 ms |   0.83 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       2 | 119.785 ms | 0.1266 ms | 0.0916 ms |   3.21 |     0.00 |
| Span_StructComparableComparer |         Decrementing |       2 |  64.911 ms | 0.0914 ms | 0.0661 ms |   1.74 |     0.00 |
|               Span_Comparison |         Decrementing |       2 |  22.937 ms | 0.0405 ms | 0.0292 ms |   0.61 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **30.406 ms** | **0.0590 ms** | **0.0426 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  30.497 ms | 0.1360 ms | 0.0983 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       3 | 100.607 ms | 0.2927 ms | 0.2117 ms |   3.31 |     0.01 |
|                         Span_ |         Decrementing |       3 |  11.575 ms | 0.0887 ms | 0.0641 ms |   0.38 |     0.00 |
|             Span_NullComparer |         Decrementing |       3 |  22.455 ms | 0.1220 ms | 0.0882 ms |   0.74 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  78.677 ms | 0.3425 ms | 0.2477 ms |   2.59 |     0.01 |
| Span_StructComparableComparer |         Decrementing |       3 |  46.645 ms | 0.0574 ms | 0.0415 ms |   1.53 |     0.00 |
|               Span_Comparison |         Decrementing |       3 |  23.328 ms | 0.0977 ms | 0.0706 ms |   0.77 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **26.642 ms** | **0.1317 ms** | **0.0952 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  26.646 ms | 0.0513 ms | 0.0371 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |      10 |  74.929 ms | 0.2310 ms | 0.1671 ms |   2.81 |     0.01 |
|                         Span_ |         Decrementing |      10 |  15.229 ms | 0.0479 ms | 0.0346 ms |   0.57 |     0.00 |
|             Span_NullComparer |         Decrementing |      10 |  18.639 ms | 0.0704 ms | 0.0509 ms |   0.70 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  75.984 ms | 0.3089 ms | 0.2233 ms |   2.85 |     0.01 |
| Span_StructComparableComparer |         Decrementing |      10 |  35.624 ms | 0.0608 ms | 0.0440 ms |   1.34 |     0.00 |
|               Span_Comparison |         Decrementing |      10 |  50.099 ms | 0.3838 ms | 0.2775 ms |   1.88 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **24.052 ms** | **0.3649 ms** | **0.2639 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  24.631 ms | 0.9197 ms | 0.6650 ms |   1.02 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |     100 |  68.959 ms | 0.1446 ms | 0.1045 ms |   2.87 |     0.03 |
|                         Span_ |         Decrementing |     100 |  12.980 ms | 0.2570 ms | 0.1858 ms |   0.54 |     0.01 |
|             Span_NullComparer |         Decrementing |     100 |  13.655 ms | 1.3571 ms | 0.9813 ms |   0.57 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  75.135 ms | 0.5279 ms | 0.3817 ms |   3.12 |     0.04 |
| Span_StructComparableComparer |         Decrementing |     100 |  40.393 ms | 0.1097 ms | 0.0793 ms |   1.68 |     0.02 |
|               Span_Comparison |         Decrementing |     100 |  71.879 ms | 0.1738 ms | 0.1257 ms |   2.99 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **40.083 ms** | **0.5179 ms** | **0.3745 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  40.615 ms | 0.8045 ms | 0.5817 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 184.370 ms | 0.1574 ms | 0.1138 ms |   4.60 |     0.04 |
|                         Span_ |         Decrementing |   10000 |  29.932 ms | 0.3190 ms | 0.2307 ms |   0.75 |     0.01 |
|             Span_NullComparer |         Decrementing |   10000 |  29.898 ms | 0.0840 ms | 0.0607 ms |   0.75 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |   10000 | 195.776 ms | 0.3055 ms | 0.2209 ms |   4.88 |     0.04 |
| Span_StructComparableComparer |         Decrementing |   10000 |  92.144 ms | 0.2234 ms | 0.1615 ms |   2.30 |     0.02 |
|               Span_Comparison |         Decrementing |   10000 | 200.361 ms | 0.5038 ms | 0.3643 ms |   5.00 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **57.105 ms** | **0.9135 ms** | **0.6605 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  57.279 ms | 0.5725 ms | 0.4140 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 304.767 ms | 0.8170 ms | 0.5907 ms |   5.34 |     0.06 |
|                         Span_ |         Decrementing | 1000000 |  45.824 ms | 0.1254 ms | 0.0907 ms |   0.80 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |  45.735 ms | 0.2740 ms | 0.1981 ms |   0.80 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 327.009 ms | 0.7350 ms | 0.5315 ms |   5.73 |     0.06 |
| Span_StructComparableComparer |         Decrementing | 1000000 | 149.716 ms | 0.5382 ms | 0.3892 ms |   2.62 |     0.03 |
|               Span_Comparison |         Decrementing | 1000000 | 331.250 ms | 3.5235 ms | 2.5477 ms |   5.80 |     0.08 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **37.007 ms** | **0.0515 ms** | **0.0372 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  37.081 ms | 0.0490 ms | 0.0355 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       2 | 132.693 ms | 0.1616 ms | 0.1168 ms |   3.59 |     0.00 |
|                         Span_ |         Incrementing |       2 |  14.479 ms | 0.0898 ms | 0.0649 ms |   0.39 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  31.044 ms | 0.0687 ms | 0.0497 ms |   0.84 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       2 | 116.471 ms | 0.1454 ms | 0.1051 ms |   3.15 |     0.00 |
| Span_StructComparableComparer |         Incrementing |       2 |  63.974 ms | 0.1109 ms | 0.0802 ms |   1.73 |     0.00 |
|               Span_Comparison |         Incrementing |       2 |  23.195 ms | 0.1926 ms | 0.1393 ms |   0.63 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **30.274 ms** | **0.0476 ms** | **0.0344 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  30.329 ms | 0.1191 ms | 0.0861 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       3 | 100.686 ms | 0.1145 ms | 0.0828 ms |   3.33 |     0.00 |
|                         Span_ |         Incrementing |       3 |  10.921 ms | 0.0755 ms | 0.0546 ms |   0.36 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  21.879 ms | 0.0984 ms | 0.0712 ms |   0.72 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  78.895 ms | 0.3179 ms | 0.2298 ms |   2.61 |     0.01 |
| Span_StructComparableComparer |         Incrementing |       3 |  46.333 ms | 0.0621 ms | 0.0449 ms |   1.53 |     0.00 |
|               Span_Comparison |         Incrementing |       3 |  24.633 ms | 0.1096 ms | 0.0793 ms |   0.81 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |  **18.583 ms** | **0.0540 ms** | **0.0390 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |  18.559 ms | 0.1075 ms | 0.0777 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |      10 |  36.799 ms | 0.0699 ms | 0.0505 ms |   1.98 |     0.00 |
|                         Span_ |         Incrementing |      10 |   6.338 ms | 0.2380 ms | 0.1721 ms |   0.34 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |   9.699 ms | 0.0789 ms | 0.0571 ms |   0.52 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  30.723 ms | 0.1388 ms | 0.1004 ms |   1.65 |     0.01 |
| Span_StructComparableComparer |         Incrementing |      10 |  19.926 ms | 0.1557 ms | 0.1126 ms |   1.07 |     0.01 |
|               Span_Comparison |         Incrementing |      10 |  13.976 ms | 0.1973 ms | 0.1426 ms |   0.75 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |  **17.658 ms** | **1.0332 ms** | **0.7471 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |  17.942 ms | 0.9846 ms | 0.7120 ms |   1.02 |     0.05 |
| Array_ClassComparableComparer |         Incrementing |     100 |  47.442 ms | 0.2039 ms | 0.1474 ms |   2.69 |     0.10 |
|                         Span_ |         Incrementing |     100 |   9.321 ms | 0.3836 ms | 0.2774 ms |   0.53 |     0.02 |
|             Span_NullComparer |         Incrementing |     100 |   9.551 ms | 0.0522 ms | 0.0378 ms |   0.54 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  48.257 ms | 0.0411 ms | 0.0297 ms |   2.74 |     0.10 |
| Span_StructComparableComparer |         Incrementing |     100 |  27.199 ms | 0.0421 ms | 0.0305 ms |   1.54 |     0.06 |
|               Span_Comparison |         Incrementing |     100 |  48.663 ms | 0.0874 ms | 0.0632 ms |   2.76 |     0.10 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **26.524 ms** | **0.5198 ms** | **0.3759 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  26.651 ms | 0.3495 ms | 0.2527 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |   10000 | 110.115 ms | 0.2628 ms | 0.1900 ms |   4.15 |     0.06 |
|                         Span_ |         Incrementing |   10000 |  18.942 ms | 0.7587 ms | 0.5486 ms |   0.71 |     0.02 |
|             Span_NullComparer |         Incrementing |   10000 |  18.914 ms | 0.4234 ms | 0.3062 ms |   0.71 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   10000 | 114.569 ms | 0.1531 ms | 0.1107 ms |   4.32 |     0.06 |
| Span_StructComparableComparer |         Incrementing |   10000 |  56.921 ms | 0.1953 ms | 0.1412 ms |   2.15 |     0.03 |
|               Span_Comparison |         Incrementing |   10000 | 120.087 ms | 0.4409 ms | 0.3188 ms |   4.53 |     0.06 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **33.247 ms** | **0.2042 ms** | **0.1477 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  33.353 ms | 0.5627 ms | 0.4068 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 | 160.872 ms | 0.4433 ms | 0.3205 ms |   4.84 |     0.02 |
|                         Span_ |         Incrementing | 1000000 |  26.276 ms | 0.1559 ms | 0.1127 ms |   0.79 |     0.00 |
|             Span_NullComparer |         Incrementing | 1000000 |  26.227 ms | 0.1511 ms | 0.1092 ms |   0.79 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 | 169.413 ms | 0.1106 ms | 0.0800 ms |   5.10 |     0.02 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  81.388 ms | 0.0975 ms | 0.0705 ms |   2.45 |     0.01 |
|               Span_Comparison |         Incrementing | 1000000 | 174.195 ms | 0.5906 ms | 0.4270 ms |   5.24 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **36.931 ms** | **0.0357 ms** | **0.0258 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  36.912 ms | 0.0570 ms | 0.0412 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 | 132.584 ms | 2.3775 ms | 1.7191 ms |   3.59 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |       2 |  14.457 ms | 0.1011 ms | 0.0731 ms |   0.39 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  31.031 ms | 0.0845 ms | 0.0611 ms |   0.84 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 | 116.800 ms | 0.1859 ms | 0.1344 ms |   3.16 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  63.931 ms | 0.1550 ms | 0.1121 ms |   1.73 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  23.077 ms | 0.1593 ms | 0.1152 ms |   0.62 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **30.277 ms** | **0.0463 ms** | **0.0335 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  30.331 ms | 0.0872 ms | 0.0631 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 | 100.898 ms | 0.5320 ms | 0.3847 ms |   3.33 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       3 |  10.918 ms | 0.1621 ms | 0.1172 ms |   0.36 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  21.985 ms | 0.0676 ms | 0.0489 ms |   0.73 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  78.912 ms | 0.3480 ms | 0.2516 ms |   2.61 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  46.142 ms | 0.0914 ms | 0.0661 ms |   1.52 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  24.546 ms | 0.0940 ms | 0.0680 ms |   0.81 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **21.007 ms** | **0.0470 ms** | **0.0340 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  20.955 ms | 0.0775 ms | 0.0560 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  51.052 ms | 0.0390 ms | 0.0282 ms |   2.43 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |      10 |   8.961 ms | 0.0986 ms | 0.0713 ms |   0.43 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |  12.480 ms | 0.0563 ms | 0.0407 ms |   0.59 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  43.725 ms | 0.7887 ms | 0.5703 ms |   2.08 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  26.087 ms | 0.1032 ms | 0.0746 ms |   1.24 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  26.395 ms | 0.1465 ms | 0.1059 ms |   1.26 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **27.364 ms** | **1.1203 ms** | **0.8101 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  27.750 ms | 1.0601 ms | 0.7665 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  86.774 ms | 0.3320 ms | 0.2401 ms |   3.17 |     0.08 |
|                         Span_ |  MedianOfThreeKiller |     100 |  16.344 ms | 0.0812 ms | 0.0587 ms |   0.60 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  16.733 ms | 0.0570 ms | 0.0412 ms |   0.61 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |  93.336 ms | 0.2647 ms | 0.1914 ms |   3.41 |     0.09 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  47.450 ms | 0.9393 ms | 0.6792 ms |   1.74 |     0.05 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  91.185 ms | 0.4034 ms | 0.2917 ms |   3.33 |     0.09 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **81.070 ms** | **0.3829 ms** | **0.2769 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  81.202 ms | 0.3921 ms | 0.2835 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 236.554 ms | 0.2529 ms | 0.1829 ms |   2.92 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  67.475 ms | 0.1574 ms | 0.1138 ms |   0.83 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  67.422 ms | 0.0892 ms | 0.0645 ms |   0.83 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 274.447 ms | 0.2562 ms | 0.1852 ms |   3.39 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 | 154.527 ms | 0.1675 ms | 0.1211 ms |   1.91 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 279.291 ms | 0.6696 ms | 0.4842 ms |   3.45 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** | **128.265 ms** | **0.5524 ms** | **0.3994 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 | 128.077 ms | 0.7122 ms | 0.5150 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 465.586 ms | 0.4104 ms | 0.2967 ms |   3.63 |     0.01 |
|                         Span_ |  MedianOfThreeKiller | 1000000 | 109.802 ms | 0.1320 ms | 0.0955 ms |   0.86 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 | 109.799 ms | 0.0769 ms | 0.0556 ms |   0.86 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 471.483 ms | 2.1456 ms | 1.5514 ms |   3.68 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 | 266.621 ms | 1.3746 ms | 0.9939 ms |   2.08 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 468.895 ms | 1.9588 ms | 1.4163 ms |   3.66 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **38.766 ms** | **0.0702 ms** | **0.0508 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  38.595 ms | 0.0860 ms | 0.0622 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 | 136.254 ms | 0.1929 ms | 0.1395 ms |   3.51 |     0.01 |
|                         Span_ | PartialRandomShuffle |       2 |  15.673 ms | 0.1116 ms | 0.0807 ms |   0.40 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  32.946 ms | 0.0304 ms | 0.0220 ms |   0.85 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 | 118.715 ms | 0.2629 ms | 0.1901 ms |   3.06 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  67.347 ms | 0.0807 ms | 0.0583 ms |   1.74 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |       2 |  24.659 ms | 0.1041 ms | 0.0753 ms |   0.64 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **32.714 ms** | **0.0206 ms** | **0.0149 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  32.811 ms | 0.1081 ms | 0.0781 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 | 104.781 ms | 0.6237 ms | 0.4510 ms |   3.20 |     0.01 |
|                         Span_ | PartialRandomShuffle |       3 |  13.390 ms | 0.0829 ms | 0.0599 ms |   0.41 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  24.706 ms | 0.0712 ms | 0.0515 ms |   0.76 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  81.930 ms | 0.2646 ms | 0.1913 ms |   2.50 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  49.771 ms | 0.0611 ms | 0.0442 ms |   1.52 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |       3 |  27.611 ms | 0.1350 ms | 0.0976 ms |   0.84 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **24.297 ms** | **0.0521 ms** | **0.0377 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  24.319 ms | 0.3694 ms | 0.2671 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  51.192 ms | 0.1116 ms | 0.0807 ms |   2.11 |     0.00 |
|                         Span_ | PartialRandomShuffle |      10 |  13.789 ms | 0.3480 ms | 0.2516 ms |   0.57 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  17.320 ms | 0.0413 ms | 0.0299 ms |   0.71 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  44.513 ms | 0.1673 ms | 0.1210 ms |   1.83 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  29.703 ms | 0.0472 ms | 0.0342 ms |   1.22 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |      10 |  27.480 ms | 0.3310 ms | 0.2393 ms |   1.13 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **58.161 ms** | **0.2114 ms** | **0.1529 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  58.207 ms | 0.2068 ms | 0.1495 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 | 106.651 ms | 0.1031 ms | 0.0746 ms |   1.83 |     0.00 |
|                         Span_ | PartialRandomShuffle |     100 |  48.623 ms | 0.1831 ms | 0.1324 ms |   0.84 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  48.973 ms | 0.0359 ms | 0.0260 ms |   0.84 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 | 117.263 ms | 0.0872 ms | 0.0631 ms |   2.02 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  75.534 ms | 0.1346 ms | 0.0973 ms |   1.30 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |     100 | 107.627 ms | 0.0617 ms | 0.0446 ms |   1.85 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **98.677 ms** | **0.2628 ms** | **0.1901 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  98.726 ms | 0.2188 ms | 0.1582 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 206.866 ms | 0.6234 ms | 0.4508 ms |   2.10 |     0.01 |
|                         Span_ | PartialRandomShuffle |   10000 |  84.855 ms | 0.0539 ms | 0.0390 ms |   0.86 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  84.883 ms | 0.0796 ms | 0.0575 ms |   0.86 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 226.184 ms | 0.2149 ms | 0.1554 ms |   2.29 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 | 145.464 ms | 0.1205 ms | 0.0871 ms |   1.47 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 219.989 ms | 0.1835 ms | 0.1327 ms |   2.23 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** | **141.058 ms** | **0.3098 ms** | **0.2240 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 | 140.807 ms | 0.4484 ms | 0.3242 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 309.649 ms | 0.1631 ms | 0.1180 ms |   2.20 |     0.00 |
|                         Span_ | PartialRandomShuffle | 1000000 | 123.997 ms | 0.1875 ms | 0.1356 ms |   0.88 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 | 123.988 ms | 0.0919 ms | 0.0665 ms |   0.88 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 340.850 ms | 1.4174 ms | 1.0249 ms |   2.42 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 | 218.851 ms | 0.5812 ms | 0.4203 ms |   1.55 |     0.00 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 333.786 ms | 1.0337 ms | 0.7475 ms |   2.37 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **41.658 ms** | **0.0378 ms** | **0.0274 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  41.720 ms | 0.0762 ms | 0.0551 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |       2 | 142.183 ms | 0.1591 ms | 0.1150 ms |   3.41 |     0.00 |
|                         Span_ |               Random |       2 |  19.181 ms | 0.0962 ms | 0.0696 ms |   0.46 |     0.00 |
|             Span_NullComparer |               Random |       2 |  36.465 ms | 0.0744 ms | 0.0538 ms |   0.88 |     0.00 |
|  Span_ClassComparableComparer |               Random |       2 | 122.025 ms | 0.0816 ms | 0.0590 ms |   2.93 |     0.00 |
| Span_StructComparableComparer |               Random |       2 |  72.163 ms | 0.1009 ms | 0.0729 ms |   1.73 |     0.00 |
|               Span_Comparison |               Random |       2 |  28.110 ms | 0.1937 ms | 0.1401 ms |   0.67 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **37.468 ms** | **0.0476 ms** | **0.0344 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  37.438 ms | 0.1151 ms | 0.0832 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |       3 | 112.559 ms | 0.3515 ms | 0.2542 ms |   3.00 |     0.01 |
|                         Span_ |               Random |       3 |  19.403 ms | 0.0796 ms | 0.0576 ms |   0.52 |     0.00 |
|             Span_NullComparer |               Random |       3 |  30.525 ms | 0.0355 ms | 0.0257 ms |   0.81 |     0.00 |
|  Span_ClassComparableComparer |               Random |       3 |  89.322 ms | 0.2263 ms | 0.1636 ms |   2.38 |     0.00 |
| Span_StructComparableComparer |               Random |       3 |  57.388 ms | 0.8501 ms | 0.6147 ms |   1.53 |     0.02 |
|               Span_Comparison |               Random |       3 |  32.655 ms | 0.1943 ms | 0.1405 ms |   0.87 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **38.497 ms** | **0.0584 ms** | **0.0422 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  38.470 ms | 0.0772 ms | 0.0558 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |      10 |  76.342 ms | 0.0797 ms | 0.0576 ms |   1.98 |     0.00 |
|                         Span_ |               Random |      10 |  28.968 ms | 0.0586 ms | 0.0424 ms |   0.75 |     0.00 |
|             Span_NullComparer |               Random |      10 |  32.350 ms | 0.1655 ms | 0.1197 ms |   0.84 |     0.00 |
|  Span_ClassComparableComparer |               Random |      10 |  75.072 ms | 0.2019 ms | 0.1460 ms |   1.95 |     0.00 |
| Span_StructComparableComparer |               Random |      10 |  48.766 ms | 0.0569 ms | 0.0411 ms |   1.27 |     0.00 |
|               Span_Comparison |               Random |      10 |  52.875 ms | 0.0492 ms | 0.0356 ms |   1.37 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **75.171 ms** | **0.0970 ms** | **0.0702 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  75.190 ms | 0.1522 ms | 0.1100 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |     100 | 127.498 ms | 0.2170 ms | 0.1569 ms |   1.70 |     0.00 |
|                         Span_ |               Random |     100 |  64.264 ms | 0.2226 ms | 0.1610 ms |   0.85 |     0.00 |
|             Span_NullComparer |               Random |     100 |  64.621 ms | 0.0618 ms | 0.0447 ms |   0.86 |     0.00 |
|  Span_ClassComparableComparer |               Random |     100 | 141.904 ms | 0.1813 ms | 0.1311 ms |   1.89 |     0.00 |
| Span_StructComparableComparer |               Random |     100 |  96.358 ms | 0.0847 ms | 0.0612 ms |   1.28 |     0.00 |
|               Span_Comparison |               Random |     100 | 128.899 ms | 0.2575 ms | 0.1862 ms |   1.71 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** | **144.312 ms** | **0.3016 ms** | **0.2180 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 | 144.365 ms | 0.2206 ms | 0.1595 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |   10000 | 266.445 ms | 0.1732 ms | 0.1252 ms |   1.85 |     0.00 |
|                         Span_ |               Random |   10000 | 129.094 ms | 0.0387 ms | 0.0280 ms |   0.89 |     0.00 |
|             Span_NullComparer |               Random |   10000 | 129.104 ms | 0.0633 ms | 0.0458 ms |   0.89 |     0.00 |
|  Span_ClassComparableComparer |               Random |   10000 | 293.665 ms | 1.1633 ms | 0.8411 ms |   2.03 |     0.01 |
| Span_StructComparableComparer |               Random |   10000 | 202.756 ms | 0.1358 ms | 0.0982 ms |   1.40 |     0.00 |
|               Span_Comparison |               Random |   10000 | 279.605 ms | 1.6836 ms | 1.2173 ms |   1.94 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **210.476 ms** | **0.2062 ms** | **0.1491 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 210.240 ms | 0.3607 ms | 0.2608 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 | 406.386 ms | 0.1941 ms | 0.1404 ms |   1.93 |     0.00 |
|                         Span_ |               Random | 1000000 | 192.118 ms | 0.1889 ms | 0.1366 ms |   0.91 |     0.00 |
|             Span_NullComparer |               Random | 1000000 | 192.048 ms | 0.0784 ms | 0.0567 ms |   0.91 |     0.00 |
|  Span_ClassComparableComparer |               Random | 1000000 | 449.466 ms | 0.5997 ms | 0.4337 ms |   2.14 |     0.00 |
| Span_StructComparableComparer |               Random | 1000000 | 308.964 ms | 0.2112 ms | 0.1527 ms |   1.47 |     0.00 |
|               Span_Comparison |               Random | 1000000 | 429.457 ms | 0.3358 ms | 0.2428 ms |   2.04 |     0.00 |
