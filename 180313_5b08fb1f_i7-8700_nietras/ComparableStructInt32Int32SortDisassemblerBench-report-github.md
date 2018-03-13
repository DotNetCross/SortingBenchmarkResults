``` ini

BenchmarkDotNet=v0.10.13, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.248)
Intel Core i7-8700 CPU 3.20GHz (Coffee Lake), 1 CPU, 12 logical cores and 6 physical cores
Frequency=3117186 Hz, Resolution=320.8022 ns, Timer=TSC
.NET Core SDK=2.1.300-preview1-008174
  [Host]     : .NET Core 2.0.5 (CoreCLR 4.6.26020.03, CoreFX 4.6.26018.01), 64bit RyuJIT
  Job-XXUHTB : .NET Core 2.0.5 (CoreCLR 4.6.26020.03, CoreFX 4.6.26018.01), 64bit RyuJIT

LaunchCount=1  RunStrategy=Monitoring  TargetCount=3  
WarmupCount=1  

```
|                        Method |     Mean |     Error |    StdDev | Scaled |
|------------------------------ |---------:|----------:|----------:|-------:|
|                        Array_ | 230.5 ms |  4.337 ms | 0.2450 ms |   1.00 |
|            Array_NullComparer | 219.9 ms |  8.075 ms | 0.4562 ms |   0.95 |
| Array_ClassComparableComparer | 304.3 ms |  5.029 ms | 0.2841 ms |   1.32 |
|                         Span_ | 332.2 ms | 17.728 ms | 1.0016 ms |   1.44 |
|             Span_NullComparer | 336.1 ms |  6.214 ms | 0.3511 ms |   1.46 |
|  Span_ClassComparableComparer | 422.6 ms | 22.215 ms | 1.2552 ms |   1.83 |
| Span_StructComparableComparer | 409.6 ms | 12.292 ms | 0.6945 ms |   1.78 |
|               Span_Comparison | 249.4 ms | 18.724 ms | 1.0579 ms |   1.08 |
