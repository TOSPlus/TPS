.class public Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
.super Ljava/lang/Object;
.source "TosPlugMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/TosPlugMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodPlugParam"
.end annotation


# instance fields
.field public args:[Ljava/lang/Object;

.field public invokeType:I

.field public method:Ljava/lang/reflect/Member;

.field public result:Ljava/lang/Object;

.field public returnEarly:Ljava/lang/Boolean;

.field public thisObject:Ljava/lang/Object;

.field public throwable:Ljava/lang/Throwable;

.field public xposedHookParam:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->result:Ljava/lang/Object;

    .line 20
    iput-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->throwable:Ljava/lang/Throwable;

    .line 21
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public getResult()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getResultOrThrowable()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->throwable:Ljava/lang/Throwable;

    throw v0

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->result:Ljava/lang/Object;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public hasThrowable()Z
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->throwable:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public returnEarly()Z
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Object;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->result:Ljava/lang/Object;

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->throwable:Ljava/lang/Throwable;

    .line 42
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly:Ljava/lang/Boolean;

    .line 43
    return-void
.end method

.method public setThrowable(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->throwable:Ljava/lang/Throwable;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->result:Ljava/lang/Object;

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly:Ljava/lang/Boolean;

    .line 64
    return-void
.end method
