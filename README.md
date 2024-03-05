# xxy.github.io
小小爻的个人网站

## FFMPEG 常用命令
> 使用cmd执行
1. 视频剪切
```cmd
ffmpeg -i input.ogv -ss 00:00:30.0 -c copy -t 00:00:10.0 output.mp4
ffmpeg -i input.wmv -ss 30 -c copy -t 10 output.wmv
ffmpeg -i input.wmv -ss 30 -c copy -to 40 output.wmv
:: -ss 指定开始时间
:: -t 持续时间
:: -to 结束时间
:: 较短的视频可以用
"C:\Program Files\Shotcut\ffmpeg.exe" -ss 00:00:01 -t 00:00:03 -i out.mp4 -vcodec copy -acodec copy output.mp4
```
2. 格式转换（支持音视频
```cmd
ffmpeg.exe -i input.flv -f mp4 output.mp4
```
3. 码率控制
   - bitrate = file size / duration
  - 比如一个文件20.8M，时长1分钟，那么，码率就是：
  - biterate = 20.8M bit/60s = 20.8*1024*1024*8 bit/60s= 2831Kbps
```cmd
:: 码率从原码率转成2Mbps码率
ffmpeg -i input.mp4 -b:v 2000k output.mp4
```
