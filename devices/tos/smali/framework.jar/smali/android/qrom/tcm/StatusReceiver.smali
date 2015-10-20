.class public Landroid/qrom/tcm/StatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "StatusReceiver.java"


# static fields
.field public static final SCREEN_OFF:I = 0x0

.field public static final SCREEN_ON:I = 0x1

.field private static final TAG:Ljava/lang/String; = "StatusReceiver"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 22
    const-string v1, "StatusReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "qrom StatusReceiver receive broadcast is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    const-string v1, "StatusReceiver"

    const-string v2, "StatusReceiver receive broadcast is SCREEN_OFF"

    invoke-static {v1, v2}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :cond_0
    :goto_0
    return-void

    .line 26
    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    const-string v1, "StatusReceiver"

    const-string v2, "StatusReceiver receive broadcast is SCREEN_ON"

    invoke-static {v1, v2}, Landroid/qrom/tcm/QRTcmLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
