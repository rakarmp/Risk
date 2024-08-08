# Risk

Is a Magisk Module for Clean RAM Cache And Stop Background Apps, Google Apps, Third Party Apps Before Playing Games, To Get More Free RAM

## Preview

![screenshot](https://raw.githubusercontent.com/rakarmp/Risk/main/screenshot/img.jpg)

![screenshot](https://raw.githubusercontent.com/rakarmp/Risk/main/screenshot/img1.jpg)

![screenshot](https://raw.githubusercontent.com/rakarmp/Risk/main/screenshot/img2.jpg)

## How To Use

Risk Can be used using [Magisk](https://github.com/topjohnwu/Magisk) or [KernelSu](https://github.com/tiann/KernelSU)

1. Download Zip Build In [Here](https://github.com/rakarmp/Risk/tree/main/build)
2. Flash To Magisk Manager
3. Reboot Your Device
4. Open Termux App, You Can Download Termux [Here](https://www.apkmirror.com/apk/fredrik-fornwall/termux-fdroid-version/termux-fdroid-version-0-119-0-beta-1-release/termux-f-droid-version-0-119-0-beta-1-android-apk-download/download/?key=a1ef8c3eb4c8ec3722c8f11ede607b6292c6f4c2)
5. Follow Command `su -c risk` Below: 

```bash
# Exec And Follow Menu The Emergent
# If You Use KernelSu Enable SuperUser 
# In KernelSu App Give Su Permission For Termux

$ su -c risk 
```

## Ignore Apps

Risks can exclude applications if they are listed in the txt file at this path: `/sdcard/Android/Risk/excluded_apps.txt` 

```txt
// This Comment 
// Sign // Will not be executed
com.termux
jackpal.androidterm
com.google.android.gms 
com.google.android.gsf
```


## Why Must Risk?

### Improved Device Performance

By stopping unnecessary applications and clearing RAM cache, Risk helps in freeing up system resources. This can lead to a noticeable improvement in device performance, making it faster and more responsive.

### Enhanced Battery Life

Running multiple applications in the background can drain battery life significantly. By stopping third-party and google apps, Risk reduces the load on the CPU and other hardware components, leading to enhanced battery life.

### Optimized Memory Usage

Clearing the RAM cache using the  pm trim-caches  command and  drop_caches  mechanism ensures that unused memory is freed up. Risk helps in optimizing memory usage, allowing other applications to run more efficiently.

### Reduced System Lag

Background applications and cached data can cause system lag and slow down the overall performance of the device. By stopping these applications and clearing the cache, Risk helps in reducing system lag and ensuring smoother operation.

## ! Warning

Please be careful if you use custom mode with the option to stop system applications, because it can cause the device to reboot by itself.

## Links

Go to [here](https://github.com/rakarmp/Risk/tree/main/build) to download Risk™ build.