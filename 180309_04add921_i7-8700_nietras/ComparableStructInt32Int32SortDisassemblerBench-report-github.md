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
|                        Method |     Mean |     Error |   StdDev | Scaled | ScaledSD |
|------------------------------ |---------:|----------:|---------:|-------:|---------:|
|                        Array_ | 219.8 ms |  72.56 ms | 4.100 ms |   1.00 |     0.00 |
|            Array_NullComparer | 215.3 ms | 101.43 ms | 5.731 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer | 290.0 ms |  34.37 ms | 1.942 ms |   1.32 |     0.02 |
|                         Span_ | 330.0 ms |  50.58 ms | 2.858 ms |   1.50 |     0.03 |
|             Span_NullComparer | 334.1 ms |  97.84 ms | 5.528 ms |   1.52 |     0.03 |
|  Span_ClassComparableComparer | 511.7 ms |  49.85 ms | 2.817 ms |   2.33 |     0.04 |
| Span_StructComparableComparer | 516.4 ms | 116.75 ms | 6.597 ms |   2.35 |     0.04 |
|               Span_Comparison | 557.3 ms |  38.19 ms | 2.158 ms |   2.54 |     0.04 |
