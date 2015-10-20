.class Lgov/nist/javax/sip/stack/MessageLog;
.super Ljava/lang/Object;
.source "MessageLog.java"

# interfaces
.implements Lgov/nist/javax/sip/LogRecord;


# instance fields
.field private callId:Ljava/lang/String;

.field private destination:Ljava/lang/String;

.field private firstLine:Ljava/lang/String;

.field private isSender:Z

.field private message:Ljava/lang/String;

.field private source:Ljava/lang/String;

.field private tid:Ljava/lang/String;

.field private timeStamp:J

.field private timeStampHeaderValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "timeStamp"    # J
    .param p6, "isSender"    # Z
    .param p7, "firstLine"    # Ljava/lang/String;
    .param p8, "tid"    # Ljava/lang/String;
    .param p9, "callId"    # Ljava/lang/String;
    .param p10, "timestampVal"    # J

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null msg"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    .line 130
    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gez v0, :cond_2

    .line 131
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "negative ts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_2
    iput-wide p4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    .line 133
    iput-boolean p6, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    .line 134
    iput-object p7, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    .line 135
    iput-object p8, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    .line 136
    iput-object p9, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    .line 137
    iput-wide p10, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "source"    # Ljava/lang/String;
    .param p3, "destination"    # Ljava/lang/String;
    .param p4, "timeStamp"    # Ljava/lang/String;
    .param p5, "isSender"    # Z
    .param p6, "firstLine"    # Ljava/lang/String;
    .param p7, "tid"    # Ljava/lang/String;
    .param p8, "callId"    # Ljava/lang/String;
    .param p9, "timeStampHeaderValue"    # J

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    if-eqz p1, :cond_0

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "null msg"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 94
    :cond_1
    iput-object p1, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    .line 95
    iput-object p2, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    .line 96
    iput-object p3, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    .line 98
    :try_start_0
    invoke-static {p4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 99
    .local v1, "ts":J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gez v3, :cond_2

    .line 100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Bad time stamp "

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .end local v1    # "ts":J
    :catch_0
    move-exception v0

    .line 103
    .local v0, "ex":Ljava/lang/NumberFormatException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Bad number format "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 101
    .end local v0    # "ex":Ljava/lang/NumberFormatException;
    .restart local v1    # "ts":J
    :cond_2
    :try_start_1
    iput-wide v1, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 106
    iput-boolean p5, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    .line 107
    iput-object p6, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    .line 108
    iput-object p7, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    .line 109
    iput-object p8, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    .line 110
    iput-wide p9, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    .line 111
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 69
    instance-of v2, p1, Lgov/nist/javax/sip/stack/MessageLog;

    if-nez v2, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v1

    :cond_1
    move-object v0, p1

    .line 72
    check-cast v0, Lgov/nist/javax/sip/stack/MessageLog;

    .line 73
    .local v0, "otherLog":Lgov/nist/javax/sip/stack/MessageLog;
    iget-object v2, v0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    iget-object v3, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-wide v2, v0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    iget-wide v4, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<message\nfrom=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->source:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" \nto=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->destination:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" \ntime=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ntimeStamp = \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lgov/nist/javax/sip/stack/MessageLog;->timeStampHeaderValue:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nisSender=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->isSender:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" \ntransactionId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->tid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" \ncallId=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->callId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" \nfirstLine=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->firstLine:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \n>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 167
    .local v0, "log":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<![CDATA["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/stack/MessageLog;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]]>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</message>\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    return-object v0

    .line 149
    .end local v0    # "log":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    goto/16 :goto_0
.end method
