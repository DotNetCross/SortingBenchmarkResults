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
|                        Method |      Mean |       Error |    StdDev | Scaled | ScaledSD |
|------------------------------ |----------:|------------:|----------:|-------:|---------:|
|                        Array_ |  54.59 ms |  28.6223 ms | 1.6172 ms |   1.00 |     0.00 |
|            Array_NullComparer |  53.22 ms |  11.0940 ms | 0.6268 ms |   0.98 |     0.03 |
| Array_ClassComparableComparer | 175.82 ms | 136.8941 ms | 7.7348 ms |   3.22 |     0.14 |
|              Array_Comparison | 172.00 ms |  41.7619 ms | 2.3596 ms |   3.15 |     0.08 |
|                         Span_ |  49.00 ms |   3.2264 ms | 0.1823 ms |   0.90 |     0.02 |
|             Span_NullComparer |  52.73 ms |   4.5113 ms | 0.2549 ms |   0.97 |     0.02 |
|  Span_ClassComparableComparer | 367.71 ms |  15.8607 ms | 0.8962 ms |   6.74 |     0.16 |
| Span_StructComparableComparer |  60.95 ms |   0.6949 ms | 0.0393 ms |   1.12 |     0.03 |
|               Span_Comparison | 223.62 ms |  37.6361 ms | 2.1265 ms |   4.10 |     0.10 |
