.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/IProcessStats$Stub;
.source "ProcessStatsService.java"


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field mProcessStats:Lcom/android/internal/app/ProcessStats;

.field mShuttingDown:Z

.field final mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 63
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .locals 2
    .param p1, "am"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"    # Ljava/io/File;

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/android/internal/app/IProcessStats$Stub;-><init>()V

    .line 71
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 74
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 82
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 83
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 84
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 85
    new-instance v0, Lcom/android/internal/app/ProcessStats;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    .line 86
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 87
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"    # J
    .param p4, "now"    # J
    .param p6, "reqPackage"    # Ljava/lang/String;
    .param p7, "isCompact"    # Z
    .param p8, "dumpDetails"    # Z
    .param p9, "dumpFullDetails"    # Z
    .param p10, "dumpAll"    # Z
    .param p11, "activeOnly"    # Z

    .prologue
    .line 535
    const-wide/16 v2, 0x3c

    mul-long/2addr v2, p2

    const-wide/16 v4, 0x3c

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    sget-wide v4, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v6, 0x2

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v9

    .line 537
    .local v9, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v9, :cond_0

    .line 538
    const-string v2, "Unable to build stats!"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    :goto_0
    return-void

    .line 541
    :cond_0
    new-instance v1, Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 542
    .local v1, "stats":Lcom/android/internal/app/ProcessStats;
    new-instance v10, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v10, v9}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 543
    .local v10, "stream":Ljava/io/InputStream;
    invoke-virtual {v1, v10}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 544
    iget-object v2, v1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 545
    const-string v2, "Failure reading: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 548
    :cond_1
    if-eqz p7, :cond_2

    .line 549
    move-object/from16 v0, p6

    invoke-virtual {v1, p1, v0}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    .line 551
    :cond_2
    if-nez p8, :cond_3

    if-eqz p9, :cond_5

    .line 552
    :cond_3
    if-nez p9, :cond_4

    const/4 v6, 0x1

    :goto_1
    move-object v2, p1

    move-object/from16 v3, p6

    move-wide v4, p4

    move/from16 v7, p10

    move/from16 v8, p11

    invoke-virtual/range {v1 .. v8}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    :cond_5
    move-object v2, p1

    move-object/from16 v3, p6

    move-wide v4, p4

    move/from16 v6, p11

    .line 554
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_0
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 560
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 561
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 562
    const-string v0, "    [--details] [--full-details] [--current] [--hours] [--active]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 563
    const-string v0, "    [--commit] [--reset] [--clear] [--write] [-h] [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 564
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 565
    const-string v0, "  --c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 568
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 569
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 570
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 571
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 572
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 573
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 575
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 577
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 578
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 579
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 581
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 582
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 584
    return-void
.end method

.method private dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 53
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 605
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    .line 607
    .local v11, "now":J
    const/16 v49, 0x0

    .line 608
    .local v49, "isCheckin":Z
    const/16 v21, 0x0

    .line 609
    .local v21, "isCompact":Z
    const/16 v50, 0x0

    .line 610
    .local v50, "isCsv":Z
    const/16 v41, 0x0

    .line 611
    .local v41, "currentOnly":Z
    const/16 v22, 0x0

    .line 612
    .local v22, "dumpDetails":Z
    const/16 v23, 0x0

    .line 613
    .local v23, "dumpFullDetails":Z
    const/16 v24, 0x0

    .line 614
    .local v24, "dumpAll":Z
    const/16 v38, 0x0

    .line 615
    .local v38, "aggregateHours":I
    const/16 v25, 0x0

    .line 616
    .local v25, "activeOnly":Z
    const/4 v13, 0x0

    .line 617
    .local v13, "reqPackage":Ljava/lang/String;
    const/4 v5, 0x0

    .line 618
    .local v5, "csvSepScreenStats":Z
    const/4 v2, 0x2

    new-array v6, v2, [I

    fill-array-data v6, :array_0

    .line 619
    .local v6, "csvScreenStats":[I
    const/4 v7, 0x0

    .line 620
    .local v7, "csvSepMemStats":Z
    const/4 v2, 0x1

    new-array v8, v2, [I

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v3, v8, v2

    .line 621
    .local v8, "csvMemStats":[I
    const/4 v9, 0x1

    .line 622
    .local v9, "csvSepProcStats":Z
    sget-object v10, Lcom/android/internal/app/ProcessStats;->ALL_PROC_STATES:[I

    .line 623
    .local v10, "csvProcStats":[I
    if-eqz p3, :cond_1c

    .line 624
    const/16 v48, 0x0

    .local v48, "i":I
    :goto_0
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v48

    if-ge v0, v2, :cond_1c

    .line 625
    aget-object v39, p3, v48

    .line 626
    .local v39, "arg":Ljava/lang/String;
    const-string v2, "--checkin"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 627
    const/16 v49, 0x1

    .line 624
    :goto_1
    add-int/lit8 v48, v48, 0x1

    goto :goto_0

    .line 628
    :cond_0
    const-string v2, "-c"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 629
    const/16 v21, 0x1

    goto :goto_1

    .line 630
    :cond_1
    const-string v2, "--csv"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 631
    const/16 v50, 0x1

    goto :goto_1

    .line 632
    :cond_2
    const-string v2, "--csv-screen"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 633
    add-int/lit8 v48, v48, 0x1

    .line 634
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v48

    if-lt v0, v2, :cond_4

    .line 635
    const-string v2, "Error: argument required for --csv-screen"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 908
    .end local v39    # "arg":Ljava/lang/String;
    .end local v48    # "i":I
    :cond_3
    :goto_2
    return-void

    .line 639
    .restart local v39    # "arg":Ljava/lang/String;
    .restart local v48    # "i":I
    :cond_4
    const/4 v2, 0x1

    new-array v0, v2, [Z

    move-object/from16 v51, v0

    .line 640
    .local v51, "sep":[Z
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v43, v0

    .line 641
    .local v43, "error":[Ljava/lang/String;
    sget-object v2, Lcom/android/internal/app/ProcessStats;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v4, p3, v48

    move-object/from16 v0, v51

    move-object/from16 v1, v43

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v6

    .line 643
    if-nez v6, :cond_5

    .line 644
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v48

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v43, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 648
    :cond_5
    const/4 v2, 0x0

    aget-boolean v5, v51, v2

    .line 649
    goto/16 :goto_1

    .end local v43    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_6
    const-string v2, "--csv-mem"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 650
    add-int/lit8 v48, v48, 0x1

    .line 651
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v48

    if-lt v0, v2, :cond_7

    .line 652
    const-string v2, "Error: argument required for --csv-mem"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto :goto_2

    .line 656
    :cond_7
    const/4 v2, 0x1

    new-array v0, v2, [Z

    move-object/from16 v51, v0

    .line 657
    .restart local v51    # "sep":[Z
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v43, v0

    .line 658
    .restart local v43    # "error":[Ljava/lang/String;
    sget-object v2, Lcom/android/internal/app/ProcessStats;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, p3, v48

    move-object/from16 v0, v51

    move-object/from16 v1, v43

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v8

    .line 659
    if-nez v8, :cond_8

    .line 660
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v48

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v43, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 661
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 664
    :cond_8
    const/4 v2, 0x0

    aget-boolean v7, v51, v2

    .line 665
    goto/16 :goto_1

    .end local v43    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_9
    const-string v2, "--csv-proc"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 666
    add-int/lit8 v48, v48, 0x1

    .line 667
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v48

    if-lt v0, v2, :cond_a

    .line 668
    const-string v2, "Error: argument required for --csv-proc"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 672
    :cond_a
    const/4 v2, 0x1

    new-array v0, v2, [Z

    move-object/from16 v51, v0

    .line 673
    .restart local v51    # "sep":[Z
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v43, v0

    .line 674
    .restart local v43    # "error":[Ljava/lang/String;
    sget-object v2, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v4, p3, v48

    move-object/from16 v0, v51

    move-object/from16 v1, v43

    invoke-static {v2, v3, v4, v0, v1}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v10

    .line 675
    if-nez v10, :cond_b

    .line 676
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v48

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v43, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 680
    :cond_b
    const/4 v2, 0x0

    aget-boolean v9, v51, v2

    .line 681
    goto/16 :goto_1

    .end local v43    # "error":[Ljava/lang/String;
    .end local v51    # "sep":[Z
    :cond_c
    const-string v2, "--details"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 682
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 683
    :cond_d
    const-string v2, "--full-details"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 684
    const/16 v23, 0x1

    goto/16 :goto_1

    .line 685
    :cond_e
    const-string v2, "--hours"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 686
    add-int/lit8 v48, v48, 0x1

    .line 687
    move-object/from16 v0, p3

    array-length v2, v0

    move/from16 v0, v48

    if-lt v0, v2, :cond_f

    .line 688
    const-string v2, "Error: argument required for --hours"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 689
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 693
    :cond_f
    :try_start_0
    aget-object v2, p3, v48

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v38

    goto/16 :goto_1

    .line 694
    :catch_0
    move-exception v42

    .line 695
    .local v42, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error: --hours argument not an int -- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p3, v48

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 696
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 699
    .end local v42    # "e":Ljava/lang/NumberFormatException;
    :cond_10
    const-string v2, "--active"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 700
    const/16 v25, 0x1

    .line 701
    const/16 v41, 0x1

    goto/16 :goto_1

    .line 702
    :cond_11
    const-string v2, "--current"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 703
    const/16 v41, 0x1

    goto/16 :goto_1

    .line 704
    :cond_12
    const-string v2, "--commit"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 705
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 706
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 707
    const/4 v2, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 708
    const-string v2, "Process stats committed."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    monitor-exit v3

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 711
    :cond_13
    const-string v2, "--reset"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 712
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 713
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 714
    const-string v2, "Process stats reset."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 715
    monitor-exit v3

    goto/16 :goto_2

    :catchall_1
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 717
    :cond_14
    const-string v2, "--clear"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 718
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 719
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 720
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v15}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v47

    .line 721
    .local v47, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v47, :cond_15

    .line 722
    const/16 v44, 0x0

    .local v44, "fi":I
    :goto_3
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I

    move-result v2

    move/from16 v0, v44

    if-ge v0, v2, :cond_15

    .line 723
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, v47

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 722
    add-int/lit8 v44, v44, 0x1

    goto :goto_3

    .line 726
    .end local v44    # "fi":I
    :cond_15
    const-string v2, "All process stats cleared."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 727
    monitor-exit v3

    goto/16 :goto_2

    .end local v47    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_2
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 729
    :cond_16
    const-string v2, "--write"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 730
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 731
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 732
    const-string v2, "Process stats written."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 733
    monitor-exit v3

    goto/16 :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    .line 735
    :cond_17
    const-string v2, "--read"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 736
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 737
    :try_start_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 738
    const-string v2, "Process stats read."

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 739
    monitor-exit v3

    goto/16 :goto_2

    :catchall_4
    move-exception v2

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v2

    .line 741
    :cond_18
    const-string v2, "-h"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 742
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 744
    :cond_19
    const-string v2, "-a"

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 745
    const/16 v22, 0x1

    .line 746
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 747
    :cond_1a
    invoke-virtual/range {v39 .. v39}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    const/4 v2, 0x0

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_1b

    .line 748
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown option: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v39

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 749
    invoke-static/range {p2 .. p2}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 753
    :cond_1b
    move-object/from16 v13, v39

    .line 758
    const/16 v22, 0x1

    goto/16 :goto_1

    .line 763
    .end local v39    # "arg":Ljava/lang/String;
    .end local v48    # "i":I
    :cond_1c
    if-eqz v50, :cond_20

    .line 764
    const-string v2, "Processes running summed over"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    if-nez v5, :cond_1d

    .line 766
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_4
    array-length v2, v6

    move/from16 v0, v48

    if-ge v0, v2, :cond_1d

    .line 767
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 768
    aget v2, v6, v48

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/internal/app/ProcessStats;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 766
    add-int/lit8 v48, v48, 0x1

    goto :goto_4

    .line 771
    .end local v48    # "i":I
    :cond_1d
    if-nez v7, :cond_1e

    .line 772
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_5
    array-length v2, v8

    move/from16 v0, v48

    if-ge v0, v2, :cond_1e

    .line 773
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 774
    aget v2, v8, v48

    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/internal/app/ProcessStats;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 772
    add-int/lit8 v48, v48, 0x1

    goto :goto_5

    .line 777
    .end local v48    # "i":I
    :cond_1e
    if-nez v9, :cond_1f

    .line 778
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_6
    array-length v2, v10

    move/from16 v0, v48

    if-ge v0, v2, :cond_1f

    .line 779
    const-string v2, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 780
    sget-object v2, Lcom/android/internal/app/ProcessStats;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v3, v10, v48

    aget-object v2, v2, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 778
    add-int/lit8 v48, v48, 0x1

    goto :goto_6

    .line 783
    .end local v48    # "i":I
    :cond_1f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 784
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v15

    .line 785
    const/4 v4, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    :try_start_6
    invoke-virtual/range {v2 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 805
    monitor-exit v15

    goto/16 :goto_2

    :catchall_5
    move-exception v2

    monitor-exit v15
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    throw v2

    .line 807
    :cond_20
    if-eqz v38, :cond_21

    .line 808
    const-string v2, "AGGREGATED OVER LAST "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 809
    move/from16 v0, v38

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    move-wide/from16 v18, v11

    move-object/from16 v20, v13

    invoke-direct/range {v14 .. v25}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    goto/16 :goto_2

    .line 814
    :cond_21
    const/16 v52, 0x0

    .line 815
    .local v52, "sepNeeded":Z
    if-nez v24, :cond_22

    if-eqz v49, :cond_2e

    .line 816
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 818
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v49, :cond_26

    const/4 v2, 0x1

    :goto_7
    :try_start_7
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v47

    .line 819
    .restart local v47    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v47, :cond_2d

    .line 820
    const/16 v48, 0x0

    .restart local v48    # "i":I
    :goto_8
    invoke-virtual/range {v47 .. v47}, Ljava/util/ArrayList;->size()I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    move-result v2

    move/from16 v0, v48

    if-ge v0, v2, :cond_2d

    .line 823
    :try_start_8
    new-instance v45, Landroid/util/AtomicFile;

    new-instance v3, Ljava/io/File;

    invoke-virtual/range {v47 .. v48}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v45

    invoke-direct {v0, v3}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 824
    .local v45, "file":Landroid/util/AtomicFile;
    new-instance v14, Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v14, v2}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 825
    .local v14, "processStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    move-object/from16 v1, v45

    invoke-virtual {v0, v14, v1}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 826
    iget-object v2, v14, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v2, :cond_27

    .line 827
    if-nez v49, :cond_23

    if-eqz v21, :cond_24

    :cond_23
    const-string v2, "err,"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 828
    :cond_24
    const-string v2, "Failure reading "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v48}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 829
    const-string v2, "; "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v14, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {v47 .. v48}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 820
    .end local v14    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v45    # "file":Landroid/util/AtomicFile;
    :cond_25
    :goto_9
    add-int/lit8 v48, v48, 0x1

    goto :goto_8

    .line 818
    .end local v47    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v48    # "i":I
    :cond_26
    const/4 v2, 0x0

    goto :goto_7

    .line 834
    .restart local v14    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v45    # "file":Landroid/util/AtomicFile;
    .restart local v47    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v48    # "i":I
    :cond_27
    invoke-virtual/range {v45 .. v45}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v46

    .line 835
    .local v46, "fileStr":Ljava/lang/String;
    const-string v2, ".ci"

    move-object/from16 v0, v46

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v40

    .line 836
    .local v40, "checkedIn":Z
    if-nez v49, :cond_28

    if-eqz v21, :cond_29

    .line 838
    :cond_28
    move-object/from16 v0, p2

    invoke-virtual {v14, v0, v13}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 859
    :goto_a
    if-eqz v49, :cond_25

    .line 861
    invoke-virtual/range {v45 .. v45}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v46

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, ".ci"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    goto :goto_9

    .line 864
    .end local v14    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v40    # "checkedIn":Z
    .end local v45    # "file":Landroid/util/AtomicFile;
    .end local v46    # "fileStr":Ljava/lang/String;
    :catch_1
    move-exception v42

    .line 865
    .local v42, "e":Ljava/lang/Throwable;
    :try_start_9
    const-string v2, "**** FAILURE DUMPING STATE: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v47 .. v48}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 866
    move-object/from16 v0, v42

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_9

    .line 871
    .end local v42    # "e":Ljava/lang/Throwable;
    .end local v47    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v48    # "i":I
    :catchall_6
    move-exception v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 840
    .restart local v14    # "processStats":Lcom/android/internal/app/ProcessStats;
    .restart local v40    # "checkedIn":Z
    .restart local v45    # "file":Landroid/util/AtomicFile;
    .restart local v46    # "fileStr":Ljava/lang/String;
    .restart local v47    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v48    # "i":I
    :cond_29
    if-eqz v52, :cond_2b

    .line 841
    :try_start_a
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 845
    :goto_b
    const-string v2, "COMMITTED STATS FROM "

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    iget-object v2, v14, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 847
    if-eqz v40, :cond_2a

    const-string v2, " (checked in)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 848
    :cond_2a
    const-string v2, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 852
    if-eqz v23, :cond_2c

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v26, v0

    const/16 v31, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, p2

    move-object/from16 v28, v13

    move-wide/from16 v29, v11

    move/from16 v33, v25

    invoke-virtual/range {v26 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    goto/16 :goto_a

    .line 843
    :cond_2b
    const/16 v52, 0x1

    goto :goto_b

    :cond_2c
    move-object/from16 v15, p2

    move-object/from16 v16, v13

    move-wide/from16 v17, v11

    move/from16 v19, v25

    .line 856
    invoke-virtual/range {v14 .. v19}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_6

    goto/16 :goto_a

    .line 871
    .end local v14    # "processStats":Lcom/android/internal/app/ProcessStats;
    .end local v40    # "checkedIn":Z
    .end local v45    # "file":Landroid/util/AtomicFile;
    .end local v46    # "fileStr":Ljava/lang/String;
    .end local v48    # "i":I
    :cond_2d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 874
    .end local v47    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2e
    if-nez v49, :cond_3

    .line 875
    if-nez v41, :cond_30

    .line 876
    if-eqz v52, :cond_2f

    .line 877
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 879
    :cond_2f
    const-string v2, "AGGREGATED OVER LAST 24 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    const-wide/16 v28, 0x18

    move-object/from16 v26, p0

    move-object/from16 v27, p2

    move-wide/from16 v30, v11

    move-object/from16 v32, v13

    move/from16 v33, v21

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v36, v24

    move/from16 v37, v25

    invoke-direct/range {v26 .. v37}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 882
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 883
    const-string v2, "AGGREGATED OVER LAST 3 HOURS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    const-wide/16 v28, 0x3

    move-object/from16 v26, p0

    move-object/from16 v27, p2

    move-wide/from16 v30, v11

    move-object/from16 v32, v13

    move/from16 v33, v21

    move/from16 v34, v22

    move/from16 v35, v23

    move/from16 v36, v24

    move/from16 v37, v25

    invoke-direct/range {v26 .. v37}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZ)V

    .line 886
    const/16 v52, 0x1

    .line 888
    :cond_30
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    .line 889
    if-eqz v21, :cond_32

    .line 890
    :try_start_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0, v13}, Lcom/android/internal/app/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 906
    :cond_31
    :goto_c
    monitor-exit v3

    goto/16 :goto_2

    :catchall_7
    move-exception v2

    monitor-exit v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    throw v2

    .line 892
    :cond_32
    if-eqz v52, :cond_33

    .line 893
    :try_start_c
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 895
    :cond_33
    const-string v2, "CURRENT STATS:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    if-nez v22, :cond_34

    if-eqz v23, :cond_36

    .line 897
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v26, v0

    if-nez v23, :cond_35

    const/16 v31, 0x1

    :goto_d
    move-object/from16 v27, p2

    move-object/from16 v28, v13

    move-wide/from16 v29, v11

    move/from16 v32, v24

    move/from16 v33, v25

    invoke-virtual/range {v26 .. v33}, Lcom/android/internal/app/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZ)V

    .line 899
    if-eqz v24, :cond_31

    .line 900
    const-string v2, "  mFile="

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_c

    .line 897
    :cond_35
    const/16 v31, 0x0

    goto :goto_d

    .line 903
    :cond_36
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v16, p2

    move-object/from16 v17, v13

    move-wide/from16 v18, v11

    move/from16 v20, v25

    invoke-virtual/range {v15 .. v20}, Lcom/android/internal/app/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    goto :goto_c

    .line 618
    :array_0
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private getCommittedFiles(IZZ)Ljava/util/ArrayList;
    .locals 7
    .param p1, "minNum"    # I
    .param p2, "inclCurrent"    # Z
    .param p3, "inclCheckedIn"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 332
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 333
    .local v3, "files":[Ljava/io/File;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-gt v6, p1, :cond_1

    .line 334
    :cond_0
    const/4 v4, 0x0

    .line 354
    :goto_0
    return-object v4

    .line 336
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 337
    .local v4, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v6}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "currentFile":Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_5

    .line 340
    aget-object v1, v3, v5

    .line 341
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 343
    .local v2, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_3

    const-string v6, ".ci"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 339
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 347
    :cond_3
    if-nez p2, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 351
    :cond_4
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 353
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "fileStr":Ljava/lang/String;
    :cond_5
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_0
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .locals 11
    .param p0, "states"    # [Ljava/lang/String;
    .param p1, "mult"    # I
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "outSep"    # [Z
    .param p4, "outError"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/16 v10, 0x2c

    const/4 v8, 0x0

    .line 387
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 388
    .local v6, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v5, 0x0

    .line 389
    .local v5, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-gt v2, v9, :cond_9

    .line 390
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v2, v9, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 391
    .local v0, "c":C
    :goto_1
    if-eq v0, v10, :cond_1

    const/16 v9, 0x2b

    if-eq v0, v9, :cond_1

    const/16 v9, 0x20

    if-eq v0, v9, :cond_1

    if-eqz v0, :cond_1

    .line 389
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "c":C
    :cond_0
    move v0, v8

    .line 390
    goto :goto_1

    .line 394
    .restart local v0    # "c":C
    :cond_1
    if-ne v0, v10, :cond_5

    const/4 v3, 0x1

    .line 395
    .local v3, "isSep":Z
    :goto_3
    if-nez v5, :cond_6

    .line 397
    aput-boolean v3, p3, v8

    .line 402
    :cond_2
    add-int/lit8 v9, v2, -0x1

    if-ge v5, v9, :cond_8

    .line 403
    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 404
    .local v7, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    array-length v9, p0

    if-ge v4, v9, :cond_3

    .line 405
    aget-object v9, p0, v4

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 406
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 407
    const/4 v7, 0x0

    .line 411
    :cond_3
    if-eqz v7, :cond_8

    .line 412
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "invalid word \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, p4, v8

    .line 423
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_4
    :goto_5
    return-object v1

    .restart local v0    # "c":C
    :cond_5
    move v3, v8

    .line 394
    goto :goto_3

    .line 398
    .restart local v3    # "isSep":Z
    :cond_6
    if-eqz v0, :cond_2

    aget-boolean v9, p3, v8

    if-eq v9, v3, :cond_2

    .line 399
    const-string v9, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v9, p4, v8

    goto :goto_5

    .line 404
    .restart local v4    # "j":I
    .restart local v7    # "str":Ljava/lang/String;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 416
    .end local v4    # "j":I
    .end local v7    # "str":Ljava/lang/String;
    :cond_8
    add-int/lit8 v5, v2, 0x1

    goto :goto_2

    .line 419
    .end local v0    # "c":C
    .end local v3    # "isSep":Z
    :cond_9
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    new-array v1, v8, [I

    .line 420
    .local v1, "finalRes":[I
    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v2, v8, :cond_4

    .line 421
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    mul-int/2addr v8, p1

    aput v8, v1, v2

    .line 420
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private updateFile()V
    .locals 5

    .prologue
    .line 240
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    .line 242
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 243
    return-void
.end method

.method private writeStateLocked(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    .line 199
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 203
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 588
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 590
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial: can\'t dump procstats from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " without permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 602
    :goto_0
    return-void

    .line 596
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 598
    .local v0, "ident":J
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "sepScreenStates"    # Z
    .param p4, "screenStates"    # [I
    .param p5, "sepMemStates"    # Z
    .param p6, "memStates"    # [I
    .param p7, "sepProcStates"    # Z
    .param p8, "procStates"    # [I
    .param p9, "now"    # J
    .param p11, "reqPackage"    # Ljava/lang/String;

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v8, 0x0

    move-object v1, p4

    move-object/from16 v2, p6

    move-object/from16 v3, p8

    move-object/from16 v4, p8

    move-wide/from16 v5, p9

    move-object/from16 v7, p11

    invoke-virtual/range {v0 .. v8}, Lcom/android/internal/app/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 374
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/ProcessStats$ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 375
    if-eqz p2, :cond_0

    .line 376
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    move-object v0, p1

    move v2, p3

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-wide/from16 v8, p9

    .line 378
    invoke-static/range {v0 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 380
    const/4 v0, 0x1

    .line 382
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentMemoryState()I
    .locals 2

    .prologue
    .line 527
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    .line 528
    :try_start_0
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v1

    return v0

    .line 529
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 427
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v6, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 430
    .local v0, "current":Landroid/os/Parcel;
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 432
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 433
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v5, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 434
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v5, v0, v7}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 435
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 436
    if-eqz p1, :cond_0

    .line 437
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_2
    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 438
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    .line 439
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v5

    add-int/lit8 v3, v5, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_0

    .line 441
    :try_start_3
    new-instance v6, Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-static {v6, v5}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 443
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 439
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 435
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :catchall_0
    move-exception v5

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 451
    :catchall_1
    move-exception v5

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v5

    .line 444
    .restart local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v3    # "i":I
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e":Ljava/io/IOException;
    :try_start_6
    const-string v6, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failure opening procstat file "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 451
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "i":I
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 453
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    return-object v5
.end method

.method public getMemFactorLocked()I
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;ILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    return-object v0
.end method

.method public getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "className"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats;->getServiceStateLocked(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ServiceState;

    move-result-object v0

    return-object v0
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .locals 23
    .param p1, "minTime"    # J

    .prologue
    .line 457
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "android.permission.PACKAGE_USAGE_STATS"

    const/16 v19, 0x0

    invoke-virtual/range {v17 .. v19}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 461
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 463
    .local v6, "current":Landroid/os/Parcel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v18, v0

    monitor-enter v18
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 464
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v19

    move-wide/from16 v0, v19

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v6, v1}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v21, v0

    sub-long v4, v19, v21

    .line 468
    .local v4, "curTime":J
    monitor-exit v18
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 469
    cmp-long v17, v4, p1

    if-gez v17, :cond_2

    .line 471
    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x1

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 472
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 473
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 474
    sget-object v17, Lcom/android/internal/app/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/app/ProcessStats;

    .line 475
    .local v15, "stats":Lcom/android/internal/app/ProcessStats;
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 476
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v17

    add-int/lit8 v11, v17, -0x1

    .line 478
    .local v11, "i":I
    :goto_0
    if-ltz v11, :cond_1

    iget-wide v0, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v17, v0

    iget-wide v0, v15, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    cmp-long v17, v17, p1

    if-gez v17, :cond_1

    .line 479
    new-instance v9, Landroid/util/AtomicFile;

    new-instance v18, Ljava/io/File;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-direct {v9, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 480
    .local v9, "file":Landroid/util/AtomicFile;
    add-int/lit8 v11, v11, -0x1

    .line 481
    new-instance v12, Lcom/android/internal/app/ProcessStats;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v12, v0}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    .line 482
    .local v12, "moreStats":Lcom/android/internal/app/ProcessStats;
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v9}, Lcom/android/server/am/ProcessStatsService;->readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 483
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 484
    invoke-virtual {v15, v12}, Lcom/android/internal/app/ProcessStats;->add(Lcom/android/internal/app/ProcessStats;)V

    .line 485
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 486
    .local v14, "sb":Ljava/lang/StringBuilder;
    const-string v17, "Added stats: "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    const-string v17, ", over "

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 489
    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-wide/from16 v17, v0

    iget-wide v0, v12, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    move-wide/from16 v19, v0

    sub-long v17, v17, v19

    move-wide/from16 v0, v17

    invoke-static {v0, v1, v14}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 491
    const-string v17, "ProcessStatsService"

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 518
    .end local v4    # "curTime":J
    .end local v6    # "current":Landroid/os/Parcel;
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .end local v14    # "sb":Ljava/lang/StringBuilder;
    .end local v15    # "stats":Lcom/android/internal/app/ProcessStats;
    :catch_0
    move-exception v7

    .line 519
    .local v7, "e":Ljava/io/IOException;
    :try_start_3
    const-string v17, "ProcessStatsService"

    const-string v18, "Failed building output pipe"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 523
    const/16 v17, 0x0

    .end local v7    # "e":Ljava/io/IOException;
    :goto_1
    return-object v17

    .line 468
    .restart local v6    # "current":Landroid/os/Parcel;
    :catchall_0
    move-exception v17

    :try_start_4
    monitor-exit v18
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v17
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 521
    .end local v6    # "current":Landroid/os/Parcel;
    :catchall_1
    move-exception v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v17

    .line 493
    .restart local v4    # "curTime":J
    .restart local v6    # "current":Landroid/os/Parcel;
    .restart local v9    # "file":Landroid/util/AtomicFile;
    .restart local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11    # "i":I
    .restart local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    .restart local v15    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_0
    :try_start_6
    const-string v18, "ProcessStatsService"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Failure reading "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v17, v11, 0x1

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v19, "; "

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    iget-object v0, v12, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 498
    .end local v9    # "file":Landroid/util/AtomicFile;
    .end local v12    # "moreStats":Lcom/android/internal/app/ProcessStats;
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    .line 499
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v6, v0}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 502
    .end local v10    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "i":I
    .end local v15    # "stats":Lcom/android/internal/app/ProcessStats;
    :cond_2
    invoke-virtual {v6}, Landroid/os/Parcel;->marshall()[B

    move-result-object v13

    .line 503
    .local v13, "outData":[B
    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 504
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 505
    .local v8, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v16, Lcom/android/server/am/ProcessStatsService$3;

    const-string v17, "ProcessStats pipe output"

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2, v8, v13}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 516
    .local v16, "thr":Ljava/lang/Thread;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 517
    const/16 v17, 0x0

    aget-object v17, v8, v17
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto/16 :goto_1
.end method

.method public isMemFactorLowered()Z
    .locals 1

    .prologue
    .line 124
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 104
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 107
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 109
    :cond_0
    throw v0
.end method

.method performWriteState()V
    .locals 6

    .prologue
    .line 249
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v5

    .line 250
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 251
    .local v0, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 252
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 253
    if-nez v0, :cond_0

    .line 254
    monitor-exit v5

    .line 276
    :goto_0
    return-void

    .line 256
    :cond_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 257
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 258
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 259
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    const/4 v3, 0x0

    .line 263
    .local v3, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v3

    .line 264
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/FileOutputStream;->write([B)V

    .line 265
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 266
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 274
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 259
    .end local v0    # "data":Landroid/os/Parcel;
    .end local v2    # "file":Landroid/util/AtomicFile;
    .end local v3    # "stream":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 268
    .restart local v0    # "data":Landroid/os/Parcel;
    .restart local v2    # "file":Landroid/util/AtomicFile;
    .restart local v3    # "stream":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 269
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string v4, "ProcessStatsService"

    const-string v5, "Error writing process statistics"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 270
    invoke-virtual {v2, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 274
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_0

    .line 272
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v4

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLocked()V

    .line 274
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mWriteLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v4
.end method

.method readLocked(Lcom/android/internal/app/ProcessStats;Landroid/util/AtomicFile;)Z
    .locals 6
    .param p1, "stats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "file"    # Landroid/util/AtomicFile;

    .prologue
    const/4 v2, 0x0

    .line 280
    :try_start_0
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v1

    .line 281
    .local v1, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 282
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 283
    iget-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 284
    const-string v3, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring existing stats; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1    # "stream":Ljava/io/FileInputStream;
    :goto_0
    return v2

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    .line 324
    const-string v3, "ProcessStatsService"

    const-string v4, "Error reading process statistics"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 327
    .end local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "stream":Ljava/io/FileInputStream;
    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public setMemFactorLocked(IZJ)Z
    .locals 17
    .param p1, "memFactor"    # I
    .param p2, "screenOn"    # Z
    .param p3, "now"    # J

    .prologue
    .line 128
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    move/from16 v0, p1

    if-ge v0, v11, :cond_5

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 129
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 130
    if-eqz p2, :cond_0

    .line 131
    add-int/lit8 p1, p1, 0x4

    .line 133
    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v11, v11, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move/from16 v0, p1

    if-eq v0, v11, :cond_9

    .line 134
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v11, v11, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_1

    .line 135
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v11, v11, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v12, v12, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    aget-wide v13, v11, v12

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v15, v15, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    sub-long v15, p3, v15

    add-long/2addr v13, v15

    aput-wide v13, v11, v12

    .line 138
    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move/from16 v0, p1

    iput v0, v11, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    .line 139
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    move-wide/from16 v0, p3

    iput-wide v0, v11, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    .line 140
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v11, v11, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v11}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v7

    .line 142
    .local v7, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v3, v11, :cond_8

    .line 143
    invoke-virtual {v7, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/util/SparseArray;

    .line 144
    .local v10, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v11

    if-ge v4, v11, :cond_7

    .line 145
    invoke-virtual {v10, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 146
    .local v6, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    iget-object v9, v6, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 147
    .local v9, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_3
    invoke-virtual {v9}, Landroid/util/ArrayMap;->size()I

    move-result v11

    if-ge v5, v11, :cond_6

    .line 148
    invoke-virtual {v9, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 149
    .local v8, "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    invoke-virtual {v8}, Lcom/android/internal/app/ProcessStats$ServiceState;->isInUse()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 150
    iget v11, v8, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_2

    .line 151
    const/4 v11, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v8, v11, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 153
    :cond_2
    iget v11, v8, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_3

    .line 154
    const/4 v11, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v8, v11, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 156
    :cond_3
    iget v11, v8, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_4

    .line 157
    const/4 v11, 0x1

    move/from16 v0, p1

    move-wide/from16 v1, p3

    invoke-virtual {v8, v11, v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 147
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 128
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "k":I
    .end local v6    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .end local v8    # "service":Lcom/android/internal/app/ProcessStats$ServiceState;
    .end local v9    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 144
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "k":I
    .restart local v6    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .restart local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    .restart local v9    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    .restart local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 142
    .end local v5    # "k":I
    .end local v6    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v9    # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ServiceState;>;"
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 163
    .end local v4    # "j":I
    .end local v10    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_8
    const/4 v11, 0x1

    .line 165
    .end local v3    # "i":I
    .end local v7    # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;>;"
    :goto_4
    return v11

    :cond_9
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public shouldWriteNowLocked(J)Z
    .locals 7
    .param p1, "now"    # J

    .prologue
    const/4 v0, 0x1

    .line 173
    iget-wide v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v3, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v1, v3

    cmp-long v1, p1, v1

    if-lez v1, :cond_1

    .line 174
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v3, v3, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v5, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v3, v5

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 176
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 180
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public shutdownLocked()V
    .locals 2

    .prologue
    .line 184
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 186
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 188
    return-void
.end method

.method public trimHistoricStatesWriteLocked()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 358
    const/4 v2, 0x1

    invoke-direct {p0, v6, v5, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFiles(IZZ)Ljava/util/ArrayList;

    move-result-object v1

    .line 359
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_1

    .line 367
    :cond_0
    return-void

    .line 362
    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, v6, :cond_0

    .line 363
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 364
    .local v0, "file":Ljava/lang/String;
    const-string v2, "ProcessStatsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pruning old procstats: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public writeStateAsyncLocked()V
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 192
    return-void
.end method

.method public writeStateLocked(ZZ)V
    .locals 7
    .param p1, "sync"    # Z
    .param p2, "commit"    # Z

    .prologue
    .line 208
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v3

    .line 209
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 210
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v2, :cond_2

    .line 211
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 212
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    .line 213
    if-eqz p2, :cond_1

    .line 214
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lcom/android/internal/app/ProcessStats;->mFlags:I

    .line 216
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/internal/app/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 217
    new-instance v2, Landroid/util/AtomicFile;

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v4}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 218
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 220
    :cond_2
    if-eqz p2, :cond_3

    .line 221
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessStats;->resetSafely()V

    .line 222
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFile()V

    .line 224
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 225
    const-string v2, "ProcessStatsService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Prepared write state in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "ms"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    if-nez p1, :cond_4

    .line 227
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v4, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v4, p0}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 232
    monitor-exit v3

    .line 237
    :goto_0
    return-void

    .line 234
    :cond_4
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStatsService;->performWriteState()V

    goto :goto_0

    .line 234
    .end local v0    # "now":J
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public writeStateSyncLocked()V
    .locals 1

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 196
    return-void
.end method
