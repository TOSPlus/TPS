.class public Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;
.super Ljava/lang/Object;
.source "SyncStorageEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/SyncStorageEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthorityInfo"
.end annotation


# instance fields
.field final account:Landroid/accounts/Account;

.field final authority:Ljava/lang/String;

.field backoffDelay:J

.field backoffTime:J

.field delayUntil:J

.field enabled:Z

.field final ident:I

.field final periodicSyncs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end field

.field final service:Landroid/content/ComponentName;

.field syncable:I

.field final userId:I


# direct methods
.method constructor <init>(Landroid/accounts/Account;ILjava/lang/String;I)V
    .locals 9
    .param p1, "account"    # Landroid/accounts/Account;
    .param p2, "userId"    # I
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "ident"    # I

    .prologue
    const-wide/32 v4, 0x15180

    const-wide/16 v1, -0x1

    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    .line 255
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    .line 256
    iput-object p3, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->service:Landroid/content/ComponentName;

    .line 258
    iput p4, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 260
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 261
    iput-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 262
    iput-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 263
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 265
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/PeriodicSync;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v6

    move-object v1, p1

    move-object v2, p3

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    return-void
.end method

.method constructor <init>(Landroid/content/ComponentName;II)V
    .locals 9
    .param p1, "cname"    # Landroid/content/ComponentName;
    .param p2, "userId"    # I
    .param p3, "ident"    # I

    .prologue
    const-wide/32 v4, 0x15180

    const-wide/16 v1, -0x1

    const/4 v0, 0x0

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    .line 280
    iput p2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    .line 281
    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 282
    iput-object p1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->service:Landroid/content/ComponentName;

    .line 283
    iput p3, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 285
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 286
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 287
    iput-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 288
    iput-wide v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 289
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 290
    iget-object v8, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v0, Landroid/content/PeriodicSync;

    iget-object v1, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4, v5}, Lcom/android/server/content/SyncStorageEngine;->calculateDefaultFlexTime(J)J

    move-result-wide v6

    invoke-direct/range {v0 .. v7}, Landroid/content/PeriodicSync;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JJ)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method constructor <init>(Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;)V
    .locals 4
    .param p1, "toCopy"    # Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->account:Landroid/accounts/Account;

    .line 228
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->userId:I

    .line 229
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->authority:Ljava/lang/String;

    .line 230
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->service:Landroid/content/ComponentName;

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->service:Landroid/content/ComponentName;

    .line 231
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->ident:I

    .line 232
    iget-boolean v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    iput-boolean v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->enabled:Z

    .line 233
    iget v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    iput v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->syncable:I

    .line 234
    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffTime:J

    .line 235
    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->backoffDelay:J

    .line 236
    iget-wide v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    iput-wide v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->delayUntil:J

    .line 237
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    .line 238
    iget-object v2, p1, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/PeriodicSync;

    .line 240
    .local v1, "sync":Landroid/content/PeriodicSync;
    iget-object v2, p0, Lcom/android/server/content/SyncStorageEngine$AuthorityInfo;->periodicSyncs:Ljava/util/ArrayList;

    new-instance v3, Landroid/content/PeriodicSync;

    invoke-direct {v3, v1}, Landroid/content/PeriodicSync;-><init>(Landroid/content/PeriodicSync;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 242
    .end local v1    # "sync":Landroid/content/PeriodicSync;
    :cond_0
    return-void
.end method
