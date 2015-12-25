.class Lcom/android/server/am/TOSIntentFirewall$RuleObserver;
.super Landroid/os/FileObserver;
.source "TOSIntentFirewall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/TOSIntentFirewall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RuleObserver"
.end annotation


# static fields
.field private static final MONITORED_EVENTS:I = 0x3c8


# instance fields
.field final synthetic this$0:Lcom/android/server/am/TOSIntentFirewall;


# direct methods
.method public constructor <init>(Lcom/android/server/am/TOSIntentFirewall;Ljava/io/File;)V
    .locals 2
    .param p2, "monitoredDir"    # Ljava/io/File;

    .prologue
    .line 479
    iput-object p1, p0, Lcom/android/server/am/TOSIntentFirewall$RuleObserver;->this$0:Lcom/android/server/am/TOSIntentFirewall;

    .line 480
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3c8

    invoke-direct {p0, v0, v1}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 481
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 4
    .param p1, "event"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 485
    const-string v0, ".xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tos_ifw_disabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall$RuleObserver;->this$0:Lcom/android/server/am/TOSIntentFirewall;

    # getter for: Lcom/android/server/am/TOSIntentFirewall;->mFirewallHandler:Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;
    invoke-static {v0}, Lcom/android/server/am/TOSIntentFirewall;->access$200(Lcom/android/server/am/TOSIntentFirewall;)Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;->removeMessages(I)V

    .line 490
    iget-object v0, p0, Lcom/android/server/am/TOSIntentFirewall$RuleObserver;->this$0:Lcom/android/server/am/TOSIntentFirewall;

    # getter for: Lcom/android/server/am/TOSIntentFirewall;->mFirewallHandler:Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;
    invoke-static {v0}, Lcom/android/server/am/TOSIntentFirewall;->access$200(Lcom/android/server/am/TOSIntentFirewall;)Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/am/TOSIntentFirewall$FirewallHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 492
    :cond_1
    return-void
.end method
