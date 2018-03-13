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
|                        Array_ |  50.11 ms | 23.247 ms | 1.3135 ms |   1.00 |     0.00 |
|            Array_NullComparer |  49.99 ms |  8.274 ms | 0.4675 ms |   1.00 |     0.02 |
| Array_ClassComparableComparer | 148.70 ms |  1.974 ms | 0.1115 ms |   2.97 |     0.06 |
|                         Span_ |  44.64 ms |  2.590 ms | 0.1463 ms |   0.89 |     0.02 |
|             Span_NullComparer |  45.10 ms |  1.002 ms | 0.0566 ms |   0.90 |     0.02 |
|  Span_ClassComparableComparer | 126.55 ms |  2.141 ms | 0.1209 ms |   2.53 |     0.05 |
| Span_StructComparableComparer |  45.89 ms |  5.956 ms | 0.3365 ms |   0.92 |     0.02 |
|               Span_Comparison | 115.56 ms |  4.086 ms | 0.2308 ms |   2.31 |     0.05 |
