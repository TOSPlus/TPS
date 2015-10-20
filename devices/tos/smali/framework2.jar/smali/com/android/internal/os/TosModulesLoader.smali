.class public Lcom/android/internal/os/TosModulesLoader;
.super Ljava/lang/Object;
.source "TosModulesLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;,
        Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;
    }
.end annotation


# static fields
.field public static final AFTER:I = 0x2

.field public static final AFTER_PREFIX:Ljava/lang/String; = "after_"

.field public static final BEFORE:I = 0x1

.field public static final BEFORE_PREFIX:Ljava/lang/String; = "before_"

.field private static final BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

.field private static final PLUG_HOSTER_APK:Ljava/lang/String; = "system/app/qtosplughoster.apk"

.field private static final PLUG_HOSTER_LOAD_ENTER:Ljava/lang/String; = "loadAllXmlFiles"

.field private static final PLUG_XML_LOADER_CLASS:Ljava/lang/String; = "com.tencent.qrom.plughoster.PlugXmlLoaderImp"

.field public static final REPLACE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "TosModulesLoader"

.field private static gCallNums:I

.field private static gTestSpeedFlag:I

.field public static mClzLoader:Ljava/lang/ClassLoader;

.field private static mImpclassObj:Ljava/lang/Object;

.field private static mIsLoaded:Z

.field private static mOrgAndPlugMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mPlugInstanceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/TosModulesLoader;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/TosModulesLoader;->mOrgAndPlugMap:Ljava/util/HashMap;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/os/TosModulesLoader;->mPlugInstanceMap:Ljava/util/HashMap;

    .line 50
    sput v1, Lcom/android/internal/os/TosModulesLoader;->gCallNums:I

    .line 52
    sput v1, Lcom/android/internal/os/TosModulesLoader;->gTestSpeedFlag:I

    .line 138
    sput-boolean v1, Lcom/android/internal/os/TosModulesLoader;->mIsLoaded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    return-void
.end method

.method public static addClassMapValue(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 16
    .param p0, "orgClass_method"    # Ljava/lang/String;
    .param p1, "impClass_method"    # Ljava/lang/String;
    .param p2, "invokeType"    # I

    .prologue
    .line 244
    const-string v12, "TosModulesLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "enter addClassMapValue class_func = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", imp ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const-string v12, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 252
    .local v6, "keysp":[Ljava/lang/String;
    sget-object v12, Lcom/android/internal/os/TosModulesLoader;->mPlugInstanceMap:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;

    .line 253
    .local v2, "classComponent":Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;
    if-nez v2, :cond_0

    .line 254
    new-instance v2, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;

    .end local v2    # "classComponent":Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;
    invoke-direct {v2}, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;-><init>()V

    .line 255
    .restart local v2    # "classComponent":Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;
    sget-object v12, Lcom/android/internal/os/TosModulesLoader;->mPlugInstanceMap:Ljava/util/HashMap;

    const/4 v13, 0x0

    aget-object v13, v6, v13

    invoke-virtual {v12, v13, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v12, "#"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, "valueSp":[Ljava/lang/String;
    const/4 v12, 0x0

    aget-object v12, v11, v12

    iput-object v12, v2, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->plugClassName:Ljava/lang/String;

    .line 259
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v2, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->methods:Ljava/util/HashMap;

    .line 262
    :try_start_0
    sget-object v12, Lcom/android/internal/os/TosModulesLoader;->mClzLoader:Ljava/lang/ClassLoader;

    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-virtual {v12, v13}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 263
    .local v1, "Clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 264
    const-string v12, "TosModulesLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "ClassName**********:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v6, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " plugClass="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v14, v11, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 266
    .local v5, "instance":Ljava/lang/Object;
    iput-object v5, v2, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->classInstance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1    # "Clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "instance":Ljava/lang/Object;
    .end local v11    # "valueSp":[Ljava/lang/String;
    :cond_0
    :goto_0
    const-string v10, ""

    .line 277
    .local v10, "prefix":Ljava/lang/String;
    const/4 v12, 0x1

    move/from16 v0, p2

    if-ne v0, v12, :cond_2

    .line 278
    const-string v10, "before_"

    .line 282
    :goto_1
    const/4 v12, 0x1

    aget-object v9, v6, v12

    .line 283
    .local v9, "methodName":Ljava/lang/String;
    iget-object v12, v2, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->methods:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;

    .line 284
    .local v8, "methodComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    if-nez v8, :cond_1

    .line 285
    new-instance v8, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;

    .end local v8    # "methodComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    invoke-direct {v8}, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;-><init>()V

    .line 286
    .restart local v8    # "methodComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    move/from16 v0, p2

    iput v0, v8, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->invokeType:I

    .line 287
    const/4 v12, 0x0

    iput v12, v8, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->callNums:I

    .line 288
    iget-object v12, v2, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->methods:Ljava/util/HashMap;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :try_start_1
    iget-object v12, v2, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->classInstance:Ljava/lang/Object;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 292
    .local v3, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_1

    .line 293
    const-string v12, "TosModulesLoader"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "methodName:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    aput-object v15, v13, v14

    invoke-virtual {v3, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 295
    .local v7, "method":Ljava/lang/reflect/Method;
    if-eqz v7, :cond_1

    .line 296
    const/4 v12, 0x1

    invoke-virtual {v7, v12}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 297
    iput-object v7, v8, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->method:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 307
    .end local v3    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "method":Ljava/lang/reflect/Method;
    :cond_1
    :goto_2
    return-void

    .line 268
    .end local v8    # "methodComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    .end local v9    # "methodName":Ljava/lang/String;
    .end local v10    # "prefix":Ljava/lang/String;
    .restart local v11    # "valueSp":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 270
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 280
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v11    # "valueSp":[Ljava/lang/String;
    .restart local v10    # "prefix":Ljava/lang/String;
    :cond_2
    const-string v10, "after_"

    goto/16 :goto_1

    .line 301
    .restart local v8    # "methodComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    .restart local v9    # "methodName":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 302
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static dumpCallNums()V
    .locals 19

    .prologue
    .line 203
    sget-object v16, Lcom/android/internal/os/TosModulesLoader;->mPlugInstanceMap:Ljava/util/HashMap;

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 205
    .local v10, "iter1":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    .line 206
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 207
    .local v4, "entry1":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;

    .line 208
    .local v14, "tmpClassComponent":Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;
    if-eqz v14, :cond_0

    .line 211
    iget-object v0, v14, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->methods:Ljava/util/HashMap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 212
    .local v11, "iter2":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    .line 213
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 214
    .local v5, "entry2":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;

    .line 215
    .local v15, "tmpMthComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    if-eqz v15, :cond_1

    iget v0, v15, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->callNums:I

    move/from16 v16, v0

    if-lez v16, :cond_1

    .line 216
    const-string v16, "TosModulesLoader"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dumpCallNum "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v14, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->plugClassName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v15, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->method:Ljava/lang/reflect/Method;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", callNums = "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget v0, v15, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->callNums:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    const/16 v16, 0x0

    move/from16 v0, v16

    iput v0, v15, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->callNums:I

    goto :goto_0

    .line 226
    .end local v4    # "entry1":Ljava/util/Map$Entry;
    .end local v5    # "entry2":Ljava/util/Map$Entry;
    .end local v11    # "iter2":Ljava/util/Iterator;
    .end local v14    # "tmpClassComponent":Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;
    .end local v15    # "tmpMthComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    :cond_2
    :try_start_0
    const-string v16, "com.tencent.qrom.utils.ReflectUtils"

    invoke-static/range {v16 .. v16}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 227
    .local v1, "Clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v16, Lcom/android/internal/os/TosModulesLoader;->mClzLoader:Ljava/lang/ClassLoader;

    const-string v17, "com.tencent.qrom.plughoster.widget.utils.ReflectUtils"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 228
    .local v2, "Clz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v16, "gCallFieldNums"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 229
    .local v6, "f1":Ljava/lang/reflect/Field;
    const-string v16, "gCallMethodNums"

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v12

    .line 230
    .local v12, "m1":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v8

    .line 232
    .local v8, "instance1":Ljava/lang/Object;
    const-string v16, "gCallFieldNums2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 233
    .local v7, "f2":Ljava/lang/reflect/Field;
    const-string v16, "gCallMethodNums2"

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v13

    .line 234
    .local v13, "m2":Ljava/lang/reflect/Field;
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    .line 235
    .local v9, "instance2":Ljava/lang/Object;
    const-string v16, "TosModulesLoader"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "dumpCallNum gCallFieldNums="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", gCallMethodNums="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v12, v8}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", gCallFieldNums2="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v7, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", gCallMethodNums2="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v13, v9}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    .end local v1    # "Clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "Clz2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "f1":Ljava/lang/reflect/Field;
    .end local v7    # "f2":Ljava/lang/reflect/Field;
    .end local v8    # "instance1":Ljava/lang/Object;
    .end local v9    # "instance2":Ljava/lang/Object;
    .end local v12    # "m1":Ljava/lang/reflect/Field;
    .end local v13    # "m2":Ljava/lang/reflect/Field;
    :goto_1
    return-void

    .line 237
    :catch_0
    move-exception v3

    .line 238
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static initClassObjectMap()V
    .locals 0

    .prologue
    .line 347
    return-void
.end method

.method public static invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V
    .locals 11
    .param p0, "orgClass_method"    # Ljava/lang/String;
    .param p1, "param"    # Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    .prologue
    const/4 v10, 0x1

    .line 148
    sget v8, Lcom/android/internal/os/TosModulesLoader;->gTestSpeedFlag:I

    if-ne v8, v10, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    sget-boolean v8, Lcom/android/internal/os/TosModulesLoader;->mIsLoaded:Z

    if-eqz v8, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 158
    .local v1, "classComponent":Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;
    :try_start_0
    const-string v8, "#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    aget-object v3, v8, v9

    .line 159
    .local v3, "key":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/os/TosModulesLoader;->mPlugInstanceMap:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;

    move-object v1, v0

    .line 161
    if-eqz v1, :cond_0

    .line 166
    const-string v8, "#"

    invoke-virtual {p0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v5, v8, v9

    .line 167
    .local v5, "methodName":Ljava/lang/String;
    const-string v6, ""

    .line 168
    .local v6, "prefix":Ljava/lang/String;
    iget v8, p1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    if-ne v8, v10, :cond_2

    .line 169
    const-string v6, "before_"

    .line 174
    :goto_1
    iget-object v8, v1, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->methods:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;

    .line 175
    .local v4, "methodComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    if-eqz v4, :cond_0

    iget-object v8, v4, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->method:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_0

    .line 176
    sget v8, Lcom/android/internal/os/TosModulesLoader;->gCallNums:I

    add-int/lit8 v8, v8, 0x1

    sput v8, Lcom/android/internal/os/TosModulesLoader;->gCallNums:I

    .line 177
    iget v8, v4, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->callNums:I

    add-int/lit8 v8, v8, 0x1

    iput v8, v4, Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;->callNums:I

    .line 179
    sget v8, Lcom/android/internal/os/TosModulesLoader;->gTestSpeedFlag:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_0

    .line 185
    iget-object v7, v1, Lcom/android/internal/os/TosModulesLoader$PlugClassComponent;->classInstance:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/TosPlugInterface;

    .line 186
    .local v7, "tpi":Lcom/android/internal/os/TosPlugInterface;
    iget v8, p1, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    invoke-interface {v7, v5, v8, p1}, Lcom/android/internal/os/TosPlugInterface;->invoke(Ljava/lang/String;ILcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "methodComponent":Lcom/android/internal/os/TosModulesLoader$PlugMethodComponent;
    .end local v5    # "methodName":Ljava/lang/String;
    .end local v6    # "prefix":Ljava/lang/String;
    .end local v7    # "tpi":Lcom/android/internal/os/TosPlugInterface;
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 171
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v5    # "methodName":Ljava/lang/String;
    .restart local v6    # "prefix":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v6, "after_"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static loadModules()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 56
    sget v2, Lcom/android/internal/os/TosModulesLoader;->gTestSpeedFlag:I

    if-ne v2, v3, :cond_0

    .line 78
    .local v0, "Clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 59
    .end local v0    # "Clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sput-boolean v3, Lcom/android/internal/os/TosModulesLoader;->mIsLoaded:Z

    .line 65
    :try_start_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v3, "system/app/qtosplughoster.apk"

    sget-object v4, Lcom/android/internal/os/TosModulesLoader;->BOOT_CLASSLOADER:Ljava/lang/ClassLoader;

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v2, Lcom/android/internal/os/TosModulesLoader;->mClzLoader:Ljava/lang/ClassLoader;

    .line 67
    sget-object v2, Lcom/android/internal/os/TosModulesLoader;->mClzLoader:Ljava/lang/ClassLoader;

    const-string v3, "com.tencent.qrom.plughoster.PlugXmlLoaderImp"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 68
    .restart local v0    # "Clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v0, :cond_1

    .line 69
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    sput-object v2, Lcom/android/internal/os/TosModulesLoader;->mImpclassObj:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_1
    invoke-static {}, Lcom/android/internal/os/TosModulesLoader;->readXmlByReflect()V

    goto :goto_0

    .line 72
    :catch_0
    move-exception v1

    .line 73
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "TosModulesLoader"

    const-string v3, "loadModules Exception*********************** "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static readXmlByReflect()V
    .locals 6

    .prologue
    .line 82
    const-string v4, "TosModulesLoader"

    const-string v5, "readXmlByReflect enter......"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :try_start_0
    sget-object v4, Lcom/android/internal/os/TosModulesLoader;->mImpclassObj:Ljava/lang/Object;

    if-nez v4, :cond_0

    .line 86
    const-string v4, "TosModulesLoader"

    const-string v5, "mImpclassObj == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 89
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    sget-object v4, Lcom/android/internal/os/TosModulesLoader;->mImpclassObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 90
    .restart local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "TosModulesLoader"

    const-string v5, "readXmlByReflect mImpclassObj.getClass()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v3, "loadAllXmlFiles"

    .line 93
    .local v3, "methodName":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 94
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 95
    .local v2, "method":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 96
    const-string v4, "TosModulesLoader"

    const-string v5, "readXmlByReflect method! == null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 98
    sget-object v4, Lcom/android/internal/os/TosModulesLoader;->mImpclassObj:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "methodName":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, "TosModulesLoader"

    const-string v5, "readXmlByReflect exit......"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "TosModulesLoader"

    const-string v5, "load Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
