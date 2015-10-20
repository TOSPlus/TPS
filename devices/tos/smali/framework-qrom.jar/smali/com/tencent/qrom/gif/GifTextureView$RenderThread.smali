.class Lcom/tencent/qrom/gif/GifTextureView$RenderThread;
.super Ljava/lang/Thread;
.source "GifTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/GifTextureView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderThread"
.end annotation


# instance fields
.field final isSurfaceValid:Lcom/tencent/qrom/gif/ConditionVariable;

.field private mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

.field private mIOException:Ljava/io/IOException;

.field mSavedState:[J

.field final synthetic this$0:Lcom/tencent/qrom/gif/GifTextureView;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gif/GifTextureView;)V
    .locals 1

    .prologue
    .line 165
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    .line 166
    const-string v0, "GifRenderThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 160
    new-instance v0, Lcom/tencent/qrom/gif/ConditionVariable;

    invoke-direct {v0}, Lcom/tencent/qrom/gif/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/tencent/qrom/gif/ConditionVariable;

    .line 161
    sget-object v0, Lcom/tencent/qrom/gif/GifInfoHandle;->NULL_INFO:Lcom/tencent/qrom/gif/GifInfoHandle;

    iput-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    .line 167
    return-void
.end method

.method static synthetic access$200(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Lcom/tencent/qrom/gif/GifInfoHandle;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Ljava/io/IOException;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method dispose()V
    .locals 4

    .prologue
    .line 234
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/tencent/qrom/gif/ConditionVariable;

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/ConditionVariable;->close()V

    .line 235
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    const/4 v3, 0x0

    # invokes: Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    invoke-static {v2, v3}, Lcom/tencent/qrom/gif/GifTextureView;->access$501(Lcom/tencent/qrom/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 236
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifInfoHandle;->postUnbindSurface()V

    .line 237
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;
    invoke-static {v2}, Lcom/tencent/qrom/gif/GifTextureView;->access$600(Lcom/tencent/qrom/gif/GifTextureView;)Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->interrupt()V

    .line 238
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v1

    .line 239
    .local v1, "isCallerInterrupted":Z
    if-eqz v1, :cond_0

    .line 240
    invoke-static {}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->interrupted()Z

    .line 243
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView;->mRenderThread:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;
    invoke-static {v2}, Lcom/tencent/qrom/gif/GifTextureView;->access$600(Lcom/tencent/qrom/gif/GifTextureView;)Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    if-eqz v1, :cond_1

    .line 248
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 250
    :cond_1
    return-void

    .line 244
    :catch_0
    move-exception v0

    .line 245
    .local v0, "e":Ljava/lang/InterruptedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 213
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    # invokes: Lcom/tencent/qrom/gif/GifTextureView;->updateTextureViewSize(Lcom/tencent/qrom/gif/GifInfoHandle;)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifTextureView;->access$300(Lcom/tencent/qrom/gif/GifTextureView;Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 214
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/tencent/qrom/gif/ConditionVariable;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/ConditionVariable;->open()V

    .line 215
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/tencent/qrom/gif/ConditionVariable;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/ConditionVariable;->close()V

    .line 225
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->postUnbindSurface()V

    .line 226
    const/4 v0, 0x0

    return v0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 220
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 231
    return-void
.end method

.method public run()V
    .locals 8

    .prologue
    .line 172
    :try_start_0
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView;->mInputSource:Lcom/tencent/qrom/gif/InputSource;
    invoke-static {v5}, Lcom/tencent/qrom/gif/GifTextureView;->access$000(Lcom/tencent/qrom/gif/GifTextureView;)Lcom/tencent/qrom/gif/InputSource;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/qrom/gif/InputSource;->open()Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v5

    iput-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    # invokes: Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    invoke-static {v5, p0}, Lcom/tencent/qrom/gif/GifTextureView;->access$101(Lcom/tencent/qrom/gif/GifTextureView;Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 179
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    invoke-virtual {v5}, Lcom/tencent/qrom/gif/GifTextureView;->isAvailable()Z

    move-result v2

    .line 180
    .local v2, "isSurfaceAvailable":Z
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/tencent/qrom/gif/ConditionVariable;

    invoke-virtual {v5, v2}, Lcom/tencent/qrom/gif/ConditionVariable;->set(Z)V

    .line 181
    if-eqz v2, :cond_0

    .line 182
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    new-instance v6, Lcom/tencent/qrom/gif/GifTextureView$RenderThread$1;

    invoke-direct {v6, p0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread$1;-><init>(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)V

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/gif/GifTextureView;->post(Ljava/lang/Runnable;)Z

    .line 189
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget-object v6, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView;->mSpeedFactor:F
    invoke-static {v6}, Lcom/tencent/qrom/gif/GifTextureView;->access$400(Lcom/tencent/qrom/gif/GifTextureView;)F

    move-result v6

    invoke-virtual {v5, v6}, Lcom/tencent/qrom/gif/GifInfoHandle;->setSpeedFactor(F)V

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->isInterrupted()Z

    move-result v5

    if-nez v5, :cond_2

    .line 193
    :try_start_1
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->isSurfaceValid:Lcom/tencent/qrom/gif/ConditionVariable;

    invoke-virtual {v5}, Lcom/tencent/qrom/gif/ConditionVariable;->block()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 197
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    invoke-virtual {v5}, Lcom/tencent/qrom/gif/GifTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    .line 198
    .local v4, "surfaceTexture":Landroid/graphics/SurfaceTexture;
    if-eqz v4, :cond_1

    .line 201
    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 203
    .local v3, "surface":Landroid/view/Surface;
    :try_start_2
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget-object v6, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mSavedState:[J

    iget-object v7, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    invoke-virtual {v7}, Lcom/tencent/qrom/gif/GifTextureView;->isOpaque()Z

    move-result v7

    invoke-virtual {v5, v3, v6, v7}, Lcom/tencent/qrom/gif/GifInfoHandle;->bindSurface(Landroid/view/Surface;[JZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    goto :goto_0

    .line 173
    .end local v2    # "isSurfaceAvailable":Z
    .end local v3    # "surface":Landroid/view/Surface;
    .end local v4    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catch_0
    move-exception v1

    .line 174
    .local v1, "ex":Ljava/io/IOException;
    iput-object v1, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mIOException:Ljava/io/IOException;

    .line 209
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_1
    return-void

    .line 194
    .restart local v2    # "isSurfaceAvailable":Z
    :catch_1
    move-exception v0

    .line 208
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v5}, Lcom/tencent/qrom/gif/GifInfoHandle;->recycle()V

    goto :goto_1

    .line 205
    .restart local v3    # "surface":Landroid/view/Surface;
    .restart local v4    # "surfaceTexture":Landroid/graphics/SurfaceTexture;
    :catchall_0
    move-exception v5

    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    throw v5
.end method
