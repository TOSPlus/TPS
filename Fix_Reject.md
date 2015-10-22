
## TPS 解决冲突

### **fix reject 有的情况是可以使代码生效的的,这里简单介绍两种产生rejet的两种情况.**

---

- 函数参数比安卓原生参数多几个参数,这种reject是最好修的.今天介绍的就是这种reject解决方法.
- 函数参数变少了.. 这个应该不常见.所以直接忽略,至于为何不常见,是因为厂商对aosp修改一般都会加参数,在原来函数完成更复杂的逻辑.
- 类被集成,这就意味者你要去子类里面fix reject 和fix bug ,当然也可以干掉子类.这个难度确实挺高.在今天适配小米的过程,最为抓狂的是editor,小米把这个改的面目全非,再者是音量面板和PhoneWindowManager,这两个还好,没那么坑,去掉子类实例化就解决这个问题.

在机型适配中见过最常见的一个冲突,就是函数参数多一个或者多个,今天就以miui color都存在的一个reject为实例来解决冲突.这个冲突的函数名字是setMobileDataEnabled(Z)V 在aosp中存在这个函数但是厂商中是setMobileDataEnabled(Ljava/lang/String;Z)V 造成无法插入.**进入解决冲突前我默认打开熟悉P命名法和V命名发**,如果不会请自行google.其实解决冲突就是分两步.------**简单的说就是传对参数,和调对方法**.下面直接进行解决冲突的实例,就不多说了,大家自行研究.

---
1. 更改setMobileDataEnabled方法名为tos_org_setMobileDataEnabled
2. 增加下面一个函数
``` smali
.method public setMobileDataEnabled(Ljava/lang/String;Z)V
    .locals 4
    .parameter "callingPackage"
    .parameter "enabled"
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: permission part::tamrylei::2015-05-26"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1894xia
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1895
    .local v0, param:Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1896
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 1897
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 1898
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1899
    const-string v1, "com.android.server.ConnectivityService#setMobileDataEnabled"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1900
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1903
    :cond_0
    invoke-virtual {p0, p1,p2}, Lcom/android/server/ConnectivityService;->tos_org_setMobileDataEnabled(Ljava/lang/String;Z)V
    goto :goto_0
.end method
```

 1. 传参数 invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean; 这里传入的是P2 也就是形参第二个参数 Z.
 2. 调回原来方法 就是invoke-virtual* {p0, p1,p2}*, Lcom/android/server/ConnectivityService;->**tos_org_setMobileDataEnabled(Ljava/lang/String;Z)V** 而非tos_org_setMobileDataEnabled(Z)V
> PS: 要注意寄存器的个数.这里是三个. 

3. 下面给出我没修改之前的的方法,大家自行对比,大家好好斟酌下. (传对参数,和调对方法)
		
       
``` smali
.method public setMobileDataEnabled(Z)V
    .locals 4

    .parameter "enabled"
    .annotation build Landroid/annotation/TOSHook;
        hooktype = .enum Landroid/annotation/TOSHook$TOSHookType;->CHANGE_METHOD:Landroid/annotation/TOSHook$TOSHookType;
        note = "SetupFlashRom: permission part::tamrylei::2015-05-26"
        romtype = .enum Landroid/annotation/TOSHook$TOSRomType;->ROM:Landroid/annotation/TOSHook$TOSRomType;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1894
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 1895
    .local v0, param:Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 1896
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 1897
    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 1898
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1899
    const-string v1, "com.android.server.ConnectivityService#setMobileDataEnabled"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 1900
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1904
    :goto_0
    return-void

    .line 1903
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/ConnectivityService;->tos_org_setMobileDataEnabled(Z)V
    goto :goto_0
.end method
```


