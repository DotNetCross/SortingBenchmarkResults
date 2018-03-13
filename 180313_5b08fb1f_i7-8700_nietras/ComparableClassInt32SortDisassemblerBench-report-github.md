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
|                        Array_ | 220.5 ms | 10.677 ms | 0.6032 ms |   1.00 |
|            Array_NullComparer | 219.2 ms |  1.781 ms | 0.1006 ms |   0.99 |
| Array_ClassComparableComparer | 261.3 ms | 14.096 ms | 0.7964 ms |   1.19 |
|              Array_Comparison | 254.8 ms | 10.294 ms | 0.5816 ms |   1.16 |
|                         Span_ | 330.8 ms | 14.211 ms | 0.8029 ms |   1.50 |
|             Span_NullComparer | 341.3 ms |  9.688 ms | 0.5474 ms |   1.55 |
|  Span_ClassComparableComparer | 426.0 ms |  8.045 ms | 0.4546 ms |   1.93 |
| Span_StructComparableComparer | 402.6 ms | 21.624 ms | 1.2218 ms |   1.83 |
|               Span_Comparison | 260.1 ms | 16.401 ms | 0.9267 ms |   1.18 |
