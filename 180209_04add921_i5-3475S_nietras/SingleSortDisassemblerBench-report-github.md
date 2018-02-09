``` ini

BenchmarkDotNet=v0.10.12.427-nightly, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.192)
Intel Core i5-3475S CPU 2.90GHz (Ivy Bridge), 1 CPU, 4 logical cores and 4 physical cores
Frequency=2840375 Hz, Resolution=352.0662 ns, Timer=TSC
.NET Core SDK=2.1.4
  [Host]     : .NET Core 2.0.5 (Framework 4.6.26020.03), 64bit RyuJIT
  Job-GJHFDV : .NET Core 2.0.5 (Framework 4.6.26020.03), 64bit RyuJIT

LaunchCount=1  RunStrategy=Monitoring  TargetCount=3  
WarmupCount=1  

```
|                        Method |      Mean |     Error |   StdDev | Scaled | ScaledSD |
|------------------------------ |----------:|----------:|---------:|-------:|---------:|
|                        Array_ |  70.82 ms |  20.93 ms | 1.182 ms |   1.00 |     0.00 |
|            Array_NullComparer |  71.34 ms |  55.44 ms | 3.132 ms |   1.01 |     0.04 |
| Array_ClassComparableComparer | 242.40 ms | 106.92 ms | 6.041 ms |   3.42 |     0.08 |
|              Array_Comparison | 241.60 ms |  52.53 ms | 2.968 ms |   3.41 |     0.06 |
|                         Span_ |  61.05 ms |  30.16 ms | 1.704 ms |   0.86 |     0.02 |
|             Span_NullComparer |  57.52 ms |  38.13 ms | 2.155 ms |   0.81 |     0.03 |
|  Span_ClassComparableComparer | 381.30 ms | 139.31 ms | 7.871 ms |   5.39 |     0.12 |
| Span_StructComparableComparer | 153.41 ms |  83.52 ms | 4.719 ms |   2.17 |     0.06 |
|               Span_Comparison | 271.66 ms |  63.30 ms | 3.577 ms |   3.84 |     0.07 |
