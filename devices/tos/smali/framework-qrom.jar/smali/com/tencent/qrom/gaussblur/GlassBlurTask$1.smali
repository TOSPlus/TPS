.class Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;
.super Landroid/os/AsyncTask;
.source "GlassBlurTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/gaussblur/GlassBlurTask;->startTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/gaussblur/GlassBlurTask;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;->this$0:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "args"    # [Ljava/lang/Void;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;->this$0:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    # invokes: Lcom/tencent/qrom/gaussblur/GlassBlurTask;->blurSourceBitmap()V
    invoke-static {v0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->access$000(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)V

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 36
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 45
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;->this$0:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    # getter for: Lcom/tencent/qrom/gaussblur/GlassBlurTask;->canvas:Landroid/graphics/Canvas;
    invoke-static {v0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->access$200(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)Landroid/graphics/Canvas;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;->this$0:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    # getter for: Lcom/tencent/qrom/gaussblur/GlassBlurTask;->blurred:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->access$100(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 46
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;->this$0:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    # getter for: Lcom/tencent/qrom/gaussblur/GlassBlurTask;->blurred:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->access$100(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 47
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;->this$0:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    # getter for: Lcom/tencent/qrom/gaussblur/GlassBlurTask;->listener:Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;
    invoke-static {v0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->access$300(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;->onBlurOperationFinished()V

    .line 48
    return-void
.end method
