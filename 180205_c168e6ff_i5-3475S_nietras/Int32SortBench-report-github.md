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
| **ArraySort** |             **Constant** |      **10** |  **16.543 ms** | **0.1546 ms** | **0.1118 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |      10 |   7.920 ms | 0.1113 ms | 0.0805 ms |   0.48 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |     **100** |  **18.398 ms** | **0.2210 ms** | **0.1598 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |     100 |  17.077 ms | 0.1886 ms | 0.1363 ms |   0.93 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |   **10000** |  **38.142 ms** | **0.2711 ms** | **0.1960 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |   10000 |  38.355 ms | 0.5699 ms | 0.4120 ms |   1.01 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** | **1000000** |  **53.443 ms** | **0.3084 ms** | **0.2230 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant | 1000000 |  54.389 ms | 0.4658 ms | 0.3368 ms |   1.02 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |       **2** |  **43.876 ms** | **0.3724 ms** | **0.2692 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       2 |  13.340 ms | 0.1562 ms | 0.1130 ms |   0.30 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |       **3** |  **32.823 ms** | **0.5689 ms** | **0.4114 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       3 |  10.749 ms | 0.1110 ms | 0.0803 ms |   0.33 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |      **10** |  **37.976 ms** | **0.4298 ms** | **0.3108 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |      10 |  19.612 ms | 0.2127 ms | 0.1538 ms |   0.52 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |     **100** |  **24.989 ms** | **0.1702 ms** | **0.1231 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |     100 |  20.548 ms | 0.1817 ms | 0.1314 ms |   0.82 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |   **10000** |  **50.179 ms** | **0.4348 ms** | **0.3144 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |   10000 |  45.526 ms | 0.2732 ms | 0.1976 ms |   0.91 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** | **1000000** |  **73.092 ms** | **0.4042 ms** | **0.2923 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing | 1000000 |  70.246 ms | 0.4097 ms | 0.2963 ms |   0.96 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **2** |  **44.559 ms** | **0.3650 ms** | **0.2639 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       2 |  13.927 ms | 0.1161 ms | 0.0839 ms |   0.31 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **3** |  **34.306 ms** | **0.1732 ms** | **0.1252 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       3 |  11.306 ms | 0.0891 ms | 0.0644 ms |   0.33 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |      **10** |  **16.510 ms** | **0.1577 ms** | **0.1140 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |      10 |   7.863 ms | 0.0704 ms | 0.0509 ms |   0.48 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |     **100** |  **16.595 ms** | **0.1247 ms** | **0.0902 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |     100 |  15.038 ms | 0.1655 ms | 0.1197 ms |   0.91 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |   **10000** |  **30.880 ms** | **0.3655 ms** | **0.2643 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |   10000 |  30.043 ms | 0.2330 ms | 0.1685 ms |   0.97 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** | **1000000** |  **39.892 ms** | **0.3529 ms** | **0.2552 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing | 1000000 |  39.695 ms | 0.2415 ms | 0.1746 ms |   1.00 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **2** |  **44.012 ms** | **0.5081 ms** | **0.3674 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       2 |  13.629 ms | 0.1365 ms | 0.0987 ms |   0.31 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **3** |  **33.025 ms** | **0.4342 ms** | **0.3140 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       3 |  10.771 ms | 0.1458 ms | 0.1054 ms |   0.33 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |      **10** |  **20.929 ms** | **0.1585 ms** | **0.1146 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |      10 |  10.074 ms | 0.2152 ms | 0.1556 ms |   0.48 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |     **100** |  **30.404 ms** | **0.3700 ms** | **0.2675 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |     100 |  24.983 ms | 0.1934 ms | 0.1399 ms |   0.82 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |   **10000** |  **98.984 ms** | **1.4629 ms** | **1.0578 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |   10000 |  89.835 ms | 0.6898 ms | 0.4988 ms |   0.91 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** | **1000000** | **165.431 ms** | **1.2358 ms** | **0.8936 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller | 1000000 | 147.531 ms | 0.5923 ms | 0.4283 ms |   0.89 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **2** |  **43.832 ms** | **0.4802 ms** | **0.3472 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       2 |  13.375 ms | 0.2028 ms | 0.1466 ms |   0.31 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **3** |  **32.858 ms** | **0.5705 ms** | **0.4125 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       3 |  10.686 ms | 0.0484 ms | 0.0350 ms |   0.33 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |      **10** |  **24.777 ms** | **0.1976 ms** | **0.1429 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |      10 |  15.734 ms | 0.1509 ms | 0.1091 ms |   0.64 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |     **100** |  **62.739 ms** | **0.5047 ms** | **0.3649 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |     100 |  55.467 ms | 0.7140 ms | 0.5163 ms |   0.88 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |   **10000** | **105.813 ms** | **1.4767 ms** | **1.0678 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |   10000 | 102.301 ms | 1.5811 ms | 1.1432 ms |   0.97 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** | **1000000** | **153.997 ms** | **3.5998 ms** | **2.6029 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle | 1000000 | 144.114 ms | 3.4944 ms | 2.5267 ms |   0.94 |     0.02 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **2** |  **46.665 ms** | **0.4046 ms** | **0.2925 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       2 |  15.672 ms | 0.2027 ms | 0.1465 ms |   0.34 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **3** |  **37.033 ms** | **0.5844 ms** | **0.4226 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       3 |  14.156 ms | 0.1425 ms | 0.1031 ms |   0.38 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |      **10** |  **42.046 ms** | **0.9317 ms** | **0.6737 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |      10 |  31.562 ms | 0.5046 ms | 0.3648 ms |   0.75 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |     **100** |  **78.764 ms** | **0.8178 ms** | **0.5913 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |     100 |  70.730 ms | 1.5170 ms | 1.0969 ms |   0.90 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |   **10000** | **153.598 ms** | **5.3552 ms** | **3.8722 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |   10000 | 147.382 ms | 3.2106 ms | 2.3215 ms |   0.96 |     0.03 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** | **1000000** | **223.148 ms** | **1.6078 ms** | **1.1625 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random | 1000000 | 211.120 ms | 4.1599 ms | 3.0079 ms |   0.95 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |       **2** |  **50.726 ms** | **0.8004 ms** | **0.5788 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       2 |  19.513 ms | 0.3098 ms | 0.2240 ms |   0.38 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |       **3** |  **42.719 ms** | **0.5355 ms** | **0.3872 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       3 |  19.601 ms | 0.2474 ms | 0.1789 ms |   0.46 |     0.01 |
