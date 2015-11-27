.class public Lcom/android/commands/monkey/MonkeyRotationEvent;
.super Lcom/android/commands/monkey/MonkeyEvent;
.source "MonkeyRotationEvent.java"


# instance fields
.field private final mPersist:Z

.field private final mRotationDegree:I


# direct methods
.method public constructor <init>(IZ)V
    .registers 4
    .param p1, "degree"    # I
    .param p2, "persist"    # Z

    .prologue
    .line 39
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/commands/monkey/MonkeyEvent;-><init>(I)V

    .line 40
    iput p1, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    .line 41
    iput-boolean p2, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    .line 42
    return-void
.end method


# virtual methods
.method public injectEvent(Landroid/view/IWindowManager;Landroid/app/IActivityManager;I)I
    .registers 8
    .param p1, "iwm"    # Landroid/view/IWindowManager;
    .param p2, "iam"    # Landroid/app/IActivityManager;
    .param p3, "verbose"    # I

    .prologue
    .line 46
    if-lez p3, :cond_28

    .line 47
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":Sending rotation degree="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", persist="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 53
    :cond_28
    :try_start_28
    iget v1, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mRotationDegree:I

    invoke-interface {p1, v1}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 54
    iget-boolean v1, p0, Lcom/android/commands/monkey/MonkeyRotationEvent;->mPersist:Z

    if-nez v1, :cond_34

    .line 55
    invoke-interface {p1}, Landroid/view/IWindowManager;->thawRotation()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_36

    .line 57
    :cond_34
    const/4 v1, 0x1

    .line 59
    :goto_35
    return v1

    .line 58
    :catch_36
    move-exception v0

    .line 59
    .local v0, "ex":Landroid/os/RemoteException;
    const/4 v1, -0x1

    goto :goto_35
.end method
