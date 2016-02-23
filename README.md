# TPS使用流程整理


**概述**

> TOS 反编译适配系统（后面简称 TPS）是一个可以将基于源码（Google Nexus 5，后面简称N5）的 TOS 适配到其它机型的工具。基本思路将 N5 的 TOS反编 译代码与 AOSP（GoogleAndroid 源码）的反编译代码对比然后将改动点应用到目标机型的反编译代码上，从而完成一个反编译适配过程。
 
 **命令行介绍**
- **make create** ：创建目标机型适配工作目录；
- **make config** ：对目标机型进行公共的配置；
- **make prepare** ：对目标机型进行反编译得到待处理的 smali 文件;
- **make patch**：对反编译出来的 smali 文件进行 patch（拆分 smali 文件到方法级）
- **make javapatch**：对部分逻辑复杂难以 patch 的 smali 文件进行基于 java 源码的
patch
- **make repack**：对拆分到方法级的 smali 文件进行合并并重新打包成 jar 包
- **make package**：生成最终的 OTA 刷机包
- **make syncpatch**:用于framework更新后的patch，不改变开发者对原厂smali文件的修改
- **make incpatch**：将新版本 TOS patch 到已经适配好的目标机型的 TOS 上
- **make incpackage**：针对新版本 TOS 重新将上一个 patch 好的版本重新打包
- **make clean**： 执行清理操作

-------------------

 **环境要求**

> Linux ： (演示环境 ubuntu 14.04)
获取到最新的TPS工具 :

```
git clone https://github.com/TOSPlus/TPS
```
-------------------
**实战**
- **导入环境变量** 

```
. build/envsetup.sh
```

- **配置N900的环境** 
> 在TPS根目录再次执行

		make create brand=Samsung device=N900（要适配的机型名称）

将要适配机型的N900.zip包放到device/N900目录下，重命名或链接为ota.zip，要求有system目录和boot.img文件。
注意 ：N900的ota包的获取，需要获取机型原底包的odex经过优化的包，而TOS在创建机型目录的时候，会在机型的根目录下生成一个N900.zip，这个是经过odex优化的。这个包里面只有一个system文件夹，这个包需要再放入一个N900原厂的boot.img文件到N900.zip包的根目录。这个就可以用来作为ota包使用。

```
~/TESTROM/TPS/devices/N900 $ ls
boot/   config/  Makefile*   ota/   N900.zip*    override/  package/    patch/  progress/   tools/
```

需要注意的是： 因为各个厂商的boot.img差异导致打包和解包会出错 所以需要要手动配置下解包和打包工具的路径（最好配置绝对路径，防止在使用的过程中出现找不到工具或者命令的情况）。 需要对Makefile文件进行修改。

Makefile中修改下面两个变量即可：

```
UNPACK_BOOTIMG_TOOL := defalut
PACK_BOOTIMG_TOOL := defalut
```

- **执行make prepare 命令** 
> 进入devices/N900目录，
执行make prepare
至此,N900目录的准备工作已经完毕

- **执行make patch 命令** 
> 这个是命令是整个TPS适配的核心，整个插桩的工作都在这个过程中完成

- **执行make repack 命令** 
> 这个步骤是将合并好的method重新合并成一个完整的smali文件，并打包
注意：make repack 执行完之后 就需要进入N900目录下的config文件夹
为打包package做准备

```
~/TESTROM/TPS/devices/N900/config $ ls
build.prop*     file_record/    misc_info.txt*      remove_files.list*  file_contexts*   keep_files.list* recovery.fstab*    tos_system_files.ignore*
```
进入devices/N900/config目录，生成配置文件misc_info.txt，recovery.fstab，配置build.prop、remove_files.list

> misc_info.txt的模板如下：(最主要是配置几个分区的大小)

```
recovery_api_version=3
fstab_version=2
use_set_metadata=1
multistage_support=1
update_rename_support=1
fs_type=ext4
blocksize=4096
boot_size=11534336
recovery_size=11534336
system_size=2254438400
userdata_size=12738101248
cache_size=6081744080
selinux_fc=META/file_contexts
```   

> recovery.fstab 这个可以从一个可以用的目标机型的recovery中提取出来，路径是/etc/recovery.fstab

> build.prop 将模板中的空白字段填上，比如：

```
ro.qrom.beaconkey=0M000V5PH01B6QQD
ro.qrom.product.device=ja3g
ro.qrom.product.device.brand=samsung
ro.qrom.build.brand=tos
ro.qrom.build.os=android4.4.2
ro.qrom.otapath=/data/media/0
qrom_disposeIcon_enable=1
qrom_permission_enable=1
```

> remove_files.list 这个是精简列表，里面的列表均为相对路径，比如

```
app/PackageInstaller.apk
priv-app/SecMms.apk
app/RootPA.apk
lib/xxx.so
fonts/xxxx.ttf
...
```

> tos_system_files.ignore 这个是忽略要拷贝的tos文件，目前来说，由于media注
入有问题，需要配置以下两项：

```
bin/mediaserver_injector
lib/libmedia_jni.so
```

- **执行make package 命令** 
>配置完成之后 进入N900 机型目录执行make package
执行make package 命令生成OTA包
在devices/N900/package/

```
~/TESTROM/TPS/devices/N900/config $ ls
N900.zip*    smali/    target_files/    target_files.zip    
```

冲突解决：
------

[解决方法](https://github.com/TOSPlus/TPS/blob/master/Fix_Reject.md)


TencentOS更新日记：
------
Hi，亲爱的TOS小伙伴们，本周更新版本来啦，感谢大家一直以来的支持！ 

【本周推荐】
新增  元宵主题
新增  拦截短信和验证码短信的清理功能
新增  换号短信显示成卡片并快速添加联系人的功能

【主题】
新增  元宵主题

【联系人】
修复  删除联系人时导入vCard文件并添加桌面小工具出现停止运行的问题（N5 4.4.4机型）

【短信】
新增  拦截短信和验证码短信的清理功能
新增  换号短信显示成卡片并快速添加联系人的功能
优化  无未读短信，点击一键已读的提示
优化  云同步过程中，短信界面显示联系人卡顿的问题
优化  通知栏进入拦截短信详情，左上角返回拦截短信列表
修复  未插SIM卡，但是短信发送按钮可点的问题（大神F2机型）
修复  短信详情界面新建联系人出现崩溃的问题
修复  通知小助手里正常短信显示成草稿的问题
修复  新建联系人后，短信界面未及时刷新的问题
修复  短信详情界面号码过长，点击新建联系人保存后不显示保存的名字的问题（小米3移动版机型，三星i9308机型）

【相册】
优化  加载相册的速度
修复  进入相册年视图，点击一张图片切换到日视图，分组标题显示错误的问题（小米3联通版机型）

【时钟】
修复  闹钟响闹时拦截来电，闹钟停止的问题
修复  定时器闹时拦截来电，定时器停止的问题

【因为有你，TOS才有无限可能】
感谢所有参加TOS开放测试的用户！感谢0202版本积极反馈并协助修复问题的用户：
Xiao 波、半天空城、乐呵呵/:D、薰衣草_qlaDzH、上善若水_emXrka、温浅、铮澈、斷橋殘雪_NHHNCL、NX2017、二将、奥斯曼、老白1号、孤独无名氏、省电模式、花落，不相弃、后宫孕妇三千、枫叶情_TL0WJZ、_nWIQis、Jesus give me Brave、ZJ &quot;Okami、呵呵_pusmht、水纹、若如初、暮景星辰yjl、梦想追逐乐园、忧 、小默 、wEn傑 、指尖的流沙 、暮景星辰yjl 、水沝淼㵘 、十字路口 、别靠近我_AuSDbv 、Helianthus annuus 、你BaBa的吻 、名字懒得想 、LiX 、聚四氟乙烯 、释然_lkUgq1 、EAST_NVfato 、順娸洎嘫 、-----Amo^命若相惜 、飞得更高_YyGAoO 、 七度_rY2Ymk 、_N61T8f 、迎接黎明 、Mr. Jamoer 、美 满 i 、dadi.lee 、飛蓬 、春秋 、鑫美科技《莊創鑫》


