# xxy.github.io
小小爻的个人网站

## FFMPEG 常用命令
> 使用cmd执行
1. 视频剪切
```cmd
ffmpeg -i input.ogv -ss 00:00:30.0 -c copy -t 00:00:10.0 output.mp4
ffmpeg -i input.wmv -ss 30 -c copy -t 10 output.wmv
ffmpeg -i input.wmv -ss 30 -c copy -t0 40 output.wmv
```
2. 格式转换（支持音视频
```cmd
ffmpeg.exe -i input.flv -f mp4 output.mp4
```
