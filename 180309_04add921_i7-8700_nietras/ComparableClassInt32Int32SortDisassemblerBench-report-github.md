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
|                        Method |     Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |---------:|----------:|----------:|-------:|---------:|
|                        Array_ | 223.2 ms | 211.04 ms | 11.924 ms |   1.00 |     0.00 |
|            Array_NullComparer | 218.6 ms | 112.41 ms |  6.351 ms |   0.98 |     0.05 |
| Array_ClassComparableComparer | 287.6 ms |  43.88 ms |  2.479 ms |   1.29 |     0.06 |
|                         Span_ | 337.2 ms |  45.71 ms |  2.583 ms |   1.51 |     0.06 |
|             Span_NullComparer | 329.8 ms |  41.55 ms |  2.348 ms |   1.48 |     0.06 |
|  Span_ClassComparableComparer | 516.7 ms | 108.90 ms |  6.153 ms |   2.32 |     0.10 |
| Span_StructComparableComparer | 511.2 ms |  54.38 ms |  3.072 ms |   2.30 |     0.10 |
|               Span_Comparison | 560.4 ms |  99.66 ms |  5.631 ms |   2.52 |     0.11 |
