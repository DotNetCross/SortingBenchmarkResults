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
|                        Array_ |  47.40 ms | 11.080 ms | 0.6261 ms |   1.00 |     0.00 |
|            Array_NullComparer |  47.10 ms |  2.984 ms | 0.1686 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | 145.50 ms | 17.607 ms | 0.9949 ms |   3.07 |     0.04 |
|                         Span_ |  38.32 ms |  5.203 ms | 0.2940 ms |   0.81 |     0.01 |
|             Span_NullComparer |  39.08 ms |  5.360 ms | 0.3029 ms |   0.82 |     0.01 |
|  Span_ClassComparableComparer | 227.73 ms | 55.527 ms | 3.1374 ms |   4.80 |     0.07 |
| Span_StructComparableComparer |  45.36 ms |  6.654 ms | 0.3760 ms |   0.96 |     0.01 |
|               Span_Comparison | 132.93 ms | 15.800 ms | 0.8927 ms |   2.80 |     0.03 |
