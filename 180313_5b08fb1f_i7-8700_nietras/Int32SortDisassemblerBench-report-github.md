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
|                        Method |      Mean |     Error |    StdDev | Scaled |
|------------------------------ |----------:|----------:|----------:|-------:|
|                        Array_ |  37.87 ms | 0.2742 ms | 0.0155 ms |   1.00 |
|            Array_NullComparer |  38.00 ms | 2.9765 ms | 0.1682 ms |   1.00 |
| Array_ClassComparableComparer | 117.72 ms | 2.2349 ms | 0.1263 ms |   3.11 |
|              Array_Comparison | 109.82 ms | 1.3060 ms | 0.0738 ms |   2.90 |
|                         Span_ |  35.37 ms | 1.8856 ms | 0.1065 ms |   0.93 |
|             Span_NullComparer |  33.75 ms | 1.7979 ms | 0.1016 ms |   0.89 |
|  Span_ClassComparableComparer | 123.85 ms | 5.5463 ms | 0.3134 ms |   3.27 |
| Span_StructComparableComparer |  41.19 ms | 5.6611 ms | 0.3199 ms |   1.09 |
|               Span_Comparison | 109.27 ms | 7.6254 ms | 0.4309 ms |   2.89 |
