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
|                        Method |      Mean |      Error |    StdDev | Scaled |
|------------------------------ |----------:|-----------:|----------:|-------:|
|                        Array_ | 112.49 ms |  3.7517 ms | 0.2120 ms |   1.00 |
|            Array_NullComparer | 112.80 ms |  0.8369 ms | 0.0473 ms |   1.00 |
| Array_ClassComparableComparer | 204.83 ms | 13.2742 ms | 0.7500 ms |   1.82 |
|                         Span_ | 100.94 ms |  1.9751 ms | 0.1116 ms |   0.90 |
|             Span_NullComparer |  99.97 ms |  1.7300 ms | 0.0977 ms |   0.89 |
|  Span_ClassComparableComparer | 168.91 ms |  2.9194 ms | 0.1650 ms |   1.50 |
| Span_StructComparableComparer |  98.63 ms |  0.1374 ms | 0.0078 ms |   0.88 |
|               Span_Comparison | 152.20 ms |  9.0766 ms | 0.5128 ms |   1.35 |
