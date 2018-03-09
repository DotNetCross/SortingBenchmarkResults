``` ini

BenchmarkDotNet=v0.10.13, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.248)
Intel Core i7-8700 CPU 3.20GHz (Coffee Lake), 1 CPU, 12 logical cores and 6 physical cores
Frequency=3117186 Hz, Resolution=320.8022 ns, Timer=TSC
.NET Core SDK=2.1.100
  [Host]     : .NET Core 2.0.5 (CoreCLR 4.6.26020.03, CoreFX 4.6.26018.01), 64bit RyuJIT
  Job-WGZFHG : .NET Core 2.0.5 (CoreCLR 4.6.26020.03, CoreFX 4.6.26018.01), 64bit RyuJIT

LaunchCount=1  RunStrategy=Monitoring  TargetCount=3  
WarmupCount=1  

```
|                        Method |    Mean |    Error |   StdDev | Scaled |
|------------------------------ |--------:|---------:|---------:|-------:|
|                        Array_ | 3.148 s | 0.0537 s | 0.0030 s |   1.00 |
|            Array_NullComparer | 3.259 s | 0.8341 s | 0.0471 s |   1.04 |
| Array_ClassComparableComparer | 3.326 s | 0.4527 s | 0.0256 s |   1.06 |
|                         Span_ | 3.392 s | 0.1484 s | 0.0084 s |   1.08 |
|             Span_NullComparer | 3.422 s | 0.1805 s | 0.0102 s |   1.09 |
|  Span_ClassComparableComparer | 3.607 s | 0.2098 s | 0.0119 s |   1.15 |
| Span_StructComparableComparer | 3.560 s | 0.2850 s | 0.0161 s |   1.13 |
|               Span_Comparison | 3.673 s | 0.5663 s | 0.0320 s |   1.17 |
