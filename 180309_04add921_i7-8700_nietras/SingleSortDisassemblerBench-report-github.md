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
|                        Method |      Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |----------:|----------:|----------:|-------:|---------:|
|                        Array_ |  45.17 ms |  4.850 ms | 0.2740 ms |   1.00 |     0.00 |
|            Array_NullComparer |  44.96 ms |  3.850 ms | 0.2175 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | 162.89 ms | 65.527 ms | 3.7024 ms |   3.61 |     0.07 |
|              Array_Comparison | 152.30 ms | 17.746 ms | 1.0027 ms |   3.37 |     0.02 |
|                         Span_ |  39.48 ms |  1.712 ms | 0.0967 ms |   0.87 |     0.00 |
|             Span_NullComparer |  39.46 ms |  5.353 ms | 0.3025 ms |   0.87 |     0.01 |
|  Span_ClassComparableComparer | 297.42 ms | 47.460 ms | 2.6816 ms |   6.59 |     0.06 |
| Span_StructComparableComparer |  97.67 ms | 22.796 ms | 1.2880 ms |   2.16 |     0.03 |
|               Span_Comparison | 206.45 ms | 14.415 ms | 0.8145 ms |   4.57 |     0.03 |
