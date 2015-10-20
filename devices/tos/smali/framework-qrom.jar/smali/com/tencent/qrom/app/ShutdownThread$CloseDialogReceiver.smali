.class Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownThread.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseDialogReceiver"
.end annotation


# instance fields
.field public dialog:Lcom/tencent/qrom/app/QromDialog;

.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 179
    iput-object p1, p0, Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    .line 180
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 182
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "unused"    # Landroid/content/DialogInterface;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 191
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/tencent/qrom/app/ShutdownThread$CloseDialogReceiver;->dialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->cancel()V

    .line 187
    return-void
.end method
