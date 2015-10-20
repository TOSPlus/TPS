.class Landroid/media/MediaPlayer$TimeProvider;
.super Ljava/lang/Object;
.source "MediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnSeekCompleteListener;
.implements Landroid/media/MediaTimeProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeProvider"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPlayer$TimeProvider$EventHandler;
    }
.end annotation


# static fields
.field private static final MAX_EARLY_CALLBACK_US:J = 0x3e8L

.field private static final MAX_NS_WITHOUT_POSITION_CHECK:J = 0x12a05f200L

.field private static final NOTIFY:I = 0x1

.field private static final NOTIFY_SEEK:I = 0x3

.field private static final NOTIFY_STOP:I = 0x2

.field private static final NOTIFY_TIME:I = 0x0

.field private static final REFRESH_AND_NOTIFY_TIME:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MTP"

.field private static final TIME_ADJUSTMENT_RATE:J = 0x2L


# instance fields
.field public DEBUG:Z

.field private mEventHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLastNanoTime:J

.field private mLastReportedTime:J

.field private mLastTimeUs:J

.field private mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

.field private mPaused:Z

.field private mPausing:Z

.field private mPlayer:Landroid/media/MediaPlayer;

.field private mRefresh:Z

.field private mSeeking:Z

.field private mStopped:Z

.field private mTimeAdjustment:J

.field private mTimes:[J


# direct methods
.method public constructor <init>(Landroid/media/MediaPlayer;)V
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2846
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 2848
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 2849
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 2858
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 2859
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 2860
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 2869
    iput-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    .line 2872
    iput-object p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    .line 2874
    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2881
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .local v1, "looper":Landroid/os/Looper;
    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2884
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MediaPlayerMTPEventThread"

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2886
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 2887
    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2889
    :cond_0
    new-instance v2, Landroid/media/MediaPlayer$TimeProvider$EventHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/MediaPlayer$TimeProvider$EventHandler;-><init>(Landroid/media/MediaPlayer$TimeProvider;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    .line 2891
    new-array v2, v5, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 2892
    new-array v2, v5, [J

    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 2893
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 2894
    iput-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 2895
    return-void

    .line 2875
    .end local v1    # "looper":Landroid/os/Looper;
    :catch_0
    move-exception v0

    .line 2877
    .local v0, "e":Ljava/lang/IllegalStateException;
    iput-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    goto :goto_0
.end method

.method static synthetic access$2000(Landroid/media/MediaPlayer$TimeProvider;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 2840
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V

    return-void
.end method

.method static synthetic access$2100(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;

    .prologue
    .line 2840
    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifyStop()V

    return-void
.end method

.method static synthetic access$2200(Landroid/media/MediaPlayer$TimeProvider;)V
    .locals 0
    .param p0, "x0"    # Landroid/media/MediaPlayer$TimeProvider;

    .prologue
    .line 2840
    invoke-direct {p0}, Landroid/media/MediaPlayer$TimeProvider;->notifySeek()V

    return-void
.end method

.method private getEstimatedTime(JZ)J
    .locals 10
    .param p1, "nanoTime"    # J
    .param p3, "monotonic"    # Z

    .prologue
    const-wide/16 v8, 0x0

    .line 3141
    iget-boolean v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v4, :cond_1

    .line 3142
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v6, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 3156
    :cond_0
    :goto_0
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    return-wide v4

    .line 3144
    :cond_1
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 3145
    .local v2, "timeSinceRead":J
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    .line 3146
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_0

    .line 3147
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    const-wide/16 v6, 0x2

    div-long v6, v2, v6

    sub-long v0, v4, v6

    .line 3149
    .local v0, "adjustment":J
    cmp-long v4, v0, v8

    if-gtz v4, :cond_2

    .line 3150
    iput-wide v8, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    goto :goto_0

    .line 3152
    :cond_2
    iget-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    goto :goto_0
.end method

.method private declared-synchronized notifySeek()V
    .locals 10

    .prologue
    .line 2975
    monitor-enter p0

    const/4 v7, 0x0

    :try_start_0
    iput-boolean v7, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2977
    const/4 v7, 0x1

    const/4 v8, 0x0

    :try_start_1
    invoke-virtual {p0, v7, v8}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v5

    .line 2978
    .local v5, "timeUs":J
    iget-boolean v7, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string v7, "MTP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onSeekComplete at "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2980
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .local v0, "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2981
    .local v4, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v4, :cond_2

    .line 2992
    .end local v0    # "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v5    # "timeUs":J
    :cond_1
    :goto_1
    monitor-exit p0

    return-void

    .line 2984
    .restart local v0    # "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .restart local v5    # "timeUs":J
    :cond_2
    :try_start_2
    invoke-interface {v4, v5, v6}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onSeek(J)V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2980
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2986
    .end local v0    # "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v5    # "timeUs":J
    :catch_0
    move-exception v1

    .line 2988
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_3
    iget-boolean v7, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "MTP"

    const-string/jumbo v8, "onSeekComplete but no player"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    :cond_3
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 2990
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Landroid/media/MediaPlayer$TimeProvider;->notifyTimedEvent(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 2975
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private declared-synchronized notifyStop()V
    .locals 5

    .prologue
    .line 2995
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .local v0, "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2996
    .local v3, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    if-nez v3, :cond_1

    .line 3001
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 2999
    .restart local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2995
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "arr$":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private declared-synchronized notifyTimedEvent(Z)V
    .locals 23
    .param p1, "refreshTime"    # Z

    .prologue
    .line 3078
    monitor-enter p0

    const/16 v19, 0x1

    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 3085
    .local v14, "nowUs":J
    :goto_0
    move-wide v12, v14

    .line 3087
    .local v12, "nextTimeUs":J
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    move/from16 v19, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v19, :cond_1

    .line 3138
    :cond_0
    monitor-exit p0

    return-void

    .line 3079
    .end local v12    # "nextTimeUs":J
    .end local v14    # "nowUs":J
    :catch_0
    move-exception v6

    .line 3081
    .local v6, "e":Ljava/lang/IllegalStateException;
    const/16 v19, 0x1

    :try_start_2
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    .line 3082
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 3083
    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v14

    .restart local v14    # "nowUs":J
    goto :goto_0

    .line 3092
    .end local v6    # "e":Ljava/lang/IllegalStateException;
    .restart local v12    # "nextTimeUs":J
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 3093
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    .line 3094
    .local v16, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v19, "notifyTimedEvent("

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    move-wide/from16 v20, v0

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " -> "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ") from {"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3096
    const/4 v7, 0x1

    .line 3097
    .local v7, "first":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .local v5, "arr$":[J
    array-length v10, v5

    .local v10, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_1
    if-ge v8, v10, :cond_4

    aget-wide v17, v5, v8

    .line 3098
    .local v17, "time":J
    const-wide/16 v19, -0x1

    cmp-long v19, v17, v19

    if-nez v19, :cond_2

    .line 3097
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3101
    :cond_2
    if-nez v7, :cond_3

    const-string v19, ", "

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    :cond_3
    invoke-virtual/range {v16 .. v18}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3103
    const/4 v7, 0x0

    goto :goto_2

    .line 3105
    .end local v17    # "time":J
    :cond_4
    const-string/jumbo v19, "}"

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    const-string v19, "MTP"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3109
    .end local v5    # "arr$":[J
    .end local v7    # "first":Z
    .end local v8    # "i$":I
    .end local v10    # "len$":I
    .end local v16    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    .line 3111
    .local v4, "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    const/4 v9, 0x0

    .local v9, "ix":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v9, v0, :cond_6

    .line 3112
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    if-nez v19, :cond_8

    .line 3126
    :cond_6
    cmp-long v19, v12, v14

    if-lez v19, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    move/from16 v19, v0

    if-nez v19, :cond_e

    .line 3128
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_7

    const-string v19, "MTP"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "scheduling for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " and "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3129
    :cond_7
    const/16 v19, 0x0

    sub-long v20, v12, v14

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-wide/from16 v2, v20

    invoke-direct {v0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 3135
    :goto_4
    invoke-virtual {v4}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 3136
    .local v11, "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    invoke-interface {v11, v14, v15}, Landroid/media/MediaTimeProvider$OnMediaTimeListener;->onTimedEvent(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    .line 3078
    .end local v4    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v9    # "ix":I
    .end local v11    # "listener":Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v12    # "nextTimeUs":J
    .end local v14    # "nowUs":J
    :catchall_0
    move-exception v19

    monitor-exit p0

    throw v19

    .line 3115
    .restart local v4    # "activatedListeners":Ljava/util/Vector;, "Ljava/util/Vector<Landroid/media/MediaTimeProvider$OnMediaTimeListener;>;"
    .restart local v9    # "ix":I
    .restart local v12    # "nextTimeUs":J
    .restart local v14    # "nowUs":J
    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    const-wide/16 v21, -0x1

    cmp-long v19, v19, v21

    if-gtz v19, :cond_a

    .line 3111
    :cond_9
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_3

    .line 3117
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    const-wide/16 v21, 0x3e8

    add-long v21, v21, v14

    cmp-long v19, v19, v21

    if-gtz v19, :cond_c

    .line 3118
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    move-object/from16 v19, v0

    aget-object v19, v19, v9

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 3119
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    move/from16 v19, v0

    if-eqz v19, :cond_b

    const-string v19, "MTP"

    const-string/jumbo v20, "removed"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3120
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    move-object/from16 v19, v0

    const-wide/16 v20, -0x1

    aput-wide v20, v19, v9

    goto :goto_6

    .line 3121
    :cond_c
    cmp-long v19, v12, v14

    if-eqz v19, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    move-object/from16 v19, v0

    aget-wide v19, v19, v9

    cmp-long v19, v19, v12

    if-gez v19, :cond_9

    .line 3122
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    move-object/from16 v19, v0

    aget-wide v12, v19, v9

    goto :goto_6

    .line 3131
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4
.end method

.method private registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I
    .locals 6
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    const/4 v5, 0x0

    .line 3004
    const/4 v0, 0x0

    .line 3005
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 3006
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-eq v3, p1, :cond_0

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-nez v3, :cond_3

    .line 3012
    :cond_0
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    .line 3013
    add-int/lit8 v3, v0, 0x1

    new-array v1, v3, [Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 3015
    .local v1, "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    add-int/lit8 v3, v0, 0x1

    new-array v2, v3, [J

    .line 3016
    .local v2, "newTimes":[J
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3017
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3018
    iput-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .line 3019
    iput-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    .line 3022
    .end local v1    # "newListeners":[Landroid/media/MediaTimeProvider$OnMediaTimeListener;
    .end local v2    # "newTimes":[J
    :cond_1
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v3, v3, v0

    if-nez v3, :cond_2

    .line 3023
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aput-object p1, v3, v0

    .line 3024
    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v4, -0x1

    aput-wide v4, v3, v0

    .line 3026
    :cond_2
    return v0

    .line 3005
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private scheduleNotification(IJ)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "delayUs"    # J

    .prologue
    const/4 v4, 0x1

    .line 2899
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    if-ne p1, v4, :cond_1

    .line 2908
    :cond_0
    :goto_0
    return-void

    .line 2904
    :cond_1
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "MTP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleNotification "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2905
    :cond_2
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2906
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v4, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 2907
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    div-long v2, p2, v2

    long-to-int v2, v2

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method


# virtual methods
.method public cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 3054
    monitor-enter p0

    .line 3055
    const/4 v0, 0x0

    .line 3056
    .local v0, "i":I
    :goto_0
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 3057
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 3058
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3060
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v4, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v4, v4

    sub-int/2addr v4, v0

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3062
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 3063
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    iget-object v2, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const-wide/16 v3, -0x1

    aput-wide v3, v1, v2

    .line 3070
    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 3071
    monitor-exit p0

    .line 3072
    return-void

    .line 3065
    :cond_1
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mListeners:[Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 3056
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3071
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public close()V
    .locals 2

    .prologue
    .line 2912
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mEventHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2913
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2914
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2915
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    .line 2917
    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 2921
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 2922
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 2924
    :cond_0
    return-void
.end method

.method public getCurrentTimeUs(ZZ)J
    .locals 9
    .param p1, "refreshTime"    # Z
    .param p2, "monotonic"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3161
    monitor-enter p0

    .line 3164
    :try_start_0
    iget-boolean v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v5, :cond_0

    if-nez p1, :cond_0

    .line 3165
    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    .line 3203
    :goto_0
    return-wide v3

    .line 3168
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 3169
    .local v1, "nanoTime":J
    if-nez p1, :cond_1

    iget-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide v7, 0x12a05f200L

    add-long/2addr v5, v7

    cmp-long v5, v1, v5

    if-ltz v5, :cond_3

    .line 3172
    :cond_1
    :try_start_1
    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v5

    int-to-long v5, v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    iput-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    .line 3173
    iget-object v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v5

    if-nez v5, :cond_4

    :goto_1
    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 3174
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v4, "MTP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "paused"

    :goto_2
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " at "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3187
    :cond_2
    :try_start_2
    iput-wide v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastNanoTime:J

    .line 3188
    if-eqz p2, :cond_8

    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    iget-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    cmp-long v3, v3, v5

    if-gez v3, :cond_8

    .line 3190
    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    iget-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastTimeUs:J

    sub-long/2addr v3, v5

    iput-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    .line 3191
    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J

    const-wide/32 v5, 0xf4240

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    .line 3194
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 3195
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 3196
    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    invoke-direct {p0, v3, v4, v5}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 3203
    :cond_3
    :goto_3
    invoke-direct {p0, v1, v2, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J

    move-result-wide v3

    monitor-exit p0

    goto :goto_0

    .line 3204
    .end local v1    # "nanoTime":J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1    # "nanoTime":J
    :cond_4
    move v3, v4

    .line 3173
    goto :goto_1

    .line 3174
    :cond_5
    :try_start_3
    const-string/jumbo v3, "playing"
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 3175
    :catch_0
    move-exception v0

    .line 3176
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_4
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    if-eqz v3, :cond_7

    .line 3178
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 3179
    invoke-direct {p0, v1, v2, p2}, Landroid/media/MediaPlayer$TimeProvider;->getEstimatedTime(JZ)J

    .line 3180
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 3181
    iget-boolean v3, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v3, :cond_6

    const-string v3, "MTP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal state, but pausing: estimating at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3182
    :cond_6
    iget-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mLastReportedTime:J

    monitor-exit p0

    goto/16 :goto_0

    .line 3185
    :cond_7
    throw v0

    .line 3199
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_8
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimeAdjustment:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3
.end method

.method public notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 3
    .param p1, "timeUs"    # J
    .param p3, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 3031
    monitor-enter p0

    .line 3032
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyAt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    :cond_0
    iget-object v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    invoke-direct {p0, p3}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v1

    aput-wide p1, v0, v1

    .line 3034
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 3035
    monitor-exit p0

    .line 3036
    return-void

    .line 3035
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onNewPlayer()V
    .locals 3

    .prologue
    .line 2965
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mRefresh:Z

    if-eqz v0, :cond_0

    .line 2966
    monitor-enter p0

    .line 2967
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 2968
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 2969
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2970
    monitor-exit p0

    .line 2972
    :cond_0
    return-void

    .line 2970
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onPaused(Z)V
    .locals 3
    .param p1, "paused"    # Z

    .prologue
    .line 2928
    monitor-enter p0

    .line 2929
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPaused: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2930
    :cond_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-eqz v0, :cond_1

    .line 2931
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 2932
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 2933
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2939
    :goto_0
    monitor-exit p0

    .line 2940
    return-void

    .line 2935
    :cond_1
    iput-boolean p1, p0, Landroid/media/MediaPlayer$TimeProvider;->mPausing:Z

    .line 2936
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 2937
    const/4 v0, 0x1

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_0

    .line 2939
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSeekComplete(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 2956
    monitor-enter p0

    .line 2957
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 2958
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 2959
    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2960
    monitor-exit p0

    .line 2961
    return-void

    .line 2960
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStopped()V
    .locals 3

    .prologue
    .line 2944
    monitor-enter p0

    .line 2945
    :try_start_0
    iget-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MTP"

    const-string/jumbo v1, "onStopped"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2946
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mPaused:Z

    .line 2947
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    .line 2948
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPlayer$TimeProvider;->mSeeking:Z

    .line 2949
    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 2950
    monitor-exit p0

    .line 2951
    return-void

    .line 2950
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/MediaTimeProvider$OnMediaTimeListener;

    .prologue
    .line 3039
    monitor-enter p0

    .line 3040
    :try_start_0
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MTP"

    const-string/jumbo v2, "scheduleUpdate"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3041
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/MediaPlayer$TimeProvider;->registerListener(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)I

    move-result v0

    .line 3043
    .local v0, "i":I
    iget-boolean v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mStopped:Z

    if-eqz v1, :cond_1

    .line 3044
    const/4 v1, 0x2

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    .line 3049
    :goto_0
    monitor-exit p0

    .line 3050
    return-void

    .line 3046
    :cond_1
    iget-object v1, p0, Landroid/media/MediaPlayer$TimeProvider;->mTimes:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 3047
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Landroid/media/MediaPlayer$TimeProvider;->scheduleNotification(IJ)V

    goto :goto_0

    .line 3049
    .end local v0    # "i":I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
