.class public Lcom/android/server/pm/SeinfoTool;
.super Ljava/lang/Object;
.source "SeinfoTool.java"


# static fields
.field private static final CMD_RESTORECONBYSEINFO:Ljava/lang/String; = "restoreconBySeinfo"

.field private static final PROPERTY_QROM_CURRENT_UTC:Ljava/lang/String; = "ro.qrom.build.date.utc"

.field private static final PROPERTY_QROM_LAST_UTC:Ljava/lang/String; = "persist.sys.qrom.lastutc"

.field private static final TAG:Ljava/lang/String; = "PackageManager"

.field private static mIsDebug:Z

.field private static mIsFirstBoot:Z

.field private static mRootCmdBinder:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/pm/SeinfoTool;->mIsDebug:Z

    .line 17
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/pm/SeinfoTool;->mIsFirstBoot:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static restore(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 10
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "uid"    # I
    .param p2, "seinfo"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 38
    sget-object v6, Lcom/android/server/pm/SeinfoTool;->mRootCmdBinder:Landroid/os/IBinder;

    if-nez v6, :cond_2

    .line 39
    const-class v6, Lcom/android/server/pm/SeinfoTool;

    monitor-enter v6

    .line 40
    :try_start_0
    sget-object v7, Lcom/android/server/pm/SeinfoTool;->mRootCmdBinder:Landroid/os/IBinder;

    if-nez v7, :cond_1

    .line 41
    const-string v7, "rootstub"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    sput-object v7, Lcom/android/server/pm/SeinfoTool;->mRootCmdBinder:Landroid/os/IBinder;

    .line 42
    const-string v7, "persist.sys.qrom.lastutc"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 43
    .local v3, "lastDate":I
    const-string v7, "ro.qrom.build.date.utc"

    const/4 v8, 0x0

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 44
    .local v1, "curDate":I
    sget-boolean v7, Lcom/android/server/pm/SeinfoTool;->mIsDebug:Z

    if-eqz v7, :cond_0

    .line 45
    const-string v7, "PackageManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "date "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    if-eq v3, v1, :cond_1

    .line 48
    const/4 v7, 0x1

    sput-boolean v7, Lcom/android/server/pm/SeinfoTool;->mIsFirstBoot:Z

    .line 49
    const-string v7, "persist.sys.qrom.lastutc"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .end local v1    # "curDate":I
    .end local v3    # "lastDate":I
    :cond_1
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_2
    sget-object v6, Lcom/android/server/pm/SeinfoTool;->mRootCmdBinder:Landroid/os/IBinder;

    if-eqz v6, :cond_4

    sget-boolean v6, Lcom/android/server/pm/SeinfoTool;->mIsFirstBoot:Z

    if-eqz v6, :cond_4

    .line 55
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "arg":Ljava/lang/String;
    sget-boolean v5, Lcom/android/server/pm/SeinfoTool;->mIsDebug:Z

    if-eqz v5, :cond_3

    .line 57
    const-string v5, "PackageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_3
    :try_start_1
    sget-object v5, Lcom/android/server/pm/SeinfoTool;->mRootCmdBinder:Landroid/os/IBinder;

    const-string v6, "restoreconBySeinfo"

    invoke-static {v5, v6, v0}, Lcom/android/server/pm/SeinfoTool;->runCommand(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    .end local v0    # "arg":Ljava/lang/String;
    :goto_0
    return v4

    .line 52
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 61
    .restart local v0    # "arg":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 62
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v0    # "arg":Ljava/lang/String;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    move v4, v5

    .line 66
    goto :goto_0
.end method

.method public static runCommand(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "remote"    # Landroid/os/IBinder;
    .param p1, "paramString1"    # Ljava/lang/String;
    .param p2, "paramString2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 22
    .local v0, "localParcel1":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 24
    .local v1, "localParcel2":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.tencent.qrom.rootstub.IRootStub"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 27
    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {p0, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 28
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 29
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 32
    .local v2, "str":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 30
    return-object v2

    .line 32
    .end local v2    # "str":Ljava/lang/String;
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 33
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 32
    throw v3
.end method
