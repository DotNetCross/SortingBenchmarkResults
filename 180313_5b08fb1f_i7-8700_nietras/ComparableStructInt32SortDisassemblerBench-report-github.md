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
|                        Array_ |  47.55 ms | 3.1836 ms | 0.1799 ms |   1.00 |
|            Array_NullComparer |  47.47 ms | 1.3324 ms | 0.0753 ms |   1.00 |
| Array_ClassComparableComparer | 114.97 ms | 0.2036 ms | 0.0115 ms |   2.42 |
|              Array_Comparison | 114.33 ms | 1.4874 ms | 0.0840 ms |   2.40 |
|                         Span_ |  42.32 ms | 1.1469 ms | 0.0648 ms |   0.89 |
|             Span_NullComparer |  41.65 ms | 1.5804 ms | 0.0893 ms |   0.88 |
|  Span_ClassComparableComparer | 117.27 ms | 1.1693 ms | 0.0661 ms |   2.47 |
| Span_StructComparableComparer |  40.41 ms | 2.1268 ms | 0.1202 ms |   0.85 |
|               Span_Comparison | 108.88 ms | 2.1257 ms | 0.1201 ms |   2.29 |
