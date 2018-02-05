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
| **ArraySort** |             **Constant** |      **10** |  **28.68 ms** | **0.7128 ms** | **0.5154 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |      10 |  12.32 ms | 0.6506 ms | 0.4704 ms |   0.43 |     0.02 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** |     **100** |  **41.75 ms** | **0.8314 ms** | **0.6011 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |     100 |  20.57 ms | 0.6232 ms | 0.4506 ms |   0.49 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** |   **10000** |  **78.67 ms** | **0.6343 ms** | **0.4587 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |   10000 |  42.19 ms | 0.5652 ms | 0.4087 ms |   0.54 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** | **1000000** | **108.00 ms** | **1.3707 ms** | **0.9911 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant | 1000000 |  57.53 ms | 0.8339 ms | 0.6029 ms |   0.53 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** |       **2** |  **56.05 ms** | **1.2093 ms** | **0.8744 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       2 |  19.24 ms | 0.1447 ms | 0.1046 ms |   0.34 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |             **Constant** |       **3** |  **47.29 ms** | **1.0796 ms** | **0.7806 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       3 |  16.28 ms | 0.2352 ms | 0.1700 ms |   0.34 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |      **10** |  **46.74 ms** | **0.4794 ms** | **0.3467 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |      10 |  27.56 ms | 0.3782 ms | 0.2734 ms |   0.59 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |     **100** |  **43.54 ms** | **0.8188 ms** | **0.5920 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |     100 |  26.94 ms | 0.2661 ms | 0.1924 ms |   0.62 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |   **10000** |  **81.94 ms** | **1.0798 ms** | **0.7807 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |   10000 |  60.68 ms | 0.4748 ms | 0.3433 ms |   0.74 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** | **1000000** | **119.95 ms** | **0.8627 ms** | **0.6238 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing | 1000000 |  97.03 ms | 1.0034 ms | 0.7255 ms |   0.81 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **2** |  **58.40 ms** | **0.6306 ms** | **0.4560 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       2 |  19.72 ms | 0.2798 ms | 0.2023 ms |   0.34 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **3** |  **49.86 ms** | **0.7987 ms** | **0.5775 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       3 |  16.61 ms | 0.2690 ms | 0.1945 ms |   0.33 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |      **10** |  **28.67 ms** | **0.3240 ms** | **0.2343 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |      10 |  12.23 ms | 0.2270 ms | 0.1642 ms |   0.43 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |     **100** |  **33.06 ms** | **0.5609 ms** | **0.4055 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |     100 |  18.95 ms | 0.4219 ms | 0.3050 ms |   0.57 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |   **10000** |  **52.21 ms** | **0.4369 ms** | **0.3159 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |   10000 |  39.37 ms | 0.5738 ms | 0.4149 ms |   0.75 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** | **1000000** |  **68.72 ms** | **1.0766 ms** | **0.7785 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing | 1000000 |  54.98 ms | 0.6157 ms | 0.4452 ms |   0.80 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **2** |  **56.86 ms** | **0.6132 ms** | **0.4434 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       2 |  19.78 ms | 0.3444 ms | 0.2490 ms |   0.35 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **3** |  **47.99 ms** | **0.7376 ms** | **0.5333 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       3 |  16.51 ms | 0.3548 ms | 0.2565 ms |   0.34 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |      **10** |  **35.02 ms** | **0.4651 ms** | **0.3363 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |      10 |  15.21 ms | 0.2355 ms | 0.1703 ms |   0.43 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |     **100** |  **49.73 ms** | **0.5122 ms** | **0.3703 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |     100 |  31.14 ms | 0.3444 ms | 0.2490 ms |   0.63 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |   **10000** | **135.40 ms** | **1.1239 ms** | **0.8127 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |   10000 | 110.63 ms | 0.7190 ms | 0.5199 ms |   0.82 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** | **1000000** | **213.55 ms** | **1.2156 ms** | **0.8790 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller | 1000000 | 180.84 ms | 1.0078 ms | 0.7287 ms |   0.85 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **2** |  **56.87 ms** | **0.6261 ms** | **0.4527 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       2 |  19.72 ms | 0.3717 ms | 0.2687 ms |   0.35 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **3** |  **47.95 ms** | **0.7124 ms** | **0.5151 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       3 |  16.63 ms | 0.2275 ms | 0.1645 ms |   0.35 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |      **10** |  **41.32 ms** | **0.4900 ms** | **0.3543 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |      10 |  20.40 ms | 0.4716 ms | 0.3410 ms |   0.49 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |     **100** |  **83.54 ms** | **0.6532 ms** | **0.4723 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |     100 |  64.80 ms | 0.5804 ms | 0.4197 ms |   0.78 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |   **10000** | **143.67 ms** | **0.9197 ms** | **0.6650 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |   10000 | 118.78 ms | 0.7188 ms | 0.5197 ms |   0.83 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** | **1000000** | **206.19 ms** | **1.9437 ms** | **1.4054 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle | 1000000 | 175.65 ms | 1.0910 ms | 0.7888 ms |   0.85 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **2** |  **59.65 ms** | **0.5470 ms** | **0.3955 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       2 |  22.04 ms | 0.3806 ms | 0.2752 ms |   0.37 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **3** |  **51.40 ms** | **0.5928 ms** | **0.4286 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       3 |  19.95 ms | 0.2780 ms | 0.2010 ms |   0.39 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |      **10** |  **57.27 ms** | **0.5058 ms** | **0.3657 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |      10 |  38.88 ms | 0.5055 ms | 0.3655 ms |   0.68 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |     **100** | **105.02 ms** | **0.9925 ms** | **0.7176 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |     100 |  84.97 ms | 0.7395 ms | 0.5347 ms |   0.81 |     0.01 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |   **10000** | **199.98 ms** | **0.8082 ms** | **0.5844 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |   10000 | 173.94 ms | 1.0886 ms | 0.7872 ms |   0.87 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** | **1000000** | **291.83 ms** | **1.5134 ms** | **1.0943 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random | 1000000 | 258.49 ms | 1.0145 ms | 0.7336 ms |   0.89 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |       **2** |  **65.90 ms** | **0.6563 ms** | **0.4746 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       2 |  26.38 ms | 0.3394 ms | 0.2454 ms |   0.40 |     0.00 |
|           |                      |         |           |           |           |        |          |
| **ArraySort** |               **Random** |       **3** |  **60.08 ms** | **0.5517 ms** | **0.3989 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       3 |  26.60 ms | 0.3167 ms | 0.2290 ms |   0.44 |     0.00 |
