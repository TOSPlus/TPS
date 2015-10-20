.class Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;
.super Landroid/os/Handler;
.source "QromDumpActivitiesForAutoStart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QromAutoStartChangedHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    .line 64
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 72
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    # invokes: Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->readAutoStartDb()V
    invoke-static {v0}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->access$000(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)V

    .line 75
    # getter for: Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mContext:Landroid/content/Context;
    invoke-static {}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->access$200()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->AUTO_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    # getter for: Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->mBlackListObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->access$100(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    .line 78
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    # invokes: Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->readAutoStartDb()V
    invoke-static {v0}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->access$000(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;)V

    .line 79
    iget-object v0, p0, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart$QromAutoStartChangedHandler;->this$0:Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;

    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->bWaitUpdate:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;->access$302(Lcom/tencent/qrom/services/QromDumpActivitiesForAutoStart;Z)Z

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
