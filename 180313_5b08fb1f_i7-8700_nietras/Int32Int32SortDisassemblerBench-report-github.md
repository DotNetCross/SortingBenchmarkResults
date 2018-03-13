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
|                        Method |      Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |----------:|----------:|----------:|-------:|---------:|
|                        Array_ |  39.85 ms | 5.7471 ms | 0.3247 ms |   1.00 |     0.00 |
|            Array_NullComparer |  39.93 ms | 4.4248 ms | 0.2500 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | 148.77 ms | 6.9502 ms | 0.3927 ms |   3.73 |     0.03 |
|                         Span_ |  34.57 ms | 0.4378 ms | 0.0247 ms |   0.87 |     0.01 |
|             Span_NullComparer |  35.40 ms | 2.1643 ms | 0.1223 ms |   0.89 |     0.01 |
|  Span_ClassComparableComparer | 127.50 ms | 2.6820 ms | 0.1515 ms |   3.20 |     0.02 |
| Span_StructComparableComparer |  43.98 ms | 1.8694 ms | 0.1056 ms |   1.10 |     0.01 |
|               Span_Comparison | 107.03 ms | 2.7634 ms | 0.1561 ms |   2.69 |     0.02 |
