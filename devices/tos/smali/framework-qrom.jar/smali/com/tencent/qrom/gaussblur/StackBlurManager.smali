.class public Lcom/tencent/qrom/gaussblur/StackBlurManager;
.super Ljava/lang/Object;
.source "StackBlurManager.java"


# static fields
.field static final EXECUTOR:Ljava/util/concurrent/ExecutorService;

.field static final EXECUTOR_THREADS:I

.field private static sSingleton:Lcom/tencent/qrom/gaussblur/StackBlurManager;


# instance fields
.field private blur:Lcom/tencent/qrom/gaussblur/NativeBlurProcess;

.field private outBitmap:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->EXECUTOR_THREADS:I

    .line 10
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->sSingleton:Lcom/tencent/qrom/gaussblur/StackBlurManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;

    invoke-direct {v0}, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->blur:Lcom/tencent/qrom/gaussblur/NativeBlurProcess;

    .line 26
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/qrom/gaussblur/StackBlurManager;
    .locals 2

    .prologue
    .line 18
    const-class v1, Lcom/tencent/qrom/gaussblur/StackBlurManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->sSingleton:Lcom/tencent/qrom/gaussblur/StackBlurManager;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;

    invoke-direct {v0}, Lcom/tencent/qrom/gaussblur/StackBlurManager;-><init>()V

    sput-object v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->sSingleton:Lcom/tencent/qrom/gaussblur/StackBlurManager;

    .line 21
    :cond_0
    sget-object v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->sSingleton:Lcom/tencent/qrom/gaussblur/StackBlurManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public processNatively(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # I

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->blur:Lcom/tencent/qrom/gaussblur/NativeBlurProcess;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->outBitmap:Landroid/graphics/Bitmap;

    .line 30
    iget-object v0, p0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->outBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
