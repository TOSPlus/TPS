.class Lcom/tencent/qrom/gif/RenderTask;
.super Lcom/tencent/qrom/gif/SafeRunnable;
.source "RenderTask.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RenderTask"


# instance fields
.field private curEntry:I

.field private currentIdx:I

.field private hitcache:Z

.field private mBitmapCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field volatile mNotifyListenersTarFramePos:I

.field private final mNotifyListenersTask:Ljava/lang/Runnable;

.field private maxEntry:I

.field private totalFrames:I

.field private usecache:Z


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gif/GifDrawable;)V
    .locals 2
    .param p1, "gifDrawable"    # Lcom/tencent/qrom/gif/GifDrawable;

    .prologue
    const/4 v1, 0x0

    .line 20
    invoke-direct {p0, p1}, Lcom/tencent/qrom/gif/SafeRunnable;-><init>(Lcom/tencent/qrom/gif/GifDrawable;)V

    .line 14
    iput-boolean v1, p0, Lcom/tencent/qrom/gif/RenderTask;->usecache:Z

    iput-boolean v1, p0, Lcom/tencent/qrom/gif/RenderTask;->hitcache:Z

    .line 16
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTarFramePos:I

    .line 28
    new-instance v0, Lcom/tencent/qrom/gif/RenderTask$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/gif/RenderTask$1;-><init>(Lcom/tencent/qrom/gif/RenderTask;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTask:Ljava/lang/Runnable;

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    .line 22
    iput v1, p0, Lcom/tencent/qrom/gif/RenderTask;->curEntry:I

    .line 23
    iput v1, p0, Lcom/tencent/qrom/gif/RenderTask;->maxEntry:I

    .line 24
    iput v1, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    .line 25
    iput v1, p0, Lcom/tencent/qrom/gif/RenderTask;->totalFrames:I

    .line 26
    return-void
.end method


# virtual methods
.method EnableCache(I)V
    .locals 3
    .param p1, "entryNum"    # I

    .prologue
    const/4 v0, 0x0

    .line 39
    if-lez p1, :cond_0

    .line 41
    iput p1, p0, Lcom/tencent/qrom/gif/RenderTask;->maxEntry:I

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/gif/RenderTask;->usecache:Z

    .line 49
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifDrawable;->getNumberOfFrames()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/gif/RenderTask;->totalFrames:I

    .line 50
    iget-object v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTarFramePos:I

    .line 52
    const-string v0, "RenderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EnableCache maxEntry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/gif/RenderTask;->maxEntry:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " totalFrames = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/gif/RenderTask;->totalFrames:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mNotifyListenersTarFramePos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTarFramePos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    return-void

    .line 45
    :cond_0
    iput v0, p0, Lcom/tencent/qrom/gif/RenderTask;->maxEntry:I

    .line 46
    iput-boolean v0, p0, Lcom/tencent/qrom/gif/RenderTask;->usecache:Z

    goto :goto_0
.end method

.method public buildCache()V
    .locals 5

    .prologue
    .line 64
    iget v2, p0, Lcom/tencent/qrom/gif/RenderTask;->curEntry:I

    iget v3, p0, Lcom/tencent/qrom/gif/RenderTask;->maxEntry:I

    if-ge v2, v3, :cond_0

    .line 66
    iget-object v2, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v0

    .line 67
    .local v0, "idx":I
    iget-object v2, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifDrawable;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 68
    .local v1, "tmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget v2, p0, Lcom/tencent/qrom/gif/RenderTask;->curEntry:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/tencent/qrom/gif/RenderTask;->curEntry:I

    .line 71
    const-string v2, "RenderTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildCache for the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qrom/gif/RenderTask;->curEntry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "th frame, CurrentFrameIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v4}, Lcom/tencent/qrom/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v0    # "idx":I
    .end local v1    # "tmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 73
    .restart local v0    # "idx":I
    .restart local v1    # "tmp":Landroid/graphics/Bitmap;
    :cond_1
    const-string v2, "RenderTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildCache error in ilegal Bitmap for the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/tencent/qrom/gif/RenderTask;->curEntry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "th frame, CurrentFrameIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v4}, Lcom/tencent/qrom/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method cacheReady()Z
    .locals 2

    .prologue
    .line 103
    iget v0, p0, Lcom/tencent/qrom/gif/RenderTask;->curEntry:I

    iget v1, p0, Lcom/tencent/qrom/gif/RenderTask;->maxEntry:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public destroyCache()V
    .locals 3

    .prologue
    .line 80
    iget-object v1, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 81
    iget-object v1, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    .local v0, "it":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 88
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    .line 89
    const-string v1, "RenderTask"

    const-string v2, "### destroyCache ! ###"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    .end local v0    # "it":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public doWork()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    .line 121
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/RenderTask;->useCache()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 123
    iget v3, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    .line 124
    iget v3, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    iget v4, p0, Lcom/tencent/qrom/gif/RenderTask;->totalFrames:I

    rem-int/2addr v3, v4

    iput v3, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    .line 125
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/RenderTask;->retrieveFromCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 128
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iput-object v0, v3, Lcom/tencent/qrom/gif/GifDrawable;->drawBuffer:Landroid/graphics/Bitmap;

    .line 129
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/gif/RenderTask;->hitcache:Z

    .line 130
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget v4, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gif/GifDrawable;->getFrameDuration(I)I

    move-result v3

    int-to-long v1, v3

    .line 156
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .local v1, "invalidationDelay":J
    :goto_0
    cmp-long v3, v1, v7

    if-ltz v3, :cond_6

    .line 157
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    add-long/2addr v4, v1

    iput-wide v4, v3, Lcom/tencent/qrom/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 158
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v3}, Lcom/tencent/qrom/gif/GifDrawable;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-boolean v3, v3, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-boolean v3, v3, Lcom/tencent/qrom/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-nez v3, :cond_0

    .line 160
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v3, v3, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {v3, p0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 161
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, v4, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, p0, v1, v2, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v4

    iput-object v4, v3, Lcom/tencent/qrom/gif/GifDrawable;->mSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 169
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v3}, Lcom/tencent/qrom/gif/GifDrawable;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v3, v3, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    invoke-virtual {v3, v6}, Lcom/tencent/qrom/gif/InvalidationHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v3, v3, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    invoke-virtual {v3, v6, v7, v8}, Lcom/tencent/qrom/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v3, v3, Lcom/tencent/qrom/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    iget v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTarFramePos:I

    if-ne v3, v4, :cond_2

    .line 175
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTask:Ljava/lang/Runnable;

    iget-object v5, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-wide v5, v5, Lcom/tencent/qrom/gif/GifDrawable;->mNextFrameRenderTime:J

    invoke-virtual {v3, v4, v5, v6}, Lcom/tencent/qrom/gif/GifDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 177
    :cond_2
    return-void

    .line 134
    .end local v1    # "invalidationDelay":J
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/RenderTask;->cacheReady()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/tencent/qrom/gif/RenderTask;->hitcache:Z

    if-eqz v3, :cond_4

    .line 136
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget v4, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gif/GifDrawable;->seekToFrame(I)V

    .line 137
    iput-boolean v6, p0, Lcom/tencent/qrom/gif/RenderTask;->hitcache:Z

    .line 138
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget v4, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gif/GifDrawable;->getFrameDuration(I)I

    move-result v3

    int-to-long v1, v3

    .restart local v1    # "invalidationDelay":J
    goto/16 :goto_0

    .line 142
    .end local v1    # "invalidationDelay":J
    :cond_4
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v3, v3, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget-object v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, v4, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gif/GifInfoHandle;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v1

    .line 143
    .restart local v1    # "invalidationDelay":J
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, v4, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iput-object v4, v3, Lcom/tencent/qrom/gif/GifDrawable;->drawBuffer:Landroid/graphics/Bitmap;

    .line 144
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/RenderTask;->buildCache()V

    .line 145
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v3}, Lcom/tencent/qrom/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    goto/16 :goto_0

    .line 151
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v1    # "invalidationDelay":J
    :cond_5
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v3, v3, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget-object v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, v4, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/gif/GifInfoHandle;->renderFrame(Landroid/graphics/Bitmap;)J

    move-result-wide v1

    .line 152
    .restart local v1    # "invalidationDelay":J
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v4, v4, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iput-object v4, v3, Lcom/tencent/qrom/gif/GifDrawable;->drawBuffer:Landroid/graphics/Bitmap;

    .line 153
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v3}, Lcom/tencent/qrom/gif/GifDrawable;->getCurrentFrameIndex()I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    goto/16 :goto_0

    .line 165
    :cond_6
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    const-wide/high16 v4, -0x8000000000000000L

    iput-wide v4, v3, Lcom/tencent/qrom/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 166
    iget-object v3, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iput-boolean v6, v3, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    goto/16 :goto_1
.end method

.method retrieveFromCache()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 95
    iget v0, p0, Lcom/tencent/qrom/gif/RenderTask;->curEntry:I

    iget v1, p0, Lcom/tencent/qrom/gif/RenderTask;->maxEntry:I

    if-ge v0, v1, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    iget v1, p0, Lcom/tencent/qrom/gif/RenderTask;->currentIdx:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setTarFramePos(I)V
    .locals 3
    .param p1, "framePos"    # I

    .prologue
    .line 108
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    add-int/lit8 v0, v0, -0x1

    if-gt p1, v0, :cond_0

    .line 109
    iput p1, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTarFramePos:I

    .line 113
    :goto_0
    const-string v0, "RenderTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTarFramePos mNotifyListenersTarFramePos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTarFramePos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " framePos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mNotifyListenersTarFramePos:I

    goto :goto_0
.end method

.method useCache()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/tencent/qrom/gif/RenderTask;->usecache:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/gif/RenderTask;->mBitmapCache:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
