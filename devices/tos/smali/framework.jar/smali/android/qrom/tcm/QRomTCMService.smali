.class public Landroid/qrom/tcm/QRomTCMService;
.super Landroid/qrom/tcm/IQRomTCMService$Stub;
.source "QRomTCMService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "QRomTCMService"

.field private static gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

.field private static mIsInFramework:Z

.field private static mStatusReceiver:Landroid/qrom/tcm/StatusReceiver;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mITCMSysSvrMgr:Landroid/qrom/tcm/ITCMSysSvrMgr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 39
    sput-object v1, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    .line 40
    const/4 v0, 0x0

    sput-boolean v0, Landroid/qrom/tcm/QRomTCMService;->mIsInFramework:Z

    .line 41
    sput-object v1, Landroid/qrom/tcm/QRomTCMService;->mStatusReceiver:Landroid/qrom/tcm/StatusReceiver;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-direct {p0}, Landroid/qrom/tcm/IQRomTCMService$Stub;-><init>()V

    .line 36
    iput-object v2, p0, Landroid/qrom/tcm/QRomTCMService;->mContext:Landroid/content/Context;

    .line 38
    iput-object v2, p0, Landroid/qrom/tcm/QRomTCMService;->mITCMSysSvrMgr:Landroid/qrom/tcm/ITCMSysSvrMgr;

    .line 79
    iput-object p1, p0, Landroid/qrom/tcm/QRomTCMService;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {p0, p1}, Landroid/qrom/tcm/QRomTCMService;->getTCMSysSvrMgr(Landroid/content/Context;)Landroid/qrom/tcm/ITCMSysSvrMgr;

    move-result-object v2

    iput-object v2, p0, Landroid/qrom/tcm/QRomTCMService;->mITCMSysSvrMgr:Landroid/qrom/tcm/ITCMSysSvrMgr;

    .line 82
    iget-object v2, p0, Landroid/qrom/tcm/QRomTCMService;->mITCMSysSvrMgr:Landroid/qrom/tcm/ITCMSysSvrMgr;

    if-eqz v2, :cond_0

    .line 83
    const-string v2, "QRomTCMService"

    const-string v3, "QRomTCMService mITCMSysSvrMgr != null"

    invoke-static {v2, v3}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Landroid/qrom/tcm/QRomTCMService;->mITCMSysSvrMgr:Landroid/qrom/tcm/ITCMSysSvrMgr;

    invoke-interface {v2}, Landroid/qrom/tcm/ITCMSysSvrMgr;->getWupBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, "b":Landroid/os/IBinder;
    const-string/jumbo v2, "qrom_framework_wup"

    invoke-static {v2, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 88
    iget-object v2, p0, Landroid/qrom/tcm/QRomTCMService;->mITCMSysSvrMgr:Landroid/qrom/tcm/ITCMSysSvrMgr;

    invoke-interface {v2}, Landroid/qrom/tcm/ITCMSysSvrMgr;->getStatBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 89
    .local v1, "bb":Landroid/os/IBinder;
    const-string/jumbo v2, "qrom_framework_stat"

    invoke-static {v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 91
    iget-object v2, p0, Landroid/qrom/tcm/QRomTCMService;->mITCMSysSvrMgr:Landroid/qrom/tcm/ITCMSysSvrMgr;

    invoke-interface {v2}, Landroid/qrom/tcm/ITCMSysSvrMgr;->start()V

    .line 94
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "bb":Landroid/os/IBinder;
    :cond_0
    iget-object v2, p0, Landroid/qrom/tcm/QRomTCMService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v2}, Landroid/qrom/tcm/QRomTCMService;->initReceiver(Landroid/content/Context;)V

    .line 95
    const-string v2, "QRomTCMService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QRomTCMService pkgName2 ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/qrom/tcm/QRomTCMService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-void
.end method

.method public static getService()Landroid/qrom/tcm/IQRomTCMService;
    .locals 4

    .prologue
    .line 65
    const-string v1, "QRomTCMService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QRomTCMService getService pid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v1, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    if-nez v1, :cond_1

    .line 67
    const-class v2, Landroid/qrom/tcm/QRomTCMService;

    monitor-enter v2

    .line 68
    :try_start_0
    sget-object v1, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    if-nez v1, :cond_0

    .line 69
    const-string/jumbo v1, "qrom_framework_tcm"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 70
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/qrom/tcm/QRomTCMService;->asInterface(Landroid/os/IBinder;)Landroid/qrom/tcm/IQRomTCMService;

    move-result-object v1

    sput-object v1, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    .line 72
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_1
    sget-object v1, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    return-object v1

    .line 72
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static init(Landroid/content/Context;)V
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 50
    const-string v0, "QRomTCMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QRomTCMService init pid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v0, "QRomTCMService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "QRomTCMService pkgName1 ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x1

    sput-boolean v0, Landroid/qrom/tcm/QRomTCMService;->mIsInFramework:Z

    .line 54
    sget-object v0, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    if-nez v0, :cond_1

    .line 55
    const-class v1, Landroid/qrom/tcm/QRomTCMService;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroid/qrom/tcm/QRomTCMService;

    invoke-direct {v0, p0}, Landroid/qrom/tcm/QRomTCMService;-><init>(Landroid/content/Context;)V

    sput-object v0, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    .line 58
    const-string/jumbo v0, "qrom_framework_tcm"

    sget-object v2, Landroid/qrom/tcm/QRomTCMService;->gIQRomTCMService:Landroid/qrom/tcm/IQRomTCMService;

    invoke-interface {v2}, Landroid/qrom/tcm/IQRomTCMService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    :cond_0
    monitor-exit v1

    .line 62
    :cond_1
    return-void

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static isInFramework()Z
    .locals 1

    .prologue
    .line 46
    sget-boolean v0, Landroid/qrom/tcm/QRomTCMService;->mIsInFramework:Z

    return v0
.end method


# virtual methods
.method public copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .param p1, "oldPath"    # Ljava/lang/String;
    .param p2, "newDir"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const/4 v5, 0x0

    .line 162
    .local v5, "inStream":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 164
    .local v3, "fs":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v8, "oldfile":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 166
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    .end local v5    # "inStream":Ljava/io/InputStream;
    .local v6, "inStream":Ljava/io/InputStream;
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v1, "dir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 169
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 171
    :cond_0
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 172
    .local v7, "newFile":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_1

    .line 173
    invoke-virtual {v7}, Ljava/io/File;->createNewFile()Z

    .line 175
    :cond_1
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 176
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .local v4, "fs":Ljava/io/FileOutputStream;
    const/16 v10, 0x800

    :try_start_2
    new-array v0, v10, [B

    .line 177
    .local v0, "buffer":[B
    const/4 v9, 0x0

    .line 178
    .local v9, "read":I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_4

    .line 179
    const/4 v10, 0x0

    invoke-virtual {v4, v0, v10, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 184
    .end local v0    # "buffer":[B
    .end local v9    # "read":I
    :catch_0
    move-exception v2

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 185
    .end local v1    # "dir":Ljava/io/File;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v7    # "newFile":Ljava/io/File;
    .end local v8    # "oldfile":Ljava/io/File;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :goto_1
    :try_start_3
    const-string v10, "QRomTCMService"

    invoke-static {v10, v2}, Landroid/qrom/tcm/QRTcmLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 188
    if-eqz v5, :cond_2

    .line 189
    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_2
    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 198
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 181
    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local v0    # "buffer":[B
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "newFile":Ljava/io/File;
    .restart local v8    # "oldfile":Ljava/io/File;
    .restart local v9    # "read":I
    :cond_4
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    move-object v5, v6

    .line 188
    .end local v0    # "buffer":[B
    .end local v1    # "dir":Ljava/io/File;
    .end local v6    # "inStream":Ljava/io/InputStream;
    .end local v7    # "newFile":Ljava/io/File;
    .end local v9    # "read":I
    .restart local v5    # "inStream":Ljava/io/InputStream;
    :cond_5
    if-eqz v5, :cond_6

    .line 189
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_6
    if-eqz v3, :cond_3

    .line 192
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 194
    :catch_1
    move-exception v2

    .line 195
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "QRomTCMService"

    invoke-static {v10, v2}, Landroid/qrom/tcm/QRTcmLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 194
    .end local v8    # "oldfile":Ljava/io/File;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 195
    .local v2, "e":Ljava/io/IOException;
    const-string v10, "QRomTCMService"

    invoke-static {v10, v2}, Landroid/qrom/tcm/QRTcmLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 188
    :goto_3
    if-eqz v5, :cond_7

    .line 189
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 191
    :cond_7
    if-eqz v3, :cond_8

    .line 192
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 196
    :cond_8
    :goto_4
    throw v10

    .line 194
    :catch_3
    move-exception v2

    .line 195
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v11, "QRomTCMService"

    invoke-static {v11, v2}, Landroid/qrom/tcm/QRTcmLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 187
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v8    # "oldfile":Ljava/io/File;
    :catchall_1
    move-exception v10

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    goto :goto_3

    .end local v3    # "fs":Ljava/io/FileOutputStream;
    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local v1    # "dir":Ljava/io/File;
    .restart local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v7    # "newFile":Ljava/io/File;
    :catchall_2
    move-exception v10

    move-object v3, v4

    .end local v4    # "fs":Ljava/io/FileOutputStream;
    .restart local v3    # "fs":Ljava/io/FileOutputStream;
    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    goto :goto_3

    .line 184
    .end local v1    # "dir":Ljava/io/File;
    .end local v7    # "newFile":Ljava/io/File;
    .end local v8    # "oldfile":Ljava/io/File;
    :catch_4
    move-exception v2

    goto :goto_1

    .end local v5    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "inStream":Ljava/io/InputStream;
    .restart local v8    # "oldfile":Ljava/io/File;
    :catch_5
    move-exception v2

    move-object v5, v6

    .end local v6    # "inStream":Ljava/io/InputStream;
    .restart local v5    # "inStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Landroid/qrom/tcm/QRomTCMService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTCMSysSvrMgr(Landroid/content/Context;)Landroid/qrom/tcm/ITCMSysSvrMgr;
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 128
    const-string v8, "QRomTCMService"

    const-string v10, "enter getTCMSysSvrMgr..."

    invoke-static {v8, v10}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v7, "/system/framework/qtcmframework.jar"

    .line 131
    .local v7, "srcPath":Ljava/lang/String;
    const-string v3, "/data/system/qrom"

    .line 132
    .local v3, "dstDir":Ljava/lang/String;
    const-string/jumbo v4, "tcm.jar"

    .line 134
    .local v4, "dstFile":Ljava/lang/String;
    invoke-virtual {p0, v7, v3, v4}, Landroid/qrom/tcm/QRomTCMService;->copyFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v8, "QRomTCMService"

    const-string v10, "enter getTCMSysSvrMgr 0.1..."

    invoke-static {v8, v10}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .local v2, "dexFile":Ljava/io/File;
    const/4 v0, 0x0

    .line 141
    .local v0, "classLoader":Ldalvik/system/DexClassLoader;
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 142
    const-string v8, "QRomTCMService"

    const-string v10, "enter getTCMSysSvrMgr 0.2..."

    invoke-static {v8, v10}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance v1, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-direct {v1, v8, v10, v11, v12}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .local v1, "classLoader":Ldalvik/system/DexClassLoader;
    if-eqz v1, :cond_0

    .line 146
    :try_start_1
    const-string v8, "QRomTCMService"

    const-string v10, "enter getTCMSysSvrMgr 1..."

    invoke-static {v8, v10}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const/4 v8, 0x1

    new-array v6, v8, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v6, v8

    .line 148
    .local v6, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const-string v8, "middle.tcm.TCMSysServiceImpl"

    invoke-virtual {v1, v8}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-virtual {v8, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/qrom/tcm/ITCMSysSvrMgr;

    move-object v0, v1

    .line 157
    .end local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v6    # "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    :goto_0
    return-object v8

    .line 150
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    :cond_0
    const-string v8, "QRomTCMService"

    const-string v10, "enter getTCMSysSvrMgr 1.0..."

    invoke-static {v8, v10}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 156
    .end local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    :cond_1
    :goto_1
    const-string v8, "QRomTCMService"

    const-string v10, "enter getTCMSysSvrMgr 2..."

    invoke-static {v8, v10}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v9

    .line 157
    goto :goto_0

    .line 152
    :catch_0
    move-exception v5

    .line 153
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    const-string v8, "QRomTCMService"

    const-string v10, "enter getTCMSysSvrMgr 1.1..."

    invoke-static {v8, v10}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v8, "QRomTCMService"

    invoke-static {v8, v5}, Landroid/qrom/tcm/QRTcmLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 152
    .end local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    :catch_1
    move-exception v5

    move-object v0, v1

    .end local v1    # "classLoader":Ldalvik/system/DexClassLoader;
    .restart local v0    # "classLoader":Ldalvik/system/DexClassLoader;
    goto :goto_2
.end method

.method public init()V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method public initReceiver(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 109
    sget-object v1, Landroid/qrom/tcm/QRomTCMService;->mStatusReceiver:Landroid/qrom/tcm/StatusReceiver;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Landroid/qrom/tcm/StatusReceiver;

    invoke-direct {v1}, Landroid/qrom/tcm/StatusReceiver;-><init>()V

    sput-object v1, Landroid/qrom/tcm/QRomTCMService;->mStatusReceiver:Landroid/qrom/tcm/StatusReceiver;

    .line 111
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 112
    .local v0, "recevierFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "com.tencent.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    const-string/jumbo v1, "qrom.compoent.tcm.action.req"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    sget-object v1, Landroid/qrom/tcm/QRomTCMService;->mStatusReceiver:Landroid/qrom/tcm/StatusReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    .end local v0    # "recevierFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public unInitReceiver(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 121
    sget-object v0, Landroid/qrom/tcm/QRomTCMService;->mStatusReceiver:Landroid/qrom/tcm/StatusReceiver;

    if-eqz v0, :cond_0

    .line 122
    sget-object v0, Landroid/qrom/tcm/QRomTCMService;->mStatusReceiver:Landroid/qrom/tcm/StatusReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Landroid/qrom/tcm/QRomTCMService;->mStatusReceiver:Landroid/qrom/tcm/StatusReceiver;

    .line 125
    :cond_0
    return-void
.end method
