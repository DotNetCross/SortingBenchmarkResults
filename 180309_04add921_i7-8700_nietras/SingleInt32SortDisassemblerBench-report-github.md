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
|                        Array_ | 111.50 ms |  5.8021 ms | 0.3278 ms |   1.00 |     0.00 |
|            Array_NullComparer | 112.65 ms |  3.7155 ms | 0.2099 ms |   1.01 |     0.00 |
| Array_ClassComparableComparer | 193.33 ms | 71.1306 ms | 4.0190 ms |   1.73 |     0.03 |
|                         Span_ |  96.02 ms | 11.9491 ms | 0.6751 ms |   0.86 |     0.01 |
|             Span_NullComparer |  95.78 ms |  7.6860 ms | 0.4343 ms |   0.86 |     0.00 |
|  Span_ClassComparableComparer | 282.22 ms | 20.2337 ms | 1.1432 ms |   2.53 |     0.01 |
| Span_StructComparableComparer | 103.95 ms | 18.6728 ms | 1.0550 ms |   0.93 |     0.01 |
|               Span_Comparison | 187.99 ms |  0.9094 ms | 0.0514 ms |   1.69 |     0.00 |
