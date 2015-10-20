.class Lcom/android/server/RecognitionManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "RecognitionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/RecognitionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/RecognitionManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/RecognitionManagerService;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/server/RecognitionManagerService$1;->this$0:Lcom/android/server/RecognitionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 157
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 160
    const-string v2, "android.intent.extra.user_handle"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 161
    .local v1, "userHandle":I
    if-lez v1, :cond_0

    .line 162
    iget-object v2, p0, Lcom/android/server/RecognitionManagerService$1;->this$0:Lcom/android/server/RecognitionManagerService;

    # invokes: Lcom/android/server/RecognitionManagerService;->initForUser(I)V
    invoke-static {v2, v1}, Lcom/android/server/RecognitionManagerService;->access$000(Lcom/android/server/RecognitionManagerService;I)V

    .line 165
    .end local v1    # "userHandle":I
    :cond_0
    return-void
.end method
