.class Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$1;
.super Landroid/database/ContentObserver;
.source "QromDumpActivitiesForAutoStart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$1;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 134
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$1;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    # getter for: Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->bWaitUpdate:Z
    invoke-static {v0}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->access$300(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    const-string v0, "QromDumpActivitiesForAutoStart"

    const-string v1, " onChange: readAutoStartDb"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$1;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    const/4 v1, 0x1

    # setter for: Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->bWaitUpdate:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->access$302(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;Z)Z

    .line 137
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$1;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    # getter for: Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mHandler:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;
    invoke-static {v0}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->access$400(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;

    move-result-object v0

    const/4 v1, 0x2

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 139
    :cond_0
    return-void
.end method
