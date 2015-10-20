.class Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;
.super Landroid/database/ContentObserver;
.source "QromPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QromFaceDetectObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerManagerService;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/services/QromPowerManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    .line 174
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 176
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x0

    .line 181
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 182
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "qrom_face_detect_enable"

    invoke-static {v2, v3, v0}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v1, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectEnabled:Z

    .line 183
    return-void
.end method
