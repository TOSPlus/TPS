.class final Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Lcom/android/server/power/SuspendBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SuspendBlockerImpl"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private mReferenceCount:I

.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 2674
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2675
    iput-object p2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    .line 2676
    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 2

    .prologue
    .line 2694
    monitor-enter p0

    .line 2695
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 2696
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2700
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeAcquireSuspendBlocker(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2500(Ljava/lang/String;)V

    .line 2702
    :cond_0
    monitor-exit p0

    .line 2703
    return-void

    .line 2702
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2681
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-eqz v0, :cond_0

    .line 2682
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspend blocker \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" was finalized without being released!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2684
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 2685
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2688
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2690
    return-void

    .line 2688
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public release()V
    .locals 3

    .prologue
    .line 2707
    monitor-enter p0

    .line 2708
    :try_start_0
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    .line 2709
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-nez v0, :cond_1

    .line 2713
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    # invokes: Lcom/android/server/power/PowerManagerService;->nativeReleaseSuspendBlocker(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$2400(Ljava/lang/String;)V

    .line 2719
    :cond_0
    :goto_0
    monitor-exit p0

    .line 2720
    return-void

    .line 2714
    :cond_1
    iget v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    if-gez v0, :cond_0

    .line 2715
    const-string v0, "PowerManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Suspend blocker \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" was released without being acquired!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2717
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    goto :goto_0

    .line 2719
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2724
    monitor-enter p0

    .line 2725
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": ref count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/power/PowerManagerService$SuspendBlockerImpl;->mReferenceCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 2726
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
