.class public abstract Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;
.super Lcom/tencent/qrom/support/v4/content/Loader;
.source "AsyncTaskLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qrom/support/v4/content/Loader",
        "<TD;>;"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "AsyncTaskLoader"


# instance fields
.field volatile mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field mLastLoadCompleteTime:J

.field volatile mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;"
        }
    .end annotation
.end field

.field mUpdateThrottle:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-direct {p0, p1}, Lcom/tencent/qrom/support/v4/content/Loader;-><init>(Landroid/content/Context;)V

    .line 89
    const-wide/16 v0, -0x2710

    iput-wide v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 94
    return-void
.end method


# virtual methods
.method public cancelLoad()Z
    .locals 4

    .prologue
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 137
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_1

    .line 138
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v1, :cond_2

    .line 143
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v1, v1, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-boolean v0, v1, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 145
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 147
    :cond_0
    iput-object v3, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 167
    :cond_1
    :goto_0
    return v0

    .line 149
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v1, v1, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v1, :cond_3

    .line 153
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-boolean v0, v1, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 154
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 155
    iput-object v3, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    goto :goto_0

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->cancel(Z)Z

    move-result v0

    .line 160
    .local v0, "cancelled":Z
    if-eqz v0, :cond_4

    .line 161
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iput-object v1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 163
    :cond_4
    iput-object v3, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    goto :goto_0
.end method

.method dispatchOnCancelled(Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 201
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    if-ne v0, p1, :cond_0

    .line 204
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->rollbackContentChanged()V

    .line 205
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 206
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 207
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    .line 209
    :cond_0
    return-void
.end method

.method dispatchOnLoadComplete(Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader",
            "<TD;>.",
            "LoadTask;",
            "TD;)V"
        }
    .end annotation

    .prologue
    .line 212
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "task":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    .local p2, "data":Ljava/lang/Object;, "TD;"
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eq v0, p1, :cond_0

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->dispatchOnCancelled(Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;Ljava/lang/Object;)V

    .line 227
    :goto_0
    return-void

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->isAbandoned()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->onCanceled(Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->commitContentChanged()V

    .line 221
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    .line 222
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 224
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 269
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/support/v4/content/Loader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_0

    .line 271
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 272
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v0, :cond_1

    .line 275
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mCancellingTask="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 276
    const-string v0, " waiting="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v0, v0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 278
    :cond_1
    iget-wide v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mUpdateThrottle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    iget-wide v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    invoke-static {v0, v1, p3}, Lcom/tencent/qrom/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 281
    const-string v0, " mLastLoadCompleteTime="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget-wide v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3, p3}, Lcom/tencent/qrom/support/v4/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 284
    invoke-virtual {p3}, Ljava/io/PrintWriter;->println()V

    .line 286
    :cond_2
    return-void
.end method

.method executePendingTask()V
    .locals 8

    .prologue
    .line 178
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mCancellingTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    if-eqz v2, :cond_1

    .line 179
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-boolean v2, v2, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 181
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    :cond_0
    iget-wide v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 184
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 185
    .local v0, "now":J
    iget-wide v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v4, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    .line 190
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->waiting:Z

    .line 191
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    iget-wide v4, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mLastLoadCompleteTime:J

    iget-wide v6, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    add-long/2addr v4, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 198
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    sget-object v4, Lcom/tencent/qrom/support/v4/content/ModernAsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v4, v2}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/tencent/qrom/support/v4/content/ModernAsyncTask;

    goto :goto_0
.end method

.method public abstract loadInBackground()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation
.end method

.method public onCanceled(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    .local p1, "data":Ljava/lang/Object;, "TD;"
    return-void
.end method

.method protected onForceLoad()V
    .locals 1

    .prologue
    .line 112
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-super {p0}, Lcom/tencent/qrom/support/v4/content/Loader;->onForceLoad()V

    .line 113
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->cancelLoad()Z

    .line 114
    new-instance v0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;-><init>(Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;)V

    iput-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 116
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->executePendingTask()V

    .line 117
    return-void
.end method

.method protected onLoadInBackground()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TD;"
        }
    .end annotation

    .prologue
    .line 243
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->loadInBackground()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setUpdateThrottle(J)V
    .locals 2
    .param p1, "delayMS"    # J

    .prologue
    .line 104
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    iput-wide p1, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mUpdateThrottle:J

    .line 105
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mHandler:Landroid/os/Handler;

    .line 108
    :cond_0
    return-void
.end method

.method public waitForLoader()V
    .locals 2

    .prologue
    .line 257
    .local p0, "this":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>;"
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader;->mTask:Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;

    .line 258
    .local v0, "task":Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;, "Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader<TD;>.LoadTask;"
    if-eqz v0, :cond_0

    .line 260
    :try_start_0
    # getter for: Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->done:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;->access$000(Lcom/tencent/qrom/support/v4/content/AsyncTaskLoader$LoadTask;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 261
    :catch_0
    move-exception v1

    goto :goto_0
.end method
