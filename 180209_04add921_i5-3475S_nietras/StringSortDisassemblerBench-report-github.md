``` ini

BenchmarkDotNet=v0.10.12.427-nightly, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.192)
Intel Core i5-3475S CPU 2.90GHz (Ivy Bridge), 1 CPU, 4 logical cores and 4 physical cores
Frequency=2840375 Hz, Resolution=352.0662 ns, Timer=TSC
.NET Core SDK=2.1.4
  [Host]     : .NET Core 2.0.5 (Framework 4.6.26020.03), 64bit RyuJIT
  Job-GJHFDV : .NET Core 2.0.5 (Framework 4.6.26020.03), 64bit RyuJIT

LaunchCount=1  RunStrategy=Monitoring  TargetCount=3  
WarmupCount=1  

```
|                        Method |    Mean |    Error |   StdDev | Scaled |
|------------------------------ |--------:|---------:|---------:|-------:|
|                        Array_ | 6.969 s | 0.8344 s | 0.0471 s |   1.00 |
|            Array_NullComparer | 6.836 s | 0.1691 s | 0.0096 s |   0.98 |
| Array_ClassComparableComparer | 6.875 s | 0.1902 s | 0.0107 s |   0.99 |
|              Array_Comparison | 7.941 s | 0.2088 s | 0.0118 s |   1.14 |
|                         Span_ | 7.179 s | 0.1272 s | 0.0072 s |   1.03 |
|             Span_NullComparer | 7.464 s | 0.1083 s | 0.0061 s |   1.07 |
|  Span_ClassComparableComparer | 7.747 s | 0.3206 s | 0.0181 s |   1.11 |
| Span_StructComparableComparer | 7.583 s | 0.8389 s | 0.0474 s |   1.09 |
|               Span_Comparison | 7.754 s | 0.8158 s | 0.0461 s |   1.11 |
