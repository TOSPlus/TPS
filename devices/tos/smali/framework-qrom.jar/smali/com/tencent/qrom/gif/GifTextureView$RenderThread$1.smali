.class Lcom/tencent/qrom/gif/GifTextureView$RenderThread$1;
.super Ljava/lang/Object;
.source "GifTextureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread$1;->this$1:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread$1;->this$1:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->this$0:Lcom/tencent/qrom/gif/GifTextureView;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifTextureView$RenderThread$1;->this$1:Lcom/tencent/qrom/gif/GifTextureView$RenderThread;

    # getter for: Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->mGifInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;
    invoke-static {v1}, Lcom/tencent/qrom/gif/GifTextureView$RenderThread;->access$200(Lcom/tencent/qrom/gif/GifTextureView$RenderThread;)Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    # invokes: Lcom/tencent/qrom/gif/GifTextureView;->updateTextureViewSize(Lcom/tencent/qrom/gif/GifInfoHandle;)V
    invoke-static {v0, v1}, Lcom/tencent/qrom/gif/GifTextureView;->access$300(Lcom/tencent/qrom/gif/GifTextureView;Lcom/tencent/qrom/gif/GifInfoHandle;)V

    .line 186
    return-void
.end method
