.class public final Lcom/tencent/qrom/gif/GifInfoHandle;
.super Ljava/lang/Object;
.source "GifInfoHandle.java"


# static fields
.field static final NULL_INFO:Lcom/tencent/qrom/gif/GifInfoHandle;


# instance fields
.field final frameCount:I

.field private volatile gifInfoPtr:J

.field final height:I

.field final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 49
    new-instance v0, Lcom/tencent/qrom/gif/GifInfoHandle;

    const-wide/16 v1, 0x0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gif/GifInfoHandle;-><init>(JIII)V

    sput-object v0, Lcom/tencent/qrom/gif/GifInfoHandle;->NULL_INFO:Lcom/tencent/qrom/gif/GifInfoHandle;

    .line 52
    const-string v0, "gifjni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method private constructor <init>(JIII)V
    .locals 0
    .param p1, "gifInfoPtr"    # J
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "frameCount"    # I

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-wide p1, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    .line 32
    iput p3, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    .line 33
    iput p4, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    .line 34
    iput p5, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    .line 35
    return-void
.end method

.method private static native bindSurface(JLandroid/view/Surface;[JZ)V
.end method

.method private static native free(J)V
.end method

.method private static native getAllocationByteCount(J)J
.end method

.method private static native getComment(J)Ljava/lang/String;
.end method

.method private static native getCurrentFrameIndex(J)I
.end method

.method private static native getCurrentLoop(J)I
.end method

.method private static native getCurrentPosition(J)I
.end method

.method private static native getDuration(J)I
.end method

.method private static native getFrameDuration(JI)I
.end method

.method private static native getLoopCount(J)I
.end method

.method private static native getNativeErrorCode(J)I
.end method

.method private static native getSavedState(J)[J
.end method

.method private static native getSourceLength(J)J
.end method

.method private static native isAnimationCompleted(J)Z
.end method

.method static openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 3
    .param p0, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .param p1, "justDecodeMetaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 130
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v1

    invoke-static {v0, v1, v2, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFd(Ljava/io/FileDescriptor;JZ)Lcom/tencent/qrom/gif/GifInfoHandle;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 132
    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/content/res/AssetFileDescriptor;->close()V

    throw v0
.end method

.method static native openByteArray([BZ)Lcom/tencent/qrom/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qrom/gif/GifIOException;
        }
    .end annotation
.end method

.method static native openDirectByteBuffer(Ljava/nio/ByteBuffer;Z)Lcom/tencent/qrom/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qrom/gif/GifIOException;
        }
    .end annotation
.end method

.method static native openFd(Ljava/io/FileDescriptor;JZ)Lcom/tencent/qrom/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qrom/gif/GifIOException;
        }
    .end annotation
.end method

.method public static openFile(Ljava/lang/String;)Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 1
    .param p0, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qrom/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method

.method static native openFile(Ljava/lang/String;Z)Lcom/tencent/qrom/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qrom/gif/GifIOException;
        }
    .end annotation
.end method

.method public static openMarkableInputStream(Ljava/io/InputStream;Z)Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 2
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "justDecodeMetaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qrom/gif/GifIOException;
        }
    .end annotation

    .prologue
    .line 116
    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "InputStream does not support marking"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 119
    :cond_0
    invoke-static {p0, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->openStream(Ljava/io/InputStream;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    return-object v0
.end method

.method static native openStream(Ljava/io/InputStream;Z)Lcom/tencent/qrom/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qrom/gif/GifIOException;
        }
    .end annotation
.end method

.method static openUri(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 2
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "justDecodeMetaData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 137
    const-string v0, "file"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tencent/qrom/gif/GifInfoHandle;->openFile(Ljava/lang/String;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "r"

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/tencent/qrom/gif/GifInfoHandle;->openAssetFileDescriptor(Landroid/content/res/AssetFileDescriptor;Z)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v0

    goto :goto_0
.end method

.method private static native postUnbindSurface(J)V
.end method

.method private static native renderFrame(JLandroid/graphics/Bitmap;)J
.end method

.method private static native reset(J)Z
.end method

.method private static native restoreRemainder(J)J
.end method

.method private static native restoreSavedState(J[JLandroid/graphics/Bitmap;)I
.end method

.method private static native saveRemainder(J)V
.end method

.method private static native seekToFrame(JILandroid/graphics/Bitmap;)V
.end method

.method private static native seekToTime(JILandroid/graphics/Bitmap;)V
.end method

.method private static native setLoopCount(JI)V
.end method

.method private static native setSpeedFactor(JF)V
.end method


# virtual methods
.method bindSurface(Landroid/view/Surface;[JZ)V
    .locals 2
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "savedState"    # [J
    .param p3, "isOpaque"    # Z

    .prologue
    .line 149
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2, p3}, Lcom/tencent/qrom/gif/GifInfoHandle;->bindSurface(JLandroid/view/Surface;[JZ)V

    .line 150
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 241
    :try_start_0
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifInfoHandle;->recycle()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 245
    return-void

    .line 243
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method declared-synchronized getAllocationByteCount()J
    .locals 2

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getAllocationByteCount(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getComment()Ljava/lang/String;
    .locals 2

    .prologue
    .line 170
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getComment(J)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentFrameIndex()I
    .locals 2

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getCurrentFrameIndex(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentLoop()I
    .locals 2

    .prologue
    .line 219
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getCurrentLoop(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getCurrentPosition()I
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getCurrentPosition(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDuration()I
    .locals 2

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getDuration(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    return v0
.end method

.method public declared-synchronized getFrameDuration(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 264
    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->frameCount:I

    if-lt p1, v0, :cond_1

    .line 265
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Frame index is out of bounds"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 267
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getFrameDuration(JI)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit p0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->height:I

    return v0
.end method

.method declared-synchronized getLoopCount()I
    .locals 2

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getLoopCount(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getNativeErrorCode()I
    .locals 2

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getNativeErrorCode(J)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSavedState()[J
    .locals 2

    .prologue
    .line 256
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getSavedState(J)[J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getSourceLength()J
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->getSourceLength(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->width:I

    return v0
.end method

.method declared-synchronized isAnimationCompleted()Z
    .locals 2

    .prologue
    .line 252
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->isAnimationCompleted(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized isRecycled()Z
    .locals 4

    .prologue
    .line 235
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized postUnbindSurface()V
    .locals 2

    .prologue
    .line 248
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->postUnbindSurface(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    monitor-exit p0

    return-void

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized recycle()V
    .locals 2

    .prologue
    .line 153
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->free(J)V

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return-void

    .line 153
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized renderFrame(Landroid/graphics/Bitmap;)J
    .locals 2
    .param p1, "frameBuffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 145
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->renderFrame(JLandroid/graphics/Bitmap;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()Z
    .locals 2

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->reset(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized restoreRemainder()J
    .locals 2

    .prologue
    .line 158
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->restoreRemainder(J)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized restoreSavedState([JLandroid/graphics/Bitmap;)I
    .locals 2
    .param p1, "savedState"    # [J
    .param p2, "mBuffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 260
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/qrom/gif/GifInfoHandle;->restoreSavedState(J[JLandroid/graphics/Bitmap;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized saveRemainder()V
    .locals 2

    .prologue
    .line 166
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifInfoHandle;->saveRemainder(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized seekToFrame(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "frameIndex"    # I
    .param p2, "buffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/qrom/gif/GifInfoHandle;->seekToFrame(JILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    monitor-exit p0

    return-void

    .line 227
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized seekToTime(ILandroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "position"    # I
    .param p2, "buffer"    # Landroid/graphics/Bitmap;

    .prologue
    .line 223
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1, p2}, Lcom/tencent/qrom/gif/GifInfoHandle;->seekToTime(JILandroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit p0

    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLoopCount(I)V
    .locals 2
    .param p1, "loopCount"    # I

    .prologue
    .line 178
    if-ltz p1, :cond_0

    const v0, 0xffff

    if-le p1, v0, :cond_1

    .line 179
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Loop count of range <0, 65535>"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_1
    monitor-enter p0

    .line 182
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->setLoopCount(JI)V

    .line 183
    monitor-exit p0

    .line 184
    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSpeedFactor(F)V
    .locals 2
    .param p1, "factor"    # F

    .prologue
    const/4 v1, 0x0

    .line 195
    cmpg-float v0, p1, v1

    if-lez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Speed factor is not positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_1
    cmpg-float v0, p1, v1

    if-gez v0, :cond_2

    .line 199
    const/4 p1, 0x0

    .line 201
    :cond_2
    monitor-enter p0

    .line 202
    :try_start_0
    iget-wide v0, p0, Lcom/tencent/qrom/gif/GifInfoHandle;->gifInfoPtr:J

    invoke-static {v0, v1, p1}, Lcom/tencent/qrom/gif/GifInfoHandle;->setSpeedFactor(JF)V

    .line 203
    monitor-exit p0

    .line 204
    return-void

    .line 203
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
