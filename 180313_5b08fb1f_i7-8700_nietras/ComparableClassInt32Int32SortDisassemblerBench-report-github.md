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
|                        Array_ | 230.1 ms | 12.321 ms | 0.6961 ms |   1.00 |
|            Array_NullComparer | 220.3 ms | 32.331 ms | 1.8267 ms |   0.96 |
| Array_ClassComparableComparer | 302.5 ms |  7.389 ms | 0.4175 ms |   1.31 |
|                         Span_ | 330.3 ms | 32.888 ms | 1.8582 ms |   1.44 |
|             Span_NullComparer | 333.4 ms |  4.821 ms | 0.2724 ms |   1.45 |
|  Span_ClassComparableComparer | 429.2 ms |  1.051 ms | 0.0594 ms |   1.87 |
| Span_StructComparableComparer | 409.2 ms | 16.768 ms | 0.9474 ms |   1.78 |
|               Span_Comparison | 248.0 ms | 20.162 ms | 1.1392 ms |   1.08 |
