.class public Lcom/tencent/qrom/gaussblur/GlassBlurTask;
.super Ljava/lang/Object;
.source "GlassBlurTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String; = "BlurTask"


# instance fields
.field private blurred:Landroid/graphics/Bitmap;

.field private canvas:Landroid/graphics/Canvas;

.field private context:Landroid/content/Context;

.field private listener:Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;

.field private radius:I

.field private source:Landroid/graphics/Bitmap;

.field private task:Landroid/os/AsyncTask;
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
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;
    .param p3, "source"    # Landroid/graphics/Bitmap;

    .prologue
    .line 23
    const/4 v0, 0x5

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;-><init>(Landroid/content/Context;Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;Landroid/graphics/Bitmap;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;Landroid/graphics/Bitmap;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;
    .param p3, "source"    # Landroid/graphics/Bitmap;
    .param p4, "radius"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->context:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->listener:Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;

    .line 29
    iput-object p3, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->source:Landroid/graphics/Bitmap;

    .line 30
    iput p4, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->radius:I

    .line 31
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->canvas:Landroid/graphics/Canvas;

    .line 32
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->startTask()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->blurSourceBitmap()V

    return-void
.end method

.method static synthetic access$100(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->blurred:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->canvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    .prologue
    .line 8
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->listener:Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;

    return-object v0
.end method

.method private blurSourceBitmap()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->source:Landroid/graphics/Bitmap;

    .line 55
    .local v0, "section":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->source:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->radius:I

    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/gaussblur/GlassBlur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->blurred:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method private startTask()V
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask$1;-><init>(Lcom/tencent/qrom/gaussblur/GlassBlurTask;)V

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->task:Landroid/os/AsyncTask;

    .line 50
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 51
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->task:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 66
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->task:Landroid/os/AsyncTask;

    .line 67
    return-void
.end method
