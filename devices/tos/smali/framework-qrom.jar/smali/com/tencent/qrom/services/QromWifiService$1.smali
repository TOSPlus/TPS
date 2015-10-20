.class Lcom/tencent/qrom/services/QromWifiService$1;
.super Landroid/database/ContentObserver;
.source "QromWifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromWifiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromWifiService;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/services/QromWifiService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/qrom/services/QromWifiService$1;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/tencent/qrom/services/QromWifiService$1;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v1, p0, Lcom/tencent/qrom/services/QromWifiService$1;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    iget-object v1, v1, Lcom/tencent/qrom/services/QromWifiService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "qrom_wifi_sleep_policy"

    const/4 v3, 0x2

    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I
    invoke-static {v0, v1}, Lcom/tencent/qrom/services/QromWifiService;->access$002(Lcom/tencent/qrom/services/QromWifiService;I)I

    .line 75
    const-string v0, "QromWifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWifiSleepPolicy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/services/QromWifiService$1;->this$0:Lcom/tencent/qrom/services/QromWifiService;

    # getter for: Lcom/tencent/qrom/services/QromWifiService;->mWifiSleepPolicy:I
    invoke-static {v2}, Lcom/tencent/qrom/services/QromWifiService;->access$000(Lcom/tencent/qrom/services/QromWifiService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method
