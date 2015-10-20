.class Lcom/tencent/qrom/gif/InvalidationHandler;
.super Landroid/os/Handler;
.source "InvalidationHandler.java"


# instance fields
.field private final mDrawableRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/tencent/qrom/gif/GifDrawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/gif/GifDrawable;)V
    .locals 1
    .param p1, "gifDrawable"    # Lcom/tencent/qrom/gif/GifDrawable;

    .prologue
    .line 13
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 14
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/tencent/qrom/gif/InvalidationHandler;->mDrawableRef:Ljava/lang/ref/WeakReference;

    .line 15
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 19
    iget-object v1, p0, Lcom/tencent/qrom/gif/InvalidationHandler;->mDrawableRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/gif/GifDrawable;

    .line 20
    .local v0, "gifDrawable":Lcom/tencent/qrom/gif/GifDrawable;
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Lcom/tencent/qrom/gif/GifDrawable;->invalidateSelf()V

    .line 23
    :cond_0
    return-void
.end method
