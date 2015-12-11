.class public Lcom/tencent/qrom/gaussblur/NativeBlurProcess;
.super Ljava/lang/Object;
.source "NativeBlurProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/gaussblur/NativeBlurProcess$NativeTask;
    }
.end annotation


# static fields
.field public static noBlurSo:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 13
    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    .line 17
    :try_start_0
    const-string v1, "blurjni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 18
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 19
    .restart local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->noBlurSo:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Landroid/graphics/Bitmap;IIII)V
    .locals 0
    .param p0, "x0"    # Landroid/graphics/Bitmap;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/gaussblur/NativeBlurProcess;->functionToBlur(Landroid/graphics/Bitmap;IIII)V

    return-void
.end method

.method private static native functionToBlur(Landroid/graphics/Bitmap;IIII)V
.end method


# virtual methods
.method public blur(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "original"    # Landroid/graphics/Bitmap;
    .param p2, "radius"    # F

    .prologue
    .line 25
    sget v3, Lcom/tencent/qrom/gaussblur/StackBlurManager;->EXECUTOR_THREADS:I

    .line 26
    .local v3, "cores":I
    const/4 v3, 0x1

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 29
    .local v7, "horizontal":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/gaussblur/NativeBlurProcess$NativeTask;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .local v8, "vertical":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/tencent/qrom/gaussblur/NativeBlurProcess$NativeTask;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 31
    new-instance v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess$NativeTask;

    float-to-int v2, p2

    const/4 v5, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gaussblur/NativeBlurProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    new-instance v0, Lcom/tencent/qrom/gaussblur/NativeBlurProcess$NativeTask;

    float-to-int v2, p2

    const/4 v5, 0x2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/tencent/qrom/gaussblur/NativeBlurProcess$NativeTask;-><init>(Landroid/graphics/Bitmap;IIII)V

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 36
    :cond_0
    :try_start_0
    sget-object v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    sget-object v0, Lcom/tencent/qrom/gaussblur/StackBlurManager;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->invokeAll(Ljava/util/Collection;)Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 48
    :goto_1
    return-object p1

    .line 37
    :catch_0
    move-exception v6

    .line 38
    .local v6, "e":Ljava/lang/InterruptedException;
    const-string v0, "NativeBlurProcess"

    const-string v1, "blur horizontal InterruptedException"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 44
    .end local v6    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v6

    .line 45
    .restart local v6    # "e":Ljava/lang/InterruptedException;
    const-string v0, "NativeBlurProcess"

    const-string v1, "blur vertical InterruptedException"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
