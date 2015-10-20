.class Lcom/tencent/qrom/gif/GifDrawable$2;
.super Lcom/tencent/qrom/gif/SafeRunnable;
.source "GifDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/gif/GifDrawable;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/gif/GifDrawable;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gif/GifDrawable;Lcom/tencent/qrom/gif/GifDrawable;I)V
    .locals 0
    .param p2, "x0"    # Lcom/tencent/qrom/gif/GifDrawable;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/tencent/qrom/gif/GifDrawable$2;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iput p3, p0, Lcom/tencent/qrom/gif/GifDrawable$2;->val$position:I

    invoke-direct {p0, p2}, Lcom/tencent/qrom/gif/SafeRunnable;-><init>(Lcom/tencent/qrom/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    .prologue
    .line 563
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable$2;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifDrawable;->mNativeInfoHandle:Lcom/tencent/qrom/gif/GifInfoHandle;

    iget v1, p0, Lcom/tencent/qrom/gif/GifDrawable$2;->val$position:I

    iget-object v2, p0, Lcom/tencent/qrom/gif/GifDrawable$2;->this$0:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v2, v2, Lcom/tencent/qrom/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qrom/gif/GifInfoHandle;->seekToTime(ILandroid/graphics/Bitmap;)V

    .line 564
    iget-object v0, p0, Lcom/tencent/qrom/gif/GifDrawable$2;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    iget-object v0, v0, Lcom/tencent/qrom/gif/GifDrawable;->mInvalidationHandler:Lcom/tencent/qrom/gif/InvalidationHandler;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 565
    return-void
.end method
