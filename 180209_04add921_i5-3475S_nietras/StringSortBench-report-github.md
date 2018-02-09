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
|                        Method |               Filler | Length |       Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |-----------:|----------:|----------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |   **3.221 ms** | **0.0518 ms** | **0.0375 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |   3.037 ms | 0.0528 ms | 0.0382 ms |   0.94 |     0.02 |
| Array_ClassComparableComparer |             Constant |      2 |  22.284 ms | 0.2486 ms | 0.1798 ms |   6.92 |     0.09 |
|                         Span_ |             Constant |      2 |   4.899 ms | 0.0460 ms | 0.0333 ms |   1.52 |     0.02 |
|             Span_NullComparer |             Constant |      2 |   5.139 ms | 0.0681 ms | 0.0492 ms |   1.60 |     0.02 |
|  Span_ClassComparableComparer |             Constant |      2 |   9.712 ms | 0.1822 ms | 0.1318 ms |   3.02 |     0.05 |
| Span_StructComparableComparer |             Constant |      2 |   6.192 ms | 0.1544 ms | 0.1117 ms |   1.92 |     0.04 |
|               Span_Comparison |             Constant |      2 |   7.218 ms | 0.2300 ms | 0.1663 ms |   2.24 |     0.06 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |             **Constant** |      **3** |   **2.609 ms** | **0.0571 ms** | **0.0413 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |   2.523 ms | 0.1293 ms | 0.0935 ms |   0.97 |     0.04 |
| Array_ClassComparableComparer |             Constant |      3 |  15.062 ms | 0.3612 ms | 0.2612 ms |   5.77 |     0.13 |
|                         Span_ |             Constant |      3 |   3.813 ms | 0.0614 ms | 0.0444 ms |   1.46 |     0.03 |
|             Span_NullComparer |             Constant |      3 |   3.964 ms | 0.1600 ms | 0.1157 ms |   1.52 |     0.05 |
|  Span_ClassComparableComparer |             Constant |      3 |   7.266 ms | 0.3441 ms | 0.2488 ms |   2.79 |     0.10 |
| Span_StructComparableComparer |             Constant |      3 |   5.199 ms | 0.1925 ms | 0.1392 ms |   1.99 |     0.06 |
|               Span_Comparison |             Constant |      3 |   6.074 ms | 0.2132 ms | 0.1542 ms |   2.33 |     0.07 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |             **Constant** |     **10** |   **1.619 ms** | **0.0582 ms** | **0.0421 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |   1.565 ms | 0.0215 ms | 0.0155 ms |   0.97 |     0.03 |
| Array_ClassComparableComparer |             Constant |     10 |   5.303 ms | 0.1675 ms | 0.1211 ms |   3.28 |     0.11 |
|                         Span_ |             Constant |     10 |   1.500 ms | 0.0540 ms | 0.0391 ms |   0.93 |     0.03 |
|             Span_NullComparer |             Constant |     10 |   1.508 ms | 0.1116 ms | 0.0807 ms |   0.93 |     0.05 |
|  Span_ClassComparableComparer |             Constant |     10 |   2.921 ms | 0.1609 ms | 0.1163 ms |   1.80 |     0.08 |
| Span_StructComparableComparer |             Constant |     10 |   2.378 ms | 0.0519 ms | 0.0375 ms |   1.47 |     0.04 |
|               Span_Comparison |             Constant |     10 |   2.707 ms | 0.0396 ms | 0.0286 ms |   1.67 |     0.04 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |             **Constant** |    **100** |   **4.252 ms** | **0.1508 ms** | **0.1091 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |   4.214 ms | 0.1223 ms | 0.0884 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |             Constant |    100 |   4.859 ms | 0.1454 ms | 0.1051 ms |   1.14 |     0.04 |
|                         Span_ |             Constant |    100 |   6.150 ms | 0.1975 ms | 0.1428 ms |   1.45 |     0.05 |
|             Span_NullComparer |             Constant |    100 |   6.171 ms | 0.2346 ms | 0.1696 ms |   1.45 |     0.05 |
|  Span_ClassComparableComparer |             Constant |    100 |   8.901 ms | 0.2262 ms | 0.1636 ms |   2.09 |     0.06 |
| Span_StructComparableComparer |             Constant |    100 |   8.730 ms | 0.3133 ms | 0.2265 ms |   2.05 |     0.07 |
|               Span_Comparison |             Constant |    100 |   9.476 ms | 0.2732 ms | 0.1976 ms |   2.23 |     0.07 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |             **Constant** |   **1000** |   **7.229 ms** | **0.1577 ms** | **0.1141 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |   7.196 ms | 0.0910 ms | 0.0658 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |             Constant |   1000 |   7.699 ms | 0.1189 ms | 0.0860 ms |   1.07 |     0.02 |
|                         Span_ |             Constant |   1000 |  11.497 ms | 0.2342 ms | 0.1693 ms |   1.59 |     0.03 |
|             Span_NullComparer |             Constant |   1000 |  11.414 ms | 0.3056 ms | 0.2210 ms |   1.58 |     0.04 |
|  Span_ClassComparableComparer |             Constant |   1000 |  15.855 ms | 0.3574 ms | 0.2584 ms |   2.19 |     0.05 |
| Span_StructComparableComparer |             Constant |   1000 |  15.635 ms | 0.3949 ms | 0.2855 ms |   2.16 |     0.05 |
|               Span_Comparison |             Constant |   1000 |  17.066 ms | 0.4789 ms | 0.3463 ms |   2.36 |     0.06 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |             **Constant** |  **10000** |  **11.243 ms** | **0.4127 ms** | **0.2984 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |  11.119 ms | 0.2498 ms | 0.1807 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |             Constant |  10000 |  11.675 ms | 0.4080 ms | 0.2950 ms |   1.04 |     0.04 |
|                         Span_ |             Constant |  10000 |  18.520 ms | 0.3228 ms | 0.2334 ms |   1.65 |     0.05 |
|             Span_NullComparer |             Constant |  10000 |  18.416 ms | 0.3348 ms | 0.2421 ms |   1.64 |     0.05 |
|  Span_ClassComparableComparer |             Constant |  10000 |  25.458 ms | 0.3465 ms | 0.2505 ms |   2.27 |     0.06 |
| Span_StructComparableComparer |             Constant |  10000 |  25.151 ms | 0.3673 ms | 0.2656 ms |   2.24 |     0.06 |
|               Span_Comparison |             Constant |  10000 |  27.310 ms | 0.3658 ms | 0.2645 ms |   2.43 |     0.06 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **12.349 ms** | **0.4822 ms** | **0.3486 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  12.062 ms | 0.3944 ms | 0.2851 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |      2 |  35.182 ms | 0.3732 ms | 0.2698 ms |   2.85 |     0.08 |
|                         Span_ |         Decrementing |      2 |  14.419 ms | 0.4924 ms | 0.3561 ms |   1.17 |     0.04 |
|             Span_NullComparer |         Decrementing |      2 |  14.583 ms | 0.3721 ms | 0.2690 ms |   1.18 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  19.483 ms | 0.4189 ms | 0.3029 ms |   1.58 |     0.05 |
| Span_StructComparableComparer |         Decrementing |      2 |  15.997 ms | 0.3965 ms | 0.2867 ms |   1.30 |     0.04 |
|               Span_Comparison |         Decrementing |      2 |  16.692 ms | 0.2722 ms | 0.1968 ms |   1.35 |     0.04 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **20.339 ms** | **0.5781 ms** | **0.4180 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  20.620 ms | 0.5987 ms | 0.4329 ms |   1.01 |     0.03 |
| Array_ClassComparableComparer |         Decrementing |      3 |  35.879 ms | 0.3154 ms | 0.2281 ms |   1.76 |     0.04 |
|                         Span_ |         Decrementing |      3 |  21.497 ms | 0.4058 ms | 0.2934 ms |   1.06 |     0.02 |
|             Span_NullComparer |         Decrementing |      3 |  21.841 ms | 0.4099 ms | 0.2964 ms |   1.07 |     0.03 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  25.349 ms | 0.5727 ms | 0.4141 ms |   1.25 |     0.03 |
| Span_StructComparableComparer |         Decrementing |      3 |  22.811 ms | 0.5396 ms | 0.3902 ms |   1.12 |     0.03 |
|               Span_Comparison |         Decrementing |      3 |  24.238 ms | 0.5194 ms | 0.3756 ms |   1.19 |     0.03 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **78.929 ms** | **0.7831 ms** | **0.5662 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  78.193 ms | 0.5543 ms | 0.4008 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |     10 |  84.302 ms | 0.7738 ms | 0.5595 ms |   1.07 |     0.01 |
|                         Span_ |         Decrementing |     10 |  78.573 ms | 0.6136 ms | 0.4437 ms |   1.00 |     0.01 |
|             Span_NullComparer |         Decrementing |     10 |  75.464 ms | 0.7999 ms | 0.5784 ms |   0.96 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  82.119 ms | 0.7076 ms | 0.5116 ms |   1.04 |     0.01 |
| Span_StructComparableComparer |         Decrementing |     10 |  82.635 ms | 0.6596 ms | 0.4769 ms |   1.05 |     0.01 |
|               Span_Comparison |         Decrementing |     10 |  85.831 ms | 0.9017 ms | 0.6520 ms |   1.09 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |    **100** | **100.419 ms** | **0.6852 ms** | **0.4955 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  98.584 ms | 0.7813 ms | 0.5649 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |    100 | 100.623 ms | 0.7105 ms | 0.5137 ms |   1.00 |     0.01 |
|                         Span_ |         Decrementing |    100 | 105.323 ms | 0.6856 ms | 0.4958 ms |   1.05 |     0.01 |
|             Span_NullComparer |         Decrementing |    100 | 105.366 ms | 0.9934 ms | 0.7183 ms |   1.05 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |    100 | 107.649 ms | 0.8022 ms | 0.5800 ms |   1.07 |     0.01 |
| Span_StructComparableComparer |         Decrementing |    100 | 111.477 ms | 0.8321 ms | 0.6017 ms |   1.11 |     0.01 |
|               Span_Comparison |         Decrementing |    100 | 114.934 ms | 2.2858 ms | 1.6528 ms |   1.14 |     0.02 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |   **1000** | **184.265 ms** | **0.6758 ms** | **0.4887 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 | 188.614 ms | 0.7657 ms | 0.5536 ms |   1.02 |     0.00 |
| Array_ClassComparableComparer |         Decrementing |   1000 | 196.194 ms | 2.4091 ms | 1.7419 ms |   1.06 |     0.01 |
|                         Span_ |         Decrementing |   1000 | 209.081 ms | 1.7116 ms | 1.2376 ms |   1.13 |     0.01 |
|             Span_NullComparer |         Decrementing |   1000 | 209.424 ms | 0.7356 ms | 0.5319 ms |   1.14 |     0.00 |
|  Span_ClassComparableComparer |         Decrementing |   1000 | 209.275 ms | 1.3223 ms | 0.9561 ms |   1.14 |     0.01 |
| Span_StructComparableComparer |         Decrementing |   1000 | 208.197 ms | 1.2331 ms | 0.8916 ms |   1.13 |     0.01 |
|               Span_Comparison |         Decrementing |   1000 | 214.940 ms | 1.0673 ms | 0.7717 ms |   1.17 |     0.00 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Decrementing** |  **10000** | **296.561 ms** | **1.7881 ms** | **1.2929 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 | 299.781 ms | 1.3212 ms | 0.9553 ms |   1.01 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 304.060 ms | 0.5717 ms | 0.4133 ms |   1.03 |     0.00 |
|                         Span_ |         Decrementing |  10000 | 324.951 ms | 1.0201 ms | 0.7376 ms |   1.10 |     0.01 |
|             Span_NullComparer |         Decrementing |  10000 | 319.193 ms | 1.3443 ms | 0.9720 ms |   1.08 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 337.500 ms | 1.9545 ms | 1.4132 ms |   1.14 |     0.01 |
| Span_StructComparableComparer |         Decrementing |  10000 | 343.243 ms | 1.0117 ms | 0.7315 ms |   1.16 |     0.01 |
|               Span_Comparison |         Decrementing |  10000 | 340.512 ms | 1.2218 ms | 0.8835 ms |   1.15 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **11.829 ms** | **0.3734 ms** | **0.2700 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  11.612 ms | 0.2504 ms | 0.1811 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |      2 |  35.558 ms | 0.6574 ms | 0.4753 ms |   3.01 |     0.08 |
|                         Span_ |         Incrementing |      2 |  14.198 ms | 0.3031 ms | 0.2191 ms |   1.20 |     0.03 |
|             Span_NullComparer |         Incrementing |      2 |  14.141 ms | 0.4047 ms | 0.2926 ms |   1.20 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  19.391 ms | 0.5337 ms | 0.3859 ms |   1.64 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      2 |  15.230 ms | 0.4696 ms | 0.3395 ms |   1.29 |     0.04 |
|               Span_Comparison |         Incrementing |      2 |  16.020 ms | 0.4478 ms | 0.3238 ms |   1.35 |     0.04 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **20.004 ms** | **0.6279 ms** | **0.4540 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  19.931 ms | 0.6319 ms | 0.4569 ms |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |      3 |  35.832 ms | 0.2571 ms | 0.1859 ms |   1.79 |     0.04 |
|                         Span_ |         Incrementing |      3 |  21.506 ms | 0.4652 ms | 0.3364 ms |   1.08 |     0.03 |
|             Span_NullComparer |         Incrementing |      3 |  21.070 ms | 0.3073 ms | 0.2222 ms |   1.05 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  25.189 ms | 0.5662 ms | 0.4094 ms |   1.26 |     0.03 |
| Span_StructComparableComparer |         Incrementing |      3 |  22.402 ms | 0.4597 ms | 0.3324 ms |   1.12 |     0.03 |
|               Span_Comparison |         Incrementing |      3 |  23.312 ms | 0.4774 ms | 0.3452 ms |   1.17 |     0.03 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |     **10** |  **16.792 ms** | **0.2912 ms** | **0.2106 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |  16.204 ms | 0.3641 ms | 0.2633 ms |   0.97 |     0.02 |
| Array_ClassComparableComparer |         Incrementing |     10 |  21.088 ms | 0.5318 ms | 0.3845 ms |   1.26 |     0.03 |
|                         Span_ |         Incrementing |     10 |  16.689 ms | 0.3058 ms | 0.2211 ms |   0.99 |     0.02 |
|             Span_NullComparer |         Incrementing |     10 |  16.203 ms | 0.4090 ms | 0.2957 ms |   0.97 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  18.283 ms | 0.5068 ms | 0.3665 ms |   1.09 |     0.02 |
| Span_StructComparableComparer |         Incrementing |     10 |  17.484 ms | 0.3743 ms | 0.2706 ms |   1.04 |     0.02 |
|               Span_Comparison |         Incrementing |     10 |  18.110 ms | 0.4695 ms | 0.3395 ms |   1.08 |     0.02 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **68.147 ms** | **0.7148 ms** | **0.5168 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  64.816 ms | 0.5635 ms | 0.4075 ms |   0.95 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |    100 |  69.571 ms | 0.9862 ms | 0.7131 ms |   1.02 |     0.01 |
|                         Span_ |         Incrementing |    100 |  70.466 ms | 0.8261 ms | 0.5974 ms |   1.03 |     0.01 |
|             Span_NullComparer |         Incrementing |    100 |  70.967 ms | 0.9724 ms | 0.7031 ms |   1.04 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  72.805 ms | 0.6028 ms | 0.4358 ms |   1.07 |     0.01 |
| Span_StructComparableComparer |         Incrementing |    100 |  74.561 ms | 0.8209 ms | 0.5936 ms |   1.09 |     0.01 |
|               Span_Comparison |         Incrementing |    100 |  77.162 ms | 0.8584 ms | 0.6206 ms |   1.13 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |   **1000** | **115.559 ms** | **0.7903 ms** | **0.5714 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 | 112.832 ms | 0.9902 ms | 0.7160 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |   1000 | 116.316 ms | 0.5275 ms | 0.3814 ms |   1.01 |     0.01 |
|                         Span_ |         Incrementing |   1000 | 124.732 ms | 0.5306 ms | 0.3837 ms |   1.08 |     0.01 |
|             Span_NullComparer |         Incrementing |   1000 | 122.253 ms | 0.7829 ms | 0.5661 ms |   1.06 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |   1000 | 128.467 ms | 0.6801 ms | 0.4917 ms |   1.11 |     0.01 |
| Span_StructComparableComparer |         Incrementing |   1000 | 132.521 ms | 0.6570 ms | 0.4750 ms |   1.15 |     0.01 |
|               Span_Comparison |         Incrementing |   1000 | 131.683 ms | 0.4082 ms | 0.2952 ms |   1.14 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |         **Incrementing** |  **10000** | **183.368 ms** | **0.7648 ms** | **0.5530 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 | 180.330 ms | 1.2682 ms | 0.9170 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |  10000 | 188.807 ms | 0.9271 ms | 0.6704 ms |   1.03 |     0.00 |
|                         Span_ |         Incrementing |  10000 | 192.780 ms | 0.7343 ms | 0.5310 ms |   1.05 |     0.00 |
|             Span_NullComparer |         Incrementing |  10000 | 195.524 ms | 1.0335 ms | 0.7473 ms |   1.07 |     0.00 |
|  Span_ClassComparableComparer |         Incrementing |  10000 | 203.401 ms | 0.7559 ms | 0.5466 ms |   1.11 |     0.00 |
| Span_StructComparableComparer |         Incrementing |  10000 | 203.955 ms | 0.8014 ms | 0.5795 ms |   1.11 |     0.00 |
|               Span_Comparison |         Incrementing |  10000 | 204.933 ms | 0.8312 ms | 0.6010 ms |   1.12 |     0.00 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **11.805 ms** | **0.4763 ms** | **0.3444 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  11.608 ms | 0.3729 ms | 0.2696 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |  35.247 ms | 0.4596 ms | 0.3324 ms |   2.99 |     0.09 |
|                         Span_ |  MedianOfThreeKiller |      2 |  14.258 ms | 0.3570 ms | 0.2581 ms |   1.21 |     0.04 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  13.915 ms | 0.4030 ms | 0.2914 ms |   1.18 |     0.04 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  19.292 ms | 0.5556 ms | 0.4017 ms |   1.64 |     0.06 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  15.411 ms | 0.5582 ms | 0.4036 ms |   1.31 |     0.05 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  16.146 ms | 0.4316 ms | 0.3121 ms |   1.37 |     0.05 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **20.092 ms** | **0.5387 ms** | **0.3895 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  19.337 ms | 0.4900 ms | 0.3543 ms |   0.96 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |  34.687 ms | 0.5438 ms | 0.3932 ms |   1.73 |     0.04 |
|                         Span_ |  MedianOfThreeKiller |      3 |  21.608 ms | 0.5177 ms | 0.3743 ms |   1.08 |     0.03 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  21.017 ms | 0.4423 ms | 0.3198 ms |   1.05 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  25.023 ms | 0.4917 ms | 0.3555 ms |   1.25 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  22.458 ms | 0.5314 ms | 0.3842 ms |   1.12 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  23.244 ms | 0.5499 ms | 0.3976 ms |   1.16 |     0.03 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **39.987 ms** | **0.5656 ms** | **0.4090 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  39.737 ms | 0.2372 ms | 0.1715 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  46.067 ms | 0.6860 ms | 0.4960 ms |   1.15 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |     10 |  38.257 ms | 0.6599 ms | 0.4771 ms |   0.96 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  38.795 ms | 0.5598 ms | 0.4048 ms |   0.97 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  41.725 ms | 0.5565 ms | 0.4024 ms |   1.04 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  42.252 ms | 0.6753 ms | 0.4883 ms |   1.06 |     0.02 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  42.137 ms | 0.6835 ms | 0.4942 ms |   1.05 |     0.02 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** | **131.180 ms** | **0.4659 ms** | **0.3369 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 | 127.638 ms | 0.4777 ms | 0.3454 ms |   0.97 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 | 134.326 ms | 1.0673 ms | 0.7717 ms |   1.02 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |    100 | 138.133 ms | 1.1602 ms | 0.8389 ms |   1.05 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 | 137.378 ms | 0.5918 ms | 0.4279 ms |   1.05 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 | 147.208 ms | 0.9542 ms | 0.6900 ms |   1.12 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 | 144.349 ms | 0.9423 ms | 0.6813 ms |   1.10 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |    100 | 143.442 ms | 0.7799 ms | 0.5639 ms |   1.09 |     0.00 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** | **233.491 ms** | **1.1258 ms** | **0.8140 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 | 230.540 ms | 1.1193 ms | 0.8093 ms |   0.99 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 245.474 ms | 1.1428 ms | 0.8263 ms |   1.05 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 257.735 ms | 0.9347 ms | 0.6758 ms |   1.10 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 252.800 ms | 1.0487 ms | 0.7583 ms |   1.08 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 263.285 ms | 1.1664 ms | 0.8433 ms |   1.13 |     0.01 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 263.461 ms | 1.1422 ms | 0.8259 ms |   1.13 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 | 267.636 ms | 3.0157 ms | 2.1806 ms |   1.15 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** | **387.575 ms** | **1.7281 ms** | **1.2496 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 | 386.540 ms | 2.4929 ms | 1.8025 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 385.688 ms | 1.1748 ms | 0.8495 ms |   1.00 |     0.00 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 428.351 ms | 0.8624 ms | 0.6235 ms |   1.11 |     0.00 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 433.210 ms | 1.8076 ms | 1.3070 ms |   1.12 |     0.00 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 445.293 ms | 1.2552 ms | 0.9076 ms |   1.15 |     0.00 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 434.920 ms | 1.1219 ms | 0.8112 ms |   1.12 |     0.00 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 453.514 ms | 1.2254 ms | 0.8861 ms |   1.17 |     0.00 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **12.789 ms** | **0.7919 ms** | **0.5726 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  12.603 ms | 0.6320 ms | 0.4570 ms |   0.99 |     0.05 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |  37.212 ms | 0.4894 ms | 0.3538 ms |   2.91 |     0.12 |
|                         Span_ | PartialRandomShuffle |      2 |  15.418 ms | 1.0417 ms | 0.7532 ms |   1.21 |     0.08 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  15.129 ms | 0.6918 ms | 0.5002 ms |   1.19 |     0.06 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  20.145 ms | 0.8501 ms | 0.6147 ms |   1.58 |     0.08 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  17.177 ms | 0.8051 ms | 0.5822 ms |   1.35 |     0.07 |
|               Span_Comparison | PartialRandomShuffle |      2 |  17.791 ms | 0.7286 ms | 0.5268 ms |   1.39 |     0.07 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **21.085 ms** | **1.0552 ms** | **0.7629 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  21.122 ms | 0.6216 ms | 0.4495 ms |   1.00 |     0.04 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  36.888 ms | 0.4609 ms | 0.3333 ms |   1.75 |     0.06 |
|                         Span_ | PartialRandomShuffle |      3 |  23.778 ms | 0.7779 ms | 0.5625 ms |   1.13 |     0.05 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  22.762 ms | 0.8289 ms | 0.5994 ms |   1.08 |     0.05 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  26.540 ms | 0.8752 ms | 0.6328 ms |   1.26 |     0.05 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  24.359 ms | 0.9354 ms | 0.6763 ms |   1.16 |     0.05 |
|               Span_Comparison | PartialRandomShuffle |      3 |  24.237 ms | 0.7829 ms | 0.5661 ms |   1.15 |     0.05 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **28.926 ms** | **0.7383 ms** | **0.5338 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  27.669 ms | 1.0295 ms | 0.7444 ms |   0.96 |     0.03 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  35.058 ms | 0.7399 ms | 0.5350 ms |   1.21 |     0.03 |
|                         Span_ | PartialRandomShuffle |     10 |  29.460 ms | 0.9890 ms | 0.7151 ms |   1.02 |     0.03 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  28.874 ms | 0.4740 ms | 0.3427 ms |   1.00 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  32.143 ms | 0.8130 ms | 0.5879 ms |   1.11 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  30.674 ms | 0.6449 ms | 0.4663 ms |   1.06 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |     10 |  31.273 ms | 0.5167 ms | 0.3736 ms |   1.08 |     0.02 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** | **115.073 ms** | **1.1223 ms** | **0.8115 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 | 114.456 ms | 0.8923 ms | 0.6452 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 | 117.650 ms | 0.8856 ms | 0.6404 ms |   1.02 |     0.01 |
|                         Span_ | PartialRandomShuffle |    100 | 118.670 ms | 0.7024 ms | 0.5079 ms |   1.03 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |    100 | 118.998 ms | 1.2075 ms | 0.8731 ms |   1.03 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 | 126.526 ms | 0.4917 ms | 0.3556 ms |   1.10 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 | 130.177 ms | 1.2157 ms | 0.8790 ms |   1.13 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |    100 | 125.350 ms | 0.6729 ms | 0.4866 ms |   1.09 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** | **180.139 ms** | **1.4502 ms** | **1.0486 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 | 175.425 ms | 1.0883 ms | 0.7869 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 | 183.218 ms | 1.1959 ms | 0.8647 ms |   1.02 |     0.01 |
|                         Span_ | PartialRandomShuffle |   1000 | 187.329 ms | 0.9947 ms | 0.7193 ms |   1.04 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |   1000 | 186.297 ms | 1.6724 ms | 1.2092 ms |   1.03 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 | 196.279 ms | 1.8670 ms | 1.3500 ms |   1.09 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 | 194.898 ms | 1.0940 ms | 0.7911 ms |   1.08 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |   1000 | 194.594 ms | 0.9636 ms | 0.6968 ms |   1.08 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** | **247.059 ms** | **1.3257 ms** | **0.9586 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 | 237.422 ms | 2.3197 ms | 1.6773 ms |   0.96 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 243.255 ms | 1.5530 ms | 1.1229 ms |   0.98 |     0.01 |
|                         Span_ | PartialRandomShuffle |  10000 | 257.117 ms | 1.6381 ms | 1.1844 ms |   1.04 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 255.162 ms | 1.1625 ms | 0.8406 ms |   1.03 |     0.01 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 265.074 ms | 1.2195 ms | 0.8818 ms |   1.07 |     0.01 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 267.411 ms | 1.4751 ms | 1.0666 ms |   1.08 |     0.01 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 267.236 ms | 1.1888 ms | 0.8596 ms |   1.08 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |               **Random** |      **2** |  **11.805 ms** | **0.3107 ms** | **0.2247 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  11.680 ms | 0.2943 ms | 0.2128 ms |   0.99 |     0.03 |
| Array_ClassComparableComparer |               Random |      2 |  35.476 ms | 0.5501 ms | 0.3978 ms |   3.01 |     0.06 |
|                         Span_ |               Random |      2 |  14.287 ms | 0.3834 ms | 0.2772 ms |   1.21 |     0.03 |
|             Span_NullComparer |               Random |      2 |  14.076 ms | 0.3285 ms | 0.2375 ms |   1.19 |     0.03 |
|  Span_ClassComparableComparer |               Random |      2 |  18.989 ms | 0.2685 ms | 0.1941 ms |   1.61 |     0.03 |
| Span_StructComparableComparer |               Random |      2 |  15.559 ms | 0.2939 ms | 0.2125 ms |   1.32 |     0.03 |
|               Span_Comparison |               Random |      2 |  16.218 ms | 0.3712 ms | 0.2684 ms |   1.37 |     0.03 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |               **Random** |      **3** |  **19.322 ms** | **0.4348 ms** | **0.3144 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  19.328 ms | 0.4636 ms | 0.3352 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer |               Random |      3 |  34.569 ms | 0.5578 ms | 0.4034 ms |   1.79 |     0.03 |
|                         Span_ |               Random |      3 |  21.400 ms | 0.4881 ms | 0.3529 ms |   1.11 |     0.02 |
|             Span_NullComparer |               Random |      3 |  21.039 ms | 0.3630 ms | 0.2625 ms |   1.09 |     0.02 |
|  Span_ClassComparableComparer |               Random |      3 |  24.723 ms | 0.4838 ms | 0.3498 ms |   1.28 |     0.03 |
| Span_StructComparableComparer |               Random |      3 |  21.620 ms | 0.5182 ms | 0.3747 ms |   1.12 |     0.03 |
|               Span_Comparison |               Random |      3 |  22.284 ms | 0.4340 ms | 0.3138 ms |   1.15 |     0.02 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |               **Random** |     **10** |  **49.241 ms** | **0.4498 ms** | **0.3252 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  47.565 ms | 0.4356 ms | 0.3150 ms |   0.97 |     0.01 |
| Array_ClassComparableComparer |               Random |     10 |  54.902 ms | 0.4998 ms | 0.3614 ms |   1.12 |     0.01 |
|                         Span_ |               Random |     10 |  50.355 ms | 0.4357 ms | 0.3150 ms |   1.02 |     0.01 |
|             Span_NullComparer |               Random |     10 |  49.775 ms | 0.6471 ms | 0.4679 ms |   1.01 |     0.01 |
|  Span_ClassComparableComparer |               Random |     10 |  54.475 ms | 0.3697 ms | 0.2673 ms |   1.11 |     0.01 |
| Span_StructComparableComparer |               Random |     10 |  51.260 ms | 1.0347 ms | 0.7482 ms |   1.04 |     0.02 |
|               Span_Comparison |               Random |     10 |  53.348 ms | 0.7034 ms | 0.5086 ms |   1.08 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |               **Random** |    **100** | **112.332 ms** | **0.5324 ms** | **0.3849 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 | 109.750 ms | 0.6747 ms | 0.4878 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |    100 | 115.025 ms | 0.6733 ms | 0.4868 ms |   1.02 |     0.01 |
|                         Span_ |               Random |    100 | 120.984 ms | 0.5485 ms | 0.3966 ms |   1.08 |     0.00 |
|             Span_NullComparer |               Random |    100 | 117.659 ms | 1.1046 ms | 0.7987 ms |   1.05 |     0.01 |
|  Span_ClassComparableComparer |               Random |    100 | 121.338 ms | 0.9278 ms | 0.6708 ms |   1.08 |     0.01 |
| Span_StructComparableComparer |               Random |    100 | 126.920 ms | 1.0993 ms | 0.7948 ms |   1.13 |     0.01 |
|               Span_Comparison |               Random |    100 | 127.940 ms | 1.0658 ms | 0.7706 ms |   1.14 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |               **Random** |   **1000** | **175.861 ms** | **1.0841 ms** | **0.7839 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 | 175.624 ms | 0.8194 ms | 0.5925 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |   1000 | 177.052 ms | 0.9110 ms | 0.6587 ms |   1.01 |     0.01 |
|                         Span_ |               Random |   1000 | 190.691 ms | 1.2063 ms | 0.8722 ms |   1.08 |     0.01 |
|             Span_NullComparer |               Random |   1000 | 184.545 ms | 0.9345 ms | 0.6757 ms |   1.05 |     0.01 |
|  Span_ClassComparableComparer |               Random |   1000 | 189.954 ms | 1.3020 ms | 0.9414 ms |   1.08 |     0.01 |
| Span_StructComparableComparer |               Random |   1000 | 193.071 ms | 0.7607 ms | 0.5501 ms |   1.10 |     0.01 |
|               Span_Comparison |               Random |   1000 | 196.852 ms | 1.1854 ms | 0.8571 ms |   1.12 |     0.01 |
|                               |                      |        |            |           |           |        |          |
|                        **Array_** |               **Random** |  **10000** | **248.018 ms** | **1.5691 ms** | **1.1346 ms** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 242.618 ms | 1.2698 ms | 0.9181 ms |   0.98 |     0.01 |
| Array_ClassComparableComparer |               Random |  10000 | 254.049 ms | 2.0209 ms | 1.4612 ms |   1.02 |     0.01 |
|                         Span_ |               Random |  10000 | 260.501 ms | 1.0910 ms | 0.7889 ms |   1.05 |     0.01 |
|             Span_NullComparer |               Random |  10000 | 258.967 ms | 1.9292 ms | 1.3949 ms |   1.04 |     0.01 |
|  Span_ClassComparableComparer |               Random |  10000 | 277.741 ms | 1.0865 ms | 0.7856 ms |   1.12 |     0.01 |
| Span_StructComparableComparer |               Random |  10000 | 273.962 ms | 1.4478 ms | 1.0469 ms |   1.10 |     0.01 |
|               Span_Comparison |               Random |  10000 | 278.511 ms | 1.5295 ms | 1.1060 ms |   1.12 |     0.01 |
