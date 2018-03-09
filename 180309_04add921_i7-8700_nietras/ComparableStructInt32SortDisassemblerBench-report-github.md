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
|                        Method |      Mean |      Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |----------:|-----------:|----------:|-------:|---------:|
|                        Array_ |  47.66 ms |  6.9502 ms | 0.3927 ms |   1.00 |     0.00 |
|            Array_NullComparer |  47.28 ms |  3.1251 ms | 0.1766 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | 105.68 ms | 13.7571 ms | 0.7773 ms |   2.22 |     0.02 |
|              Array_Comparison | 106.86 ms |  7.9594 ms | 0.4497 ms |   2.24 |     0.02 |
|                         Span_ |  42.66 ms |  0.2669 ms | 0.0151 ms |   0.90 |     0.01 |
|             Span_NullComparer |  42.82 ms |  6.1390 ms | 0.3469 ms |   0.90 |     0.01 |
|  Span_ClassComparableComparer | 219.29 ms | 19.9980 ms | 1.1299 ms |   4.60 |     0.04 |
| Span_StructComparableComparer |  45.56 ms |  1.3514 ms | 0.0764 ms |   0.96 |     0.01 |
|               Span_Comparison | 162.84 ms | 15.0091 ms | 0.8480 ms |   3.42 |     0.03 |
