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
|                        Array_ | 3.126 s | 0.0129 s | 0.0007 s |   1.00 |
|            Array_NullComparer | 3.322 s | 0.1437 s | 0.0081 s |   1.06 |
| Array_ClassComparableComparer | 3.275 s | 0.0193 s | 0.0011 s |   1.05 |
|                         Span_ | 3.387 s | 0.2150 s | 0.0121 s |   1.08 |
|             Span_NullComparer | 3.413 s | 0.0171 s | 0.0010 s |   1.09 |
|  Span_ClassComparableComparer | 3.411 s | 0.0836 s | 0.0047 s |   1.09 |
| Span_StructComparableComparer | 3.516 s | 0.0758 s | 0.0043 s |   1.12 |
|               Span_Comparison | 3.175 s | 0.0925 s | 0.0052 s |   1.02 |
