.class Lcom/tencent/qrom/gif/RenderTask$1;
.super Ljava/lang/Object;
.source "RenderTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/gif/RenderTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/gif/RenderTask;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gif/RenderTask;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/tencent/qrom/gif/RenderTask$1;->this$0:Lcom/tencent/qrom/gif/RenderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 31
    iget-object v2, p0, Lcom/tencent/qrom/gif/RenderTask$1;->this$0:Lcom/tencent/qrom/gif/RenderTask;

    iget-object v2, v2, Lcom/tencent/qrom/gif/RenderTask;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v2, v2, Lcom/tencent/qrom/gif/GifDrawable;->mListeners:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/gif/AnimationListener;

    .line 32
    .local v1, "listener":Lcom/tencent/qrom/gif/AnimationListener;
    invoke-interface {v1}, Lcom/tencent/qrom/gif/AnimationListener;->onAnimationAtTarFrame()V

    goto :goto_0

    .line 34
    .end local v1    # "listener":Lcom/tencent/qrom/gif/AnimationListener;
    :cond_0
    return-void
.end method
