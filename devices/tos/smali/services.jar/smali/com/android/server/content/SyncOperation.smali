.class public Lcom/android/server/content/SyncOperation;
.super Ljava/lang/Object;
.source "SyncOperation.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field public static final REASON_ACCOUNTS_UPDATED:I = -0x2

.field public static final REASON_BACKGROUND_DATA_SETTINGS_CHANGED:I = -0x1

.field public static final REASON_IS_SYNCABLE:I = -0x5

.field public static final REASON_MASTER_SYNC_AUTO:I = -0x7

.field private static REASON_NAMES:[Ljava/lang/String; = null

.field public static final REASON_PERIODIC:I = -0x4

.field public static final REASON_SERVICE_CHANGED:I = -0x3

.field public static final REASON_SYNC_AUTO:I = -0x6

.field public static final REASON_USER_START:I = -0x8


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final allowParallelSyncs:Z

.field public final authority:Ljava/lang/String;

.field public backoff:Ljava/lang/Long;

.field public delayUntil:J

.field public effectiveRunTime:J

.field private final expedited:Z

.field public extras:Landroid/os/Bundle;

.field public flexTime:J

.field public final key:Ljava/lang/String;

.field public latestRunTime:J

.field public pendingOperation:Lcom/android/server/content/SyncStorageEngine$PendingOperation;

.field public final reason:I

.field public final service:Landroid/content/ComponentName;

.field public syncSource:I

.field public final userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DataSettingsChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "AccountsUpdated"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ServiceChanged"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Periodic"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "IsSyncable"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "AutoSync"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "MasterSyncAuto"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UserStart"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;IIILjava/lang/String;Landroid/os/Bundle;JJJJZ)V
    .locals 7
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "reason"    # I
    .param p4, "source"    # I
    .param p5, "authority"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "runTimeFromNow"    # J
    .param p9, "flexTime"    # J
    .param p11, "backoff"    # J
    .param p13, "delayUntil"    # J
    .param p15, "allowParallelSyncs"    # Z

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    .line 90
    iput-object p1, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    .line 91
    iput-object p5, p0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    .line 92
    iput p2, p0, Lcom/android/server/content/SyncOperation;->userId:I

    .line 93
    iput p3, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 94
    iput p4, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 95
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 96
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4, p6}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 97
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {p0, v4}, Lcom/android/server/content/SyncOperation;->cleanBundle(Landroid/os/Bundle;)V

    .line 98
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    .line 99
    invoke-static/range {p11 .. p12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    .line 100
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 102
    .local v2, "now":J
    const-wide/16 v4, 0x0

    cmp-long v4, p7, v4

    if-gez v4, :cond_1

    .line 104
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v5, "expedited"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v5, "expedited"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 107
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    .line 108
    iput-wide v2, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    .line 109
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    .line 117
    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 118
    return-void

    .line 111
    :cond_1
    iget-object v4, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v5, "expedited"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 112
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    .line 113
    add-long v4, v2, p7

    iput-wide v4, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    .line 114
    move-wide/from16 v0, p9

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/server/content/SyncOperation;)V
    .locals 2
    .param p1, "other"    # Lcom/android/server/content/SyncOperation;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    .line 123
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    .line 124
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    .line 125
    iget v0, p1, Lcom/android/server/content/SyncOperation;->userId:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->userId:I

    .line 126
    iget v0, p1, Lcom/android/server/content/SyncOperation;->reason:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->reason:I

    .line 127
    iget v0, p1, Lcom/android/server/content/SyncOperation;->syncSource:I

    iput v0, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    .line 128
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    .line 129
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->expedited:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    .line 130
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    .line 132
    iget-object v0, p1, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    .line 133
    iget-boolean v0, p1, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    iput-boolean v0, p0, Lcom/android/server/content/SyncOperation;->allowParallelSyncs:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->updateEffectiveRunTime()V

    .line 135
    invoke-direct {p0}, Lcom/android/server/content/SyncOperation;->toKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/content/SyncOperation;->key:Ljava/lang/String;

    .line 136
    return-void
.end method

.method private cleanBundle(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 144
    const-string v0, "upload"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 145
    const-string v0, "force"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 146
    const-string v0, "ignore_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 147
    const-string v0, "ignore_backoff"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 148
    const-string v0, "do_not_retry"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 149
    const-string v0, "discard_deletions"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 150
    const-string v0, "expedited"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 151
    const-string v0, "deletions_override"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 152
    const-string v0, "disallow_metered"

    invoke-direct {p0, p1, v0}, Lcom/android/server/content/SyncOperation;->removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 155
    const-string v0, "expected_upload"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 156
    const-string v0, "expected_download"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 157
    return-void
.end method

.method public static extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    .line 258
    const-string v2, "["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 260
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 262
    .end local v1    # "key":Ljava/lang/String;
    :cond_0
    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    return-void
.end method

.method public static reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;
    .locals 5
    .param p0, "pm"    # Landroid/content/pm/PackageManager;
    .param p1, "reason"    # I

    .prologue
    .line 196
    if-ltz p1, :cond_3

    .line 197
    if-eqz p0, :cond_2

    .line 198
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "packages":[Ljava/lang/String;
    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 200
    const/4 v3, 0x0

    aget-object v1, v2, v3

    .line 215
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 202
    .restart local v2    # "packages":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 206
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 208
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 211
    :cond_3
    neg-int v3, p1

    add-int/lit8 v0, v3, -0x1

    .line 212
    .local v0, "index":I
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    array-length v3, v3

    if-lt v0, v3, :cond_4

    .line 213
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 215
    :cond_4
    sget-object v3, Lcom/android/server/content/SyncOperation;->REASON_NAMES:[Ljava/lang/String;

    aget-object v1, v3, v0

    goto :goto_0
.end method

.method private removeFalseExtra(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "extraName"    # Ljava/lang/String;

    .prologue
    .line 160
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 161
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method private toKey()Ljava/lang/String;
    .locals 3

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 239
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    .line 240
    const-string v1, "authority: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " account {name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :goto_0
    const-string v1, " extras: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 254
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 244
    :cond_0
    const-string v1, "service {package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " user="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", class="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 13
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const-wide/16 v11, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    .line 285
    move-object v0, p1

    check-cast v0, Lcom/android/server/content/SyncOperation;

    .line 286
    .local v0, "other":Lcom/android/server/content/SyncOperation;
    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    iget-boolean v8, v0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eq v7, v8, :cond_2

    .line 287
    iget-boolean v7, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eqz v7, :cond_1

    .line 297
    :cond_0
    :goto_0
    return v5

    :cond_1
    move v5, v6

    .line 287
    goto :goto_0

    .line 289
    :cond_2
    iget-wide v7, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    iget-wide v9, p0, Lcom/android/server/content/SyncOperation;->flexTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .line 290
    .local v3, "thisIntervalStart":J
    iget-wide v7, v0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    iget-wide v9, v0, Lcom/android/server/content/SyncOperation;->flexTime:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 292
    .local v1, "otherIntervalStart":J
    cmp-long v7, v3, v1

    if-ltz v7, :cond_0

    .line 294
    cmp-long v5, v1, v3

    if-gez v5, :cond_3

    move v5, v6

    .line 295
    goto :goto_0

    .line 297
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;
    .locals 4
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "useOneLine"    # Z

    .prologue
    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/content/SyncOperation;->userId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/content/SyncStorageEngine;->SOURCES:[Ljava/lang/String;

    iget v3, p0, Lcom/android/server/content/SyncOperation;->syncSource:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", latestRunTime "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 183
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-boolean v1, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    if-eqz v1, :cond_0

    .line 184
    const-string v1, ", EXPEDITED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    :cond_0
    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    iget v1, p0, Lcom/android/server/content/SyncOperation;->reason:I

    invoke-static {p1, v1}, Lcom/android/server/content/SyncOperation;->reasonToString(Landroid/content/pm/PackageManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 189
    const-string v1, "\n    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    iget-object v1, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/server/content/SyncOperation;->extrasToStringBuilder(Landroid/os/Bundle;Ljava/lang/StringBuilder;)V

    .line 192
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public ignoreBackoff()Z
    .locals 3

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "ignore_backoff"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isExpedited()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Lcom/android/server/content/SyncOperation;->expedited:Z

    return v0
.end method

.method public isInitialization()Z
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "initialize"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isMeteredDisallowed()Z
    .locals 3

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "disallow_metered"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 167
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/content/SyncOperation;->dump(Landroid/content/pm/PackageManager;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateEffectiveRunTime()V
    .locals 4

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/server/content/SyncOperation;->ignoreBackoff()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    :goto_0
    iput-wide v0, p0, Lcom/android/server/content/SyncOperation;->effectiveRunTime:J

    .line 276
    return-void

    .line 273
    :cond_0
    iget-wide v0, p0, Lcom/android/server/content/SyncOperation;->latestRunTime:J

    iget-wide v2, p0, Lcom/android/server/content/SyncOperation;->delayUntil:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/content/SyncOperation;->backoff:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0
.end method
