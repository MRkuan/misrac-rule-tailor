## 1.概述
pclint mistra C 规则裁剪

使用 python 和 jinjia2 模块生成 **au-misra3.lnt**

生成如下的格式，方便使用

## 2.介绍
本工程基于[python3](https://www.python.org/) 环境 ，推荐编辑器[vscode](https://code.visualstudio.com/),最初环境搭建需要安装相关第三方库 [pipreqs](https://pypi.org/project/pipreqs/0.4.6/)

- 0.首先需要安装 **pip**,如果已经安装可以跳过这一步

mac用户 需要以下命令安装pip

```
curl https://bootstrap.pypa.io/get-pip.py | python3
```

- 1.首先需要安装 **pipreqs**,如果已经安装可以跳过这一步

```
pip install pipreqs
```

- 2.一键生成 **requirement.txt** 文件

```
pipreqs ./
```

若提示以下提示，则需要运行以下命令

> WARNING: Requirements.txt already exists, use --force to overwrite it

```
pipreqs --force ./
```

- 2.一键安装所需**第三方库**
```
pip install -r requirements.txt
```

## 3.运行脚本

- 1.在windows 环境下直接运行 
  
```
  python main.py 
```
即可生成**au-misra3.lnt**文件

- 2.MAC 和 LINUX用户
  
```
  python3 main.py 
```
即可生成**au-misra3.lnt**文件
即可出现应用

## FAQ


