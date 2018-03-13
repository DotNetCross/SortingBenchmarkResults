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
|                        **Array_** |             **Constant** |       **2** |  **18.209 ms** | **0.0709 ms** | **0.0513 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       2 |  18.094 ms | 0.0415 ms | 0.0300 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |             Constant |       2 |  31.637 ms | 1.2320 ms | 0.8908 ms |   1.74 |     0.05 |
|                         Span_ |             Constant |       2 |   9.469 ms | 0.0726 ms | 0.0525 ms |   0.52 |     0.00 |
|             Span_NullComparer |             Constant |       2 |  20.483 ms | 0.0804 ms | 0.0581 ms |   1.12 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       2 |  78.918 ms | 0.2521 ms | 0.1823 ms |   4.33 |     0.02 |
| Span_StructComparableComparer |             Constant |       2 |  44.346 ms | 0.1697 ms | 0.1227 ms |   2.44 |     0.01 |
|               Span_Comparison |             Constant |       2 |  14.815 ms | 0.0828 ms | 0.0599 ms |   0.81 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |       **3** |  **15.792 ms** | **0.0521 ms** | **0.0377 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |       3 |  15.827 ms | 0.0766 ms | 0.0554 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |       3 |  26.908 ms | 0.0436 ms | 0.0315 ms |   1.70 |     0.00 |
|                         Span_ |             Constant |       3 |   6.531 ms | 0.0593 ms | 0.0429 ms |   0.41 |     0.00 |
|             Span_NullComparer |             Constant |       3 |  14.245 ms | 0.0507 ms | 0.0367 ms |   0.90 |     0.00 |
|  Span_ClassComparableComparer |             Constant |       3 |  53.624 ms | 0.0794 ms | 0.0574 ms |   3.40 |     0.01 |
| Span_StructComparableComparer |             Constant |       3 |  29.663 ms | 0.1041 ms | 0.0752 ms |   1.88 |     0.01 |
|               Span_Comparison |             Constant |       3 |  15.423 ms | 0.0596 ms | 0.0431 ms |   0.98 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **10** |   **9.081 ms** | **0.1532 ms** | **0.1107 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      10 |   8.960 ms | 0.1217 ms | 0.0880 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |             Constant |      10 |  13.348 ms | 0.1179 ms | 0.0852 ms |   1.47 |     0.02 |
|                         Span_ |             Constant |      10 |   3.054 ms | 0.0586 ms | 0.0424 ms |   0.34 |     0.01 |
|             Span_NullComparer |             Constant |      10 |   5.552 ms | 0.3984 ms | 0.2880 ms |   0.61 |     0.03 |
|  Span_ClassComparableComparer |             Constant |      10 |  19.205 ms | 0.0455 ms | 0.0329 ms |   2.12 |     0.02 |
| Span_StructComparableComparer |             Constant |      10 |  10.420 ms | 0.0873 ms | 0.0632 ms |   1.15 |     0.01 |
|               Span_Comparison |             Constant |      10 |   9.379 ms | 0.0471 ms | 0.0341 ms |   1.03 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **100** |  **10.443 ms** | **0.2016 ms** | **0.1458 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     100 |  10.602 ms | 0.4801 ms | 0.3472 ms |   1.02 |     0.03 |
| Array_ClassComparableComparer |             Constant |     100 |  31.016 ms | 0.0596 ms | 0.0431 ms |   2.97 |     0.04 |
|                         Span_ |             Constant |     100 |   6.895 ms | 0.2329 ms | 0.1684 ms |   0.66 |     0.02 |
|             Span_NullComparer |             Constant |     100 |   7.277 ms | 0.4889 ms | 0.3535 ms |   0.70 |     0.03 |
|  Span_ClassComparableComparer |             Constant |     100 |  29.042 ms | 0.2573 ms | 0.1860 ms |   2.78 |     0.04 |
| Span_StructComparableComparer |             Constant |     100 |   9.851 ms | 0.2613 ms | 0.1889 ms |   0.94 |     0.02 |
|               Span_Comparison |             Constant |     100 |  28.887 ms | 0.0478 ms | 0.0345 ms |   2.77 |     0.04 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **10000** |  **19.369 ms** | **0.4951 ms** | **0.3580 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   10000 |  19.025 ms | 0.1134 ms | 0.0820 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |   10000 |  75.597 ms | 0.2444 ms | 0.1767 ms |   3.90 |     0.07 |
|                         Span_ |             Constant |   10000 |  18.107 ms | 0.0628 ms | 0.0454 ms |   0.94 |     0.02 |
|             Span_NullComparer |             Constant |   10000 |  18.319 ms | 0.7721 ms | 0.5583 ms |   0.95 |     0.03 |
|  Span_ClassComparableComparer |             Constant |   10000 |  70.654 ms | 0.0522 ms | 0.0378 ms |   3.65 |     0.06 |
| Span_StructComparableComparer |             Constant |   10000 |  23.649 ms | 0.1031 ms | 0.0745 ms |   1.22 |     0.02 |
|               Span_Comparison |             Constant |   10000 |  75.091 ms | 0.1075 ms | 0.0777 ms |   3.88 |     0.07 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |             **Constant** | **1000000** |  **26.943 ms** | **0.2356 ms** | **0.1704 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant | 1000000 |  26.909 ms | 0.2121 ms | 0.1534 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant | 1000000 | 113.019 ms | 0.1860 ms | 0.1345 ms |   4.19 |     0.03 |
|                         Span_ |             Constant | 1000000 |  27.147 ms | 0.2161 ms | 0.1562 ms |   1.01 |     0.01 |
|             Span_NullComparer |             Constant | 1000000 |  27.122 ms | 0.1484 ms | 0.1073 ms |   1.01 |     0.01 |
|  Span_ClassComparableComparer |             Constant | 1000000 | 106.577 ms | 0.0757 ms | 0.0548 ms |   3.96 |     0.02 |
| Span_StructComparableComparer |             Constant | 1000000 |  36.361 ms | 0.1708 ms | 0.1235 ms |   1.35 |     0.01 |
|               Span_Comparison |             Constant | 1000000 | 114.185 ms | 0.2415 ms | 0.1746 ms |   4.24 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **2** |  **18.660 ms** | **0.1232 ms** | **0.0891 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       2 |  18.525 ms | 0.0687 ms | 0.0497 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |       2 |  31.962 ms | 0.4024 ms | 0.2910 ms |   1.71 |     0.02 |
|                         Span_ |         Decrementing |       2 |   9.970 ms | 0.1523 ms | 0.1101 ms |   0.53 |     0.01 |
|             Span_NullComparer |         Decrementing |       2 |  21.145 ms | 0.0501 ms | 0.0362 ms |   1.13 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |       2 |  79.862 ms | 0.0821 ms | 0.0594 ms |   4.28 |     0.02 |
| Span_StructComparableComparer |         Decrementing |       2 |  45.374 ms | 0.1617 ms | 0.1169 ms |   2.43 |     0.01 |
|               Span_Comparison |         Decrementing |       2 |  15.541 ms | 0.0508 ms | 0.0368 ms |   0.83 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |       **3** |  **15.954 ms** | **0.0587 ms** | **0.0424 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |       3 |  15.938 ms | 0.0629 ms | 0.0455 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |       3 |  27.890 ms | 0.0602 ms | 0.0436 ms |   1.75 |     0.01 |
|                         Span_ |         Decrementing |       3 |   7.987 ms | 0.0726 ms | 0.0525 ms |   0.50 |     0.00 |
|             Span_NullComparer |         Decrementing |       3 |  15.476 ms | 0.0505 ms | 0.0365 ms |   0.97 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |       3 |  53.824 ms | 0.0956 ms | 0.0691 ms |   3.37 |     0.01 |
| Span_StructComparableComparer |         Decrementing |       3 |  31.210 ms | 0.0727 ms | 0.0526 ms |   1.96 |     0.01 |
|               Span_Comparison |         Decrementing |       3 |  15.729 ms | 0.0769 ms | 0.0556 ms |   0.99 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **10** |  **25.009 ms** | **0.0739 ms** | **0.0534 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      10 |  24.963 ms | 0.0607 ms | 0.0439 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |      10 |  38.098 ms | 0.0578 ms | 0.0418 ms |   1.52 |     0.00 |
|                         Span_ |         Decrementing |      10 |  11.973 ms | 0.1495 ms | 0.1081 ms |   0.48 |     0.00 |
|             Span_NullComparer |         Decrementing |      10 |  14.315 ms | 0.1188 ms | 0.0859 ms |   0.57 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |      10 |  38.047 ms | 0.0480 ms | 0.0347 ms |   1.52 |     0.00 |
| Span_StructComparableComparer |         Decrementing |      10 |  19.137 ms | 0.0989 ms | 0.0715 ms |   0.77 |     0.00 |
|               Span_Comparison |         Decrementing |      10 |  24.410 ms | 0.0571 ms | 0.0413 ms |   0.98 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **100** |  **14.139 ms** | **1.2786 ms** | **0.9245 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     100 |  13.874 ms | 0.2352 ms | 0.1701 ms |   0.98 |     0.05 |
| Array_ClassComparableComparer |         Decrementing |     100 |  43.087 ms | 0.1217 ms | 0.0880 ms |   3.06 |     0.16 |
|                         Span_ |         Decrementing |     100 |   7.791 ms | 0.2059 ms | 0.1489 ms |   0.55 |     0.03 |
|             Span_NullComparer |         Decrementing |     100 |   8.328 ms | 1.1926 ms | 0.8623 ms |   0.59 |     0.07 |
|  Span_ClassComparableComparer |         Decrementing |     100 |  38.090 ms | 0.0920 ms | 0.0665 ms |   2.70 |     0.14 |
| Span_StructComparableComparer |         Decrementing |     100 |  10.545 ms | 0.2245 ms | 0.1623 ms |   0.75 |     0.04 |
|               Span_Comparison |         Decrementing |     100 |  34.683 ms | 0.0733 ms | 0.0530 ms |   2.46 |     0.13 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **10000** |  **23.800 ms** | **1.0732 ms** | **0.7760 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   10000 |  23.207 ms | 0.0793 ms | 0.0574 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |   10000 | 106.790 ms | 0.1751 ms | 0.1266 ms |   4.49 |     0.14 |
|                         Span_ |         Decrementing |   10000 |  16.618 ms | 0.0937 ms | 0.0677 ms |   0.70 |     0.02 |
|             Span_NullComparer |         Decrementing |   10000 |  16.642 ms | 0.1000 ms | 0.0723 ms |   0.70 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |   10000 |  93.201 ms | 0.0934 ms | 0.0675 ms |   3.92 |     0.12 |
| Span_StructComparableComparer |         Decrementing |   10000 |  23.217 ms | 0.4016 ms | 0.2904 ms |   0.98 |     0.03 |
|               Span_Comparison |         Decrementing |   10000 |  81.161 ms | 0.5418 ms | 0.3917 ms |   3.41 |     0.10 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Decrementing** | **1000000** |  **32.582 ms** | **0.2689 ms** | **0.1944 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing | 1000000 |  32.487 ms | 0.1646 ms | 0.1190 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing | 1000000 | 175.079 ms | 0.2651 ms | 0.1917 ms |   5.37 |     0.03 |
|                         Span_ |         Decrementing | 1000000 |  25.378 ms | 0.3133 ms | 0.2265 ms |   0.78 |     0.01 |
|             Span_NullComparer |         Decrementing | 1000000 |  25.542 ms | 0.6211 ms | 0.4491 ms |   0.78 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing | 1000000 | 154.780 ms | 0.1550 ms | 0.1121 ms |   4.75 |     0.03 |
| Span_StructComparableComparer |         Decrementing | 1000000 |  36.631 ms | 0.3040 ms | 0.2198 ms |   1.12 |     0.01 |
|               Span_Comparison |         Decrementing | 1000000 | 133.525 ms | 0.2780 ms | 0.2010 ms |   4.10 |     0.02 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **2** |  **18.211 ms** | **0.0824 ms** | **0.0596 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       2 |  18.140 ms | 0.0476 ms | 0.0344 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       2 |  31.036 ms | 0.0214 ms | 0.0154 ms |   1.70 |     0.01 |
|                         Span_ |         Incrementing |       2 |   9.466 ms | 0.1150 ms | 0.0832 ms |   0.52 |     0.00 |
|             Span_NullComparer |         Incrementing |       2 |  20.441 ms | 0.0700 ms | 0.0506 ms |   1.12 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       2 |  78.597 ms | 0.1946 ms | 0.1407 ms |   4.32 |     0.02 |
| Span_StructComparableComparer |         Incrementing |       2 |  44.061 ms | 0.1137 ms | 0.0822 ms |   2.42 |     0.01 |
|               Span_Comparison |         Incrementing |       2 |  14.566 ms | 0.0589 ms | 0.0426 ms |   0.80 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |       **3** |  **15.795 ms** | **0.0447 ms** | **0.0323 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |       3 |  15.897 ms | 0.0500 ms | 0.0361 ms |   1.01 |     0.00 |
| Array_ClassComparableComparer |         Incrementing |       3 |  26.340 ms | 0.0516 ms | 0.0373 ms |   1.67 |     0.00 |
|                         Span_ |         Incrementing |       3 |   6.521 ms | 0.0527 ms | 0.0381 ms |   0.41 |     0.00 |
|             Span_NullComparer |         Incrementing |       3 |  14.210 ms | 0.0590 ms | 0.0427 ms |   0.90 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |       3 |  52.565 ms | 0.0653 ms | 0.0473 ms |   3.33 |     0.01 |
| Span_StructComparableComparer |         Incrementing |       3 |  29.773 ms | 0.1016 ms | 0.0735 ms |   1.88 |     0.01 |
|               Span_Comparison |         Incrementing |       3 |  14.013 ms | 0.1040 ms | 0.0752 ms |   0.89 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **10** |   **9.072 ms** | **0.1727 ms** | **0.1249 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      10 |   8.885 ms | 0.0755 ms | 0.0546 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      10 |  13.321 ms | 0.1258 ms | 0.0909 ms |   1.47 |     0.02 |
|                         Span_ |         Incrementing |      10 |   3.089 ms | 0.1114 ms | 0.0806 ms |   0.34 |     0.01 |
|             Span_NullComparer |         Incrementing |      10 |   5.431 ms | 0.2190 ms | 0.1584 ms |   0.60 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |      10 |  19.078 ms | 0.0741 ms | 0.0536 ms |   2.10 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      10 |  10.420 ms | 0.0898 ms | 0.0649 ms |   1.15 |     0.02 |
|               Span_Comparison |         Incrementing |      10 |   9.189 ms | 0.0473 ms | 0.0342 ms |   1.01 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **100** |   **8.878 ms** | **0.2759 ms** | **0.1995 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     100 |   8.839 ms | 0.2875 ms | 0.2079 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |     100 |  28.262 ms | 0.0908 ms | 0.0657 ms |   3.18 |     0.07 |
|                         Span_ |         Incrementing |     100 |   4.864 ms | 0.2397 ms | 0.1733 ms |   0.55 |     0.02 |
|             Span_NullComparer |         Incrementing |     100 |   5.101 ms | 0.3127 ms | 0.2261 ms |   0.57 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |     100 |  24.314 ms | 0.0602 ms | 0.0435 ms |   2.74 |     0.06 |
| Span_StructComparableComparer |         Incrementing |     100 |   6.372 ms | 0.2067 ms | 0.1495 ms |   0.72 |     0.02 |
|               Span_Comparison |         Incrementing |     100 |  21.396 ms | 0.1296 ms | 0.0937 ms |   2.41 |     0.05 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **10000** |  **17.032 ms** | **1.0735 ms** | **0.7762 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   10000 |  16.342 ms | 0.9307 ms | 0.6729 ms |   0.96 |     0.06 |
| Array_ClassComparableComparer |         Incrementing |   10000 |  66.977 ms | 0.2507 ms | 0.1813 ms |   3.94 |     0.17 |
|                         Span_ |         Incrementing |   10000 |  11.399 ms | 0.6426 ms | 0.4646 ms |   0.67 |     0.04 |
|             Span_NullComparer |         Incrementing |   10000 |  11.515 ms | 0.4842 ms | 0.3501 ms |   0.68 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |   10000 |  57.144 ms | 0.1676 ms | 0.1212 ms |   3.36 |     0.15 |
| Span_StructComparableComparer |         Incrementing |   10000 |  14.459 ms | 0.4316 ms | 0.3120 ms |   0.85 |     0.04 |
|               Span_Comparison |         Incrementing |   10000 |  50.456 ms | 0.1354 ms | 0.0979 ms |   2.97 |     0.13 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |         **Incrementing** | **1000000** |  **19.893 ms** | **0.2234 ms** | **0.1615 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing | 1000000 |  19.925 ms | 0.3389 ms | 0.2451 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing | 1000000 |  97.150 ms | 0.3730 ms | 0.2697 ms |   4.88 |     0.04 |
|                         Span_ |         Incrementing | 1000000 |  14.356 ms | 0.3426 ms | 0.2477 ms |   0.72 |     0.01 |
|             Span_NullComparer |         Incrementing | 1000000 |  14.431 ms | 0.3821 ms | 0.2763 ms |   0.73 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing | 1000000 |  83.281 ms | 0.2114 ms | 0.1529 ms |   4.19 |     0.03 |
| Span_StructComparableComparer |         Incrementing | 1000000 |  19.236 ms | 0.3799 ms | 0.2747 ms |   0.97 |     0.02 |
|               Span_Comparison |         Incrementing | 1000000 |  72.787 ms | 0.3265 ms | 0.2361 ms |   3.66 |     0.03 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **2** |  **18.208 ms** | **0.0764 ms** | **0.0553 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       2 |  18.107 ms | 0.0917 ms | 0.0663 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       2 |  31.062 ms | 0.0564 ms | 0.0408 ms |   1.71 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       2 |   9.469 ms | 0.0532 ms | 0.0385 ms |   0.52 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       2 |  20.426 ms | 0.0689 ms | 0.0499 ms |   1.12 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       2 |  80.432 ms | 0.1363 ms | 0.0985 ms |   4.42 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       2 |  44.090 ms | 0.1216 ms | 0.0879 ms |   2.42 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       2 |  14.497 ms | 0.0146 ms | 0.0105 ms |   0.80 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |       **3** |  **15.855 ms** | **0.0502 ms** | **0.0363 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |       3 |  15.779 ms | 0.0564 ms | 0.0408 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |       3 |  26.361 ms | 0.0913 ms | 0.0660 ms |   1.66 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |       3 |   6.526 ms | 0.0412 ms | 0.0298 ms |   0.41 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |       3 |  14.209 ms | 0.0606 ms | 0.0438 ms |   0.90 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |       3 |  52.588 ms | 0.0914 ms | 0.0661 ms |   3.32 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |       3 |  29.742 ms | 0.1205 ms | 0.0871 ms |   1.88 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |       3 |  14.006 ms | 0.1168 ms | 0.0844 ms |   0.88 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **10** |  **13.865 ms** | **0.0514 ms** | **0.0372 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      10 |  13.774 ms | 0.0719 ms | 0.0520 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      10 |  22.202 ms | 0.0230 ms | 0.0167 ms |   1.60 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |      10 |   5.990 ms | 0.1619 ms | 0.1170 ms |   0.43 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |      10 |   8.370 ms | 0.1417 ms | 0.1025 ms |   0.60 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      10 |  25.910 ms | 0.0489 ms | 0.0354 ms |   1.87 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      10 |  13.468 ms | 0.3064 ms | 0.2215 ms |   0.97 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |      10 |  13.268 ms | 0.0423 ms | 0.0306 ms |   0.96 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **100** |  **17.268 ms** | **2.6593 ms** | **1.9229 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     100 |  17.105 ms | 1.1713 ms | 0.8469 ms |   1.00 |     0.10 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     100 |  51.766 ms | 0.2053 ms | 0.1484 ms |   3.02 |     0.25 |
|                         Span_ |  MedianOfThreeKiller |     100 |   9.772 ms | 0.2512 ms | 0.1816 ms |   0.57 |     0.05 |
|             Span_NullComparer |  MedianOfThreeKiller |     100 |  10.127 ms | 0.2543 ms | 0.1838 ms |   0.59 |     0.05 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     100 |  46.698 ms | 0.1529 ms | 0.1105 ms |   2.73 |     0.23 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     100 |  12.994 ms | 0.0968 ms | 0.0700 ms |   0.76 |     0.06 |
|               Span_Comparison |  MedianOfThreeKiller |     100 |  39.436 ms | 0.1859 ms | 0.1344 ms |   2.30 |     0.19 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **10000** |  **48.444 ms** | **0.3463 ms** | **0.2504 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   10000 |  48.288 ms | 0.3977 ms | 0.2875 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 141.227 ms | 0.3707 ms | 0.2681 ms |   2.92 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |   10000 |  40.643 ms | 0.1048 ms | 0.0758 ms |   0.84 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |   10000 |  40.681 ms | 0.2235 ms | 0.1616 ms |   0.84 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   10000 | 138.626 ms | 0.1149 ms | 0.0831 ms |   2.86 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   10000 |  49.484 ms | 0.1543 ms | 0.1116 ms |   1.02 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   10000 | 123.706 ms | 0.1280 ms | 0.0926 ms |   2.55 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** | **1000000** |  **75.489 ms** | **0.3416 ms** | **0.2470 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller | 1000000 |  75.237 ms | 0.2758 ms | 0.1994 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 283.251 ms | 0.3950 ms | 0.2856 ms |   3.75 |     0.01 |
|                         Span_ |  MedianOfThreeKiller | 1000000 |  66.611 ms | 0.3209 ms | 0.2320 ms |   0.88 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller | 1000000 |  66.726 ms | 0.3316 ms | 0.2398 ms |   0.88 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller | 1000000 | 239.913 ms | 0.2258 ms | 0.1632 ms |   3.18 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller | 1000000 |  86.360 ms | 0.3525 ms | 0.2549 ms |   1.14 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller | 1000000 | 214.674 ms | 0.1810 ms | 0.1309 ms |   2.84 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **2** |  **19.359 ms** | **0.0636 ms** | **0.0460 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       2 |  19.239 ms | 0.2764 ms | 0.1998 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |       2 |  32.612 ms | 0.6098 ms | 0.4409 ms |   1.68 |     0.02 |
|                         Span_ | PartialRandomShuffle |       2 |  10.539 ms | 0.1005 ms | 0.0727 ms |   0.54 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       2 |  21.717 ms | 0.0629 ms | 0.0455 ms |   1.12 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       2 |  80.044 ms | 0.0811 ms | 0.0586 ms |   4.13 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       2 |  44.612 ms | 0.0786 ms | 0.0569 ms |   2.30 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       2 |  15.283 ms | 0.0571 ms | 0.0413 ms |   0.79 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |       **3** |  **17.256 ms** | **0.0737 ms** | **0.0533 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |       3 |  17.159 ms | 0.0445 ms | 0.0322 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |       3 |  28.703 ms | 0.8375 ms | 0.6055 ms |   1.66 |     0.03 |
|                         Span_ | PartialRandomShuffle |       3 |   8.230 ms | 0.0522 ms | 0.0378 ms |   0.48 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |       3 |  16.049 ms | 0.0285 ms | 0.0206 ms |   0.93 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |       3 |  55.320 ms | 0.0397 ms | 0.0287 ms |   3.21 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |       3 |  31.527 ms | 0.1091 ms | 0.0789 ms |   1.83 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |       3 |  15.980 ms | 0.0350 ms | 0.0253 ms |   0.93 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **10** |  **15.296 ms** | **0.0476 ms** | **0.0344 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      10 |  15.238 ms | 0.0802 ms | 0.0580 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |      10 |  22.077 ms | 0.0610 ms | 0.0441 ms |   1.44 |     0.00 |
|                         Span_ | PartialRandomShuffle |      10 |   7.980 ms | 0.1076 ms | 0.0778 ms |   0.52 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |      10 |  10.628 ms | 0.4679 ms | 0.3383 ms |   0.69 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      10 |  26.066 ms | 0.1562 ms | 0.1129 ms |   1.70 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |      10 |  15.766 ms | 0.1454 ms | 0.1051 ms |   1.03 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |      10 |  14.668 ms | 0.0778 ms | 0.0563 ms |   0.96 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **100** |  **38.828 ms** | **0.1475 ms** | **0.1066 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     100 |  38.841 ms | 0.1712 ms | 0.1238 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |     100 |  64.544 ms | 0.5080 ms | 0.3673 ms |   1.66 |     0.01 |
|                         Span_ | PartialRandomShuffle |     100 |  30.401 ms | 0.0281 ms | 0.0203 ms |   0.78 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |     100 |  30.653 ms | 0.0504 ms | 0.0364 ms |   0.79 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     100 |  57.263 ms | 0.9319 ms | 0.6738 ms |   1.47 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |     100 |  32.667 ms | 0.0387 ms | 0.0280 ms |   0.84 |     0.00 |
|               Span_Comparison | PartialRandomShuffle |     100 |  50.599 ms | 0.2348 ms | 0.1698 ms |   1.30 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **10000** |  **61.184 ms** | **0.0853 ms** | **0.0617 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   10000 |  61.087 ms | 0.0897 ms | 0.0649 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle |   10000 | 123.531 ms | 0.2220 ms | 0.1606 ms |   2.02 |     0.00 |
|                         Span_ | PartialRandomShuffle |   10000 |  53.277 ms | 0.0391 ms | 0.0283 ms |   0.87 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle |   10000 |  53.258 ms | 0.0499 ms | 0.0361 ms |   0.87 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   10000 | 110.897 ms | 0.4175 ms | 0.3019 ms |   1.81 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   10000 |  59.762 ms | 0.9183 ms | 0.6640 ms |   0.98 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   10000 | 102.343 ms | 0.1334 ms | 0.0964 ms |   1.67 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** | **1000000** |  **87.538 ms** | **0.1930 ms** | **0.1395 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle | 1000000 |  87.569 ms | 0.1961 ms | 0.1418 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer | PartialRandomShuffle | 1000000 | 184.849 ms | 0.1382 ms | 0.0999 ms |   2.11 |     0.00 |
|                         Span_ | PartialRandomShuffle | 1000000 |  79.200 ms | 0.1331 ms | 0.0963 ms |   0.90 |     0.00 |
|             Span_NullComparer | PartialRandomShuffle | 1000000 |  79.180 ms | 0.1116 ms | 0.0807 ms |   0.90 |     0.00 |
|  Span_ClassComparableComparer | PartialRandomShuffle | 1000000 | 168.227 ms | 0.1082 ms | 0.0782 ms |   1.92 |     0.00 |
| Span_StructComparableComparer | PartialRandomShuffle | 1000000 |  89.241 ms | 0.1497 ms | 0.1083 ms |   1.02 |     0.00 |
|               Span_Comparison | PartialRandomShuffle | 1000000 | 156.433 ms | 0.5528 ms | 0.3997 ms |   1.79 |     0.01 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **2** |  **21.810 ms** | **0.0706 ms** | **0.0510 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       2 |  21.394 ms | 0.0664 ms | 0.0480 ms |   0.98 |     0.00 |
| Array_ClassComparableComparer |               Random |       2 |  35.186 ms | 0.2990 ms | 0.2162 ms |   1.61 |     0.01 |
|                         Span_ |               Random |       2 |  12.518 ms | 0.1003 ms | 0.0725 ms |   0.57 |     0.00 |
|             Span_NullComparer |               Random |       2 |  24.209 ms | 0.0618 ms | 0.0447 ms |   1.11 |     0.00 |
|  Span_ClassComparableComparer |               Random |       2 |  82.273 ms | 0.1343 ms | 0.0971 ms |   3.77 |     0.01 |
| Span_StructComparableComparer |               Random |       2 |  47.545 ms | 0.0520 ms | 0.0376 ms |   2.18 |     0.01 |
|               Span_Comparison |               Random |       2 |  17.659 ms | 0.0196 ms | 0.0142 ms |   0.81 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |       **3** |  **19.812 ms** | **0.0826 ms** | **0.0597 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |       3 |  19.454 ms | 0.0731 ms | 0.0529 ms |   0.98 |     0.00 |
| Array_ClassComparableComparer |               Random |       3 |  33.197 ms | 0.0549 ms | 0.0397 ms |   1.68 |     0.01 |
|                         Span_ |               Random |       3 |  11.859 ms | 0.0582 ms | 0.0421 ms |   0.60 |     0.00 |
|             Span_NullComparer |               Random |       3 |  19.868 ms | 0.1108 ms | 0.0801 ms |   1.00 |     0.00 |
|  Span_ClassComparableComparer |               Random |       3 |  58.826 ms | 0.0577 ms | 0.0418 ms |   2.97 |     0.01 |
| Span_StructComparableComparer |               Random |       3 |  35.304 ms | 0.0796 ms | 0.0575 ms |   1.78 |     0.01 |
|               Span_Comparison |               Random |       3 |  19.969 ms | 0.0964 ms | 0.0697 ms |   1.01 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |      **10** |  **26.172 ms** | **0.1019 ms** | **0.0737 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      10 |  26.075 ms | 0.0620 ms | 0.0448 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |      10 |  38.541 ms | 0.0889 ms | 0.0643 ms |   1.47 |     0.00 |
|                         Span_ |               Random |      10 |  17.908 ms | 0.0462 ms | 0.0334 ms |   0.68 |     0.00 |
|             Span_NullComparer |               Random |      10 |  20.301 ms | 0.0384 ms | 0.0278 ms |   0.78 |     0.00 |
|  Span_ClassComparableComparer |               Random |      10 |  39.739 ms | 0.1020 ms | 0.0738 ms |   1.52 |     0.00 |
| Span_StructComparableComparer |               Random |      10 |  25.296 ms | 0.0916 ms | 0.0662 ms |   0.97 |     0.00 |
|               Span_Comparison |               Random |      10 |  25.555 ms | 0.0648 ms | 0.0469 ms |   0.98 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |     **100** |  **48.125 ms** | **0.1014 ms** | **0.0733 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     100 |  48.133 ms | 0.0963 ms | 0.0696 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |     100 |  76.693 ms | 0.2762 ms | 0.1997 ms |   1.59 |     0.00 |
|                         Span_ |               Random |     100 |  40.064 ms | 0.0747 ms | 0.0540 ms |   0.83 |     0.00 |
|             Span_NullComparer |               Random |     100 |  40.309 ms | 0.0601 ms | 0.0435 ms |   0.84 |     0.00 |
|  Span_ClassComparableComparer |               Random |     100 |  69.027 ms | 0.1296 ms | 0.0937 ms |   1.43 |     0.00 |
| Span_StructComparableComparer |               Random |     100 |  43.213 ms | 0.0453 ms | 0.0327 ms |   0.90 |     0.00 |
|               Span_Comparison |               Random |     100 |  61.803 ms | 0.1290 ms | 0.0933 ms |   1.28 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** |   **10000** |  **88.066 ms** | **0.0782 ms** | **0.0566 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   10000 |  88.092 ms | 0.0678 ms | 0.0490 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random |   10000 | 154.919 ms | 0.3304 ms | 0.2389 ms |   1.76 |     0.00 |
|                         Span_ |               Random |   10000 |  80.462 ms | 0.0463 ms | 0.0335 ms |   0.91 |     0.00 |
|             Span_NullComparer |               Random |   10000 |  80.410 ms | 0.0354 ms | 0.0256 ms |   0.91 |     0.00 |
|  Span_ClassComparableComparer |               Random |   10000 | 141.575 ms | 0.1788 ms | 0.1292 ms |   1.61 |     0.00 |
| Span_StructComparableComparer |               Random |   10000 |  87.827 ms | 0.0982 ms | 0.0710 ms |   1.00 |     0.00 |
|               Span_Comparison |               Random |   10000 | 131.661 ms | 0.2861 ms | 0.2069 ms |   1.50 |     0.00 |
|                               |                      |         |            |           |           |        |          |
|                        **Array_** |               **Random** | **1000000** | **127.579 ms** | **0.1924 ms** | **0.1391 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random | 1000000 | 127.781 ms | 0.3143 ms | 0.2273 ms |   1.00 |     0.00 |
| Array_ClassComparableComparer |               Random | 1000000 | 234.468 ms | 0.2796 ms | 0.2021 ms |   1.84 |     0.00 |
|                         Span_ |               Random | 1000000 | 120.164 ms | 0.2062 ms | 0.1491 ms |   0.94 |     0.00 |
|             Span_NullComparer |               Random | 1000000 | 120.130 ms | 0.2196 ms | 0.1588 ms |   0.94 |     0.00 |
|  Span_ClassComparableComparer |               Random | 1000000 | 216.851 ms | 0.1498 ms | 0.1083 ms |   1.70 |     0.00 |
| Span_StructComparableComparer |               Random | 1000000 | 132.054 ms | 0.2840 ms | 0.2053 ms |   1.04 |     0.00 |
|               Span_Comparison |               Random | 1000000 | 203.634 ms | 1.6904 ms | 1.2223 ms |   1.60 |     0.01 |
