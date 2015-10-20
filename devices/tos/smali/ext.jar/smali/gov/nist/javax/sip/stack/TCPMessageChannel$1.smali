.class Lgov/nist/javax/sip/stack/TCPMessageChannel$1;
.super Ljava/util/TimerTask;
.source "TCPMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgov/nist/javax/sip/stack/TCPMessageChannel;->sendMessage([BLjava/net/InetAddress;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;


# direct methods
.method constructor <init>(Lgov/nist/javax/sip/stack/TCPMessageChannel;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()Z
    .locals 1

    .prologue
    .line 321
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    # getter for: Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;
    invoke-static {v0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->access$000(Lgov/nist/javax/sip/stack/TCPMessageChannel;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V

    .line 322
    invoke-super {p0}, Ljava/util/TimerTask;->cancel()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 323
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 332
    :try_start_0
    iget-object v0, p0, Lgov/nist/javax/sip/stack/TCPMessageChannel$1;->this$0:Lgov/nist/javax/sip/stack/TCPMessageChannel;

    # getter for: Lgov/nist/javax/sip/stack/TCPMessageChannel;->mySock:Ljava/net/Socket;
    invoke-static {v0}, Lgov/nist/javax/sip/stack/TCPMessageChannel;->access$000(Lgov/nist/javax/sip/stack/TCPMessageChannel;)Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    goto :goto_0
.end method
