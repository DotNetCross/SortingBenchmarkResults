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
|                        Method |               Filler | Length |       Mean |      Error |     StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |-----------:|-----------:|-----------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |   **3.142 ms** |  **0.0499 ms** |  **0.0361 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |   3.071 ms |  0.0429 ms |  0.0310 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |             Constant |      2 |   3.858 ms |  0.0280 ms |  0.0203 ms |   1.23 |     0.01 |
|                         Span_ |             Constant |      2 |   4.987 ms |  0.0261 ms |  0.0189 ms |   1.59 |     0.02 |
|             Span_NullComparer |             Constant |      2 |   5.165 ms |  0.0420 ms |  0.0304 ms |   1.64 |     0.02 |
|  Span_ClassComparableComparer |             Constant |      2 |   9.539 ms |  0.3228 ms |  0.2334 ms |   3.04 |     0.08 |
| Span_StructComparableComparer |             Constant |      2 |   6.529 ms |  0.1013 ms |  0.0733 ms |   2.08 |     0.03 |
|               Span_Comparison |             Constant |      2 |   6.662 ms |  0.0319 ms |  0.0231 ms |   2.12 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |             **Constant** |      **3** |   **2.733 ms** |  **0.0528 ms** |  **0.0382 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |   2.665 ms |  0.0492 ms |  0.0356 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |      3 |   3.409 ms |  0.0634 ms |  0.0458 ms |   1.25 |     0.02 |
|                         Span_ |             Constant |      3 |   3.497 ms |  0.0513 ms |  0.0371 ms |   1.28 |     0.02 |
|             Span_NullComparer |             Constant |      3 |   3.672 ms |  0.0890 ms |  0.0643 ms |   1.34 |     0.03 |
|  Span_ClassComparableComparer |             Constant |      3 |   7.385 ms |  0.1639 ms |  0.1185 ms |   2.70 |     0.05 |
| Span_StructComparableComparer |             Constant |      3 |   5.113 ms |  0.1119 ms |  0.0809 ms |   1.87 |     0.04 |
|               Span_Comparison |             Constant |      3 |   5.471 ms |  0.0541 ms |  0.0391 ms |   2.00 |     0.03 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |             **Constant** |     **10** |   **1.717 ms** |  **0.0430 ms** |  **0.0311 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |   1.685 ms |  0.0267 ms |  0.0193 ms |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |     10 |   2.163 ms |  0.0414 ms |  0.0299 ms |   1.26 |     0.03 |
|                         Span_ |             Constant |     10 |   1.416 ms |  0.0250 ms |  0.0180 ms |   0.82 |     0.02 |
|             Span_NullComparer |             Constant |     10 |   1.495 ms |  0.0316 ms |  0.0228 ms |   0.87 |     0.02 |
|  Span_ClassComparableComparer |             Constant |     10 |   2.972 ms |  0.0653 ms |  0.0472 ms |   1.73 |     0.04 |
| Span_StructComparableComparer |             Constant |     10 |   2.338 ms |  0.0039 ms |  0.0028 ms |   1.36 |     0.02 |
|               Span_Comparison |             Constant |     10 |   2.467 ms |  0.0872 ms |  0.0631 ms |   1.44 |     0.04 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |             **Constant** |    **100** |   **4.026 ms** |  **0.1456 ms** |  **0.1053 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |   4.161 ms |  0.0844 ms |  0.0610 ms |   1.03 |     0.03 |
| Array_ClassComparableComparer |             Constant |    100 |   5.452 ms |  0.2247 ms |  0.1624 ms |   1.36 |     0.05 |
|                         Span_ |             Constant |    100 |   5.934 ms |  0.2199 ms |  0.1590 ms |   1.47 |     0.05 |
|             Span_NullComparer |             Constant |    100 |   5.826 ms |  0.2339 ms |  0.1692 ms |   1.45 |     0.05 |
|  Span_ClassComparableComparer |             Constant |    100 |   8.589 ms |  0.1986 ms |  0.1436 ms |   2.13 |     0.06 |
| Span_StructComparableComparer |             Constant |    100 |   8.249 ms |  0.2417 ms |  0.1748 ms |   2.05 |     0.06 |
|               Span_Comparison |             Constant |    100 |   8.947 ms |  0.2051 ms |  0.1483 ms |   2.22 |     0.06 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |             **Constant** |   **1000** |   **6.698 ms** |  **0.2397 ms** |  **0.1733 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |   6.939 ms |  0.2237 ms |  0.1618 ms |   1.04 |     0.03 |
| Array_ClassComparableComparer |             Constant |   1000 |   8.955 ms |  0.3470 ms |  0.2509 ms |   1.34 |     0.05 |
|                         Span_ |             Constant |   1000 |  10.859 ms |  0.2158 ms |  0.1560 ms |   1.62 |     0.05 |
|             Span_NullComparer |             Constant |   1000 |  10.602 ms |  0.3217 ms |  0.2326 ms |   1.58 |     0.05 |
|  Span_ClassComparableComparer |             Constant |   1000 |  15.409 ms |  0.3037 ms |  0.2196 ms |   2.30 |     0.07 |
| Span_StructComparableComparer |             Constant |   1000 |  14.917 ms |  0.7859 ms |  0.5683 ms |   2.23 |     0.10 |
|               Span_Comparison |             Constant |   1000 |  16.003 ms |  0.1667 ms |  0.1206 ms |   2.39 |     0.06 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |             **Constant** |  **10000** |  **10.386 ms** |  **0.3570 ms** |  **0.2581 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |  10.399 ms |  0.3008 ms |  0.2175 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |             Constant |  10000 |  13.896 ms |  0.6757 ms |  0.4886 ms |   1.34 |     0.05 |
|                         Span_ |             Constant |  10000 |  17.316 ms |  0.3396 ms |  0.2455 ms |   1.67 |     0.05 |
|             Span_NullComparer |             Constant |  10000 |  16.917 ms |  0.2045 ms |  0.1479 ms |   1.63 |     0.04 |
|  Span_ClassComparableComparer |             Constant |  10000 |  24.976 ms |  1.1071 ms |  0.8005 ms |   2.41 |     0.09 |
| Span_StructComparableComparer |             Constant |  10000 |  23.242 ms |  0.3746 ms |  0.2709 ms |   2.24 |     0.06 |
|               Span_Comparison |             Constant |  10000 |  25.504 ms |  0.6464 ms |  0.4674 ms |   2.46 |     0.07 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **11.224 ms** |  **0.6386 ms** |  **0.4617 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  11.202 ms |  0.2740 ms |  0.1981 ms |   1.00 |     0.04 |
| Array_ClassComparableComparer |         Decrementing |      2 |  11.933 ms |  0.2385 ms |  0.1724 ms |   1.06 |     0.04 |
|                         Span_ |         Decrementing |      2 |  13.689 ms |  0.3468 ms |  0.2508 ms |   1.22 |     0.05 |
|             Span_NullComparer |         Decrementing |      2 |  13.141 ms |  0.1782 ms |  0.1288 ms |   1.17 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  18.002 ms |  0.3915 ms |  0.2831 ms |   1.61 |     0.06 |
| Span_StructComparableComparer |         Decrementing |      2 |  15.144 ms |  0.7011 ms |  0.5070 ms |   1.35 |     0.06 |
|               Span_Comparison |         Decrementing |      2 |  14.918 ms |  0.3361 ms |  0.2430 ms |   1.33 |     0.05 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **18.570 ms** |  **0.2163 ms** |  **0.1564 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  18.291 ms |  0.5854 ms |  0.4233 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |      3 |  19.573 ms |  0.4046 ms |  0.2925 ms |   1.05 |     0.02 |
|                         Span_ |         Decrementing |      3 |  18.988 ms |  0.2127 ms |  0.1538 ms |   1.02 |     0.01 |
|             Span_NullComparer |         Decrementing |      3 |  18.990 ms |  0.4161 ms |  0.3009 ms |   1.02 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  24.056 ms |  0.5186 ms |  0.3750 ms |   1.30 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      3 |  20.897 ms |  0.7513 ms |  0.5432 ms |   1.13 |     0.03 |
|               Span_Comparison |         Decrementing |      3 |  21.568 ms |  0.7799 ms |  0.5639 ms |   1.16 |     0.03 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **70.124 ms** |  **1.2880 ms** |  **0.9313 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  71.366 ms |  0.9625 ms |  0.6959 ms |   1.02 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |     10 |  76.859 ms |  1.2026 ms |  0.8695 ms |   1.10 |     0.02 |
|                         Span_ |         Decrementing |     10 |  69.444 ms |  1.5495 ms |  1.1204 ms |   0.99 |     0.02 |
|             Span_NullComparer |         Decrementing |     10 |  71.520 ms |  1.8460 ms |  1.3348 ms |   1.02 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  77.703 ms |  1.1523 ms |  0.8332 ms |   1.11 |     0.02 |
| Span_StructComparableComparer |         Decrementing |     10 |  73.461 ms |  1.2615 ms |  0.9121 ms |   1.05 |     0.02 |
|               Span_Comparison |         Decrementing |     10 |  76.658 ms |  1.3297 ms |  0.9614 ms |   1.09 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **87.031 ms** |  **1.5076 ms** |  **1.0901 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  87.905 ms |  1.2364 ms |  0.8940 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |    100 |  94.070 ms |  1.5858 ms |  1.1466 ms |   1.08 |     0.02 |
|                         Span_ |         Decrementing |    100 |  92.571 ms |  1.0618 ms |  0.7678 ms |   1.06 |     0.02 |
|             Span_NullComparer |         Decrementing |    100 |  96.123 ms |  1.1988 ms |  0.8668 ms |   1.10 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |    100 | 101.849 ms |  0.6152 ms |  0.4448 ms |   1.17 |     0.01 |
| Span_StructComparableComparer |         Decrementing |    100 |  97.933 ms |  1.8628 ms |  1.3469 ms |   1.13 |     0.02 |
|               Span_Comparison |         Decrementing |    100 | 106.289 ms |  1.5416 ms |  1.1147 ms |   1.22 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Decrementing** |   **1000** | **172.087 ms** |  **2.4811 ms** |  **1.7940 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 | 174.462 ms |  2.4742 ms |  1.7890 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |   1000 | 181.360 ms |  2.4172 ms |  1.7478 ms |   1.05 |     0.01 |
|                         Span_ |         Decrementing |   1000 | 194.596 ms |  9.9536 ms |  7.1971 ms |   1.13 |     0.04 |
|             Span_NullComparer |         Decrementing |   1000 | 191.025 ms |  8.9196 ms |  6.4495 ms |   1.11 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |   1000 | 191.863 ms |  1.6298 ms |  1.1784 ms |   1.12 |     0.01 |
| Span_StructComparableComparer |         Decrementing |   1000 | 191.082 ms |  2.8995 ms |  2.0965 ms |   1.11 |     0.02 |
|               Span_Comparison |         Decrementing |   1000 | 195.706 ms |  2.7968 ms |  2.0222 ms |   1.14 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Decrementing** |  **10000** | **288.187 ms** |  **0.8354 ms** |  **0.6040 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 | 285.495 ms | 14.6158 ms | 10.5682 ms |   0.99 |     0.04 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 283.400 ms |  2.9939 ms |  2.1648 ms |   0.98 |     0.01 |
|                         Span_ |         Decrementing |  10000 | 303.226 ms |  1.9262 ms |  1.3928 ms |   1.05 |     0.01 |
|             Span_NullComparer |         Decrementing |  10000 | 295.421 ms |  2.4683 ms |  1.7847 ms |   1.03 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 318.693 ms | 17.8878 ms | 12.9340 ms |   1.11 |     0.04 |
| Span_StructComparableComparer |         Decrementing |  10000 | 310.523 ms |  2.7582 ms |  1.9943 ms |   1.08 |     0.01 |
|               Span_Comparison |         Decrementing |  10000 | 302.366 ms |  3.0355 ms |  2.1948 ms |   1.05 |     0.01 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **10.587 ms** |  **0.1954 ms** |  **0.1413 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  10.826 ms |  0.3165 ms |  0.2289 ms |   1.02 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |      2 |  11.625 ms |  0.4530 ms |  0.3276 ms |   1.10 |     0.03 |
|                         Span_ |         Incrementing |      2 |  12.983 ms |  0.3215 ms |  0.2325 ms |   1.23 |     0.03 |
|             Span_NullComparer |         Incrementing |      2 |  13.685 ms |  0.3729 ms |  0.2696 ms |   1.29 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  17.842 ms |  0.7844 ms |  0.5672 ms |   1.69 |     0.06 |
| Span_StructComparableComparer |         Incrementing |      2 |  14.601 ms |  0.3406 ms |  0.2463 ms |   1.38 |     0.03 |
|               Span_Comparison |         Incrementing |      2 |  14.833 ms |  0.2434 ms |  0.1760 ms |   1.40 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **18.048 ms** |  **0.7399 ms** |  **0.5350 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  17.654 ms |  0.4343 ms |  0.3140 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |      3 |  19.300 ms |  0.2034 ms |  0.1470 ms |   1.07 |     0.03 |
|                         Span_ |         Incrementing |      3 |  19.280 ms |  1.0799 ms |  0.7809 ms |   1.07 |     0.05 |
|             Span_NullComparer |         Incrementing |      3 |  18.786 ms |  0.2231 ms |  0.1613 ms |   1.04 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  23.016 ms |  0.9775 ms |  0.7068 ms |   1.28 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      3 |  20.101 ms |  0.5270 ms |  0.3811 ms |   1.11 |     0.04 |
|               Span_Comparison |         Incrementing |      3 |  20.557 ms |  0.3162 ms |  0.2286 ms |   1.14 |     0.03 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Incrementing** |     **10** |  **14.858 ms** |  **0.5553 ms** |  **0.4015 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |  14.662 ms |  0.1810 ms |  0.1309 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |     10 |  15.737 ms |  0.2698 ms |  0.1951 ms |   1.06 |     0.03 |
|                         Span_ |         Incrementing |     10 |  15.007 ms |  0.2440 ms |  0.1764 ms |   1.01 |     0.03 |
|             Span_NullComparer |         Incrementing |     10 |  14.852 ms |  0.0771 ms |  0.0558 ms |   1.00 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  16.730 ms |  0.7944 ms |  0.5744 ms |   1.13 |     0.05 |
| Span_StructComparableComparer |         Incrementing |     10 |  15.665 ms |  0.1978 ms |  0.1430 ms |   1.05 |     0.03 |
|               Span_Comparison |         Incrementing |     10 |  15.816 ms |  0.2987 ms |  0.2160 ms |   1.07 |     0.03 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **60.461 ms** |  **1.5948 ms** |  **1.1532 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  60.591 ms |  0.8692 ms |  0.6285 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |    100 |  61.955 ms |  1.3699 ms |  0.9906 ms |   1.03 |     0.02 |
|                         Span_ |         Incrementing |    100 |  64.751 ms |  1.3019 ms |  0.9414 ms |   1.07 |     0.02 |
|             Span_NullComparer |         Incrementing |    100 |  63.005 ms |  1.1751 ms |  0.8497 ms |   1.04 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  66.874 ms |  1.8135 ms |  1.3113 ms |   1.11 |     0.03 |
| Span_StructComparableComparer |         Incrementing |    100 |  65.848 ms |  1.9766 ms |  1.4292 ms |   1.09 |     0.03 |
|               Span_Comparison |         Incrementing |    100 |  69.088 ms |  0.8229 ms |  0.5950 ms |   1.14 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Incrementing** |   **1000** | **104.614 ms** |  **1.5218 ms** |  **1.1004 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 | 105.987 ms |  1.9593 ms |  1.4167 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |   1000 | 113.563 ms |  1.4653 ms |  1.0595 ms |   1.09 |     0.01 |
|                         Span_ |         Incrementing |   1000 | 114.571 ms |  1.9826 ms |  1.4335 ms |   1.10 |     0.02 |
|             Span_NullComparer |         Incrementing |   1000 | 111.146 ms |  1.2667 ms |  0.9159 ms |   1.06 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   1000 | 119.046 ms |  1.4076 ms |  1.0178 ms |   1.14 |     0.01 |
| Span_StructComparableComparer |         Incrementing |   1000 | 115.129 ms |  1.3736 ms |  0.9932 ms |   1.10 |     0.01 |
|               Span_Comparison |         Incrementing |   1000 | 119.687 ms |  1.6712 ms |  1.2084 ms |   1.14 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |         **Incrementing** |  **10000** | **161.193 ms** |  **1.8010 ms** |  **1.3023 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 | 166.879 ms |  2.7932 ms |  2.0196 ms |   1.04 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |  10000 | 169.328 ms |  2.1241 ms |  1.5359 ms |   1.05 |     0.01 |
|                         Span_ |         Incrementing |  10000 | 175.685 ms |  1.6678 ms |  1.2059 ms |   1.09 |     0.01 |
|             Span_NullComparer |         Incrementing |  10000 | 181.174 ms |  1.9205 ms |  1.3886 ms |   1.12 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |  10000 | 189.430 ms |  6.4049 ms |  4.6312 ms |   1.18 |     0.03 |
| Span_StructComparableComparer |         Incrementing |  10000 | 182.124 ms |  2.7285 ms |  1.9729 ms |   1.13 |     0.01 |
|               Span_Comparison |         Incrementing |  10000 | 191.170 ms |  2.1393 ms |  1.5468 ms |   1.19 |     0.01 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **10.773 ms** |  **0.3595 ms** |  **0.2600 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  10.786 ms |  0.2547 ms |  0.1842 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |  11.607 ms |  0.3451 ms |  0.2495 ms |   1.08 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |      2 |  13.009 ms |  0.2151 ms |  0.1555 ms |   1.21 |     0.03 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  13.018 ms |  0.3459 ms |  0.2501 ms |   1.21 |     0.03 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  18.064 ms |  0.2115 ms |  0.1529 ms |   1.68 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  14.231 ms |  0.2108 ms |  0.1524 ms |   1.32 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  14.825 ms |  0.1715 ms |  0.1240 ms |   1.38 |     0.03 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **17.622 ms** |  **0.7298 ms** |  **0.5277 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  17.650 ms |  0.1720 ms |  0.1243 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |  18.534 ms |  0.2282 ms |  0.1650 ms |   1.05 |     0.03 |
|                         Span_ |  MedianOfThreeKiller |      3 |  18.986 ms |  0.9719 ms |  0.7027 ms |   1.08 |     0.05 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  18.796 ms |  0.4717 ms |  0.3411 ms |   1.07 |     0.03 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  22.705 ms |  0.9404 ms |  0.6800 ms |   1.29 |     0.05 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  19.954 ms |  0.4338 ms |  0.3137 ms |   1.13 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  20.883 ms |  0.3114 ms |  0.2252 ms |   1.19 |     0.03 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **35.522 ms** |  **0.4394 ms** |  **0.3177 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  35.161 ms |  1.0395 ms |  0.7517 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  38.280 ms |  0.4427 ms |  0.3201 ms |   1.08 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |     10 |  35.893 ms |  0.5061 ms |  0.3660 ms |   1.01 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  35.449 ms |  0.6990 ms |  0.5054 ms |   1.00 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  38.114 ms |  0.5469 ms |  0.3955 ms |   1.07 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  37.307 ms |  0.7017 ms |  0.5074 ms |   1.05 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  38.347 ms |  1.2002 ms |  0.8678 ms |   1.08 |     0.03 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** | **115.604 ms** |  **1.1637 ms** |  **0.8414 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 | 116.718 ms |  7.4709 ms |  5.4019 ms |   1.01 |     0.05 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 | 119.339 ms |  1.7597 ms |  1.2724 ms |   1.03 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |    100 | 122.459 ms |  1.8206 ms |  1.3164 ms |   1.06 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 | 122.761 ms |  2.1898 ms |  1.5834 ms |   1.06 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 | 130.750 ms |  1.7415 ms |  1.2592 ms |   1.13 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 | 129.206 ms |  1.6460 ms |  1.1901 ms |   1.12 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |    100 | 135.539 ms |  1.5214 ms |  1.1001 ms |   1.17 |     0.01 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** | **207.500 ms** |  **3.0473 ms** |  **2.2034 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 | 211.781 ms |  1.9267 ms |  1.3931 ms |   1.02 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 220.055 ms |  4.0021 ms |  2.8938 ms |   1.06 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 228.182 ms |  2.6056 ms |  1.8840 ms |   1.10 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 226.037 ms |  2.0512 ms |  1.4831 ms |   1.09 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 239.324 ms |  5.1626 ms |  3.7329 ms |   1.15 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 240.698 ms |  2.3468 ms |  1.6969 ms |   1.16 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 | 238.587 ms |  2.8918 ms |  2.0910 ms |   1.15 |     0.01 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **359.014 ms** |  **2.4265 ms** |  **1.7545 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 343.341 ms |  2.9577 ms |  2.1386 ms |   0.96 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 370.065 ms |  1.8188 ms |  1.3151 ms |   1.03 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 390.619 ms |  4.3317 ms |  3.1321 ms |   1.09 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 376.624 ms |  3.0552 ms |  2.2091 ms |   1.05 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 394.227 ms |  4.0751 ms |  2.9466 ms |   1.10 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 412.216 ms |  2.0286 ms |  1.4668 ms |   1.15 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 404.400 ms |  3.5766 ms |  2.5861 ms |   1.13 |     0.01 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **11.763 ms** |  **0.1955 ms** |  **0.1414 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  11.788 ms |  0.7833 ms |  0.5664 ms |   1.00 |     0.05 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |  12.843 ms |  0.2657 ms |  0.1921 ms |   1.09 |     0.02 |
|                         Span_ | PartialRandomShuffle |      2 |  13.593 ms |  0.4222 ms |  0.3053 ms |   1.16 |     0.03 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  14.124 ms |  0.8748 ms |  0.6326 ms |   1.20 |     0.05 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  18.753 ms |  0.6129 ms |  0.4432 ms |   1.59 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  15.480 ms |  0.8532 ms |  0.6169 ms |   1.32 |     0.05 |
|               Span_Comparison | PartialRandomShuffle |      2 |  15.608 ms |  0.2934 ms |  0.2121 ms |   1.33 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **18.291 ms** |  **0.2497 ms** |  **0.1805 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  18.779 ms |  0.8647 ms |  0.6252 ms |   1.03 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  19.658 ms |  0.6067 ms |  0.4387 ms |   1.07 |     0.02 |
|                         Span_ | PartialRandomShuffle |      3 |  19.532 ms |  0.4875 ms |  0.3525 ms |   1.07 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  19.622 ms |  0.6453 ms |  0.4666 ms |   1.07 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  24.374 ms |  1.4715 ms |  1.0640 ms |   1.33 |     0.06 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  21.849 ms |  0.6482 ms |  0.4687 ms |   1.19 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |      3 |  21.782 ms |  0.2835 ms |  0.2050 ms |   1.19 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **26.669 ms** |  **1.0866 ms** |  **0.7857 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  25.446 ms |  0.3947 ms |  0.2854 ms |   0.95 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  27.309 ms |  0.6927 ms |  0.5009 ms |   1.02 |     0.03 |
|                         Span_ | PartialRandomShuffle |     10 |  25.894 ms |  1.4796 ms |  1.0698 ms |   0.97 |     0.05 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  25.197 ms |  0.3468 ms |  0.2507 ms |   0.95 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  28.063 ms |  0.8387 ms |  0.6065 ms |   1.05 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  27.100 ms |  0.2678 ms |  0.1937 ms |   1.02 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |     10 |  28.769 ms |  1.0953 ms |  0.7920 ms |   1.08 |     0.04 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** | **101.103 ms** |  **1.2841 ms** |  **0.9285 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 | 103.446 ms |  3.1864 ms |  2.3039 ms |   1.02 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 | 107.099 ms |  1.9323 ms |  1.3972 ms |   1.06 |     0.02 |
|                         Span_ | PartialRandomShuffle |    100 | 109.142 ms |  3.2097 ms |  2.3208 ms |   1.08 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |    100 | 108.645 ms |  3.7538 ms |  2.7142 ms |   1.07 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 | 114.692 ms |  2.1244 ms |  1.5361 ms |   1.13 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 | 109.240 ms |  1.8714 ms |  1.3531 ms |   1.08 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |    100 | 116.188 ms |  1.7566 ms |  1.2702 ms |   1.15 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** | **154.100 ms** |  **2.2766 ms** |  **1.6461 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 | 157.220 ms |  2.6219 ms |  1.8958 ms |   1.02 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 | 166.559 ms |  2.7411 ms |  1.9820 ms |   1.08 |     0.02 |
|                         Span_ | PartialRandomShuffle |   1000 | 170.006 ms |  2.3380 ms |  1.6905 ms |   1.10 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |   1000 | 174.518 ms |  2.6727 ms |  1.9325 ms |   1.13 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 | 176.721 ms |  1.9076 ms |  1.3793 ms |   1.15 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 | 177.674 ms |  1.8559 ms |  1.3420 ms |   1.15 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   1000 | 181.049 ms |  2.7117 ms |  1.9607 ms |   1.18 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** | **210.407 ms** |  **2.2036 ms** |  **1.5934 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 | 217.258 ms |  3.2285 ms |  2.3344 ms |   1.03 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 220.877 ms |  2.9358 ms |  2.1228 ms |   1.05 |     0.01 |
|                         Span_ | PartialRandomShuffle |  10000 | 232.470 ms |  3.3191 ms |  2.3999 ms |   1.10 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 233.082 ms |  2.9264 ms |  2.1159 ms |   1.11 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 246.381 ms |  2.5964 ms |  1.8774 ms |   1.17 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 245.507 ms |  3.2622 ms |  2.3588 ms |   1.17 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 247.864 ms |  2.6351 ms |  1.9054 ms |   1.18 |     0.01 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |               **Random** |      **2** |  **11.002 ms** |  **0.2733 ms** |  **0.1976 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  10.589 ms |  0.5956 ms |  0.4307 ms |   0.96 |     0.04 |
| Array_ClassComparableComparer |               Random |      2 |  12.082 ms |  0.3758 ms |  0.2717 ms |   1.10 |     0.03 |
|                         Span_ |               Random |      2 |  12.821 ms |  0.2508 ms |  0.1814 ms |   1.17 |     0.03 |
|             Span_NullComparer |               Random |      2 |  13.404 ms |  0.6766 ms |  0.4892 ms |   1.22 |     0.05 |
|  Span_ClassComparableComparer |               Random |      2 |  17.497 ms |  0.3302 ms |  0.2388 ms |   1.59 |     0.03 |
| Span_StructComparableComparer |               Random |      2 |  14.679 ms |  0.3482 ms |  0.2518 ms |   1.33 |     0.03 |
|               Span_Comparison |               Random |      2 |  15.042 ms |  0.5377 ms |  0.3888 ms |   1.37 |     0.04 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |               **Random** |      **3** |  **17.569 ms** |  **0.3620 ms** |  **0.2618 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  17.435 ms |  0.2117 ms |  0.1531 ms |   0.99 |     0.02 |
| Array_ClassComparableComparer |               Random |      3 |  18.740 ms |  0.6390 ms |  0.4621 ms |   1.07 |     0.03 |
|                         Span_ |               Random |      3 |  18.558 ms |  0.4618 ms |  0.3339 ms |   1.06 |     0.02 |
|             Span_NullComparer |               Random |      3 |  18.456 ms |  0.8574 ms |  0.6199 ms |   1.05 |     0.04 |
|  Span_ClassComparableComparer |               Random |      3 |  22.905 ms |  0.3405 ms |  0.2462 ms |   1.30 |     0.02 |
| Span_StructComparableComparer |               Random |      3 |  20.788 ms |  0.4573 ms |  0.3307 ms |   1.18 |     0.02 |
|               Span_Comparison |               Random |      3 |  20.528 ms |  0.4207 ms |  0.3042 ms |   1.17 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |               **Random** |     **10** |  **45.149 ms** |  **0.6339 ms** |  **0.4584 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  45.503 ms |  0.4964 ms |  0.3589 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |               Random |     10 |  47.192 ms |  0.5996 ms |  0.4336 ms |   1.05 |     0.01 |
|                         Span_ |               Random |     10 |  44.209 ms |  1.0916 ms |  0.7893 ms |   0.98 |     0.02 |
|             Span_NullComparer |               Random |     10 |  44.531 ms |  0.8339 ms |  0.6030 ms |   0.99 |     0.02 |
|  Span_ClassComparableComparer |               Random |     10 |  48.734 ms |  1.2392 ms |  0.8960 ms |   1.08 |     0.02 |
| Span_StructComparableComparer |               Random |     10 |  46.551 ms |  0.5509 ms |  0.3984 ms |   1.03 |     0.01 |
|               Span_Comparison |               Random |     10 |  49.993 ms |  0.4500 ms |  0.3254 ms |   1.11 |     0.01 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |               **Random** |    **100** | **101.419 ms** |  **1.5393 ms** |  **1.1130 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 | 102.533 ms |  1.6524 ms |  1.1948 ms |   1.01 |     0.02 |
| Array_ClassComparableComparer |               Random |    100 | 106.347 ms |  1.5779 ms |  1.1410 ms |   1.05 |     0.02 |
|                         Span_ |               Random |    100 | 104.974 ms |  1.9439 ms |  1.4055 ms |   1.04 |     0.02 |
|             Span_NullComparer |               Random |    100 | 104.926 ms |  1.2143 ms |  0.8780 ms |   1.03 |     0.01 |
|  Span_ClassComparableComparer |               Random |    100 | 115.272 ms |  1.5007 ms |  1.0851 ms |   1.14 |     0.02 |
| Span_StructComparableComparer |               Random |    100 | 114.901 ms |  1.8960 ms |  1.3709 ms |   1.13 |     0.02 |
|               Span_Comparison |               Random |    100 | 116.403 ms |  2.1823 ms |  1.5780 ms |   1.15 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |               **Random** |   **1000** | **155.304 ms** |  **2.4144 ms** |  **1.7458 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 | 159.733 ms |  2.2852 ms |  1.6524 ms |   1.03 |     0.01 |
| Array_ClassComparableComparer |               Random |   1000 | 164.453 ms |  2.0208 ms |  1.4612 ms |   1.06 |     0.01 |
|                         Span_ |               Random |   1000 | 168.284 ms |  2.1425 ms |  1.5492 ms |   1.08 |     0.01 |
|             Span_NullComparer |               Random |   1000 | 172.192 ms |  2.1364 ms |  1.5447 ms |   1.11 |     0.02 |
|  Span_ClassComparableComparer |               Random |   1000 | 173.097 ms |  2.3495 ms |  1.6989 ms |   1.11 |     0.02 |
| Span_StructComparableComparer |               Random |   1000 | 174.060 ms |  2.6244 ms |  1.8976 ms |   1.12 |     0.02 |
|               Span_Comparison |               Random |   1000 | 181.110 ms |  2.5297 ms |  1.8292 ms |   1.17 |     0.02 |
|                               |                      |        |            |            |            |        |          |
|                        **Array_** |               **Random** |  **10000** | **219.073 ms** |  **2.1814 ms** |  **1.5773 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 220.001 ms |  2.5650 ms |  1.8546 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |  10000 | 229.808 ms |  2.6125 ms |  1.8890 ms |   1.05 |     0.01 |
|                         Span_ |               Random |  10000 | 237.811 ms |  1.8953 ms |  1.3704 ms |   1.09 |     0.01 |
|             Span_NullComparer |               Random |  10000 | 238.892 ms |  2.6937 ms |  1.9477 ms |   1.09 |     0.01 |
|  Span_ClassComparableComparer |               Random |  10000 | 247.672 ms |  1.5668 ms |  1.1329 ms |   1.13 |     0.01 |
| Span_StructComparableComparer |               Random |  10000 | 250.851 ms |  2.9113 ms |  2.1051 ms |   1.15 |     0.01 |
|               Span_Comparison |               Random |  10000 | 256.575 ms |  2.7857 ms |  2.0143 ms |   1.17 |     0.01 |
