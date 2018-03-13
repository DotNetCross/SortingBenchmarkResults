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
|                        Array_ |  45.05 ms | 1.6530 ms | 0.0934 ms |   1.00 |
|            Array_NullComparer |  45.12 ms | 1.7822 ms | 0.1007 ms |   1.00 |
| Array_ClassComparableComparer | 169.11 ms | 1.1556 ms | 0.0653 ms |   3.75 |
|              Array_Comparison | 158.15 ms | 1.7469 ms | 0.0987 ms |   3.51 |
|                         Span_ |  37.62 ms | 0.7802 ms | 0.0441 ms |   0.83 |
|             Span_NullComparer |  38.92 ms | 0.3773 ms | 0.0213 ms |   0.86 |
|  Span_ClassComparableComparer | 169.48 ms | 3.4894 ms | 0.1972 ms |   3.76 |
| Span_StructComparableComparer |  93.14 ms | 0.9815 ms | 0.0555 ms |   2.07 |
|               Span_Comparison | 163.05 ms | 2.5471 ms | 0.1439 ms |   3.62 |
