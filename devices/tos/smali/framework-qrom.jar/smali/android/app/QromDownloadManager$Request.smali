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

.field private mUnVisibleWhenComplete:Z


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v0, 0x0

    .line 391
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 386
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mNeedBroadcast:Z

    .line 387
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mUnVisibleWhenComplete:Z

    .line 388
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mBypassRecommenderSizeLimit:Z

    .line 392
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "uriString"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 395
    invoke-direct {p0, p1}, Landroid/app/DownloadManager$Request;-><init>(Ljava/lang/String;)V

    .line 386
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mNeedBroadcast:Z

    .line 387
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mUnVisibleWhenComplete:Z

    .line 388
    iput-boolean v0, p0, Landroid/app/QromDownloadManager$Request;->mBypassRecommenderSizeLimit:Z

    .line 396
    return-void
.end method


# virtual methods
.method public setBypassRecommenderSizeLimit(Z)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "byPass"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Landroid/app/QromDownloadManager$Request;->mBypassRecommenderSizeLimit:Z

    .line 415
    return-object p0
.end method

.method public setIconUrl(Ljava/lang/String;)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "iconUrl"    # Ljava/lang/String;

    .prologue
    .line 399
    iput-object p1, p0, Landroid/app/QromDownloadManager$Request;->mIconUrl:Ljava/lang/String;

    .line 400
    return-object p0
.end method

.method public setNeedBroadcast(Z)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "need"    # Z

    .prologue
    .line 404
    iput-boolean p1, p0, Landroid/app/QromDownloadManager$Request;->mNeedBroadcast:Z

    .line 405
    return-object p0
.end method

.method public setUnVisibleWhenComplete(Z)Landroid/app/QromDownloadManager$Request;
    .locals 0
    .param p1, "isUnvisible"    # Z

    .prologue
    .line 409
    iput-boolean p1, p0, Landroid/app/QromDownloadManager$Request;->mUnVisibleWhenComplete:Z

    .line 410
    return-object p0
.end method

.method protected toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 420
    invoke-super {p0, p1}, Landroid/app/DownloadManager$Request;->toContentValues(Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    .line 421
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "task_create_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 422
    const-string v1, "need_broadcast"

    iget-boolean v2, p0, Landroid/app/QromDownloadManager$Request;->mNeedBroadcast:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 423
    const-string v1, "unvisible_when_complete"

    iget-boolean v2, p0, Landroid/app/QromDownloadManager$Request;->mUnVisibleWhenComplete:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 424
    const-string v1, "bypass_recommended_size_limit"

    iget-boolean v2, p0, Landroid/app/QromDownloadManager$Request;->mBypassRecommenderSizeLimit:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 426
    iget-object v1, p0, Landroid/app/QromDownloadManager$Request;->mIconUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 427
    const-string v1, "task_icon_url"

    iget-object v2, p0, Landroid/app/QromDownloadManager$Request;->mIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    return-object v0
.end method
