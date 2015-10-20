.class Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityStack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ScheduleDestroyArgs"
.end annotation


# instance fields
.field final mOomAdj:Z

.field final mOwner:Lcom/android/server/am/ProcessRecord;

.field final mReason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;ZLjava/lang/String;)V
    .locals 0
    .param p1, "owner"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdj"    # Z
    .param p3, "reason"    # Ljava/lang/String;

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    iput-object p1, p0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOwner:Lcom/android/server/am/ProcessRecord;

    .line 249
    iput-boolean p2, p0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mOomAdj:Z

    .line 250
    iput-object p3, p0, Lcom/android/server/am/ActivityStack$ScheduleDestroyArgs;->mReason:Ljava/lang/String;

    .line 251
    return-void
.end method
