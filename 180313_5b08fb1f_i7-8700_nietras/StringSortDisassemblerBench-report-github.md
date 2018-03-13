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
|                        Method |    Mean |    Error |   StdDev | Scaled |
|------------------------------ |--------:|---------:|---------:|-------:|
|                        Array_ | 3.333 s | 0.0796 s | 0.0045 s |   1.00 |
|            Array_NullComparer | 3.164 s | 0.4505 s | 0.0255 s |   0.95 |
| Array_ClassComparableComparer | 3.158 s | 0.1203 s | 0.0068 s |   0.95 |
|              Array_Comparison | 3.186 s | 0.0490 s | 0.0028 s |   0.96 |
|                         Span_ | 3.463 s | 0.0152 s | 0.0009 s |   1.04 |
|             Span_NullComparer | 3.398 s | 0.0650 s | 0.0037 s |   1.02 |
|  Span_ClassComparableComparer | 3.567 s | 0.0529 s | 0.0030 s |   1.07 |
| Span_StructComparableComparer | 3.441 s | 0.0336 s | 0.0019 s |   1.03 |
|               Span_Comparison | 3.160 s | 0.0479 s | 0.0027 s |   0.95 |
