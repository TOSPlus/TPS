.class public Lcom/android/server/EntropyMixer;
.super Landroid/os/Binder;
.source "EntropyMixer.java"


# static fields
.field private static final ENTROPY_WHAT:I = 0x1

.field private static final ENTROPY_WRITE_PERIOD:I = 0xa4cb80

.field private static final START_NANOTIME:J

.field private static final START_TIME:J

.field private static final TAG:Ljava/lang/String; = "EntropyMixer"


# instance fields
.field private final entropyFile:Ljava/lang/String;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private final randomDevice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_TIME:J

    .line 57
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/EntropyMixer;->getSystemDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entropy.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/dev/urandom"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "entropyFile"    # Ljava/lang/String;
    .param p3, "randomDevice"    # Ljava/lang/String;

    .prologue
    .line 89
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 65
    new-instance v1, Lcom/android/server/EntropyMixer$1;

    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$1;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    .line 77
    new-instance v1, Lcom/android/server/EntropyMixer$2;

    invoke-direct {v1, p0}, Lcom/android/server/EntropyMixer$2;-><init>(Lcom/android/server/EntropyMixer;)V

    iput-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 90
    if-nez p3, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "randomDevice"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    if-nez p2, :cond_1

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "entropyFile"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :cond_1
    iput-object p3, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    .line 95
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->loadInitialEntropy()V

    .line 96
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->addDeviceSpecificEntropy()V

    .line 97
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    .line 98
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v0, "broadcastFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EntropyMixer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EntropyMixer;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->writeEntropy()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/EntropyMixer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/EntropyMixer;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/android/server/EntropyMixer;->scheduleEntropyWriter()V

    return-void
.end method

.method private addDeviceSpecificEntropy()V
    .locals 5

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, "out":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v1    # "out":Ljava/io/PrintWriter;
    .local v2, "out":Ljava/io/PrintWriter;
    :try_start_1
    const-string v3, "Copyright (C) 2009 The Android Open Source Project"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 148
    const-string v3, "All Your Randomness Are Belong To Us"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    sget-wide v3, Lcom/android/server/EntropyMixer;->START_TIME:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 150
    sget-wide v3, Lcom/android/server/EntropyMixer;->START_NANOTIME:J

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 151
    const-string v3, "ro.serialno"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    const-string v3, "ro.bootmode"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    const-string v3, "ro.baseband"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    const-string v3, "ro.carrier"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    const-string v3, "ro.bootloader"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    const-string v3, "ro.hardware"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    const-string v3, "ro.revision"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    const-string v3, "ro.build.fingerprint"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 161
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/io/PrintWriter;->println(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 165
    if-eqz v2, :cond_0

    .line 166
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    :cond_0
    move-object v1, v2

    .line 169
    .end local v2    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    :cond_1
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v3, "EntropyMixer"

    const-string v4, "Unable to add device specific data to the entropy pool"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    if-eqz v1, :cond_1

    .line 166
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    goto :goto_0

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    if-eqz v1, :cond_2

    .line 166
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 165
    :cond_2
    throw v3

    .end local v1    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    goto :goto_2

    .line 162
    .end local v1    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "out":Ljava/io/PrintWriter;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "out":Ljava/io/PrintWriter;
    .restart local v1    # "out":Ljava/io/PrintWriter;
    goto :goto_1
.end method

.method private static getSystemDir()Ljava/lang/String;
    .locals 3

    .prologue
    .line 172
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 173
    .local v0, "dataDir":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 174
    .local v1, "systemDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 175
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private loadInitialEntropy()V
    .locals 4

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 118
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v1, "EntropyMixer"

    const-string v2, "No existing entropy file -- first boot?"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EntropyMixer"

    const-string v2, "Failure loading existing entropy file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private scheduleEntropyWriter()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 106
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 107
    iget-object v0, p0, Lcom/android/server/EntropyMixer;->mHandler:Landroid/os/Handler;

    const-wide/32 v1, 0xa4cb80

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 108
    return-void
.end method

.method private writeEntropy()V
    .locals 4

    .prologue
    .line 122
    :try_start_0
    const-string v1, "EntropyMixer"

    const-string v2, "Writing entropy..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/android/server/EntropyMixer;->randomDevice:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/EntropyMixer;->entropyFile:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/RandomBlock;->toFile(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "EntropyMixer"

    const-string v2, "Unable to write entropy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
