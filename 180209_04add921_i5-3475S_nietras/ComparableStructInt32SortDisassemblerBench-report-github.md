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
|                        Array_ |  69.43 ms | 56.056 ms | 3.1673 ms |   1.00 |     0.00 |
|            Array_NullComparer |  69.57 ms | 32.787 ms | 1.8525 ms |   1.00 |     0.04 |
| Array_ClassComparableComparer | 178.58 ms | 69.497 ms | 3.9267 ms |   2.58 |     0.11 |
|              Array_Comparison | 176.44 ms | 19.797 ms | 1.1186 ms |   2.54 |     0.09 |
|                         Span_ |  60.40 ms | 50.860 ms | 2.8737 ms |   0.87 |     0.05 |
|             Span_NullComparer |  64.57 ms | 25.054 ms | 1.4156 ms |   0.93 |     0.04 |
|  Span_ClassComparableComparer | 355.38 ms | 41.192 ms | 2.3274 ms |   5.13 |     0.19 |
| Span_StructComparableComparer |  59.53 ms |  5.037 ms | 0.2846 ms |   0.86 |     0.03 |
|               Span_Comparison | 249.41 ms | 87.591 ms | 4.9490 ms |   3.60 |     0.15 |
