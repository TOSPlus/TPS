.class public Lcom/android/commands/monkey/Monkey;
.super Ljava/lang/Object;
.source "Monkey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/commands/monkey/Monkey$1;,
        Lcom/android/commands/monkey/Monkey$ActivityController;
    }
.end annotation


# static fields
.field private static final DEBUG_ALLOW_ANY_RESTARTS:I

.field private static final DEBUG_ALLOW_ANY_STARTS:I

.field private static final TOMBSTONES_PATH:Ljava/io/File;

.field public static currentIntent:Landroid/content/Intent;

.field public static currentPackage:Ljava/lang/String;


# instance fields
.field private mAbort:Z

.field private mAm:Landroid/app/IActivityManager;

.field private mArgs:[Ljava/lang/String;

.field private mBugreportFrequency:J

.field mCount:I

.field private mCountEvents:Z

.field private mCurArgData:Ljava/lang/String;

.field mDeviceSleepTime:J

.field mDroppedFlipEvents:J

.field mDroppedKeyEvents:J

.field mDroppedPointerEvents:J

.field mDroppedRotationEvents:J

.field mDroppedTrackballEvents:J

.field mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

.field mFactors:[F

.field private mGenerateHprof:Z

.field private mGetPeriodicBugreport:Z

.field private mIgnoreCrashes:Z

.field private mIgnoreNativeCrashes:Z

.field private mIgnoreSecurityExceptions:Z

.field private mIgnoreTimeouts:Z

.field private mInvalidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mKillProcessAfterError:Z

.field private mMainApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mMainCategories:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorNativeCrashes:Z

.field private mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

.field private mNextArg:I

.field private mPkgBlacklistFile:Ljava/lang/String;

.field private mPkgWhitelistFile:Ljava/lang/String;

.field private mPm:Landroid/content/pm/IPackageManager;

.field mProfileWaitTime:J

.field mRandom:Ljava/util/Random;

.field mRandomizeScript:Z

.field mRandomizeThrottle:Z

.field private mReportProcessName:Ljava/lang/String;

.field private mRequestAnrBugreport:Z

.field private mRequestAnrTraces:Z

.field private mRequestAppCrashBugreport:Z

.field private mRequestBugreport:Z

.field private mRequestDumpsysMemInfo:Z

.field private mRequestPeriodicBugreport:Z

.field private mRequestProcRank:Z

.field private mRequestWatchdogBugreport:Z

.field private mScriptFileNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mScriptLog:Z

.field mSeed:J

.field private mSendNoEvents:Z

.field private mServerPort:I

.field private mSetupFileName:Ljava/lang/String;

.field mThrottle:J

.field private mTombstones:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValidPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVerbose:I

.field private mWatchdogWaiting:Z

.field private mWm:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 244
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/tombstones"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 121
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    .line 127
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    .line 133
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    .line 139
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    .line 145
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    .line 151
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    .line 154
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 159
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestPeriodicBugreport:Z

    .line 162
    const-wide/16 v0, 0xa

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    .line 170
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    .line 185
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    .line 188
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    .line 194
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    .line 197
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 200
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    .line 203
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 206
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 209
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 212
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedKeyEvents:J

    .line 214
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedPointerEvents:J

    .line 216
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedTrackballEvents:J

    .line 218
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedFlipEvents:J

    .line 220
    iput-wide v3, p0, Lcom/android/commands/monkey/Monkey;->mDroppedRotationEvents:J

    .line 223
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    .line 226
    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    .line 228
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    .line 230
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    .line 233
    iput-boolean v2, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    .line 236
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    .line 239
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    .line 242
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    .line 246
    iput-object v5, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 248
    const/16 v0, 0xb

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    .line 252
    new-instance v0, Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    invoke-direct {v0}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;-><init>()V

    iput-object v0, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    .line 281
    return-void
.end method

.method static synthetic access$000(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Z
    .registers 3
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/commands/monkey/Monkey;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestProcRank:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrBugreport:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestWatchdogBugreport:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mWatchdogWaiting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mAbort:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAppCrashBugreport:Z

    return p1
.end method

.method static synthetic access$602(Lcom/android/commands/monkey/Monkey;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/commands/monkey/Monkey;->mReportProcessName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/commands/monkey/Monkey;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestAnrTraces:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/commands/monkey/Monkey;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/commands/monkey/Monkey;
    .param p1, "x1"    # Z

    .prologue
    .line 60
    iput-boolean p1, p0, Lcom/android/commands/monkey/Monkey;->mRequestDumpsysMemInfo:Z

    return p1
.end method

.method private checkEnteringPackage(Ljava/lang/String;)Z
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 267
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 275
    :cond_11
    :goto_11
    return v0

    .line 270
    :cond_12
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_22

    .line 271
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 275
    :cond_22
    const/4 v0, 0x1

    goto :goto_11
.end method

.method private checkInternalConfiguration()Z
    .registers 2

    .prologue
    .line 947
    const/4 v0, 0x1

    return v0
.end method

.method private checkNativeCrashes()Z
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 1223
    sget-object v7, Lcom/android/commands/monkey/Monkey;->TOMBSTONES_PATH:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v5

    .line 1227
    .local v5, "tombstones":[Ljava/lang/String;
    if-eqz v5, :cond_c

    array-length v7, v5

    if-nez v7, :cond_10

    .line 1228
    :cond_c
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    .line 1243
    :goto_f
    return v4

    .line 1233
    :cond_10
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 1234
    .local v3, "newStones":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_18
    if-ge v1, v2, :cond_22

    aget-object v6, v0, v1

    .line 1235
    .local v6, "x":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1238
    .end local v6    # "x":Ljava/lang/String;
    :cond_22
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    if-eqz v7, :cond_2e

    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    invoke-virtual {v7, v3}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_2f

    :cond_2e
    const/4 v4, 0x1

    .line 1241
    .local v4, "result":Z
    :cond_2f
    iput-object v3, p0, Lcom/android/commands/monkey/Monkey;->mTombstones:Ljava/util/HashSet;

    goto :goto_f
.end method

.method private commandLineReport(Ljava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "reportName"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 439
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 440
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v7

    .line 441
    .local v7, "rt":Ljava/lang/Runtime;
    const/4 v4, 0x0

    .line 446
    .local v4, "logOutput":Ljava/io/Writer;
    :try_start_1d
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v6

    .line 448
    .local v6, "p":Ljava/lang/Process;
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_3e

    .line 449
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/FileWriter;

    new-instance v11, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getLegacyExternalStorageDirectory()Ljava/io/File;

    move-result-object v12

    invoke-direct {v11, v12, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v12, 0x1

    invoke-direct {v10, v11, v12}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v5, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .end local v4    # "logOutput":Ljava/io/Writer;
    .local v5, "logOutput":Ljava/io/Writer;
    move-object v4, v5

    .line 454
    .end local v5    # "logOutput":Ljava/io/Writer;
    .restart local v4    # "logOutput":Ljava/io/Writer;
    :cond_3e
    invoke-virtual {v6}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    .line 455
    .local v3, "inStream":Ljava/io/InputStream;
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 456
    .local v2, "inReader":Ljava/io/InputStreamReader;
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 458
    .local v1, "inBuffer":Ljava/io/BufferedReader;
    :goto_4c
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    .local v8, "s":Ljava/lang/String;
    if-eqz v8, :cond_8e

    .line 459
    iget-boolean v10, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    if-eqz v10, :cond_88

    .line 460
    invoke-virtual {v4, v8}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 461
    const-string v10, "\n"

    invoke-virtual {v4, v10}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_5e} :catch_5f

    goto :goto_4c

    .line 473
    .end local v1    # "inBuffer":Ljava/io/BufferedReader;
    .end local v2    # "inReader":Ljava/io/InputStreamReader;
    .end local v3    # "inStream":Ljava/io/InputStream;
    .end local v6    # "p":Ljava/lang/Process;
    .end local v8    # "s":Ljava/lang/String;
    :catch_5f
    move-exception v0

    .line 474
    .local v0, "e":Ljava/lang/Exception;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Exception from "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 477
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_87
    :goto_87
    return-void

    .line 463
    .restart local v1    # "inBuffer":Ljava/io/BufferedReader;
    .restart local v2    # "inReader":Ljava/io/InputStreamReader;
    .restart local v3    # "inStream":Ljava/io/InputStream;
    .restart local v6    # "p":Ljava/lang/Process;
    .restart local v8    # "s":Ljava/lang/String;
    :cond_88
    :try_start_88
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_4c

    .line 467
    :cond_8e
    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    move-result v9

    .line 468
    .local v9, "status":I
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " status was "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 470
    if-eqz v4, :cond_87

    .line 471
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_b9} :catch_5f

    goto :goto_87
.end method

.method private getBugreport(Ljava/lang/String;)V
    .registers 6
    .param p1, "reportName"    # Ljava/lang/String;

    .prologue
    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/commands/monkey/MonkeyUtils;->toCalendarTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 496
    const-string v1, "[ ,:]"

    const-string v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    .local v0, "bugreportName":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bugreport"

    invoke-direct {p0, v1, v2}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    return-void
.end method

.method private getMainApps()Z
    .registers 15

    .prologue
    .line 997
    :try_start_0
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 998
    .local v0, "N":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v0, :cond_104

    .line 999
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.MAIN"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1000
    .local v6, "intent":Landroid/content/Intent;
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1001
    .local v3, "category":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_21

    .line 1002
    invoke-virtual {v6, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1004
    :cond_21
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-interface {v10, v6, v11, v12, v13}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;

    move-result-object v7

    .line 1006
    .local v7, "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v7, :cond_35

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_50

    .line 1007
    :cond_35
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Warning: no activities found for category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 998
    :cond_4d
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1010
    :cond_50
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_6d

    .line 1011
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "// Selecting main activities from category "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1013
    :cond_6d
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    .line 1014
    .local v1, "NA":I
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_72
    if-ge v2, v1, :cond_4d

    .line 1015
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1016
    .local v9, "r":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ComponentInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v10, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 1017
    .local v8, "packageName":Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->checkEnteringPackage(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c8

    .line 1018
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x2

    if-lt v10, v11, :cond_b7

    .line 1019
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "//   + Using main activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1022
    :cond_b7
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    new-instance v11, Landroid/content/ComponentName;

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-direct {v11, v8, v12}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1014
    :cond_c5
    :goto_c5
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 1024
    :cond_c8
    iget v10, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v11, 0x3

    if-lt v10, v11, :cond_c5

    .line 1025
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "//   - NOT USING main activity "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " (from package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_f9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f9} :catch_fa

    goto :goto_c5

    .line 1031
    .end local v0    # "N":I
    .end local v1    # "NA":I
    .end local v2    # "a":I
    .end local v3    # "category":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v7    # "mainApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v8    # "packageName":Ljava/lang/String;
    .end local v9    # "r":Landroid/content/pm/ResolveInfo;
    :catch_fa
    move-exception v4

    .line 1032
    .local v4, "e":Landroid/os/RemoteException;
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "** Failed talking with package manager!"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1033
    const/4 v10, 0x0

    .line 1041
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_103
    return v10

    .line 1036
    .restart local v0    # "N":I
    .restart local v5    # "i":I
    :cond_104
    iget-object v10, p0, Lcom/android/commands/monkey/Monkey;->mMainApps:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-nez v10, :cond_115

    .line 1037
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "** No activities found to run, monkey aborted."

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1038
    const/4 v10, 0x0

    goto :goto_103

    .line 1041
    :cond_115
    const/4 v10, 0x1

    goto :goto_103
.end method

.method private getSystemInterfaces()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 956
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    .line 957
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    if-nez v2, :cond_13

    .line 958
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to activity manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 985
    :goto_12
    return v1

    .line 963
    :cond_13
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    .line 964
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mWm:Landroid/view/IWindowManager;

    if-nez v2, :cond_2b

    .line 965
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to window manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 970
    :cond_2b
    const-string v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    .line 971
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mPm:Landroid/content/pm/IPackageManager;

    if-nez v2, :cond_43

    .line 972
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Error: Unable to connect to package manager; is the system running?"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 978
    :cond_43
    :try_start_43
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    new-instance v3, Lcom/android/commands/monkey/Monkey$ActivityController;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/commands/monkey/Monkey$ActivityController;-><init>(Lcom/android/commands/monkey/Monkey;Lcom/android/commands/monkey/Monkey$1;)V

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->setActivityController(Landroid/app/IActivityController;)V

    .line 979
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mNetworkMonitor:Lcom/android/commands/monkey/MonkeyNetworkMonitor;

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mAm:Landroid/app/IActivityManager;

    invoke-virtual {v2, v3}, Lcom/android/commands/monkey/MonkeyNetworkMonitor;->register(Landroid/app/IActivityManager;)V
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_43 .. :try_end_55} :catch_57

    .line 985
    const/4 v1, 0x1

    goto :goto_12

    .line 980
    :catch_57
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "** Failed talking with activity manager!"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_12
.end method

.method private static loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z
    .registers 8
    .param p0, "fileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 893
    .local p1, "list":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 895
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_b} :catch_5c
    .catchall {:try_start_1 .. :try_end_b} :catchall_4b

    .line 897
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :cond_b
    :goto_b
    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "s":Ljava/lang/String;
    if-eqz v3, :cond_35

    .line 898
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 899
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_b

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 900
    invoke-virtual {p1, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_26} :catch_27
    .catchall {:try_start_b .. :try_end_26} :catchall_59

    goto :goto_b

    .line 903
    .end local v3    # "s":Ljava/lang/String;
    :catch_27
    move-exception v0

    move-object v1, v2

    .line 904
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .local v0, "ioe":Ljava/io/IOException;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_29
    :try_start_29
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_4b

    .line 905
    const/4 v4, 0x0

    .line 907
    if-eqz v1, :cond_34

    .line 909
    :try_start_31
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_44

    .line 915
    .end local v0    # "ioe":Ljava/io/IOException;
    :cond_34
    :goto_34
    return v4

    .line 907
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "s":Ljava/lang/String;
    :cond_35
    if-eqz v2, :cond_3a

    .line 909
    :try_start_37
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_37 .. :try_end_3a} :catch_3d

    .line 915
    :cond_3a
    :goto_3a
    const/4 v4, 0x1

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_34

    .line 910
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_3d
    move-exception v0

    .line 911
    .restart local v0    # "ioe":Ljava/io/IOException;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_3a

    .line 910
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "s":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_44
    move-exception v0

    .line 911
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_34

    .line 907
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_4b
    move-exception v4

    :goto_4c
    if-eqz v1, :cond_51

    .line 909
    :try_start_4e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52

    .line 912
    :cond_51
    :goto_51
    throw v4

    .line 910
    :catch_52
    move-exception v0

    .line 911
    .restart local v0    # "ioe":Ljava/io/IOException;
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_51

    .line 907
    .end local v0    # "ioe":Ljava/io/IOException;
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_59
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_4c

    .line 903
    :catch_5c
    move-exception v0

    goto :goto_29
.end method

.method private loadPackageLists()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 924
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-nez v1, :cond_d

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_19

    :cond_d
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 926
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "** Error: you can not specify a package blacklist together with a whitelist or individual packages (via -p)."

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 938
    :cond_18
    :goto_18
    return v0

    .line 930
    :cond_19
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 934
    :cond_27
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    if-eqz v1, :cond_35

    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-static {v1, v2}, Lcom/android/commands/monkey/Monkey;->loadPackageListFromFile(Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 938
    :cond_35
    const/4 v0, 0x1

    goto :goto_18
.end method

.method public static main([Ljava/lang/String;)V
    .registers 3
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    .line 507
    const-string v1, "com.android.commands.monkey"

    invoke-static {v1}, Landroid/os/Process;->setArgV0(Ljava/lang/String;)V

    .line 509
    new-instance v1, Lcom/android/commands/monkey/Monkey;

    invoke-direct {v1}, Lcom/android/commands/monkey/Monkey;-><init>()V

    invoke-direct {v1, p0}, Lcom/android/commands/monkey/Monkey;->run([Ljava/lang/String;)I

    move-result v0

    .line 510
    .local v0, "resultCode":I
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 511
    return-void
.end method

.method private nextArg()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1330
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_9

    .line 1331
    const/4 v0, 0x0

    .line 1335
    :goto_8
    return-object v0

    .line 1333
    :cond_9
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1334
    .local v0, "arg":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    goto :goto_8
.end method

.method private nextOption()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 1265
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v3, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_c

    move-object v0, v1

    .line 1286
    :goto_b
    return-object v0

    .line 1268
    :cond_c
    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v3, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v2, v3

    .line 1269
    .local v0, "arg":Ljava/lang/String;
    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    move-object v0, v1

    .line 1270
    goto :goto_b

    .line 1272
    :cond_1c
    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 1273
    const-string v2, "--"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object v0, v1

    .line 1274
    goto :goto_b

    .line 1276
    :cond_2c
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_4f

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4f

    .line 1277
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_4c

    .line 1278
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1279
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 1281
    :cond_4c
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    goto :goto_b

    .line 1285
    :cond_4f
    iput-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    goto :goto_b
.end method

.method private nextOptionData()Ljava/lang/String;
    .registers 4

    .prologue
    .line 1295
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 1296
    iget-object v0, p0, Lcom/android/commands/monkey/Monkey;->mCurArgData:Ljava/lang/String;

    .line 1303
    :goto_6
    return-object v0

    .line 1298
    :cond_7
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    iget-object v2, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_10

    .line 1299
    const/4 v0, 0x0

    goto :goto_6

    .line 1301
    :cond_10
    iget-object v1, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    iget v2, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    aget-object v0, v1, v2

    .line 1302
    .local v0, "data":Ljava/lang/String;
    iget v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    goto :goto_6
.end method

.method private nextOptionLong(Ljava/lang/String;)J
    .registers 8
    .param p1, "opt"    # Ljava/lang/String;

    .prologue
    .line 1316
    :try_start_0
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-wide v1

    .line 1321
    .local v1, "result":J
    return-wide v1

    .line 1317
    .end local v1    # "result":J
    :catch_9
    move-exception v0

    .line 1318
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "** Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not a number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1319
    throw v0
.end method

.method private processOptions()Z
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 752
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    array-length v7, v7

    if-ge v7, v6, :cond_b

    .line 753
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    .line 882
    :goto_a
    return v5

    .line 759
    :cond_b
    :goto_b
    :try_start_b
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOption()Ljava/lang/String;

    move-result-object v4

    .local v4, "opt":Ljava/lang/String;
    if-eqz v4, :cond_2e4

    .line 760
    const-string v7, "-s"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_43

    .line 761
    const-string v7, "Seed"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mSeed:J
    :try_end_21
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_21} :catch_22

    goto :goto_b

    .line 857
    .end local v4    # "opt":Ljava/lang/String;
    :catch_22
    move-exception v2

    .line 858
    .local v2, "ex":Ljava/lang/RuntimeException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Error: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 859
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto :goto_a

    .line 762
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    .restart local v4    # "opt":Ljava/lang/String;
    :cond_43
    :try_start_43
    const-string v7, "-p"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    .line 763
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 764
    :cond_55
    const-string v7, "-c"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_67

    .line 765
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 766
    :cond_67
    const-string v7, "-v"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_76

    .line 767
    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    goto :goto_b

    .line 768
    :cond_76
    const-string v7, "--ignore-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_82

    .line 769
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreCrashes:Z

    goto :goto_b

    .line 770
    :cond_82
    const-string v7, "--ignore-timeouts"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    .line 771
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreTimeouts:Z

    goto/16 :goto_b

    .line 772
    :cond_8f
    const-string v7, "--ignore-security-exceptions"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9c

    .line 773
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreSecurityExceptions:Z

    goto/16 :goto_b

    .line 774
    :cond_9c
    const-string v7, "--monitor-native-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a9

    .line 775
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mMonitorNativeCrashes:Z

    goto/16 :goto_b

    .line 776
    :cond_a9
    const-string v7, "--ignore-native-crashes"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b6

    .line 777
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mIgnoreNativeCrashes:Z

    goto/16 :goto_b

    .line 778
    :cond_b6
    const-string v7, "--kill-process-after-error"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 779
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mKillProcessAfterError:Z

    goto/16 :goto_b

    .line 780
    :cond_c3
    const-string v7, "--hprof"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d0

    .line 781
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGenerateHprof:Z

    goto/16 :goto_b

    .line 782
    :cond_d0
    const-string v7, "--pct-touch"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e7

    .line 783
    const/4 v3, 0x0

    .line 784
    .local v3, "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "touch events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 785
    .end local v3    # "i":I
    :cond_e7
    const-string v7, "--pct-motion"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_fe

    .line 786
    const/4 v3, 0x1

    .line 787
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "motion events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 788
    .end local v3    # "i":I
    :cond_fe
    const-string v7, "--pct-trackball"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_115

    .line 789
    const/4 v3, 0x3

    .line 790
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "trackball events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 791
    .end local v3    # "i":I
    :cond_115
    const-string v7, "--pct-rotation"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12c

    .line 792
    const/4 v3, 0x4

    .line 793
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "screen rotation events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 794
    .end local v3    # "i":I
    :cond_12c
    const-string v7, "--pct-syskeys"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_143

    .line 795
    const/4 v3, 0x7

    .line 796
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "system (key) operations percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 797
    .end local v3    # "i":I
    :cond_143
    const-string v7, "--pct-nav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15a

    .line 798
    const/4 v3, 0x5

    .line 799
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "nav events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 800
    .end local v3    # "i":I
    :cond_15a
    const-string v7, "--pct-majornav"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_171

    .line 801
    const/4 v3, 0x6

    .line 802
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "major nav events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 803
    .end local v3    # "i":I
    :cond_171
    const-string v7, "--pct-appswitch"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_189

    .line 804
    const/16 v3, 0x8

    .line 805
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "app switch events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 806
    .end local v3    # "i":I
    :cond_189
    const-string v7, "--pct-flip"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a1

    .line 807
    const/16 v3, 0x9

    .line 808
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "keyboard flip percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 809
    .end local v3    # "i":I
    :cond_1a1
    const-string v7, "--pct-anyevent"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b9

    .line 810
    const/16 v3, 0xa

    .line 811
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "any events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 812
    .end local v3    # "i":I
    :cond_1b9
    const-string v7, "--pct-pinchzoom"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d0

    .line 813
    const/4 v3, 0x2

    .line 814
    .restart local v3    # "i":I
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const-string v8, "pinch zoom events percentage"

    invoke-direct {p0, v8}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v8

    neg-long v8, v8

    long-to-float v8, v8

    aput v8, v7, v3

    goto/16 :goto_b

    .line 815
    .end local v3    # "i":I
    :cond_1d0
    const-string v7, "--pkg-blacklist-file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e0

    .line 816
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mPkgBlacklistFile:Ljava/lang/String;

    goto/16 :goto_b

    .line 817
    :cond_1e0
    const-string v7, "--pkg-whitelist-file"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f0

    .line 818
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mPkgWhitelistFile:Ljava/lang/String;

    goto/16 :goto_b

    .line 819
    :cond_1f0
    const-string v7, "--throttle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_202

    .line 820
    const-string v7, "delay (in milliseconds) to wait between events"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    goto/16 :goto_b

    .line 821
    :cond_202
    const-string v7, "--randomize-throttle"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20f

    .line 822
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    goto/16 :goto_b

    .line 823
    :cond_20f
    const-string v7, "--wait-dbg"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 825
    const-string v7, "--dbg-no-events"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_224

    .line 826
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mSendNoEvents:Z

    goto/16 :goto_b

    .line 827
    :cond_224
    const-string v7, "--port"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_237

    .line 828
    const-string v7, "Server port to listen on for commands"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    long-to-int v7, v7

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    goto/16 :goto_b

    .line 829
    :cond_237
    const-string v7, "--setup"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_247

    .line 830
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    goto/16 :goto_b

    .line 831
    :cond_247
    const-string v7, "-f"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25a

    .line 832
    iget-object v7, p0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextOptionData()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    .line 833
    :cond_25a
    const-string v7, "--profile-wait"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_26c

    .line 834
    const-string v7, "Profile delay (in milliseconds) to wait between user action"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    goto/16 :goto_b

    .line 836
    :cond_26c
    const-string v7, "--device-sleep-time"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_27e

    .line 837
    const-string v7, "Device sleep time(in milliseconds)"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    goto/16 :goto_b

    .line 839
    :cond_27e
    const-string v7, "--randomize-script"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_28b

    .line 840
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    goto/16 :goto_b

    .line 841
    :cond_28b
    const-string v7, "--script-log"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_298

    .line 842
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mScriptLog:Z

    goto/16 :goto_b

    .line 843
    :cond_298
    const-string v7, "--bugreport"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2a5

    .line 844
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mRequestBugreport:Z

    goto/16 :goto_b

    .line 845
    :cond_2a5
    const-string v7, "--periodic-bugreport"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2ba

    .line 846
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/commands/monkey/Monkey;->mGetPeriodicBugreport:Z

    .line 847
    const-string v7, "Number of iterations"

    invoke-direct {p0, v7}, Lcom/android/commands/monkey/Monkey;->nextOptionLong(Ljava/lang/String;)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/commands/monkey/Monkey;->mBugreportFrequency:J

    goto/16 :goto_b

    .line 848
    :cond_2ba
    const-string v6, "-h"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2c7

    .line 849
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_a

    .line 852
    :cond_2c7
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "** Error: Unknown option: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 853
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V
    :try_end_2e2
    .catch Ljava/lang/RuntimeException; {:try_start_43 .. :try_end_2e2} :catch_22

    goto/16 :goto_a

    .line 865
    :cond_2e4
    iget v7, p0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_301

    .line 866
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->nextArg()Ljava/lang/String;

    move-result-object v0

    .line 867
    .local v0, "countStr":Ljava/lang/String;
    if-nez v0, :cond_2fb

    .line 868
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "** Error: Count not specified"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 869
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_a

    .line 874
    :cond_2fb
    :try_start_2fb
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/android/commands/monkey/Monkey;->mCount:I
    :try_end_301
    .catch Ljava/lang/NumberFormatException; {:try_start_2fb .. :try_end_301} :catch_304

    .end local v0    # "countStr":Ljava/lang/String;
    :cond_301
    move v5, v6

    .line 882
    goto/16 :goto_a

    .line 875
    .restart local v0    # "countStr":Ljava/lang/String;
    :catch_304
    move-exception v1

    .line 876
    .local v1, "e":Ljava/lang/NumberFormatException;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "** Error: Count is not a number"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 877
    invoke-direct {p0}, Lcom/android/commands/monkey/Monkey;->showUsage()V

    goto/16 :goto_a
.end method

.method private reportAnrTraces()V
    .registers 3

    .prologue
    .line 411
    const-wide/16 v0, 0x1388

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_d

    .line 414
    :goto_5
    const-string v0, "anr traces"

    const-string v1, "cat /data/anr/traces.txt"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-void

    .line 412
    :catch_d
    move-exception v0

    goto :goto_5
.end method

.method private reportDumpsysMemInfo()V
    .registers 3

    .prologue
    .line 425
    const-string v0, "meminfo"

    const-string v1, "dumpsys meminfo"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    return-void
.end method

.method private reportProcRank()V
    .registers 3

    .prologue
    .line 402
    const-string v0, "procrank"

    const-string v1, "procrank"

    invoke-direct {p0, v0, v1}, Lcom/android/commands/monkey/Monkey;->commandLineReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private run([Ljava/lang/String;)I
    .registers 24
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 521
    move-object/from16 v14, p1

    .local v14, "arr$":[Ljava/lang/String;
    array-length v0, v14

    move/from16 v20, v0

    .local v20, "len$":I
    const/16 v18, 0x0

    .local v18, "i$":I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1f

    aget-object v21, v14, v18

    .line 522
    .local v21, "s":Ljava/lang/String;
    const-string v2, "--wait-dbg"

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 523
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 521
    :cond_1c
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 528
    .end local v21    # "s":Ljava/lang/String;
    :cond_1f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    .line 529
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 530
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 531
    const-wide/16 v2, 0x0

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    .line 534
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/commands/monkey/Monkey;->mArgs:[Ljava/lang/String;

    .line 535
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mNextArg:I

    .line 538
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_43
    const/16 v2, 0xb

    move/from16 v0, v17

    if-ge v0, v2, :cond_54

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mFactors:[F

    const/high16 v3, 0x3f800000

    aput v3, v2, v17

    .line 538
    add-int/lit8 v17, v17, 0x1

    goto :goto_43

    .line 542
    :cond_54
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->processOptions()Z

    move-result v2

    if-nez v2, :cond_5c

    .line 543
    const/4 v15, -0x1

    .line 741
    :goto_5b
    return v15

    .line 546
    :cond_5c
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->loadPackageLists()Z

    move-result v2

    if-nez v2, :cond_64

    .line 547
    const/4 v15, -0x1

    goto :goto_5b

    .line 551
    :cond_64
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_80

    .line 552
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    const-string v3, "android.intent.category.MONKEY"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    :cond_80
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_98

    .line 557
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static/range {p0 .. p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    .line 560
    :cond_98
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    if-lez v2, :cond_16d

    .line 561
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":Monkey: seed="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 562
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_ff

    .line 563
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mValidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 564
    .local v19, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_da
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    .line 565
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":AllowPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_da

    .line 568
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_ff
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_136

    .line 569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mInvalidPackages:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 570
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_111
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_136

    .line 571
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":DisallowPackage: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_111

    .line 574
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_16d

    .line 575
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mMainCategories:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 576
    .restart local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_148
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16d

    .line 577
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ":IncludeCategory: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_148

    .line 582
    .end local v19    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_16d
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->checkInternalConfiguration()Z

    move-result v2

    if-nez v2, :cond_176

    .line 583
    const/4 v15, -0x2

    goto/16 :goto_5b

    .line 586
    :cond_176
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getSystemInterfaces()Z

    move-result v2

    if-nez v2, :cond_17f

    .line 587
    const/4 v15, -0x3

    goto/16 :goto_5b

    .line 590
    :cond_17f
    invoke-direct/range {p0 .. p0}, Lcom/android/commands/monkey/Monkey;->getMainApps()Z

    move-result v2

    if-nez v2, :cond_188

    .line 591
    const/4 v15, -0x4

    goto/16 :goto_5b

    .line 594
    :cond_188
    new-instance v2, Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-direct {v2, v3, v4}, Ljava/util/Random;-><init>(J)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    .line 596
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_1eb

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1eb

    .line 598
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    invoke-direct/range {v2 .. v11}, Lcom/android/commands/monkey/MonkeySourceScript;-><init>(Ljava/util/Random;Ljava/lang/String;JZJJ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 600
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 602
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    .line 643
    :goto_1de
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    invoke-interface {v2}, Lcom/android/commands/monkey/MonkeyEventSource;->validate()Z

    move-result v2

    if-nez v2, :cond_30d

    .line 644
    const/4 v15, -0x5

    goto/16 :goto_5b

    .line 603
    :cond_1eb
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    if-eqz v2, :cond_26c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_26c

    .line 604
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    if-eqz v2, :cond_246

    .line 605
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mSetupFileName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v9, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v11, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v2 .. v13}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/lang/String;Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    .line 608
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    .line 614
    :goto_235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    invoke-interface {v2, v3}, Lcom/android/commands/monkey/MonkeyEventSource;->setVerbose(I)V

    .line 615
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/commands/monkey/Monkey;->mCountEvents:Z

    goto :goto_1de

    .line 610
    :cond_246
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceRandomScript;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/commands/monkey/Monkey;->mScriptFileNames:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mThrottle:J

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeThrottle:Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/commands/monkey/Monkey;->mRandom:Ljava/util/Random;

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/commands/monkey/Monkey;->mProfileWaitTime:J

    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/commands/monkey/Monkey;->mDeviceSleepTime:J

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/commands/monkey/Monkey;->mRandomizeScript:Z

    invoke-direct/range {v2 .. v12}, Lcom/android/commands/monkey/MonkeySourceRandomScript;-><init>(Ljava/util/ArrayList;JZLjava/util/Random;JJZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;

    goto :goto_235

    .line 616
    :cond_26c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_294

    .line 618
    :try_start_273
    new-instance v2, Lcom/android/commands/monkey/MonkeySourceNetwork;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/commands/monkey/Monkey;->mServerPort:I

    invoke-direct {v2, v3}, Lcom/android/commands/monkey/MonkeySourceNetwork;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/commands/monkey/Monkey;->mEventSource:Lcom/android/commands/monkey/MonkeyEventSource;
    :try_end_280
    .catch Ljava/io/IOException; {:try_start_273 .. :try_end_280} :catch_289

    .line 623
    const v2, 0x7fffffff

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/commands/monkey/Monkey;->mCount:I

    goto/16 :goto_1de

    .line 619
    :catch_289
    move-exception v16

    .line 620
    .local v16, "e":Ljava/io/IOException;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Error binding to network socket."

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 621
    const/4 v15, -0x5

    goto/16 :goto_5b

    .line 626
    .end local v16    # "e":Ljava/io/IOException;
    :cond_294
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/commands/monkey/Monkey;->mVerbose:I

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2b7

    .line 627
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "// Seeded: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/commands/monkey/Monkey;->mSeed:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilde