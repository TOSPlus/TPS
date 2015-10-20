.class Lcom/tencent/qrom/gif/GifDrawable$3;
.super Lcom/tencent/qrom/gif/SafeRunnable;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/gif/GifDrawable;->seekToFrame(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/gif/GifDrawable;

.field final synthetic val$frameIndex:I


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gif/GifDrawable;Lcom/tencent/qrom/gif/GifDrawable;I)V
    .locals 0
    .param p2, "x0"    # Lcom/tencent/qrom/gif/GifDrawable;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifDrawable$3;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iput p3, p0, Lcom/tencent/qrom/gif/GifDrawable$3;->val$frameIndex:I

    invoke-direct {p0, p2}, Lcom/tencent/qrom/gif/SafeRunnable;-><init>(Lcom/tencent/qrom/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    .prologue
    .line 583
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable$3;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v1, p0, Lcom/tencent/qrom/gif/GifDrawable$3;->val$frameIndex:I

    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable$3;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v2, v2, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/gif/GifInfoHandle;->seekToFrame(ILandroid/graphics/Bitmap;)V

    .line 584
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable$3;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v1, p0, Lcom/tencent/qrom/gif/GifDrawable$3;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v1, v1, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    iput-object v1, v0, Lcom/tencent/qrom/gif/GifDrawable;->drawBuffer:Landroid/graphics/Bitmap;

    .line 585
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable$3;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 586
    return-void
.end method
