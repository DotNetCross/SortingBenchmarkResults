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
|                        Method |      Mean |     Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |----------:|----------:|----------:|-------:|---------:|
|                        Array_ |  59.46 ms |  14.61 ms | 0.8257 ms |   1.00 |     0.00 |
|            Array_NullComparer |  58.57 ms |  10.49 ms | 0.5929 ms |   0.99 |     0.01 |
| Array_ClassComparableComparer | 229.09 ms |  23.60 ms | 1.3333 ms |   3.85 |     0.05 |
|                         Span_ |  56.71 ms |  50.83 ms | 2.8719 ms |   0.95 |     0.04 |
|             Span_NullComparer |  54.24 ms |  43.76 ms | 2.4724 ms |   0.91 |     0.04 |
|  Span_ClassComparableComparer | 377.57 ms | 122.26 ms | 6.9080 ms |   6.35 |     0.12 |
| Span_StructComparableComparer |  60.81 ms |  12.06 ms | 0.6815 ms |   1.02 |     0.01 |
|               Span_Comparison | 232.40 ms | 161.75 ms | 9.1394 ms |   3.91 |     0.13 |
