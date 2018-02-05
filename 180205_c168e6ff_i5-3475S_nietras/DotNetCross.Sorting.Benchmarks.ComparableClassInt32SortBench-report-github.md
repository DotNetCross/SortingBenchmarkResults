``` ini

BenchmarkDotNet=v0.10.12, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.192)
Intel Core i5-3475S CPU 2.90GHz (Ivy Bridge), 1 CPU, 4 logical cores and 4 physical cores
Frequency=2840377 Hz, Resolution=352.0659 ns, Timer=TSC
.NET Core SDK=2.1.4
  [Host] : .NET Core 2.0.5 (Framework 4.6.26020.03), 64bit RyuJIT

Platform=X64  Runtime=Core  Toolchain=InProcessToolchain  
LaunchCount=1  RunStrategy=Monitoring  TargetCount=11  
UnrollFactor=1  WarmupCount=3  

```
|    Method |               Filler | Length |      Mean |     Error |    StdDev | Scaled | ScaledSD |
|---------- |--------------------- |------- |----------:|----------:|----------:|-------:|---------:|
| **ArraySort** |             **Constant** |     **10** |  **1.594 ms** | **0.0556 ms** | **0.0402 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |     10 |  1.418 ms | 0.0285 ms | 0.0206 ms |   0.89 |     0.02 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |             **Constant** |    **100** |  **4.091 ms** | **0.1300 ms** | **0.0940 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |    100 |  5.816 ms | 0.1527 ms | 0.1104 ms |   1.42 |     0.04 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |             **Constant** |  **10000** | **10.775 ms** | **0.3124 ms** | **0.2259 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |  10000 | 17.454 ms | 0.4053 ms | 0.2931 ms |   1.62 |     0.04 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |             **Constant** | **100000** | **13.700 ms** | **0.1926 ms** | **0.1393 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant | 100000 | 22.451 ms | 0.2598 ms | 0.1879 ms |   1.64 |     0.02 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |             **Constant** |      **2** |  **3.128 ms** | **0.0578 ms** | **0.0418 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |      2 |  4.972 ms | 0.2040 ms | 0.1475 ms |   1.59 |     0.05 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |             **Constant** |      **3** |  **2.585 ms** | **0.0600 ms** | **0.0434 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |      3 |  3.873 ms | 0.0746 ms | 0.0539 ms |   1.50 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |     **10** |  **5.436 ms** | **0.2210 ms** | **0.1598 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |     10 |  4.925 ms | 0.1480 ms | 0.1070 ms |   0.91 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |    **100** |  **5.013 ms** | **0.2901 ms** | **0.2097 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |    100 |  7.679 ms | 0.3424 ms | 0.2476 ms |   1.53 |     0.07 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |  **10000** | **11.573 ms** | **0.2091 ms** | **0.1512 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |  10000 | 23.058 ms | 0.3835 ms | 0.2773 ms |   1.99 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Decrementing** | **100000** | **14.976 ms** | **0.2919 ms** | **0.2111 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing | 100000 | 31.806 ms | 0.3055 ms | 0.2209 ms |   2.12 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |      **2** |  **3.508 ms** | **0.0717 ms** | **0.0519 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |      2 |  5.343 ms | 0.0514 ms | 0.0372 ms |   1.52 |     0.02 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |      **3** |  **3.346 ms** | **0.0971 ms** | **0.0702 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |      3 |  4.469 ms | 0.0823 ms | 0.0595 ms |   1.34 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |     **10** |  **1.570 ms** | **0.0495 ms** | **0.0358 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |     10 |  1.423 ms | 0.0434 ms | 0.0314 ms |   0.91 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |    **100** |  **3.017 ms** | **0.1334 ms** | **0.0964 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |    100 |  4.857 ms | 0.2126 ms | 0.1537 ms |   1.61 |     0.07 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |  **10000** |  **6.789 ms** | **0.1859 ms** | **0.1344 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |  10000 | 13.657 ms | 0.3328 ms | 0.2407 ms |   2.01 |     0.05 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Incrementing** | **100000** |  **8.356 ms** | **0.2794 ms** | **0.2020 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing | 100000 | 17.249 ms | 0.2726 ms | 0.1971 ms |   2.07 |     0.05 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |      **2** |  **3.135 ms** | **0.0975 ms** | **0.0705 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |      2 |  5.026 ms | 0.1804 ms | 0.1305 ms |   1.60 |     0.05 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |      **3** |  **2.645 ms** | **0.1456 ms** | **0.1053 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |      3 |  3.899 ms | 0.2531 ms | 0.1830 ms |   1.48 |     0.08 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |     **10** |  **2.658 ms** | **0.1000 ms** | **0.0723 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |     10 |  2.550 ms | 0.0906 ms | 0.0655 ms |   0.96 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |    **100** |  **6.242 ms** | **0.1750 ms** | **0.1266 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |    100 |  9.980 ms | 0.3060 ms | 0.2213 ms |   1.60 |     0.05 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |  **10000** | **16.029 ms** | **0.3188 ms** | **0.2305 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |  10000 | 30.523 ms | 0.3214 ms | 0.2324 ms |   1.90 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** | **100000** | **23.714 ms** | **0.4539 ms** | **0.3282 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller | 100000 | 40.690 ms | 0.2378 ms | 0.1720 ms |   1.72 |     0.02 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |      **2** |  **3.151 ms** | **0.0649 ms** | **0.0469 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |      2 |  4.963 ms | 0.1534 ms | 0.1109 ms |   1.58 |     0.04 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |      **3** |  **2.676 ms** | **0.1423 ms** | **0.1029 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |      3 |  3.821 ms | 0.1459 ms | 0.1055 ms |   1.43 |     0.06 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |     **10** |  **2.683 ms** | **0.3859 ms** | **0.2790 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |     10 |  2.458 ms | 0.1791 ms | 0.1295 ms |   0.92 |     0.09 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |    **100** |  **7.131 ms** | **0.4323 ms** | **0.3126 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |    100 |  9.543 ms | 0.6174 ms | 0.4464 ms |   1.34 |     0.08 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |  **10000** | **13.555 ms** | **0.4062 ms** | **0.2937 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |  10000 | 21.354 ms | 0.5517 ms | 0.3989 ms |   1.58 |     0.04 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** | **100000** | **11.499 ms** | **0.5202 ms** | **0.3762 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle | 100000 | 21.322 ms | 0.5152 ms | 0.3725 ms |   1.86 |     0.06 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |      **2** |  **3.409 ms** | **0.1772 ms** | **0.1281 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |      2 |  5.423 ms | 0.4046 ms | 0.2925 ms |   1.59 |     0.10 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |      **3** |  **3.072 ms** | **0.1455 ms** | **0.1052 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |      3 |  4.400 ms | 0.4992 ms | 0.3610 ms |   1.43 |     0.12 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |               **Random** |     **10** |  **4.171 ms** | **0.2424 ms** | **0.1753 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |     10 |  3.924 ms | 0.0981 ms | 0.0710 ms |   0.94 |     0.04 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |               **Random** |    **100** |  **7.942 ms** | **0.2816 ms** | **0.2036 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |    100 | 10.281 ms | 0.2721 ms | 0.1968 ms |   1.30 |     0.04 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |               **Random** |  **10000** | **16.070 ms** | **0.2359 ms** | **0.1706 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |  10000 | 24.174 ms | 0.3979 ms | 0.2877 ms |   1.50 |     0.02 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |               **Random** | **100000** | **21.113 ms** | **0.5389 ms** | **0.3897 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random | 100000 | 32.613 ms | 0.5477 ms | 0.3960 ms |   1.55 |     0.03 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |               **Random** |      **2** |  **3.576 ms** | **0.0836 ms** | **0.0604 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |      2 |  5.482 ms | 0.2121 ms | 0.1533 ms |   1.53 |     0.05 |
|           |                      |        |           |           |           |        |          |
| **ArraySort** |               **Random** |      **3** |  **3.352 ms** | **0.0729 ms** | **0.0527 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |      3 |  4.654 ms | 0.1728 ms | 0.1250 ms |   1.39 |     0.04 |
