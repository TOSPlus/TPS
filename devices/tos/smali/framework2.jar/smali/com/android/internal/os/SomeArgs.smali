.class public final Lcom/android/internal/os/SomeArgs;
.super Ljava/lang/Object;
.source "SomeArgs.java"


# static fields
.field private static final MAX_POOL_SIZE:I = 0xa

.field private static sPool:Lcom/android/internal/os/SomeArgs;

.field private static sPoolLock:Ljava/lang/Object;

.field private static sPoolSize:I


# instance fields
.field public arg1:Ljava/lang/Object;

.field public arg2:Ljava/lang/Object;

.field public arg3:Ljava/lang/Object;

.field public arg4:Ljava/lang/Object;

.field public arg5:Ljava/lang/Object;

.field public argi1:I

.field public argi2:I

.field public argi3:I

.field public argi4:I

.field public argi5:I

.field public argi6:I

.field private mInPool:Z

.field private mNext:Lcom/android/internal/os/SomeArgs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method private clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 85
    iput-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 86
    iput-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 87
    iput-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 88
    iput-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    .line 89
    iput-object v1, p0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    .line 90
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 91
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 92
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 93
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 94
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi5:I

    .line 95
    iput v0, p0, Lcom/android/internal/os/SomeArgs;->argi6:I

    .line 96
    return-void
.end method

.method public static obtain()Lcom/android/internal/os/SomeArgs;
    .locals 3

    .prologue
    .line 55
    sget-object v2, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v2

    .line 56
    :try_start_0
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    if-lez v1, :cond_0

    .line 57
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 58
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    sget-object v1, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    iget-object v1, v1, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    sput-object v1, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 59
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 61
    sget v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 62
    monitor-exit v2

    .line 64
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/os/SomeArgs;

    invoke-direct {v0}, Lcom/android/internal/os/SomeArgs;-><init>()V

    monitor-exit v2

    goto :goto_0

    .line 66
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public recycle()V
    .locals 3

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Already recycled."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    sget-object v1, Lcom/android/internal/os/SomeArgs;->sPoolLock:Ljava/lang/Object;

    monitor-enter v1

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/os/SomeArgs;->clear()V

    .line 75
    sget v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 76
    sget-object v0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    iput-object v0, p0, Lcom/android/internal/os/SomeArgs;->mNext:Lcom/android/internal/os/SomeArgs;

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/SomeArgs;->mInPool:Z

    .line 78
    sput-object p0, Lcom/android/internal/os/SomeArgs;->sPool:Lcom/android/internal/os/SomeArgs;

    .line 79
    sget v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/os/SomeArgs;->sPoolSize:I

    .line 81
    :cond_1
    monitor-exit v1

    .line 82
    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
