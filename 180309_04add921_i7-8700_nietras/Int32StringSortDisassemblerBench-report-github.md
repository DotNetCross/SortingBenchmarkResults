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
|                        Array_ |  80.87 ms | 22.989 ms | 1.2989 ms |   1.00 |     0.00 |
|            Array_NullComparer |  78.76 ms | 19.616 ms | 1.1083 ms |   0.97 |     0.02 |
| Array_ClassComparableComparer | 173.12 ms | 46.857 ms | 2.6475 ms |   2.14 |     0.04 |
|                         Span_ |  72.06 ms | 39.954 ms | 2.2575 ms |   0.89 |     0.03 |
|             Span_NullComparer |  70.74 ms | 21.848 ms | 1.2344 ms |   0.87 |     0.02 |
|  Span_ClassComparableComparer | 259.81 ms | 49.196 ms | 2.7797 ms |   3.21 |     0.05 |
| Span_StructComparableComparer |  76.12 ms |  2.666 ms | 0.1506 ms |   0.94 |     0.01 |
|               Span_Comparison | 148.38 ms | 14.596 ms | 0.8247 ms |   1.84 |     0.03 |
