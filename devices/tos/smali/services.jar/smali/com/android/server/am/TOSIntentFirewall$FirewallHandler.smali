.class Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;
.super Landroid/os/Handler;
.source "TOSIntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TOSIntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FirewallHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TOSIntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/am/TOSIntentFirewall;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;->this$0:Lcom/android/server/am/TOSIntentFirewall;

    .line 466
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 467
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;->this$0:Lcom/android/server/am/TOSIntentFirewall;

    # getter for: Lcom/android/server/am/TOSIntentFirewall;->RULES_DIR:Ljava/io/File;
    invoke-static {}, Lcom/android/server/am/TOSIntentFirewall;->access$000()Ljava/io/File;

    move-result-object v1

    # invokes: Lcom/android/server/am/TOSIntentFirewall;->readRulesDir(Ljava/io/File;)V
    invoke-static {v0, v1}, Lcom/android/server/am/TOSIntentFirewall;->access$100(Lcom/android/server/am/TOSIntentFirewall;Ljava/io/File;)V

    .line 472
    return-void
.end method
