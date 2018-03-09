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
|                        Method |    Mean |    Error |   StdDev | Scaled |
|------------------------------ |--------:|---------:|---------:|-------:|
|                        Array_ | 3.277 s | 0.6060 s | 0.0342 s |   1.00 |
|            Array_NullComparer | 3.184 s | 0.4559 s | 0.0258 s |   0.97 |
| Array_ClassComparableComparer | 3.068 s | 0.0429 s | 0.0024 s |   0.94 |
|              Array_Comparison | 3.186 s | 0.3960 s | 0.0224 s |   0.97 |
|                         Span_ | 3.305 s | 0.1782 s | 0.0101 s |   1.01 |
|             Span_NullComparer | 3.381 s | 0.1187 s | 0.0067 s |   1.03 |
|  Span_ClassComparableComparer | 3.642 s | 0.5661 s | 0.0320 s |   1.11 |
| Span_StructComparableComparer | 3.586 s | 0.0737 s | 0.0042 s |   1.09 |
|               Span_Comparison | 3.722 s | 0.4033 s | 0.0228 s |   1.14 |
