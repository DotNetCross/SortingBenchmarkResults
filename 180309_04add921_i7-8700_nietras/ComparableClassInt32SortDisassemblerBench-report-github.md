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
|                        Method |     Mean |    Error |   StdDev | Scaled | ScaledSD |
|------------------------------ |---------:|---------:|---------:|-------:|---------:|
|                        Array_ | 213.3 ms | 59.39 ms | 3.356 ms |   1.00 |     0.00 |
|            Array_NullComparer | 211.1 ms | 28.78 ms | 1.626 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | 255.5 ms | 21.14 ms | 1.194 ms |   1.20 |     0.02 |
|              Array_Comparison | 245.5 ms | 94.03 ms | 5.313 ms |   1.15 |     0.03 |
|                         Span_ | 322.4 ms | 73.09 ms | 4.130 ms |   1.51 |     0.02 |
|             Span_NullComparer | 319.4 ms | 79.70 ms | 4.503 ms |   1.50 |     0.03 |
|  Span_ClassComparableComparer | 506.7 ms | 55.86 ms | 3.156 ms |   2.38 |     0.03 |
| Span_StructComparableComparer | 510.7 ms | 29.81 ms | 1.685 ms |   2.39 |     0.03 |
|               Span_Comparison | 527.9 ms | 69.39 ms | 3.921 ms |   2.47 |     0.03 |
