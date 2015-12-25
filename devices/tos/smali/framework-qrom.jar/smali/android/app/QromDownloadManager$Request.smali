.class public Landroid/app/QromDownloadManager$Request;
.super Landroid/app/DownloadManager$Request;
.source "QromDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/QromDownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Request"
.end annotation


# instance fields
.field private mBypassRecommenderSizeLimit:Z

.field private mIconUrl:Ljava/lang/String;

.field private mNeedBroadcast:Z

.field private mPushedTotalSize:J

.field private mUnVisibleWhenComplete:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 404
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 398
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mNeedBroadcast:Z

    .line 399
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mUnVisibleWhenComplete:Z

    .line 400
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mBypassRecommenderSizeLimit:Z

    .line 401
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/QromDownloadManager$Request;->mPushedTotalSize:J

    .line 405
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .line 398
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mNeedBroadcast:Z

    .line 399
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mUnVisibleWhenComplete:Z

    .line 400
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mBypassRecommenderSizeLimit:Z

    .line 401
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/QromDownloadManager$Request;->mPushedTotalSize:J

    .line 409
    return-void
.end method


# virtual methods
.method public setBypassRecommenderSizeLimit(Z)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "byPass"    # Z

    .prologue
    .line 427
    iput-boolean p1, p0, Landroid/app/QromDownloadManager$Request;->mBypassRecommenderSizeLimit:Z

    .line 428
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 412
    iput-object p1, p0, Landroid/app/QromDownloadManager$Request;->mIconUrl:Ljava/lang/String;

    .line 413
    return-object p0
.end method

.method public setNeedBroadcast(Z)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 417
    iput-boolean p1, p0, Landroid/app/QromDownloadManager$Request;->mNeedBroadcast:Z

    .line 418
    return-object p0
.end method

.method public setTotalLength(J)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "length"    # J

    .prologue
    .line 432
    iput-wide p1, p0, Landroid/app/QromDownloadManager$Request;->mPushedTotalSize:J

    .line 433
    return-object p0
.end method

.method public setUnVisibleWhenComplete(Z)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "isUnvisible"    # Z

    .prologue
    .line 422
    iput-boolean p1, p0, Landroid/app/QromDownloadManager$Request;->mUnVisibleWhenComplete:Z

    .line 423
    return-object p0
.end method

.method protected toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 438
    invoke-super {p0, p1}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 439
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "task_create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 440
    const-string v1, "need_broadcast"

    iget-boolean v2, p0, Landroid/app/QromDownloadManager$Request;->mNeedBroadcast:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 441
    const-string v1, "unvisible_when_complete"

    iget-boolean v2, p0, Landroid/app/QromDownloadManager$Request;->mUnVisibleWhenComplete:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 442
    const-string v1, "bypass_recommended_size_limit"

    iget-boolean v2, p0, Landroid/app/QromDownloadManager$Request;->mBypassRecommenderSizeLimit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 444
    iget-object v1, p0, Landroid/app/QromDownloadManager$Request;->mIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "task_icon_url"

    iget-object v2, p0, Landroid/app/QromDownloadManager$Request;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    :cond_0
    iget-wide v1, p0, Landroid/app/QromDownloadManager$Request;->mPushedTotalSize:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 448
    const-string v1, "push_total_size"

    iget-wide v2, p0, Landroid/app/QromDownloadManager$Request;->mPushedTotalSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 450
    :cond_1
    return-object v0
.end method
