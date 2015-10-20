.class Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;
.super Ljava/util/TimerTask;
.source "UDPMessageChannel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgov/nist/javax/sip/stack/UDPMessageChannel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PingBackTimerTask"
.end annotation


# instance fields
.field ipAddress:Ljava/lang/String;

.field port:I

.field final synthetic this$0:Lgov/nist/javax/sip/stack/UDPMessageChannel;


# direct methods
.method public constructor <init>(Lgov/nist/javax/sip/stack/UDPMessageChannel;Ljava/lang/String;I)V
    .locals 3
    .param p2, "ipAddress"    # Ljava/lang/String;
    .param p3, "port"    # I

    .prologue
    .line 147
    iput-object p1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->this$0:Lgov/nist/javax/sip/stack/UDPMessageChannel;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 148
    iput-object p2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->ipAddress:Ljava/lang/String;

    .line 149
    iput p3, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->port:I

    .line 150
    # getter for: Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;
    invoke-static {p1}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->access$000(Lgov/nist/javax/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 2

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->ipAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->this$0:Lgov/nist/javax/sip/stack/UDPMessageChannel;

    # getter for: Lgov/nist/javax/sip/stack/UDPMessageChannel;->pingBackRecord:Ljava/util/Hashtable;
    invoke-static {v0}, Lgov/nist/javax/sip/stack/UDPMessageChannel;->access$000(Lgov/nist/javax/sip/stack/UDPMessageChannel;)Ljava/util/Hashtable;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->ipAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lgov/nist/javax/sip/stack/UDPMessageChannel$PingBackTimerTask;->port:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method
