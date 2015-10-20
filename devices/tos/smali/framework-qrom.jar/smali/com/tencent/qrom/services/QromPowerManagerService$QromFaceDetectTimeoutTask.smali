.class Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;
.super Ljava/lang/Object;
.source "QromPowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QromFaceDetectTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerManagerService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromPowerManagerService;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    invoke-virtual {v0}, Lcom/tencent/qrom/services/QromPowerManagerService;->qromStartFaceDetect()V

    .line 215
    return-void
.end method
