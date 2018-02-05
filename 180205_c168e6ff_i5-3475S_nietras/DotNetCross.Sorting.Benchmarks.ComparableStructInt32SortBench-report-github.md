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
| **ArraySort** |             **Constant** |      **10** |  **20.535 ms** | **0.3295 ms** | **0.2382 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |      10 |   9.223 ms | 0.3159 ms | 0.2284 ms |   0.45 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |     **100** |  **22.444 ms** | **0.3159 ms** | **0.2284 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |     100 |  18.939 ms | 0.3548 ms | 0.2566 ms |   0.84 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |   **10000** |  **48.817 ms** | **0.4425 ms** | **0.3200 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |   10000 |  43.480 ms | 0.6967 ms | 0.5038 ms |   0.89 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** | **1000000** |  **69.590 ms** | **0.9659 ms** | **0.6984 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant | 1000000 |  61.054 ms | 0.8256 ms | 0.5970 ms |   0.88 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |       **2** |  **74.202 ms** | **0.2770 ms** | **0.2003 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       2 |  26.454 ms | 0.3045 ms | 0.2201 ms |   0.36 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |             **Constant** |       **3** |  **56.872 ms** | **1.0572 ms** | **0.7644 ms** |   **1.00** |     **0.00** |
|  SpanSort |             Constant |       3 |  23.854 ms | 0.4819 ms | 0.3484 ms |   0.42 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |      **10** |  **35.940 ms** | **0.4526 ms** | **0.3272 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |      10 |  22.792 ms | 0.4302 ms | 0.3111 ms |   0.63 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |     **100** |  **25.919 ms** | **0.3706 ms** | **0.2679 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |     100 |  23.082 ms | 0.4680 ms | 0.3384 ms |   0.89 |     0.02 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |   **10000** |  **53.975 ms** | **0.5773 ms** | **0.4174 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |   10000 |  51.902 ms | 0.6567 ms | 0.4748 ms |   0.96 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** | **1000000** |  **80.352 ms** | **0.9225 ms** | **0.6670 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing | 1000000 |  78.938 ms | 0.8058 ms | 0.5827 ms |   0.98 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **2** |  **74.535 ms** | **0.7717 ms** | **0.5580 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       2 |  25.742 ms | 0.4591 ms | 0.3319 ms |   0.35 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Decrementing** |       **3** |  **56.100 ms** | **1.3186 ms** | **0.9534 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Decrementing |       3 |  22.111 ms | 0.3552 ms | 0.2569 ms |   0.39 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |      **10** |  **20.525 ms** | **0.3347 ms** | **0.2420 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |      10 |   9.665 ms | 0.1998 ms | 0.1445 ms |   0.47 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |     **100** |  **19.289 ms** | **0.2199 ms** | **0.1590 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |     100 |  16.864 ms | 0.3048 ms | 0.2204 ms |   0.87 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |   **10000** |  **36.384 ms** | **0.5459 ms** | **0.3947 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |   10000 |  35.271 ms | 0.4795 ms | 0.3467 ms |   0.97 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** | **1000000** |  **48.252 ms** | **0.4778 ms** | **0.3455 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing | 1000000 |  46.930 ms | 0.5545 ms | 0.4009 ms |   0.97 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **2** |  **73.900 ms** | **0.5491 ms** | **0.3970 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       2 |  26.522 ms | 0.4293 ms | 0.3104 ms |   0.36 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |         **Incrementing** |       **3** |  **55.533 ms** | **0.5479 ms** | **0.3962 ms** |   **1.00** |     **0.00** |
|  SpanSort |         Incrementing |       3 |  23.898 ms | 0.4729 ms | 0.3419 ms |   0.43 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |      **10** |  **25.594 ms** | **0.3353 ms** | **0.2424 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |      10 |  12.622 ms | 0.2969 ms | 0.2146 ms |   0.49 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |     **100** |  **32.546 ms** | **0.2857 ms** | **0.2066 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |     100 |  28.694 ms | 0.6277 ms | 0.4539 ms |   0.88 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |   **10000** |  **85.360 ms** | **0.7565 ms** | **0.5470 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |   10000 | 101.549 ms | 1.0696 ms | 0.7734 ms |   1.19 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** | **1000000** | **204.042 ms** | **0.7943 ms** | **0.5743 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller | 1000000 | 178.976 ms | 1.2769 ms | 0.9233 ms |   0.88 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **2** |  **74.038 ms** | **0.4071 ms** | **0.2944 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       2 |  26.429 ms | 0.4182 ms | 0.3024 ms |   0.36 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |  **MedianOfThreeKiller** |       **3** |  **56.035 ms** | **0.6610 ms** | **0.4779 ms** |   **1.00** |     **0.00** |
|  SpanSort |  MedianOfThreeKiller |       3 |  23.967 ms | 0.5058 ms | 0.3657 ms |   0.43 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |      **10** |  **29.432 ms** | **0.2446 ms** | **0.1769 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |      10 |  17.315 ms | 0.3515 ms | 0.2542 ms |   0.59 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |     **100** |  **65.523 ms** | **0.5238 ms** | **0.3787 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |     100 |  57.986 ms | 0.5950 ms | 0.4302 ms |   0.88 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |   **10000** | **117.470 ms** | **0.7439 ms** | **0.5379 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |   10000 | 106.036 ms | 1.1115 ms | 0.8037 ms |   0.90 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** | **1000000** | **170.761 ms** | **0.8636 ms** | **0.6245 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle | 1000000 | 155.466 ms | 0.9899 ms | 0.7157 ms |   0.91 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **2** |  **76.101 ms** | **0.6233 ms** | **0.4507 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       2 |  28.262 ms | 0.4496 ms | 0.3251 ms |   0.37 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** | **PartialRandomShuffle** |       **3** |  **59.040 ms** | **0.5348 ms** | **0.3867 ms** |   **1.00** |     **0.00** |
|  SpanSort | PartialRandomShuffle |       3 |  26.462 ms | 0.4242 ms | 0.3067 ms |   0.45 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |      **10** |  **47.142 ms** | **0.6603 ms** | **0.4774 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |      10 |  34.472 ms | 0.4330 ms | 0.3131 ms |   0.73 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |     **100** |  **85.210 ms** | **1.1125 ms** | **0.8044 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |     100 |  75.317 ms | 0.9278 ms | 0.6709 ms |   0.88 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |   **10000** | **172.120 ms** | **0.8003 ms** | **0.5787 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |   10000 | 152.973 ms | 1.0139 ms | 0.7331 ms |   0.89 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** | **1000000** | **253.643 ms** | **1.1572 ms** | **0.8368 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random | 1000000 | 225.938 ms | 1.9153 ms | 1.3849 ms |   0.89 |     0.01 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |       **2** |  **80.655 ms** | **0.8693 ms** | **0.6286 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       2 |  31.113 ms | 0.3189 ms | 0.2306 ms |   0.39 |     0.00 |
|           |                      |         |            |           |           |        |          |
| **ArraySort** |               **Random** |       **3** |  **65.612 ms** | **0.6048 ms** | **0.4373 ms** |   **1.00** |     **0.00** |
|  SpanSort |               Random |       3 |  31.358 ms | 0.2812 ms | 0.2033 ms |   0.48 |     0.00 |
