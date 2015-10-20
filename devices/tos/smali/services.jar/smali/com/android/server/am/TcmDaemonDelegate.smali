.class public Lcom/android/server/am/TcmDaemonDelegate;
.super Ljava/lang/Object;
.source "TcmDaemonDelegate.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "tcmstub"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addQromSystemProcess(ILandroid/app/IApplicationThread;)V
    .locals 14
    .param p0, "pid"    # I
    .param p1, "thread"    # Landroid/app/IApplicationThread;

    .prologue
    .line 47
    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    .line 48
    .local v5, "mSelf":Lcom/android/server/am/ActivityManagerService;
    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    const-string v11, "android"

    const/16 v12, 0x400

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 52
    .local v4, "info":Landroid/content/pm/ApplicationInfo;
    monitor-enter v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 54
    :try_start_1
    const-string v10, "com.android.server.am.ActivityManagerService"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    const/4 v9, 0x0

    .line 57
    .local v9, "targetMethod":Ljava/lang/reflect/Method;
    const/4 v6, 0x0

    .line 58
    .local v6, "processNameField":Ljava/lang/reflect/Field;
    invoke-static {}, Lcom/android/server/am/TcmDaemonDelegate;->isKitKatOrLater()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 59
    const-string v10, "newProcessRecordLocked"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/content/pm/ApplicationInfo;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 61
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v4, v10, v11

    const/4 v11, 0x1

    const-string v12, "tcm_service"

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 62
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 63
    iput p0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 64
    const/16 v10, -0x10

    iput v10, v0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 65
    const-string v10, "com.android.server.am.ProcessRecord"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 66
    .local v8, "processRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "makeActive"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/app/IApplicationThread;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Lcom/android/server/am/ProcessStatsService;

    aput-object v13, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 67
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    iget-object v12, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    aput-object v12, v10, v11

    invoke-virtual {v9, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .end local v8    # "processRecordClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-string v10, "tcmstub"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "addQromSystemProcess isKitKatOrLater="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-static {}, Lcom/android/server/am/TcmDaemonDelegate;->isKitKatOrLater()Z

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", processName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", uid="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {}, Lcom/android/server/am/TcmDaemonDelegate;->isKitKatOrLater()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 79
    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v10, v11, v12, v0}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 88
    :goto_1
    iget-object v11, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 89
    :try_start_2
    iget-object v10, v5, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    iget v12, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v10, v12, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 90
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 91
    :try_start_3
    invoke-static {}, Lcom/android/server/am/TcmDaemonDelegate;->isKitKatOrLater()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 92
    const-string v10, "updateLruProcessLocked"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lcom/android/server/am/ProcessRecord;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Lcom/android/server/am/ProcessRecord;

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 94
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-object v12, v10, v11

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()V

    .line 101
    :goto_2
    monitor-exit v5

    .line 118
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "mSelf":Lcom/android/server/am/ActivityManagerService;
    .end local v6    # "processNameField":Ljava/lang/reflect/Field;
    .end local v9    # "targetMethod":Ljava/lang/reflect/Method;
    :goto_3
    return-void

    .line 69
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "mSelf":Lcom/android/server/am/ActivityManagerService;
    .restart local v6    # "processNameField":Ljava/lang/reflect/Field;
    .restart local v9    # "targetMethod":Ljava/lang/reflect/Method;
    :cond_0
    const-string v10, "newProcessRecordLocked"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/app/IApplicationThread;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-class v13, Landroid/content/pm/ApplicationInfo;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-class v13, Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x3

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 71
    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    const/4 v11, 0x1

    aput-object v4, v10, v11

    const/4 v11, 0x2

    const-string v12, "tcm_service"

    aput-object v12, v10, v11

    const/4 v11, 0x3

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 72
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 73
    iput p0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 74
    const/16 v10, -0x10

    iput v10, v0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    goto/16 :goto_0

    .line 101
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "processNameField":Ljava/lang/reflect/Field;
    .end local v9    # "targetMethod":Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v10

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v10
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_6

    .line 102
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "mSelf":Lcom/android/server/am/ActivityManagerService;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "Unable to find qrom system package"

    invoke-direct {v10, v11, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 81
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .restart local v5    # "mSelf":Lcom/android/server/am/ActivityManagerService;
    .restart local v6    # "processNameField":Ljava/lang/reflect/Field;
    .restart local v9    # "targetMethod":Ljava/lang/reflect/Method;
    :cond_1
    :try_start_5
    const-string v10, "mProcessNames"

    invoke-virtual {v1, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 82
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 84
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ProcessMap;

    .line 85
    .local v7, "processNames":Lcom/android/server/ProcessMap;
    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v7, v10, v11, v0}, Lcom/android/server/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 90
    .end local v7    # "processNames":Lcom/android/server/ProcessMap;
    :catchall_1
    move-exception v10

    :try_start_6
    monitor-exit v11
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v10

    .line 97
    :cond_2
    const-string v10, "updateLruProcessLocked"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Lcom/android/server/am/ProcessRecord;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v1, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 99
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v9, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_2

    .line 105
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v5    # "mSelf":Lcom/android/server/am/ActivityManagerService;
    .end local v6    # "processNameField":Ljava/lang/reflect/Field;
    .end local v9    # "targetMethod":Ljava/lang/reflect/Method;
    :catch_1
    move-exception v3

    .line 106
    .local v3, "e1":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto/16 :goto_3

    .line 107
    .end local v3    # "e1":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 108
    .local v3, "e1":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto/16 :goto_3

    .line 109
    .end local v3    # "e1":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    .line 110
    .local v3, "e1":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_3

    .line 111
    .end local v3    # "e1":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 112
    .local v3, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v3}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto/16 :goto_3

    .line 113
    .end local v3    # "e1":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v3

    .line 114
    .local v3, "e1":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto/16 :goto_3

    .line 115
    .end local v3    # "e1":Ljava/lang/ClassNotFoundException;
    :catch_6
    move-exception v2

    .line 116
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3
.end method

.method public static isKitKatOrLater()Z
    .locals 2

    .prologue
    .line 121
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final main(I)Landroid/content/Context;
    .locals 3
    .param p0, "factoryTest"    # I

    .prologue
    .line 141
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 143
    .local v0, "at":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 144
    .local v1, "context":Landroid/content/Context;
    const v2, 0x103006b

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 193
    return-object v1
.end method
