.class Lcom/tencent/qrom/gif/GifDrawable$1;
.super Lcom/tencent/qrom/gif/SafeRunnable;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/gif/GifDrawable;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/gif/GifDrawable;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gif/GifDrawable;Lcom/tencent/qrom/gif/GifDrawable;)V
    .locals 0
    .param p2, "x0"    # Lcom/tencent/qrom/gif/GifDrawable;

    .prologue
    .line 374
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifDrawable$1;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-direct {p0, p2}, Lcom/tencent/qrom/gif/SafeRunnable;-><init>(Lcom/tencent/qrom/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable$1;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifInfoHandle;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable$1;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifDrawable;->start()V

    .line 380
    :cond_0
    return-void
.end method
