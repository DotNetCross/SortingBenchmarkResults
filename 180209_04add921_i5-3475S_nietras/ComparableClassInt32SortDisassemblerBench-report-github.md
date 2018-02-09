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
|                        Method |     Mean |     Error |   StdDev | Scaled | ScaledSD |
|------------------------------ |---------:|----------:|---------:|-------:|---------:|
|                        Array_ | 337.5 ms |  94.39 ms | 5.333 ms |   1.00 |     0.00 |
|            Array_NullComparer | 336.7 ms |  45.28 ms | 2.559 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | 402.2 ms | 158.33 ms | 8.946 ms |   1.19 |     0.03 |
|              Array_Comparison | 378.4 ms |  51.39 ms | 2.904 ms |   1.12 |     0.02 |
|                         Span_ | 534.0 ms | 104.57 ms | 5.908 ms |   1.58 |     0.02 |
|             Span_NullComparer | 506.8 ms |  79.24 ms | 4.477 ms |   1.50 |     0.02 |
|  Span_ClassComparableComparer | 786.1 ms |  48.12 ms | 2.719 ms |   2.33 |     0.03 |
| Span_StructComparableComparer | 801.2 ms |  93.15 ms | 5.263 ms |   2.37 |     0.03 |
|               Span_Comparison | 847.1 ms |  94.08 ms | 5.316 ms |   2.51 |     0.03 |
