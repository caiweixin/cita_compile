# cita_compile

可cita编译的docker环境

## 环境要求

1. 安装docker,版本17.06.2-ce以上
2. 安装docker-compose,版本1.61.1以上
3. 安装了git

## 编译前准备

1. 将cita代码clone到当前工程目录下
```
$ git clone https://github.com/cryptape/cita.git
```

2. 将cita代码切换到stable_holiday分支
```
$ cd cita
$ git checkout stable_holiday
$ cd ..
```
该docker环境针对的是cita的stable_holiday分支,最新支持到github上的commit的hash为`58f1835974936af41c56454aaa0335e4a5b4ec91`

## 编译

在当前工程目录下执行以下命令进行编译
```
$ docker-compose up
```
