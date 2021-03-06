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
|    Method |               Filler |  Length |       Mean |     Error |    StdDev | Scaled | ScaledSD |
|---------- |--------------------- |-------- |-----------:|----------:|----------:|-------:|---------:|
| **ArraySort** |             **Constant** |      **10** |  **14.529 ms** | **0.2975 ms** | **0.2151 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |      10 |   5.124 ms | 0.1439 ms | 0.1041 ms |   0.35 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |     **100** |  **18.332 ms** | **0.2730 ms** | **0.1974 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |     100 |  13.170 ms | 0.2833 ms | 0.2049 ms |   0.72 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |   **10000** |  **35.799 ms** | **0.5961 ms** | **0.4310 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |   10000 |  29.948 ms | 0.4454 ms | 0.3220 ms |   0.84 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** | **1000000** |  **49.347 ms** | **0.3805 ms** | **0.2752 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant | 1000000 |  41.879 ms | 0.5792 ms | 0.4188 ms |   0.85 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |       **2** |  **31.527 ms** | **0.6605 ms** | **0.4776 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       2 |  10.566 ms | 0.1818 ms | 0.1315 ms |   0.34 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |       **3** |  **23.727 ms** | **0.5502 ms** | **0.3979 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       3 |   7.519 ms | 0.1696 ms | 0.1226 ms |   0.32 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |      **10** |  **41.472 ms** | **0.6559 ms** | **0.4743 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |      10 |  18.904 ms | 0.3073 ms | 0.2222 ms |   0.46 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |     **100** |  **23.512 ms** | **0.3934 ms** | **0.2845 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |     100 |  16.743 ms | 0.4759 ms | 0.3441 ms |   0.71 |     0.02 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |   **10000** |  **40.801 ms** | **0.5565 ms** | **0.4024 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |   10000 |  34.918 ms | 0.6203 ms | 0.4485 ms |   0.86 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** | **1000000** |  **57.117 ms** | **0.7385 ms** | **0.5340 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing | 1000000 |  51.484 ms | 0.5867 ms | 0.4242 ms |   0.90 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **2** |  **32.445 ms** | **0.3010 ms** | **0.2176 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       2 |  11.563 ms | 0.2220 ms | 0.1605 ms |   0.36 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **3** |  **26.047 ms** | **0.3947 ms** | **0.2854 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       3 |   9.988 ms | 0.2314 ms | 0.1673 ms |   0.38 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |      **10** |  **14.512 ms** | **0.2928 ms** | **0.2117 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |      10 |   5.138 ms | 0.1270 ms | 0.0919 ms |   0.35 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |     **100** |  **15.580 ms** | **0.3516 ms** | **0.2542 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |     100 |  11.064 ms | 0.2434 ms | 0.1760 ms |   0.71 |     0.02 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |   **10000** |  **26.524 ms** | **0.3785 ms** | **0.2737 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |   10000 |  23.217 ms | 0.3877 ms | 0.2804 ms |   0.88 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** | **1000000** |  **32.362 ms** | **0.3523 ms** | **0.2547 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing | 1000000 |  28.971 ms | 0.4244 ms | 0.3069 ms |   0.90 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **2** |  **31.649 ms** | **0.2682 ms** | **0.1939 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       2 |  10.542 ms | 0.2483 ms | 0.1795 ms |   0.33 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **3** |  **23.425 ms** | **0.5066 ms** | **0.3663 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       3 |   7.607 ms | 0.1617 ms | 0.1169 ms |   0.32 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |      **10** |  **22.144 ms** | **0.3731 ms** | **0.2698 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |      10 |   8.998 ms | 0.2658 ms | 0.1922 ms |   0.41 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |     **100** |  **28.896 ms** | **0.5155 ms** | **0.3727 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |     100 |  20.363 ms | 0.2341 ms | 0.1693 ms |   0.70 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |   **10000** |  **72.026 ms** | **0.6507 ms** | **0.4705 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |   10000 |  65.146 ms | 0.7059 ms | 0.5104 ms |   0.90 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** | **1000000** | **114.524 ms** | **1.0937 ms** | **0.7908 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller | 1000000 | 105.422 ms | 1.2919 ms | 0.9341 ms |   0.92 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **2** |  **31.667 ms** | **0.5349 ms** | **0.3868 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       2 |  10.543 ms | 0.1234 ms | 0.0892 ms |   0.33 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **3** |  **23.463 ms** | **0.5595 ms** | **0.4045 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       3 |   7.599 ms | 0.1463 ms | 0.1058 ms |   0.32 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |      **10** |  **23.069 ms** | **0.2625 ms** | **0.1898 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |      10 |  11.534 ms | 0.1681 ms | 0.1215 ms |   0.50 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |     **100** |  **53.029 ms** | **0.2285 ms** | **0.1652 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |     100 |  43.448 ms | 0.5165 ms | 0.3735 ms |   0.82 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |   **10000** |  **84.688 ms** | **0.8956 ms** | **0.6476 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |   10000 |  77.890 ms | 0.4693 ms | 0.3393 ms |   0.92 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** | **1000000** | **121.679 ms** | **0.9633 ms** | **0.6965 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle | 1000000 | 117.325 ms | 0.8945 ms | 0.6468 ms |   0.96 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **2** |  **34.076 ms** | **0.4648 ms** | **0.3361 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       2 |  12.427 ms | 0.2640 ms | 0.1909 ms |   0.36 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **3** |  **26.820 ms** | **0.4407 ms** | **0.3187 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       3 |  10.146 ms | 0.2017 ms | 0.1459 ms |   0.38 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |      **10** |  **40.347 ms** | **0.3623 ms** | **0.2619 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |      10 |  24.402 ms | 0.5390 ms | 0.3897 ms |   0.60 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |     **100** |  **66.402 ms** | **0.6086 ms** | **0.4401 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |     100 |  56.542 ms | 0.7941 ms | 0.5742 ms |   0.85 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |   **10000** | **118.549 ms** | **0.5455 ms** | **0.3945 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |   10000 | 113.358 ms | 0.6826 ms | 0.4936 ms |   0.96 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** | **1000000** | **171.582 ms** | **1.6539 ms** | **1.1959 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random | 1000000 | 170.627 ms | 1.6752 ms | 1.2112 ms |   0.99 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |       **2** |  **37.447 ms** | **0.4486 ms** | **0.3243 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       2 |  14.895 ms | 0.5026 ms | 0.3634 ms |   0.40 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |       **3** |  **32.238 ms** | **0.2780 ms** | **0.2010 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       3 |  14.793 ms | 0.2626 ms | 0.1899 ms |   0.46 |     0.01 |
