.class public Lcom/android/server/qrom/tcm/TestService;
.super Lcom/android/server/qrom/tcm/ITestService$Stub;
.source "TestService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/qrom/tcm/TestService$1;,
        Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;,
        Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "tcmstub"

.field private static gITestService:Lcom/android/server/qrom/tcm/ITestService;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;

.field private mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

.field private mWorker:Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/qrom/tcm/TestService;->gITestService:Lcom/android/server/qrom/tcm/ITestService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/android/server/qrom/tcm/ITestService$Stub;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/qrom/tcm/TestService;->mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/server/qrom/tcm/TestService;->mContext:Landroid/content/Context;

    .line 101
    new-instance v0, Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;

    const-string v1, "TestServiceWorker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;-><init>(Lcom/android/server/qrom/tcm/TestService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/qrom/tcm/TestService;->mWorker:Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;

    .line 102
    iget-object v0, p0, Lcom/android/server/qrom/tcm/TestService;->mWorker:Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;

    invoke-virtual {v0}, Lcom/android/server/qrom/tcm/TestService$TestWorkerThread;->start()V

    .line 103
    const-string v0, "tcmstub"

    const-string v1, "QROMProcessReceiver Spawned worker thread"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/qrom/tcm/TestService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/server/qrom/tcm/TestService;->initReceiver(Landroid/content/Context;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/server/qrom/tcm/TestService;->writeFileTest()V

    .line 108
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/qrom/tcm/TestService;Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;)Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/qrom/tcm/TestService;
    .param p1, "x1"    # Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/server/qrom/tcm/TestService;->mHandler:Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;

    return-object p1
.end method

.method public static clear()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/qrom/tcm/TestService;->gITestService:Lcom/android/server/qrom/tcm/ITestService;

    .line 38
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 41
    const-string v2, "tcmstub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init pid ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 43
    .local v0, "context":Landroid/content/Context;
    if-eqz v0, :cond_2

    .line 44
    const-string v2, "tcmstub"

    const-string v3, "getApplicationContext != null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    const-string v2, "TcmDaemon"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/qrom/tcm/ITcmDaemon$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/qrom/tcm/ITcmDaemon;

    move-result-object v1

    .line 52
    .local v1, "tcmDaemon":Lcom/android/server/qrom/tcm/ITcmDaemon;
    if-eqz v1, :cond_3

    .line 53
    const-string v2, "tcmstub"

    const-string v3, "add qrom server as system server"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    sget-object v2, Lcom/android/server/qrom/tcm/TestService;->gITestService:Lcom/android/server/qrom/tcm/ITestService;

    if-nez v2, :cond_1

    .line 58
    const-class v3, Lcom/android/server/qrom/tcm/TestService;

    monitor-enter v3

    .line 59
    :try_start_0
    sget-object v2, Lcom/android/server/qrom/tcm/TestService;->gITestService:Lcom/android/server/qrom/tcm/ITestService;

    if-nez v2, :cond_0

    .line 60
    new-instance v2, Lcom/android/server/qrom/tcm/TestService;

    invoke-direct {v2, p0}, Lcom/android/server/qrom/tcm/TestService;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/android/server/qrom/tcm/TestService;->gITestService:Lcom/android/server/qrom/tcm/ITestService;

    .line 61
    const-string v2, "Test"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 62
    const-string v2, "Test"

    sget-object v4, Lcom/android/server/qrom/tcm/TestService;->gITestService:Lcom/android/server/qrom/tcm/ITestService;

    invoke-interface {v4}, Lcom/android/server/qrom/tcm/ITestService;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 63
    const-string v2, "tcmstub"

    const-string v4, "add Test Service success"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_1
    :goto_1
    return-void

    .line 46
    .end local v1    # "tcmDaemon":Lcom/android/server/qrom/tcm/ITcmDaemon;
    :cond_2
    const-string v2, "tcmstub"

    const-string v3, "getApplicationContext is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .restart local v1    # "tcmDaemon":Lcom/android/server/qrom/tcm/ITcmDaemon;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 70
    :cond_3
    const-string v2, "tcmstub"

    const-string v3, "tcmDaemon == null, failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public getDb()I
    .locals 1

    .prologue
    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getMsg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 165
    const-string v0, ""

    return-object v0
.end method

.method public initReceiver(Landroid/content/Context;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 85
    iget-object v1, p0, Lcom/android/server/qrom/tcm/TestService;->mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    if-nez v1, :cond_0

    .line 86
    new-instance v1, Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    invoke-direct {v1}, Lcom/android/server/qrom/tcm/QROMProcessReceiver;-><init>()V

    iput-object v1, p0, Lcom/android/server/qrom/tcm/TestService;->mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    .line 87
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 88
    .local v0, "recevierFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v1, "tcmstub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QROMProcessReceiver regiester context is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v1, p0, Lcom/android/server/qrom/tcm/TestService;->mQROMProcessReceiver:Lcom/android/server/qrom/tcm/QROMProcessReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 94
    const-string v1, "tcmstub"

    const-string v2, "QROMProcessReceiver regiester success"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v0    # "recevierFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 146
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v4, "test.txt"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 148
    const-string v4, "tcmstub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QROMProcessReceiver Create the file:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 152
    :cond_0
    const-string v3, "abcd"

    .line 154
    .local v3, "strContent":Ljava/lang/String;
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v2, v1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 155
    .local v2, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 156
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/RandomAccessFile;->write([B)V

    .line 157
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "strContent":Ljava/lang/String;
    :goto_0
    return-void

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "tcmstub"

    const-string v5, "QROMProcessReceiver Error on write File."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setValue(I)V
    .locals 4
    .param p1, "val"    # I

    .prologue
    .line 136
    const-string v1, "tcmstub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QROMProcessReceiver setValue "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 139
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 141
    iget-object v1, p0, Lcom/android/server/qrom/tcm/TestService;->mHandler:Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/qrom/tcm/TestService$TestWorkerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    return-void
.end method

.method public writeDb(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 170
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 171
    return-void
.end method

.method public writeFileTest()V
    .locals 8

    .prologue
    .line 112
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v5, "/data/system/qrom/test.txt"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 114
    const-string v5, "tcmstub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QROMProcessReceiver Create the file:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 118
    :cond_0
    const-string v3, "abcd"

    .line 120
    .local v3, "strContent":Ljava/lang/String;
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v5, "rw"

    invoke-direct {v2, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 121
    .local v2, "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/RandomAccessFile;->write([B)V

    .line 123
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 125
    new-instance v2, Ljava/io/RandomAccessFile;

    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    const-string v5, "rw"

    invoke-direct {v2, v1, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .restart local v2    # "raf":Ljava/io/RandomAccessFile;
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 127
    .local v4, "strText":Ljava/lang/String;
    const-string v5, "tcmstub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QROMProcessReceiver current file content is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "raf":Ljava/io/RandomAccessFile;
    .end local v3    # "strContent":Ljava/lang/String;
    .end local v4    # "strText":Ljava/lang/String;
    :goto_0
    return-void

    .line 130
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "tcmstub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "QROMProcessReceiver file test exception"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
