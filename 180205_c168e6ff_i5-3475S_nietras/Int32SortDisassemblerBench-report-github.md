``` ini

BenchmarkDotNet=v0.10.12, OS=Windows 10 Redstone 3 [1709, Fall Creators Update] (10.0.16299.192)
Intel Core i5-3475S CPU 2.90GHz (Ivy Bridge), 1 CPU, 4 logical cores and 4 physical cores
Frequency=2840377 Hz, Resolution=352.0659 ns, Timer=TSC
.NET Core SDK=2.1.4
  [Host]     : .NET Core 2.0.5 (Framework 4.6.26020.03), 64bit RyuJIT
  Job-CYVJEY : .NET Core 2.0.5 (Framework 4.6.26020.03), 64bit RyuJIT

Platform=X64  Runtime=Core  LaunchCount=1  
RunStrategy=Monitoring  TargetCount=3  UnrollFactor=1  
WarmupCount=1  

```
|   Method |     Mean |    Error |   StdDev |
|--------- |---------:|---------:|---------:|
| SpanSort | 124.0 ms | 33.73 ms | 1.906 ms |
