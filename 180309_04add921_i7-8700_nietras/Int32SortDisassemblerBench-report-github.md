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
|                        Array_ |        NA |        NA |        NA |      ? |        ? |
|            Array_NullComparer |        NA |        NA |        NA |      ? |        ? |
| Array_ClassComparableComparer | 117.63 ms | 25.648 ms | 1.4491 ms |      ? |        ? |
|              Array_Comparison | 110.30 ms | 25.181 ms | 1.4228 ms |      ? |        ? |
|                         Span_ |        NA |        NA |        NA |      ? |        ? |
|             Span_NullComparer |  35.45 ms |  7.262 ms | 0.4103 ms |      ? |        ? |
|  Span_ClassComparableComparer | 205.14 ms | 31.281 ms | 1.7674 ms |      ? |        ? |
| Span_StructComparableComparer |        NA |        NA |        NA |      ? |        ? |
|               Span_Comparison | 122.29 ms | 16.942 ms | 0.9573 ms |      ? |        ? |

Benchmarks with issues:
  Int32SortDisassemblerBench.Array_: Job-WGZFHG(LaunchCount=1, RunStrategy=Monitoring, TargetCount=3, WarmupCount=1)
  Int32SortDisassemblerBench.Array_NullComparer: Job-WGZFHG(LaunchCount=1, RunStrategy=Monitoring, TargetCount=3, WarmupCount=1)
  Int32SortDisassemblerBench.Span_: Job-WGZFHG(LaunchCount=1, RunStrategy=Monitoring, TargetCount=3, WarmupCount=1)
  Int32SortDisassemblerBench.Span_StructComparableComparer: Job-WGZFHG(LaunchCount=1, RunStrategy=Monitoring, TargetCount=3, WarmupCount=1)
