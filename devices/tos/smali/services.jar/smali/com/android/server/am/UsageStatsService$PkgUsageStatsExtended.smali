.class Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
.super Ljava/lang/Object;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UsageStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgUsageStatsExtended"
.end annotation


# instance fields
.field final mFullyDrawnTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$TimeStats;",
            ">;"
        }
    .end annotation
.end field

.field mLaunchCount:I

.field final mLaunchTimes:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$TimeStats;",
            ">;"
        }
    .end annotation
.end field

.field mPausedTime:J

.field mResumedTime:J

.field mUsageTime:J

.field final synthetic this$0:Lcom/android/server/am/UsageStatsService;


# direct methods
.method constructor <init>(Lcom/android/server/am/UsageStatsService;)V
    .locals 2

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    .line 171
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    .line 179
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 180
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 181
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V
    .locals 7
    .param p2, "in"    # Landroid/os/Parcel;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->this$0:Lcom/android/server/am/UsageStatsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    .line 171
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5}, Landroid/util/ArrayMap;-><init>()V

    iput-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    iput v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 191
    .local v3, "numLaunchTimeStats":I
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 193
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, "comp":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v4, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>(Landroid/os/Parcel;)V

    .line 196
    .local v4, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "comp":Ljava/lang/String;
    .end local v4    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 201
    .local v2, "numFullyDrawnTimeStats":I
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 202
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .restart local v0    # "comp":Ljava/lang/String;
    new-instance v4, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-direct {v4, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>(Landroid/os/Parcel;)V

    .line 206
    .restart local v4    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 208
    .end local v0    # "comp":Ljava/lang/String;
    .end local v4    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_1
    return-void
.end method


# virtual methods
.method addFullyDrawnTime(Ljava/lang/String;I)V
    .locals 2
    .param p1, "comp"    # Ljava/lang/String;
    .param p2, "millis"    # I

    .prologue
    .line 241
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 242
    .local v0, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .end local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    .line 244
    .restart local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;->add(I)V

    .line 247
    return-void
.end method

.method addLaunchCount(Ljava/lang/String;)V
    .locals 2
    .param p1, "comp"    # Ljava/lang/String;

    .prologue
    .line 223
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 224
    .local v0, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    if-nez v0, :cond_0

    .line 225
    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .end local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    .line 226
    .restart local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;->incCount()V

    .line 229
    return-void
.end method

.method addLaunchTime(Ljava/lang/String;I)V
    .locals 2
    .param p1, "comp"    # Ljava/lang/String;
    .param p2, "millis"    # I

    .prologue
    .line 232
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 233
    .local v0, "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/android/server/am/UsageStatsService$TimeStats;

    .end local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    invoke-direct {v0}, Lcom/android/server/am/UsageStatsService$TimeStats;-><init>()V

    .line 235
    .restart local v0    # "times":Lcom/android/server/am/UsageStatsService$TimeStats;
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/server/am/UsageStatsService$TimeStats;->add(I)V

    .line 238
    return-void
.end method

.method clear()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 268
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 269
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 270
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 271
    return-void
.end method

.method updatePause()V
    .locals 6

    .prologue
    .line 218
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mPausedTime:J

    .line 219
    iget-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    iget-wide v2, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mPausedTime:J

    iget-wide v4, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mResumedTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    .line 220
    return-void
.end method

.method updateResume(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "comp"    # Ljava/lang/String;
    .param p2, "launched"    # Z

    .prologue
    .line 211
    if-eqz p2, :cond_0

    .line 212
    iget v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    .line 214
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mResumedTime:J

    .line 215
    return-void
.end method

.method writeToParcel(Landroid/os/Parcel;)V
    .locals 5
    .param p1, "out"    # Landroid/os/Parcel;

    .prologue
    .line 250
    iget v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    iget-wide v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V

    .line 252
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 253
    .local v2, "numLaunchTimeStats":I
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 255
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$TimeStats;->writeToParcel(Landroid/os/Parcel;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 258
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 259
    .local v1, "numFullyDrawnTimeStats":I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 260
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_1

    .line 261
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mFullyDrawnTimes:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$TimeStats;

    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$TimeStats;->writeToParcel(Landroid/os/Parcel;)V

    .line 260
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 264
    :cond_1
    return-void
.end method
