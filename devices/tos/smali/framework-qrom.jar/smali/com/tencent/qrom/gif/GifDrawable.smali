.class public Lcom/tencent/qrom/gif/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GifDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/widget/MediaController$MediaPlayerControl;


# static fields
.field private static final TAG:Ljava/lang/String; = "GifDrawable"


# instance fields
.field private cacheMemoryPercent:F

.field drawBuffer:Landroid/graphics/Bitmap;

.field final mBuffer:Landroid/graphics/Bitmap;

.field private final mDstRect:Landroid/graphics/Rect;

.field final mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field final mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

.field final mIsRenderingTriggeredOnDraw:Z

.field volatile mIsRunning:Z

.field final mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/tencent/qrom/gif/AnimationListener;",
            ">;"
        }
    .end annotation
.end field

.field final mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

.field mNextFrameRenderTime:J

.field protected final mPaint:Landroid/graphics/Paint;

.field private final mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

.field mSchedule:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture",
            "<*>;"
        }
    .end annotation
.end field

.field private final mSrcRect:Landroid/graphics/Rect;

.field private mTint:Landroid/content/res/ColorStateList;

.field private mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
    .locals 6
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 201
    invoke-static {p1, p2, v5}, Lcom/tencent/qrom/gif/GifInfoHandle;->openUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetFileDescriptor;I)V
    .locals 6
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p2, "cachePercent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 153
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 154
    return-void
.end method

.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "assets"    # Landroid/content/res/AssetManager;
    .param p2, "assetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;I)V

    .line 104
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;I)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Landroid/content/res/Resources;II)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;II)V
    .locals 1
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "cachePercent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Landroid/content/res/AssetFileDescriptor;I)V

    .line 92
    return-void
.end method

.method constructor <init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V
    .locals 6
    .param p1, "gifInfoHandle"    # Lcom/tencent/qrom/gif/GifInfoHandle;
    .param p2, "oldDrawable"    # Lcom/tencent/qrom/gif/GifDrawable;
    .param p3, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p4, "isRenderingTriggeredOnDraw"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 207
    return-void
.end method

.method constructor <init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V
    .locals 7
    .param p1, "gifInfoHandle"    # Lcom/tencent/qrom/gif/GifInfoHandle;
    .param p2, "oldDrawable"    # Lcom/tencent/qrom/gif/GifDrawable;
    .param p3, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p4, "isRenderingTriggeredOnDraw"    # Z
    .param p5, "cachePercent"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 210
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 51
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    .line 52
    const-wide/high16 v3, -0x8000000000000000L

    iput-wide v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 54
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    .line 58
    new-instance v3, Landroid/graphics/Paint;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    .line 65
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 72
    new-instance v3, Lcom/tencent/qrom/gif/RenderTask;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/gif/RenderTask;-><init>(Lcom/tencent/qrom/gif/GifDrawable;)V

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    .line 76
    const/high16 v3, 0x3f400000    # 0.75f

    iput v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->cacheMemoryPercent:F

    .line 211
    iput-boolean p4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    .line 212
    if-eqz p3, :cond_3

    .end local p3    # "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :goto_0
    iput-object p3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 213
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    .line 214
    const/4 v2, 0x0

    .line 215
    .local v2, "oldBitmap":Landroid/graphics/Bitmap;
    if-eqz p2, :cond_1

    .line 216
    iget-object v4, p2, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    monitor-enter v4

    .line 217
    :try_start_0
    iget-object v3, p2, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v3}, Lcom/tencent/qrom/gif/GifInfoHandle;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 218
    iget-object v3, p2, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v3, v3, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    iget-object v5, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v5, v5, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    if-lt v3, v5, :cond_0

    iget-object v3, p2, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v3, v3, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    iget-object v5, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v5, v5, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    if-lt v3, v5, :cond_0

    .line 220
    invoke-direct {p2}, Lcom/tencent/qrom/gif/GifDrawable;->shutdown()V

    .line 221
    iget-object v2, p2, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    .line 222
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 225
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_1
    if-nez v2, :cond_4

    .line 229
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v3, v3, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v4, v4, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    .line 234
    :goto_1
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->drawBuffer:Landroid/graphics/Bitmap;

    .line 235
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v4, v4, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    iget-object v5, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v5, v5, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mSrcRect:Landroid/graphics/Rect;

    .line 236
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->getNumberOfFrames()I

    move-result v3

    invoke-static {p5, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x64

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    mul-int/2addr v3, v4

    div-int/lit8 v0, v3, 0x64

    .line 237
    .local v0, "entryNum":I
    const-string v3, "rick_Print:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GifDrawable(GifInfoHandle gifInfoHandle ... cachePercent="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", Need cache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " frame"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-direct {p0, v0}, Lcom/tencent/qrom/gif/GifDrawable;->computingCacheSize(I)I

    move-result v1

    .line 239
    .local v1, "maxCacheSize":I
    const-string v3, "rick_Print:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GifDrawable maxCacheSize="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-ge v1, v0, :cond_2

    .line 241
    move v0, v1

    .line 242
    const-string v3, "rick_Print:"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is over maxCacheSize is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will adjusted to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    :cond_2
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    invoke-virtual {v3, v0}, Lcom/tencent/qrom/gif/RenderTask;->EnableCache(I)V

    .line 246
    new-instance v3, Lcom/tencent/qrom/gif/InvalidationHandler;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/gif/InvalidationHandler;-><init>(Lcom/tencent/qrom/gif/GifDrawable;)V

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    .line 247
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    invoke-virtual {v3}, Lcom/tencent/qrom/gif/RenderTask;->doWork()V

    .line 248
    return-void

    .line 212
    .end local v0    # "entryNum":I
    .end local v1    # "maxCacheSize":I
    .end local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    .restart local p3    # "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    :cond_3
    invoke-static {}, Lcom/tencent/qrom/gif/GifRenderingExecutor;->getInstance()Lcom/tencent/qrom/gif/GifRenderingExecutor;

    move-result-object p3

    goto/16 :goto_0

    .line 225
    .end local p3    # "executor":Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .restart local v2    # "oldBitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 231
    :cond_4
    iput-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    goto/16 :goto_1
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 128
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 129
    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 164
    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1, v5}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;JZ)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 165
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 141
    invoke-static {p1, v5}, Lcom/tencent/qrom/gif/GifInfoHandle;->openMarkableInputStream(Ljava/io/InputStream;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 117
    invoke-static {p1, v5}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 6
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 188
    invoke-static {p1, v5}, Lcom/tencent/qrom/gif/GifInfoHandle;->openDirectByteBuffer(Ljava/nio/ByteBuffer;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 189
    return-void
.end method

.method public constructor <init>([B)V
    .locals 6
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 176
    invoke-static {p1, v5}, Lcom/tencent/qrom/gif/GifInfoHandle;->openByteArray([BZ)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    const/4 v4, 0x1

    move-object v0, p0

    move-object v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;ZI)V

    .line 177
    return-void
.end method

.method private computingCacheSize(I)I
    .locals 16
    .param p1, "entryNum"    # I

    .prologue
    .line 252
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long v8, v12, v14

    .line 254
    .local v8, "maxMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long v10, v12, v14

    .line 256
    .local v10, "totalMemory":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v12

    const-wide/16 v14, 0x400

    div-long v2, v12, v14

    .line 257
    .local v2, "freeMemory":J
    sub-long v12, v8, v10

    add-long v6, v12, v2

    .line 258
    .local v6, "maxFreeMemroy":J
    long-to-float v12, v6

    move-object/from16 v0, p0

    iget v13, v0, Lcom/tencent/qrom/gif/GifDrawable;->cacheMemoryPercent:F

    mul-float/2addr v12, v13

    float-to-long v4, v12

    .line 259
    .local v4, "maxCacheMemroy":J
    const-string v12, "rick_Print:"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "app MaxMemory is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "k cur get Memory is "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "k free Memery in get is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "k app maxFreeMemroy is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "k maxCacheMemroy is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "k"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/tencent/qrom/gif/GifDrawable;->getBitmapMemory(Landroid/graphics/Bitmap;)I

    move-result v12

    div-int/lit16 v1, v12, 0x400

    .line 265
    .local v1, "bitmapMemory":I
    const-string v12, "rick_Print:"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "gif - one frame(bitmap) memory is :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "k"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-gtz v1, :cond_0

    .line 269
    .end local p1    # "entryNum":I
    :goto_0
    return p1

    .restart local p1    # "entryNum":I
    :cond_0
    int-to-long v12, v1

    div-long v12, v4, v12

    long-to-int v0, v12

    move/from16 p1, v0

    goto :goto_0
.end method

.method public static createFromResource(Landroid/content/res/Resources;I)Lcom/tencent/qrom/gif/GifDrawable;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "resourceId"    # I

    .prologue
    .line 490
    :try_start_0
    new-instance v1, Lcom/tencent/qrom/gif/GifDrawable;

    invoke-direct {v1, p0, p1}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Landroid/content/res/Resources;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    :goto_0
    return-object v1

    .line 491
    :catch_0
    move-exception v0

    .line 492
    .local v0, "ignored":Ljava/io/IOException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getBitmapMemory(Landroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    const/4 v0, 0x0

    .line 284
    :goto_0
    return v0

    .line 276
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 277
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    goto :goto_0

    .line 280
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_2

    .line 281
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    goto :goto_0

    .line 284
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method private shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 300
    iput-boolean v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    .line 301
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/gif/InvalidationHandler;->removeMessages(I)V

    .line 303
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->recycle()V

    .line 304
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/RenderTask;->destroyCache()V

    .line 305
    return-void
.end method

.method private updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;
    .locals 3
    .param p1, "tint"    # Landroid/content/res/ColorStateList;
    .param p2, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 883
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 884
    :cond_0
    const/4 v1, 0x0

    .line 888
    :goto_0
    return-object v1

    .line 887
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->getState()[I

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 888
    .local v0, "color":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    invoke-direct {v1, v0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0
.end method

.method private waitForPendingRenderTask()V
    .locals 2

    .prologue
    .line 406
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 407
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mSchedule:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mSchedule:Ljava/util/concurrent/ScheduledFuture;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/gif/InvalidationHandler;->removeMessages(I)V

    .line 417
    return-void

    .line 412
    :catch_0
    move-exception v0

    goto :goto_0

    .line 410
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public addAnimationListener(Lcom/tencent/qrom/gif/AnimationListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/tencent/qrom/gif/AnimationListener;

    .prologue
    .line 846
    if-nez p1, :cond_0

    .line 854
    :goto_0
    return-void

    .line 849
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 852
    :cond_1
    const-string v0, "GifDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addAnimationListener repeate to add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 658
    const/4 v0, 0x1

    return v0
.end method

.method public canSeekBackward()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 668
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->getNumberOfFrames()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canSeekForward()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 678
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->getNumberOfFrames()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const-wide/high16 v9, -0x8000000000000000L

    .line 779
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v3

    if-nez v3, :cond_2

    .line 780
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 781
    const/4 v0, 0x1

    .line 786
    .local v0, "clearColorFilter":Z
    :goto_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    move-result-object v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->drawBuffer:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->drawBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 787
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->drawBuffer:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mSrcRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/tencent/qrom/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 792
    :goto_1
    if-eqz v0, :cond_0

    .line 793
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 796
    :cond_0
    iget-boolean v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    if-eqz v3, :cond_1

    iget-wide v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNextFrameRenderTime:J

    cmp-long v3, v3, v9

    if-eqz v3, :cond_1

    .line 797
    const-wide/16 v3, 0x0

    iget-wide v5, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNextFrameRenderTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 798
    .local v1, "renderDelay":J
    iput-wide v9, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 799
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->remove(Ljava/lang/Runnable;)Z

    .line 800
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v1, v2, v5}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mSchedule:Ljava/util/concurrent/ScheduledFuture;

    .line 802
    .end local v1    # "renderDelay":J
    :cond_1
    return-void

    .line 783
    .end local v0    # "clearColorFilter":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "clearColorFilter":Z
    goto :goto_0

    .line 789
    :cond_3
    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_1
.end method

.method public getAllocationByteCount()J
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 712
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifInfoHandle;->getAllocationByteCount()J

    move-result-wide v0

    .line 713
    .local v0, "byteCount":J
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 714
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 718
    :goto_0
    return-wide v0

    .line 716
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-long v2, v2

    add-long/2addr v0, v2

    goto :goto_0
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 814
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 689
    const/4 v0, 0x0

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 648
    const/16 v0, 0x64

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 431
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getComment()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 876
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 879
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentFrameIndex()I
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getCurrentFrameIndex()I

    move-result v0

    return v0
.end method

.method public getCurrentLoop()I
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getCurrentLoop()I

    move-result v0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 538
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getDuration()I

    move-result v0

    return v0
.end method

.method public getError()Lcom/tencent/qrom/gif/GifError;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v0

    invoke-static {v0}, Lcom/tencent/qrom/gif/GifError;->fromCode(I)Lcom/tencent/qrom/gif/GifError;

    move-result-object v0

    return-object v0
.end method

.method public getFrameByteCount()I
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    return v0
.end method

.method public getFrameDuration(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 981
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getFrameDuration(I)I

    move-result v0

    return v0
.end method

.method public getInputSourceByteCount()J
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getSourceLength()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 316
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->getLoopCount()I

    move-result v0

    return v0
.end method

.method public getMinimumHeight()I
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    return v0
.end method

.method public getMinimumWidth()I
    .locals 1

    .prologue
    .line 836
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    return v0
.end method

.method public getNumberOfFrames()I
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 341
    const/4 v0, -0x2

    return v0
.end method

.method public final getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 809
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getPixel(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 756
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    if-lt p1, v0, :cond_0

    .line 757
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x must be < width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v0, v0, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    if-lt p2, v0, :cond_1

    .line 760
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "y must be < height"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    return v0
.end method

.method public getPixels([I)V
    .locals 8
    .param p1, "pixels"    # [I

    .prologue
    const/4 v2, 0x0

    .line 741
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v3, v1, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v6, v1, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v7, v1, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    move-object v1, p1

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 742
    return-void
.end method

.method public isAnimationCompleted()Z
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->isAnimationCompleted()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 637
    iget-boolean v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    .prologue
    .line 311
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->isRecycled()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 421
    iget-boolean v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 913
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 767
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 768
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1, "stateSet"    # [I

    .prologue
    .line 904
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 906
    const/4 v0, 0x1

    .line 908
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 514
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->stop()V

    .line 515
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 295
    invoke-direct {p0}, Lcom/tencent/qrom/gif/GifDrawable;->shutdown()V

    .line 296
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 297
    return-void
.end method

.method public removeAnimationListener(Lcom/tencent/qrom/gif/AnimationListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/gif/AnimationListener;

    .prologue
    .line 863
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/tencent/qrom/gif/GifDrawable$1;

    invoke-direct {v1, p0, p0}, Lcom/tencent/qrom/gif/GifDrawable$1;-><init>(Lcom/tencent/qrom/gif/GifDrawable;Lcom/tencent/qrom/gif/GifDrawable;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 382
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 557
    if-gez p1, :cond_0

    .line 558
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Position is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 560
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/tencent/qrom/gif/GifDrawable$2;

    invoke-direct {v1, p0, p0, p1}, Lcom/tencent/qrom/gif/GifDrawable$2;-><init>(Lcom/tencent/qrom/gif/GifDrawable;Lcom/tencent/qrom/gif/GifDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 567
    return-void
.end method

.method public seekToFrame(I)V
    .locals 2
    .param p1, "frameIndex"    # I

    .prologue
    .line 577
    if-gez p1, :cond_0

    .line 578
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Frame index is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    new-instance v1, Lcom/tencent/qrom/gif/GifDrawable$3;

    invoke-direct {v1, p0, p0, p1}, Lcom/tencent/qrom/gif/GifDrawable$3;-><init>(Lcom/tencent/qrom/gif/GifDrawable;Lcom/tencent/qrom/gif/GifDrawable;I)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 588
    return-void
.end method

.method public seekToFrameAndGet(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "frameIndex"    # I

    .prologue
    .line 598
    if-gez p1, :cond_0

    .line 599
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    const-string v2, "Frame index is not positive"

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 602
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    monitor-enter v2

    .line 603
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3}, Lcom/tencent/qrom/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    .line 604
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 605
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 606
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/qrom/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 607
    return-object v0

    .line 605
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public seekToPositionAndGet(I)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 618
    if-gez p1, :cond_0

    .line 619
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Position is not positive"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    monitor-enter v2

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget-object v3, p0, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1, v3}, Lcom/tencent/qrom/gif/GifInfoHandle;->seekToTime(ILandroid/graphics/Bitmap;)V

    .line 624
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 625
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 626
    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/tencent/qrom/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 627
    return-object v0

    .line 625
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 326
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 327
    return-void
.end method

.method public setCacheMemoryPercent(F)Z
    .locals 1
    .param p1, "percent"    # F

    .prologue
    .line 985
    const v0, 0x3c23d70a    # 0.01f

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const v0, 0x3f7d70a4    # 0.99f

    cmpg-float v0, v0, p1

    if-gez v0, :cond_1

    .line 986
    :cond_0
    const/4 v0, 0x0

    .line 989
    :goto_0
    return v0

    .line 988
    :cond_1
    iput p1, p0, Lcom/tencent/qrom/gif/GifDrawable;->cacheMemoryPercent:F

    .line 989
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 331
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 332
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .param p1, "dither"    # Z

    .prologue
    .line 825
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 826
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->invalidateSelf()V

    .line 827
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1
    .param p1, "filter"    # Z

    .prologue
    .line 819
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 820
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->invalidateSelf()V

    .line 821
    return-void
.end method

.method public setLoopCount(I)V
    .locals 1
    .param p1, "loopCount"    # I

    .prologue
    .line 450
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->setLoopCount(I)V

    .line 451
    return-void
.end method

.method public setSpeed(F)V
    .locals 1
    .param p1, "factor"    # F

    .prologue
    .line 506
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->setSpeedFactor(F)V

    .line 507
    return-void
.end method

.method public setTarFramePos(I)V
    .locals 3
    .param p1, "framePos"    # I

    .prologue
    .line 397
    const-string v0, "GifDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTarFramePos framePos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/gif/RenderTask;->setTarFramePos(I)V

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    const-string v0, "GifDrawable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTarFramePos framePos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error in mRenderTask is null, this method need called after setResource***"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    .line 893
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 894
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->invalidateSelf()V

    .line 895
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 898
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 899
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTint:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0, p1}, Lcom/tencent/qrom/gif/GifDrawable;->updateTintFilter(Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 900
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->invalidateSelf()V

    .line 901
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 930
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 931
    .local v0, "changed":Z
    if-eqz p1, :cond_2

    .line 932
    if-eqz p2, :cond_0

    .line 933
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->reset()V

    .line 935
    :cond_0
    if-eqz v0, :cond_1

    .line 936
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->start()V

    .line 941
    :cond_1
    :goto_0
    return v0

    .line 938
    :cond_2
    if-eqz v0, :cond_1

    .line 939
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifDrawable;->stop()V

    goto :goto_0
.end method

.method public start()V
    .locals 5

    .prologue
    .line 350
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    .line 351
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifInfoHandle;->restoreRemainder()J

    move-result-wide v0

    .line 352
    .local v0, "lastFrameRemainder":J
    const-string v2, "GifDrawable"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GifDrawable start() lastFrameRemainder="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsRenderingTriggeredOnDraw="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/gif/GifDrawable;->startAnimation(J)V

    .line 354
    return-void
.end method

.method startAnimation(J)V
    .locals 4
    .param p1, "lastFrameRemainder"    # J

    .prologue
    const-wide/16 v2, 0x0

    .line 357
    cmp-long v0, p1, v2

    if-ltz v0, :cond_0

    .line 358
    iget-boolean v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRenderingTriggeredOnDraw:Z

    if-eqz v0, :cond_1

    .line 359
    iput-wide v2, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNextFrameRenderTime:J

    .line 360
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    invoke-direct {p0}, Lcom/tencent/qrom/gif/GifDrawable;->waitForPendingRenderTask()V

    .line 363
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mExecutor:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable;->mRenderTask:Lcom/tencent/qrom/gif/RenderTask;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mSchedule:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 390
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mIsRunning:Z

    .line 391
    invoke-direct {p0}, Lcom/tencent/qrom/gif/GifDrawable;->waitForPendingRenderTask()V

    .line 392
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->saveRemainder()V

    .line 393
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 458
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "GIF: size: %dx%d, frames: %d, error: %d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v4, v4, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v4, v4, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v4, v4, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v4}, Lcom/tencent/qrom/gif/GifInfoHandle;->getNativeErrorCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
