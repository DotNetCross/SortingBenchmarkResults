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
|    Method |               Filler |  Length |      Mean |     Error |    StdDev | Scaled | ScaledSD |
|---------- |--------------------- |-------- |----------:|----------:|----------:|-------:|---------:|
| **ArraySort** |             **Constant** |      **10** |  **26.59 ms** | **0.4048 ms** | **0.2927 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |      10 |  16.58 ms | 0.3360 ms | 0.2429 ms |   0.62 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** |     **100** |  **65.62 ms** | **0.5974 ms** | **0.4319 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |     100 |  40.47 ms | 0.3544 ms | 0.2563 ms |   0.62 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** |   **10000** | **114.67 ms** | **1.0220 ms** | **0.7390 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |   10000 | 112.46 ms | 0.5777 ms | 0.4177 ms |   0.98 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** | **1000000** | **174.98 ms** | **0.8613 ms** | **0.6228 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant | 1000000 | 171.15 ms | 0.8542 ms | 0.6177 ms |   0.98 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** |       **2** |  **67.77 ms** | **0.7310 ms** | **0.5285 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       2 |  78.31 ms | 0.6155 ms | 0.4450 ms |   1.16 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** |       **3** |  **49.61 ms** | **0.3683 ms** | **0.2663 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       3 |  51.86 ms | 0.3491 ms | 0.2525 ms |   1.05 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |      **10** |  **68.68 ms** | **0.5479 ms** | **0.3962 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |      10 |  57.29 ms | 0.5733 ms | 0.4146 ms |   0.83 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |     **100** |  **63.87 ms** | **0.6423 ms** | **0.4644 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |     100 |  40.43 ms | 0.5937 ms | 0.4293 ms |   0.63 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |   **10000** |  **69.90 ms** | **0.6793 ms** | **0.4912 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |   10000 |  68.62 ms | 0.5414 ms | 0.3915 ms |   0.98 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** | **1000000** | **103.75 ms** | **0.5978 ms** | **0.4323 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing | 1000000 |  94.32 ms | 0.5070 ms | 0.3666 ms |   0.91 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **2** |  **77.66 ms** | **0.6475 ms** | **0.4682 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       2 |  87.08 ms | 0.6436 ms | 0.4654 ms |   1.12 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **3** |  **65.35 ms** | **0.4489 ms** | **0.3246 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       3 |  69.11 ms | 0.5516 ms | 0.3989 ms |   1.06 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |      **10** |  **26.52 ms** | **0.4527 ms** | **0.3274 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |      10 |  16.47 ms | 0.2620 ms | 0.1894 ms |   0.62 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |     **100** |  **37.29 ms** | **0.5251 ms** | **0.3797 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |     100 |  19.70 ms | 0.2916 ms | 0.2109 ms |   0.53 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |   **10000** |  **55.98 ms** | **0.5470 ms** | **0.3955 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |   10000 |  41.50 ms | 0.3616 ms | 0.2615 ms |   0.74 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** | **1000000** |  **60.89 ms** | **0.5134 ms** | **0.3712 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing | 1000000 |  53.43 ms | 0.4270 ms | 0.3088 ms |   0.88 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **2** |  **67.75 ms** | **0.7247 ms** | **0.5240 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       2 |  78.91 ms | 1.4178 ms | 1.0251 ms |   1.16 |     0.02 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **3** |  **49.96 ms** | **0.9294 ms** | **0.6720 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       3 |  52.12 ms | 0.4344 ms | 0.3141 ms |   1.04 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |      **10** |  **38.97 ms** | **0.5959 ms** | **0.4309 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |      10 |  29.41 ms | 0.2571 ms | 0.1859 ms |   0.75 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |     **100** |  **69.30 ms** | **0.6082 ms** | **0.4397 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |     100 |  50.63 ms | 0.2492 ms | 0.1802 ms |   0.73 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |   **10000** |  **99.52 ms** | **0.6926 ms** | **0.5008 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |   10000 | 128.91 ms | 0.5012 ms | 0.3624 ms |   1.30 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** | **1000000** | **244.78 ms** | **1.8336 ms** | **1.3258 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller | 1000000 | 209.03 ms | 1.1405 ms | 0.8246 ms |   0.85 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **2** |  **67.67 ms** | **0.6337 ms** | **0.4582 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       2 |  78.25 ms | 0.4597 ms | 0.3324 ms |   1.16 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **3** |  **49.95 ms** | **0.3984 ms** | **0.2881 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       3 |  52.05 ms | 0.5364 ms | 0.3878 ms |   1.04 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |      **10** |  **38.09 ms** | **0.5691 ms** | **0.4115 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |      10 |  28.48 ms | 0.3180 ms | 0.2300 ms |   0.75 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |     **100** |  **91.69 ms** | **0.7495 ms** | **0.5419 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |     100 |  73.13 ms | 0.6594 ms | 0.4768 ms |   0.80 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |   **10000** | **138.09 ms** | **0.8392 ms** | **0.6068 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |   10000 | 135.85 ms | 0.5720 ms | 0.4136 ms |   0.98 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** | **1000000** | **231.32 ms** | **1.5255 ms** | **1.1030 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle | 1000000 | 203.35 ms | 2.2359 ms | 1.6167 ms |   0.88 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **2** |  **78.83 ms** | **0.5224 ms** | **0.3777 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       2 |  82.64 ms | 1.2096 ms | 0.8746 ms |   1.05 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **3** |  **62.42 ms** | **0.5250 ms** | **0.3796 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       3 |  58.46 ms | 1.0490 ms | 0.7585 ms |   0.94 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |      **10** |  **60.84 ms** | **0.4368 ms** | **0.3158 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |      10 |  50.45 ms | 0.4145 ms | 0.2997 ms |   0.83 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |     **100** | **106.24 ms** | **0.7276 ms** | **0.5261 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |     100 |  92.62 ms | 0.5305 ms | 0.3836 ms |   0.87 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |   **10000** | **175.59 ms** | **0.4435 ms** | **0.3207 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |   10000 | 181.18 ms | 1.0792 ms | 0.7804 ms |   1.03 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** | **1000000** | **357.54 ms** | **2.6946 ms** | **1.9484 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random | 1000000 | 271.65 ms | 1.2647 ms | 0.9145 ms |   0.76 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |       **2** |  **80.22 ms** | **0.8699 ms** | **0.6290 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       2 |  88.11 ms | 0.8021 ms | 0.5800 ms |   1.10 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |       **3** |  **66.27 ms** | **0.3848 ms** | **0.2782 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       3 |  68.71 ms | 0.7746 ms | 0.5601 ms |   1.04 |     0.01 |
