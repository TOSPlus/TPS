.class public abstract Lcom/tencent/qrom/gif/InputSource;
.super Ljava/lang/Object;
.source "InputSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/gif/InputSource$AssetFileDescriptorSource;,
        Lcom/tencent/qrom/gif/InputSource$ResourcesSource;,
        Lcom/tencent/qrom/gif/InputSource$InputStreamSource;,
        Lcom/tencent/qrom/gif/InputSource$FileDescriptorSource;,
        Lcom/tencent/qrom/gif/InputSource$AssetSource;,
        Lcom/tencent/qrom/gif/InputSource$UriSource;,
        Lcom/tencent/qrom/gif/InputSource$FileSource;,
        Lcom/tencent/qrom/gif/InputSource$ByteArraySource;,
        Lcom/tencent/qrom/gif/InputSource$DirectByteBufferSource;
    }
.end annotation


# instance fields
.field private mIsOpaque:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    return-void
.end method


# virtual methods
.method final build(Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)Lcom/tencent/qrom/gif/GifDrawable;
    .locals 2
    .param p1, "oldDrawable"    # Lcom/tencent/qrom/gif/GifDrawable;
    .param p2, "executor"    # Ljava/util/concurrent/ScheduledThreadPoolExecutor;
    .param p3, "isRenderingAlwaysEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 28
    new-instance v0, Lcom/tencent/qrom/gif/GifDrawable;

    invoke-virtual {p0}, Lcom/tencent/qrom/gif/InputSource;->open()Lcom/tencent/qrom/gif/GifInfoHandle;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/tencent/qrom/gif/GifDrawable;-><init>(Lcom/tencent/qrom/gif/GifInfoHandle;Lcom/tencent/qrom/gif/GifDrawable;Ljava/util/concurrent/ScheduledThreadPoolExecutor;Z)V

    return-object v0
.end method

.method final isOpaque()Z
    .locals 1

    .prologue
    .line 32
    iget-boolean v0, p0, Lcom/tencent/qrom/gif/InputSource;->mIsOpaque:Z

    return v0
.end method

.method abstract open()Lcom/tencent/qrom/gif/GifInfoHandle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final setOpaque(Z)Lcom/tencent/qrom/gif/InputSource;
    .locals 0
    .param p1, "isOpaque"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/tencent/qrom/gif/InputSource;->mIsOpaque:Z

    .line 45
    return-object p0
.end method
