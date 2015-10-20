.class Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;
.super Landroid/database/ContentObserver;
.source "QromPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromPowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QromBrightnessModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromPowerManagerService;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/services/QromPowerManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    .line 144
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 146
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v4, 0x1

    .line 151
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 152
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 153
    .local v0, "brightnessMode":I
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$500(Lcom/tencent/qrom/services/QromPowerManagerService;)I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 154
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # setter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I
    invoke-static {v2, v0}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$502(Lcom/tencent/qrom/services/QromPowerManagerService;I)I

    .line 155
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$500(Lcom/tencent/qrom/services/QromPowerManagerService;)I

    move-result v2

    if-ne v2, v4, :cond_2

    .line 156
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$100(Lcom/tencent/qrom/services/QromPowerManagerService;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$400(Lcom/tencent/qrom/services/QromPowerManagerService;)Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->sendEmptyMessage(I)Z

    .line 165
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    const/4 v3, 0x0

    # setter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z
    invoke-static {v2, v3}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$202(Lcom/tencent/qrom/services/QromPowerManagerService;Z)Z

    .line 167
    :cond_1
    return-void

    .line 160
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    # getter for: Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I
    invoke-static {v2}, Lcom/tencent/qrom/services/QromPowerManagerService;->access$500(Lcom/tencent/qrom/services/QromPowerManagerService;)I

    move-result v2

    if-nez v2, :cond_0

    .line 161
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    iget-object v2, v2, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness"

    const/16 v4, 0x14

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 162
    .local v1, "value":I
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;->this$0:Lcom/tencent/qrom/services/QromPowerManagerService;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/services/QromPowerManagerService;->qromSetBacklightBrightness(I)I

    goto :goto_0
.end method
