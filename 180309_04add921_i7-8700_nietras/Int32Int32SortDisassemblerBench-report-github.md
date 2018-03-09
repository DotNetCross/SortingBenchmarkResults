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
|                        Array_ |  39.55 ms |  3.191 ms | 0.1803 ms |   1.00 |     0.00 |
|            Array_NullComparer |  39.71 ms |  5.875 ms | 0.3319 ms |   1.00 |     0.01 |
| Array_ClassComparableComparer | 149.38 ms | 21.833 ms | 1.2336 ms |   3.78 |     0.03 |
|                         Span_ |  39.37 ms | 10.324 ms | 0.5833 ms |   1.00 |     0.01 |
|             Span_NullComparer |  39.45 ms |  5.190 ms | 0.2933 ms |   1.00 |     0.01 |
|  Span_ClassComparableComparer | 238.96 ms | 35.563 ms | 2.0094 ms |   6.04 |     0.05 |
| Span_StructComparableComparer |  46.70 ms |  7.940 ms | 0.4486 ms |   1.18 |     0.01 |
|               Span_Comparison | 138.04 ms | 72.993 ms | 4.1243 ms |   3.49 |     0.09 |
