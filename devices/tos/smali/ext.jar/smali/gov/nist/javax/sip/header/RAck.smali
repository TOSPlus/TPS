.class public Lgov/nist/javax/sip/header/RAck;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "RAck.java"

# interfaces
.implements Ljavax/sip/header/RAckHeader;


# static fields
.field private static final serialVersionUID:J = 0xa533768a7c9b3d6L


# instance fields
.field protected cSeqNumber:J

.field protected method:Ljava/lang/String;

.field protected rSeqNumber:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "RAck"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-wide v1, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-wide v1, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCSeqNumber()I
    .locals 2

    .prologue
    .line 81
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public getCSeqNumberLong()J
    .locals 2

    .prologue
    .line 90
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    return-wide v0
.end method

.method public getCSequenceNumber()J
    .locals 2

    .prologue
    .line 126
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    return-wide v0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRSeqNumber()I
    .locals 2

    .prologue
    .line 109
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    long-to-int v0, v0

    return v0
.end method

.method public getRSequenceNumber()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    return-wide v0
.end method

.method public setCSeqNumber(I)V
    .locals 2
    .param p1, "cSeqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 117
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/RAck;->setCSequenceNumber(J)V

    .line 118
    return-void
.end method

.method public setCSequenceNumber(J)V
    .locals 3
    .param p1, "cSeqNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 135
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    const-wide v0, 0x80000000L

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 136
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad CSeq # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 137
    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    .line 139
    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 0
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 121
    iput-object p1, p0, Lgov/nist/javax/sip/header/RAck;->method:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public setRSeqNumber(I)V
    .locals 2
    .param p1, "rSeqNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 146
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lgov/nist/javax/sip/header/RAck;->setRSequenceNumber(J)V

    .line 147
    return-void
.end method

.method public setRSequenceNumber(J)V
    .locals 4
    .param p1, "rSeqNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 152
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-wide v0, p0, Lgov/nist/javax/sip/header/RAck;->cSeqNumber:J

    const-wide v2, 0x80000000L

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 153
    :cond_0
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad rSeq # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_1
    iput-wide p1, p0, Lgov/nist/javax/sip/header/RAck;->rSeqNumber:J

    .line 155
    return-void
.end method
