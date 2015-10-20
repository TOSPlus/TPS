.class abstract Lcom/tencent/qrom/gif/SafeRunnable;
.super Ljava/lang/Object;
.source "SafeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/gif/GifDrawable;)V
    .locals 0
    .param p1, "gifDrawable"    # Lcom/tencent/qrom/gif/GifDrawable;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/tencent/qrom/gif/SafeRunnable;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    .line 12
    return-void
.end method


# virtual methods
.method abstract doWork()V
.end method

.method public final run()V
    .locals 4

    .prologue
    .line 17
    :try_start_0
    iget-object v3, p0, Lcom/tencent/qrom/gif/SafeRunnable;->mGifDrawable:Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {v3}, Lcom/tencent/qrom/gif/GifDrawable;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/tencent/qrom/gif/SafeRunnable;->doWork()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :cond_0
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v1

    .line 21
    .local v1, "throwable":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    .line 22
    .local v2, "uncaughtExceptionHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v2, :cond_1

    .line 23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 26
    :cond_1
    :try_start_1
    throw v1
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 27
    :catch_1
    move-exception v0

    .line 29
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
