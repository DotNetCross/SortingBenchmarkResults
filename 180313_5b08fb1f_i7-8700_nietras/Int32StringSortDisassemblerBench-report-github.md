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
|                        Method |      Mean |    Error |    StdDev | Scaled |
|------------------------------ |----------:|---------:|----------:|-------:|
|                        Array_ |  79.24 ms | 5.138 ms | 0.2903 ms |   1.00 |
|            Array_NullComparer |  80.13 ms | 4.390 ms | 0.2480 ms |   1.01 |
| Array_ClassComparableComparer | 173.44 ms | 7.295 ms | 0.4122 ms |   2.19 |
|                         Span_ |  74.93 ms | 1.851 ms | 0.1046 ms |   0.95 |
|             Span_NullComparer |  75.88 ms | 2.845 ms | 0.1608 ms |   0.96 |
|  Span_ClassComparableComparer | 145.50 ms | 6.507 ms | 0.3676 ms |   1.84 |
| Span_StructComparableComparer |  80.17 ms | 3.386 ms | 0.1913 ms |   1.01 |
|               Span_Comparison | 130.25 ms | 8.465 ms | 0.4783 ms |   1.64 |
