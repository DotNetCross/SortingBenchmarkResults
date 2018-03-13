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
|                        Method |               Filler | Length |        Mean |      Error |     StdDev | Scaled | ScaledSD |
|------------------------------ |--------------------- |------- |------------:|-----------:|-----------:|-------:|---------:|
|                        **Array_** |             **Constant** |      **2** |  **1,950.7 us** |  **21.764 us** |  **15.736 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      2 |  1,759.2 us |  12.128 us |   8.769 us |   0.90 |     0.01 |
| Array_ClassComparableComparer |             Constant |      2 |  2,424.0 us |  12.615 us |   9.122 us |   1.24 |     0.01 |
|                         Span_ |             Constant |      2 |  3,704.0 us |  18.348 us |  13.266 us |   1.90 |     0.02 |
|             Span_NullComparer |             Constant |      2 |  3,328.8 us |  15.178 us |  10.974 us |   1.71 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      2 |  6,346.7 us |  25.961 us |  18.772 us |   3.25 |     0.03 |
| Span_StructComparableComparer |             Constant |      2 |  4,732.1 us |  17.852 us |  12.908 us |   2.43 |     0.02 |
|               Span_Comparison |             Constant |      2 |  3,139.6 us |  30.009 us |  21.699 us |   1.61 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |      **3** |  **1,622.0 us** |  **16.326 us** |  **11.805 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |      3 |  1,551.0 us | 102.465 us |  74.089 us |   0.96 |     0.04 |
| Array_ClassComparableComparer |             Constant |      3 |  2,012.8 us |   9.520 us |   6.884 us |   1.24 |     0.01 |
|                         Span_ |             Constant |      3 |  2,551.8 us |  17.257 us |  12.478 us |   1.57 |     0.01 |
|             Span_NullComparer |             Constant |      3 |  2,279.1 us |  18.605 us |  13.453 us |   1.41 |     0.01 |
|  Span_ClassComparableComparer |             Constant |      3 |  4,577.2 us |  52.504 us |  37.964 us |   2.82 |     0.03 |
| Span_StructComparableComparer |             Constant |      3 |  3,438.7 us |  23.039 us |  16.659 us |   2.12 |     0.02 |
|               Span_Comparison |             Constant |      3 |  2,234.5 us |   6.452 us |   4.665 us |   1.38 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |     **10** |    **906.8 us** |   **6.564 us** |   **4.746 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |     10 |    893.0 us |  26.534 us |  19.186 us |   0.98 |     0.02 |
| Array_ClassComparableComparer |             Constant |     10 |  1,200.9 us |  23.046 us |  16.664 us |   1.32 |     0.02 |
|                         Span_ |             Constant |     10 |    987.0 us |  17.891 us |  12.937 us |   1.09 |     0.01 |
|             Span_NullComparer |             Constant |     10 |    910.3 us |  16.218 us |  11.727 us |   1.00 |     0.01 |
|  Span_ClassComparableComparer |             Constant |     10 |  1,732.6 us |  10.492 us |   7.586 us |   1.91 |     0.01 |
| Span_StructComparableComparer |             Constant |     10 |  1,389.7 us |  29.693 us |  21.470 us |   1.53 |     0.02 |
|               Span_Comparison |             Constant |     10 |    923.3 us |  19.097 us |  13.809 us |   1.02 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |    **100** |  **2,420.0 us** |  **17.399 us** |  **12.580 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |    100 |  2,425.0 us |  27.740 us |  20.058 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |             Constant |    100 |  3,052.1 us |  21.758 us |  15.732 us |   1.26 |     0.01 |
|                         Span_ |             Constant |    100 |  3,450.3 us |  15.876 us |  11.479 us |   1.43 |     0.01 |
|             Span_NullComparer |             Constant |    100 |  3,464.3 us |  25.469 us |  18.416 us |   1.43 |     0.01 |
|  Span_ClassComparableComparer |             Constant |    100 |  4,440.6 us |  22.747 us |  16.448 us |   1.83 |     0.01 |
| Span_StructComparableComparer |             Constant |    100 |  4,794.4 us |  30.754 us |  22.237 us |   1.98 |     0.01 |
|               Span_Comparison |             Constant |    100 |  2,843.5 us |  54.763 us |  39.597 us |   1.18 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |   **1000** |  **3,996.6 us** | **103.939 us** |  **75.155 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |   1000 |  3,936.2 us |  42.685 us |  30.864 us |   0.99 |     0.02 |
| Array_ClassComparableComparer |             Constant |   1000 |  5,036.8 us |  35.246 us |  25.485 us |   1.26 |     0.02 |
|                         Span_ |             Constant |   1000 |  6,265.1 us |  86.610 us |  62.625 us |   1.57 |     0.03 |
|             Span_NullComparer |             Constant |   1000 |  6,265.3 us |  80.707 us |  58.357 us |   1.57 |     0.03 |
|  Span_ClassComparableComparer |             Constant |   1000 |  7,770.8 us |  77.880 us |  56.312 us |   1.94 |     0.04 |
| Span_StructComparableComparer |             Constant |   1000 |  7,642.3 us |  32.656 us |  23.612 us |   1.91 |     0.03 |
|               Span_Comparison |             Constant |   1000 |  4,782.9 us |  39.996 us |  28.919 us |   1.20 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |             **Constant** |  **10000** |  **6,116.5 us** |  **25.936 us** |  **18.753 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |             Constant |  10000 |  6,118.1 us |  23.551 us |  17.029 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |             Constant |  10000 |  7,786.7 us |  28.191 us |  20.384 us |   1.27 |     0.00 |
|                         Span_ |             Constant |  10000 | 10,374.8 us |  56.484 us |  40.841 us |   1.70 |     0.01 |
|             Span_NullComparer |             Constant |  10000 | 10,055.9 us |  57.803 us |  41.795 us |   1.64 |     0.01 |
|  Span_ClassComparableComparer |             Constant |  10000 | 12,362.3 us |  56.608 us |  40.931 us |   2.02 |     0.01 |
| Span_StructComparableComparer |             Constant |  10000 | 12,427.0 us |  53.479 us |  38.669 us |   2.03 |     0.01 |
|               Span_Comparison |             Constant |  10000 |  7,533.0 us |  37.081 us |  26.812 us |   1.23 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **2** |  **2,122.3 us** |  **21.724 us** |  **15.708 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      2 |  2,024.2 us |  13.011 us |   9.408 us |   0.95 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |      2 |  2,666.2 us |  87.544 us |  63.300 us |   1.26 |     0.03 |
|                         Span_ |         Decrementing |      2 |  3,894.4 us |  23.182 us |  16.762 us |   1.84 |     0.01 |
|             Span_NullComparer |         Decrementing |      2 |  3,537.2 us |  19.588 us |  14.164 us |   1.67 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |      2 |  6,680.4 us |  29.495 us |  21.326 us |   3.15 |     0.02 |
| Span_StructComparableComparer |         Decrementing |      2 |  4,968.2 us |  19.987 us |  14.452 us |   2.34 |     0.02 |
|               Span_Comparison |         Decrementing |      2 |  3,432.1 us |  22.208 us |  16.058 us |   1.62 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |      **3** |  **2,118.0 us** |  **57.093 us** |  **41.282 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |      3 |  2,028.9 us |  44.929 us |  32.487 us |   0.96 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |      3 |  2,334.9 us | 110.665 us |  80.018 us |   1.10 |     0.04 |
|                         Span_ |         Decrementing |      3 |  2,906.6 us |  13.488 us |   9.753 us |   1.37 |     0.02 |
|             Span_NullComparer |         Decrementing |      3 |  2,654.2 us |  15.312 us |  11.071 us |   1.25 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |      3 |  4,983.6 us |  59.984 us |  43.372 us |   2.35 |     0.05 |
| Span_StructComparableComparer |         Decrementing |      3 |  3,841.2 us |  41.017 us |  29.658 us |   1.81 |     0.04 |
|               Span_Comparison |         Decrementing |      3 |  2,619.4 us |   8.694 us |   6.287 us |   1.24 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |     **10** |  **3,384.8 us** |  **23.734 us** |  **17.161 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |     10 |  3,369.6 us |  32.625 us |  23.590 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |     10 |  4,249.6 us |  27.984 us |  20.234 us |   1.26 |     0.01 |
|                         Span_ |         Decrementing |     10 |  3,263.8 us | 120.653 us |  87.240 us |   0.96 |     0.03 |
|             Span_NullComparer |         Decrementing |     10 |  3,197.6 us |  80.978 us |  58.552 us |   0.94 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |     10 |  5,126.9 us |  28.261 us |  20.435 us |   1.51 |     0.01 |
| Span_StructComparableComparer |         Decrementing |     10 |  4,747.1 us |  18.074 us |  13.069 us |   1.40 |     0.01 |
|               Span_Comparison |         Decrementing |     10 |  3,804.0 us |  24.279 us |  17.555 us |   1.12 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |    **100** |  **3,224.5 us** |  **75.164 us** |  **54.348 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |    100 |  3,232.6 us |  71.705 us |  51.848 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |    100 |  4,390.5 us | 147.750 us | 106.833 us |   1.36 |     0.04 |
|                         Span_ |         Decrementing |    100 |  4,661.5 us | 168.291 us | 121.685 us |   1.45 |     0.04 |
|             Span_NullComparer |         Decrementing |    100 |  4,686.4 us | 171.988 us | 124.358 us |   1.45 |     0.04 |
|  Span_ClassComparableComparer |         Decrementing |    100 |  6,122.0 us | 114.034 us |  82.454 us |   1.90 |     0.04 |
| Span_StructComparableComparer |         Decrementing |    100 |  5,960.0 us | 146.950 us | 106.254 us |   1.85 |     0.04 |
|               Span_Comparison |         Decrementing |    100 |  3,717.0 us | 113.135 us |  81.804 us |   1.15 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |   **1000** |  **4,889.8 us** |  **86.813 us** |  **62.771 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |   1000 |  4,857.1 us |  77.218 us |  55.834 us |   0.99 |     0.02 |
| Array_ClassComparableComparer |         Decrementing |   1000 |  7,100.5 us |  51.556 us |  37.279 us |   1.45 |     0.02 |
|                         Span_ |         Decrementing |   1000 |  8,773.5 us |  81.006 us |  58.573 us |   1.79 |     0.02 |
|             Span_NullComparer |         Decrementing |   1000 |  8,653.3 us |  74.615 us |  53.952 us |   1.77 |     0.02 |
|  Span_ClassComparableComparer |         Decrementing |   1000 | 11,303.3 us |  93.848 us |  67.858 us |   2.31 |     0.03 |
| Span_StructComparableComparer |         Decrementing |   1000 | 10,683.7 us |  93.058 us |  67.287 us |   2.19 |     0.03 |
|               Span_Comparison |         Decrementing |   1000 |  5,898.6 us |  66.075 us |  47.777 us |   1.21 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Decrementing** |  **10000** |  **6,928.1 us** |  **52.280 us** |  **37.802 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Decrementing |  10000 |  6,932.9 us |  29.605 us |  21.406 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Decrementing |  10000 | 10,457.6 us |  38.558 us |  27.880 us |   1.51 |     0.01 |
|                         Span_ |         Decrementing |  10000 | 12,945.0 us |  48.007 us |  34.712 us |   1.87 |     0.01 |
|             Span_NullComparer |         Decrementing |  10000 | 12,976.1 us |  92.012 us |  66.531 us |   1.87 |     0.01 |
|  Span_ClassComparableComparer |         Decrementing |  10000 | 16,970.3 us | 106.428 us |  76.954 us |   2.45 |     0.02 |
| Span_StructComparableComparer |         Decrementing |  10000 | 16,169.6 us |  59.674 us |  43.148 us |   2.33 |     0.01 |
|               Span_Comparison |         Decrementing |  10000 |  8,650.1 us | 116.146 us |  83.981 us |   1.25 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **2** |  **1,889.2 us** |   **8.487 us** |   **6.136 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      2 |  1,757.6 us |  12.649 us |   9.146 us |   0.93 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |      2 |  2,353.5 us |  16.113 us |  11.651 us |   1.25 |     0.01 |
|                         Span_ |         Incrementing |      2 |  3,720.7 us |  20.991 us |  15.178 us |   1.97 |     0.01 |
|             Span_NullComparer |         Incrementing |      2 |  3,343.1 us |  14.328 us |  10.360 us |   1.77 |     0.01 |
|  Span_ClassComparableComparer |         Incrementing |      2 |  6,453.7 us |  21.361 us |  15.445 us |   3.42 |     0.01 |
| Span_StructComparableComparer |         Incrementing |      2 |  4,644.3 us |   7.437 us |   5.378 us |   2.46 |     0.01 |
|               Span_Comparison |         Incrementing |      2 |  3,173.4 us |  15.978 us |  11.553 us |   1.68 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |      **3** |  **1,615.2 us** |  **39.240 us** |  **28.373 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |      3 |  1,566.2 us | 109.651 us |  79.285 us |   0.97 |     0.05 |
| Array_ClassComparableComparer |         Incrementing |      3 |  2,049.1 us |  12.699 us |   9.182 us |   1.27 |     0.02 |
|                         Span_ |         Incrementing |      3 |  2,561.2 us |  12.877 us |   9.311 us |   1.59 |     0.03 |
|             Span_NullComparer |         Incrementing |      3 |  2,229.7 us |  23.873 us |  17.262 us |   1.38 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |      3 |  4,509.5 us |  43.825 us |  31.689 us |   2.79 |     0.05 |
| Span_StructComparableComparer |         Incrementing |      3 |  3,413.4 us |  40.971 us |  29.624 us |   2.11 |     0.04 |
|               Span_Comparison |         Incrementing |      3 |  2,225.5 us |  11.158 us |   8.068 us |   1.38 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |     **10** |    **919.9 us** |  **29.417 us** |  **21.270 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |     10 |    889.9 us |  34.022 us |  24.600 us |   0.97 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |     10 |  1,158.7 us |  15.329 us |  11.084 us |   1.26 |     0.03 |
|                         Span_ |         Incrementing |     10 |    977.8 us |  16.242 us |  11.744 us |   1.06 |     0.03 |
|             Span_NullComparer |         Incrementing |     10 |    899.8 us |  24.713 us |  17.869 us |   0.98 |     0.03 |
|  Span_ClassComparableComparer |         Incrementing |     10 |  1,745.8 us |  14.021 us |  10.138 us |   1.90 |     0.04 |
| Span_StructComparableComparer |         Incrementing |     10 |  1,395.5 us |  28.311 us |  20.471 us |   1.52 |     0.04 |
|               Span_Comparison |         Incrementing |     10 |    939.6 us |  22.188 us |  16.044 us |   1.02 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |    **100** |  **1,939.4 us** |  **75.815 us** |  **54.820 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |    100 |  1,953.8 us |  89.568 us |  64.763 us |   1.01 |     0.04 |
| Array_ClassComparableComparer |         Incrementing |    100 |  2,720.4 us |  78.790 us |  56.970 us |   1.40 |     0.05 |
|                         Span_ |         Incrementing |    100 |  2,925.3 us |  76.123 us |  55.042 us |   1.51 |     0.05 |
|             Span_NullComparer |         Incrementing |    100 |  2,892.8 us |  67.680 us |  48.937 us |   1.49 |     0.05 |
|  Span_ClassComparableComparer |         Incrementing |    100 |  3,874.0 us |  63.131 us |  45.648 us |   2.00 |     0.06 |
| Span_StructComparableComparer |         Incrementing |    100 |  3,785.6 us |  83.703 us |  60.522 us |   1.95 |     0.06 |
|               Span_Comparison |         Incrementing |    100 |  2,172.3 us |  89.719 us |  64.873 us |   1.12 |     0.04 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |   **1000** |  **2,806.6 us** |  **76.581 us** |  **55.373 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |   1000 |  2,815.4 us |  74.414 us |  53.806 us |   1.00 |     0.03 |
| Array_ClassComparableComparer |         Incrementing |   1000 |  4,101.0 us |  71.054 us |  51.377 us |   1.46 |     0.03 |
|                         Span_ |         Incrementing |   1000 |  4,900.1 us |  97.994 us |  70.856 us |   1.75 |     0.04 |
|             Span_NullComparer |         Incrementing |   1000 |  4,891.1 us |  78.228 us |  56.564 us |   1.74 |     0.04 |
|  Span_ClassComparableComparer |         Incrementing |   1000 |  6,402.4 us |  93.691 us |  67.745 us |   2.28 |     0.05 |
| Span_StructComparableComparer |         Incrementing |   1000 |  6,203.1 us |  85.119 us |  61.546 us |   2.21 |     0.05 |
|               Span_Comparison |         Incrementing |   1000 |  3,222.8 us |  78.853 us |  57.016 us |   1.15 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |         **Incrementing** |  **10000** |  **4,169.2 us** |  **70.364 us** |  **50.878 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |         Incrementing |  10000 |  4,157.0 us |  51.225 us |  37.039 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |         Incrementing |  10000 |  6,238.9 us |  69.568 us |  50.302 us |   1.50 |     0.02 |
|                         Span_ |         Incrementing |  10000 |  7,667.8 us |  58.671 us |  42.423 us |   1.84 |     0.02 |
|             Span_NullComparer |         Incrementing |  10000 |  7,684.3 us |  63.604 us |  45.990 us |   1.84 |     0.02 |
|  Span_ClassComparableComparer |         Incrementing |  10000 | 10,105.1 us |  85.467 us |  61.798 us |   2.42 |     0.03 |
| Span_StructComparableComparer |         Incrementing |  10000 |  9,719.3 us |  53.370 us |  38.590 us |   2.33 |     0.03 |
|               Span_Comparison |         Incrementing |  10000 |  4,918.0 us |  84.668 us |  61.220 us |   1.18 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **2** |  **1,898.0 us** |  **33.017 us** |  **23.873 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      2 |  1,755.7 us |  25.151 us |  18.186 us |   0.93 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      2 |  2,547.0 us |  16.204 us |  11.716 us |   1.34 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |      2 |  4,019.0 us |  19.324 us |  13.973 us |   2.12 |     0.03 |
|             Span_NullComparer |  MedianOfThreeKiller |      2 |  3,401.1 us |  28.444 us |  20.567 us |   1.79 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      2 |  6,409.2 us |  36.191 us |  26.169 us |   3.38 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      2 |  4,721.4 us |  21.070 us |  15.235 us |   2.49 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |      2 |  3,258.5 us |  32.593 us |  23.567 us |   1.72 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |      **3** |  **1,608.0 us** |  **30.015 us** |  **21.703 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |      3 |  1,537.2 us |  82.568 us |  59.702 us |   0.96 |     0.04 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |      3 |  2,004.6 us |  13.414 us |   9.699 us |   1.25 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |      3 |  2,587.3 us |  15.695 us |  11.348 us |   1.61 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |      3 |  2,280.0 us |  16.995 us |  12.289 us |   1.42 |     0.02 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |      3 |  4,489.1 us |  24.329 us |  17.591 us |   2.79 |     0.04 |
| Span_StructComparableComparer |  MedianOfThreeKiller |      3 |  3,410.3 us |  29.755 us |  21.514 us |   2.12 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |      3 |  2,280.7 us |  12.835 us |   9.280 us |   1.42 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |     **10** |  **1,678.7 us** | **164.013 us** | **118.592 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |     10 |  1,616.0 us |  15.332 us |  11.086 us |   0.97 |     0.06 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |     10 |  2,329.3 us |  22.431 us |  16.219 us |   1.39 |     0.08 |
|                         Span_ |  MedianOfThreeKiller |     10 |  1,778.7 us |  14.588 us |  10.548 us |   1.06 |     0.06 |
|             Span_NullComparer |  MedianOfThreeKiller |     10 |  1,703.8 us |  31.634 us |  22.874 us |   1.02 |     0.06 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |     10 |  2,730.1 us |  12.714 us |   9.193 us |   1.63 |     0.09 |
| Span_StructComparableComparer |  MedianOfThreeKiller |     10 |  2,393.2 us |  15.528 us |  11.228 us |   1.43 |     0.08 |
|               Span_Comparison |  MedianOfThreeKiller |     10 |  1,844.8 us |  27.250 us |  19.703 us |   1.10 |     0.06 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |    **100** |  **3,970.3 us** |  **71.603 us** |  **51.774 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |    100 |  3,950.1 us |  49.839 us |  36.037 us |   1.00 |     0.02 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |    100 |  5,565.8 us |  81.167 us |  58.689 us |   1.40 |     0.02 |
|                         Span_ |  MedianOfThreeKiller |    100 |  6,006.5 us | 455.891 us | 329.639 us |   1.51 |     0.08 |
|             Span_NullComparer |  MedianOfThreeKiller |    100 |  5,872.5 us | 176.352 us | 127.514 us |   1.48 |     0.04 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |    100 |  7,742.5 us | 145.129 us | 104.937 us |   1.95 |     0.03 |
| Span_StructComparableComparer |  MedianOfThreeKiller |    100 |  7,645.4 us | 120.148 us |  86.875 us |   1.93 |     0.03 |
|               Span_Comparison |  MedianOfThreeKiller |    100 |  4,671.5 us |  69.619 us |  50.339 us |   1.18 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |   **1000** |  **6,251.5 us** |  **50.829 us** |  **36.753 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |   1000 |  6,234.1 us | 123.249 us |  89.117 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |   1000 |  8,828.6 us |  33.777 us |  24.423 us |   1.41 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |   1000 | 10,651.0 us | 107.252 us |  77.550 us |   1.70 |     0.02 |
|             Span_NullComparer |  MedianOfThreeKiller |   1000 | 10,638.0 us |  99.327 us |  71.820 us |   1.70 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |   1000 | 13,923.6 us | 153.037 us | 110.656 us |   2.23 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |   1000 | 13,360.3 us |  72.193 us |  52.200 us |   2.14 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |   1000 |  7,511.9 us | 106.328 us |  76.882 us |   1.20 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |  **MedianOfThreeKiller** |  **10000** |  **9,789.1 us** |  **46.281 us** |  **33.464 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |  MedianOfThreeKiller |  10000 |  9,786.6 us |  31.156 us |  22.528 us |   1.00 |     0.00 |
| Array_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 14,080.8 us |  42.901 us |  31.020 us |   1.44 |     0.01 |
|                         Span_ |  MedianOfThreeKiller |  10000 | 17,309.5 us |  91.465 us |  66.135 us |   1.77 |     0.01 |
|             Span_NullComparer |  MedianOfThreeKiller |  10000 | 17,357.6 us |  79.785 us |  57.690 us |   1.77 |     0.01 |
|  Span_ClassComparableComparer |  MedianOfThreeKiller |  10000 | 22,572.7 us | 244.619 us | 176.875 us |   2.31 |     0.02 |
| Span_StructComparableComparer |  MedianOfThreeKiller |  10000 | 21,742.6 us |  33.955 us |  24.552 us |   2.22 |     0.01 |
|               Span_Comparison |  MedianOfThreeKiller |  10000 | 12,467.8 us |  91.092 us |  65.865 us |   1.27 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **2** |  **2,146.0 us** | **104.408 us** |  **75.493 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      2 |  2,014.6 us |  68.484 us |  49.519 us |   0.94 |     0.04 |
| Array_ClassComparableComparer | PartialRandomShuffle |      2 |  2,581.3 us |  48.311 us |  34.932 us |   1.20 |     0.04 |
|                         Span_ | PartialRandomShuffle |      2 |  3,968.0 us | 104.646 us |  75.666 us |   1.85 |     0.07 |
|             Span_NullComparer | PartialRandomShuffle |      2 |  3,562.6 us |  29.704 us |  21.478 us |   1.66 |     0.05 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      2 |  6,536.8 us |  92.451 us |  66.848 us |   3.05 |     0.10 |
| Span_StructComparableComparer | PartialRandomShuffle |      2 |  4,982.3 us |  86.155 us |  62.296 us |   2.32 |     0.08 |
|               Span_Comparison | PartialRandomShuffle |      2 |  3,379.8 us |  21.009 us |  15.191 us |   1.58 |     0.05 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |      **3** |  **1,983.3 us** |  **62.389 us** |  **45.111 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |      3 |  1,897.9 us |  18.161 us |  13.131 us |   0.96 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |      3 |  2,314.4 us |  49.233 us |  35.599 us |   1.17 |     0.03 |
|                         Span_ | PartialRandomShuffle |      3 |  2,866.4 us |  63.860 us |  46.175 us |   1.45 |     0.04 |
|             Span_NullComparer | PartialRandomShuffle |      3 |  2,574.6 us |  29.881 us |  21.606 us |   1.30 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |      3 |  4,850.0 us |  95.829 us |  69.290 us |   2.45 |     0.06 |
| Span_StructComparableComparer | PartialRandomShuffle |      3 |  3,754.4 us |  95.277 us |  68.892 us |   1.89 |     0.05 |
|               Span_Comparison | PartialRandomShuffle |      3 |  2,553.1 us |  62.275 us |  45.029 us |   1.29 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |     **10** |  **1,675.8 us** |  **25.608 us** |  **18.516 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |     10 |  1,652.2 us |  54.979 us |  39.754 us |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |     10 |  2,039.1 us |  21.008 us |  15.190 us |   1.22 |     0.02 |
|                         Span_ | PartialRandomShuffle |     10 |  1,809.6 us |  56.664 us |  40.971 us |   1.08 |     0.03 |
|             Span_NullComparer | PartialRandomShuffle |     10 |  1,721.6 us |  80.945 us |  58.528 us |   1.03 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |     10 |  2,653.3 us |  26.307 us |  19.022 us |   1.58 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |     10 |  2,309.3 us |  78.674 us |  56.886 us |   1.38 |     0.04 |
|               Span_Comparison | PartialRandomShuffle |     10 |  1,792.2 us |  61.780 us |  44.671 us |   1.07 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |    **100** |  **4,842.9 us** | **100.020 us** |  **72.321 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |    100 |  4,874.6 us | 141.127 us | 102.044 us |   1.01 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |    100 |  5,990.1 us |  96.937 us |  70.092 us |   1.24 |     0.02 |
|                         Span_ | PartialRandomShuffle |    100 |  6,090.7 us | 123.987 us |  89.651 us |   1.26 |     0.03 |
|             Span_NullComparer | PartialRandomShuffle |    100 |  5,962.8 us | 115.904 us |  83.806 us |   1.23 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |    100 |  7,479.2 us | 218.741 us | 158.164 us |   1.54 |     0.04 |
| Span_StructComparableComparer | PartialRandomShuffle |    100 |  7,297.4 us | 136.315 us |  98.565 us |   1.51 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |    100 |  5,181.1 us | 158.848 us | 114.857 us |   1.07 |     0.03 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |   **1000** |  **7,074.4 us** | **134.272 us** |  **97.087 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |   1000 |  7,033.6 us | 114.747 us |  82.970 us |   0.99 |     0.02 |
| Array_ClassComparableComparer | PartialRandomShuffle |   1000 |  8,719.3 us | 127.734 us |  92.360 us |   1.23 |     0.02 |
|                         Span_ | PartialRandomShuffle |   1000 |  9,521.7 us | 153.290 us | 110.839 us |   1.35 |     0.02 |
|             Span_NullComparer | PartialRandomShuffle |   1000 |  9,506.7 us | 205.501 us | 148.591 us |   1.34 |     0.03 |
|  Span_ClassComparableComparer | PartialRandomShuffle |   1000 | 11,690.7 us | 158.000 us | 114.244 us |   1.65 |     0.03 |
| Span_StructComparableComparer | PartialRandomShuffle |   1000 | 11,492.1 us | 136.963 us |  99.033 us |   1.62 |     0.03 |
|               Span_Comparison | PartialRandomShuffle |   1000 |  7,732.0 us | 104.330 us |  75.438 us |   1.09 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** | **PartialRandomShuffle** |  **10000** |  **9,065.3 us** |  **93.010 us** |  **67.253 us** |   **1.00** |     **0.00** |
|            Array_NullComparer | PartialRandomShuffle |  10000 |  9,081.2 us | 109.117 us |  78.899 us |   1.00 |     0.01 |
| Array_ClassComparableComparer | PartialRandomShuffle |  10000 | 11,364.0 us |  71.048 us |  51.373 us |   1.25 |     0.01 |
|                         Span_ | PartialRandomShuffle |  10000 | 13,008.5 us | 127.146 us |  91.935 us |   1.44 |     0.01 |
|             Span_NullComparer | PartialRandomShuffle |  10000 | 13,122.9 us | 161.275 us | 116.612 us |   1.45 |     0.02 |
|  Span_ClassComparableComparer | PartialRandomShuffle |  10000 | 15,933.1 us | 128.229 us |  92.718 us |   1.76 |     0.02 |
| Span_StructComparableComparer | PartialRandomShuffle |  10000 | 15,696.0 us | 180.493 us | 130.509 us |   1.73 |     0.02 |
|               Span_Comparison | PartialRandomShuffle |  10000 | 10,154.7 us |  75.531 us |  54.614 us |   1.12 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |      **2** |  **2,247.8 us** |  **28.784 us** |  **20.813 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      2 |  2,153.3 us |  23.090 us |  16.696 us |   0.96 |     0.01 |
| Array_ClassComparableComparer |               Random |      2 |  2,690.7 us | 102.637 us |  74.213 us |   1.20 |     0.03 |
|                         Span_ |               Random |      2 |  4,018.0 us |  29.679 us |  21.460 us |   1.79 |     0.02 |
|             Span_NullComparer |               Random |      2 |  3,650.0 us |  18.469 us |  13.354 us |   1.62 |     0.02 |
|  Span_ClassComparableComparer |               Random |      2 |  6,637.8 us |  29.849 us |  21.583 us |   2.95 |     0.03 |
| Span_StructComparableComparer |               Random |      2 |  5,112.3 us |  37.226 us |  26.917 us |   2.27 |     0.02 |
|               Span_Comparison |               Random |      2 |  3,570.7 us |  34.933 us |  25.259 us |   1.59 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |      **3** |  **2,233.4 us** |  **27.234 us** |  **19.692 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |      3 |  2,234.5 us | 129.189 us |  93.412 us |   1.00 |     0.04 |
| Array_ClassComparableComparer |               Random |      3 |  2,591.2 us |  42.737 us |  30.901 us |   1.16 |     0.02 |
|                         Span_ |               Random |      3 |  3,091.1 us |  20.402 us |  14.752 us |   1.38 |     0.01 |
|             Span_NullComparer |               Random |      3 |  2,840.3 us |  31.020 us |  22.429 us |   1.27 |     0.01 |
|  Span_ClassComparableComparer |               Random |      3 |  5,273.9 us |  77.278 us |  55.877 us |   2.36 |     0.03 |
| Span_StructComparableComparer |               Random |      3 |  4,001.1 us |  33.899 us |  24.512 us |   1.79 |     0.02 |
|               Span_Comparison |               Random |      3 |  2,842.3 us |  16.450 us |  11.894 us |   1.27 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |     **10** |  **2,799.8 us** |  **13.661 us** |   **9.878 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |     10 |  2,770.4 us |  15.059 us |  10.888 us |   0.99 |     0.00 |
| Array_ClassComparableComparer |               Random |     10 |  3,421.7 us |  30.398 us |  21.980 us |   1.22 |     0.01 |
|                         Span_ |               Random |     10 |  2,849.3 us |  26.529 us |  19.182 us |   1.02 |     0.01 |
|             Span_NullComparer |               Random |     10 |  2,726.5 us |  35.105 us |  25.384 us |   0.97 |     0.01 |
|  Span_ClassComparableComparer |               Random |     10 |  3,922.1 us |  16.032 us |  11.592 us |   1.40 |     0.01 |
| Span_StructComparableComparer |               Random |     10 |  3,648.8 us |  96.793 us |  69.987 us |   1.30 |     0.02 |
|               Span_Comparison |               Random |     10 |  2,932.1 us |  28.896 us |  20.894 us |   1.05 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |    **100** |  **5,723.5 us** | **116.428 us** |  **84.185 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |    100 |  5,790.9 us | 138.800 us | 100.361 us |   1.01 |     0.02 |
| Array_ClassComparableComparer |               Random |    100 |  6,855.3 us |  87.845 us |  63.518 us |   1.20 |     0.02 |
|                         Span_ |               Random |    100 |  6,807.2 us | 176.548 us | 127.656 us |   1.19 |     0.03 |
|             Span_NullComparer |               Random |    100 |  6,884.2 us | 296.487 us | 214.379 us |   1.20 |     0.04 |
|  Span_ClassComparableComparer |               Random |    100 |  8,210.0 us | 114.902 us |  83.082 us |   1.43 |     0.02 |
| Span_StructComparableComparer |               Random |    100 |  8,232.5 us | 130.667 us |  94.481 us |   1.44 |     0.03 |
|               Span_Comparison |               Random |    100 |  6,026.4 us |  83.550 us |  60.412 us |   1.05 |     0.02 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |   **1000** |  **8,456.1 us** |  **74.651 us** |  **53.977 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |   1000 |  8,407.0 us |  58.287 us |  42.146 us |   0.99 |     0.01 |
| Array_ClassComparableComparer |               Random |   1000 | 10,130.3 us |  85.210 us |  61.613 us |   1.20 |     0.01 |
|                         Span_ |               Random |   1000 | 10,961.0 us | 122.554 us |  88.615 us |   1.30 |     0.01 |
|             Span_NullComparer |               Random |   1000 | 10,918.6 us | 105.515 us |  76.294 us |   1.29 |     0.01 |
|  Span_ClassComparableComparer |               Random |   1000 | 13,195.6 us | 106.520 us |  77.021 us |   1.56 |     0.01 |
| Span_StructComparableComparer |               Random |   1000 | 12,971.8 us |  52.830 us |  38.199 us |   1.53 |     0.01 |
|               Span_Comparison |               Random |   1000 |  9,032.8 us |  89.854 us |  64.970 us |   1.07 |     0.01 |
|                               |                      |        |             |            |            |        |          |
|                        **Array_** |               **Random** |  **10000** | **11,475.2 us** |  **98.076 us** |  **70.915 us** |   **1.00** |     **0.00** |
|            Array_NullComparer |               Random |  10000 | 11,484.9 us |  51.650 us |  37.346 us |   1.00 |     0.01 |
| Array_ClassComparableComparer |               Random |  10000 | 13,706.9 us |  63.172 us |  45.678 us |   1.19 |     0.01 |
|                         Span_ |               Random |  10000 | 15,276.6 us |  81.189 us |  58.705 us |   1.33 |     0.01 |
|             Span_NullComparer |               Random |  10000 | 15,476.1 us |  68.679 us |  49.659 us |   1.35 |     0.01 |
|  Span_ClassComparableComparer |               Random |  10000 | 18,200.7 us |  69.670 us |  50.376 us |   1.59 |     0.01 |
| Span_StructComparableComparer |               Random |  10000 | 18,009.8 us |  57.586 us |  41.638 us |   1.57 |     0.01 |
|               Span_Comparison |               Random |  10000 | 12,423.2 us |  93.104 us |  67.320 us |   1.08 |     0.01 |
