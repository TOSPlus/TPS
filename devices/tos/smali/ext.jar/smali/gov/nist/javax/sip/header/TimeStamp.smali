.class public Lgov/nist/javax/sip/header/TimeStamp;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "TimeStamp.java"

# interfaces
.implements Ljavax/sip/header/TimeStampHeader;


# static fields
.field private static final serialVersionUID:J = -0x3381440765137350L


# instance fields
.field protected delay:I

.field protected delayFloat:F

.field protected timeStamp:J

.field private timeStampFloat:F


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/high16 v2, -0x40800000    # -1.0f

    .line 71
    const-string v0, "Timestamp"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 56
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    .line 61
    iput v3, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 63
    iput v2, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    .line 65
    iput v2, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    .line 72
    iput v3, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 73
    return-void
.end method

.method private getDelayAsString()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 85
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 86
    const-string v0, ""

    .line 90
    :goto_0
    return-object v0

    .line 87
    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    if-eq v0, v2, :cond_1

    .line 88
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getTimeStampAsString()Ljava/lang/String;
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 76
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 77
    const-string v0, ""

    .line 81
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 79
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 100
    .local v0, "retval":Ljava/lang/StringBuffer;
    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getTimeStampAsString()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "s1":Ljava/lang/String;
    invoke-direct {p0}, Lgov/nist/javax/sip/header/TimeStamp;->getDelayAsString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "s2":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    const-string v3, ""

    .line 108
    :goto_0
    return-object v3

    .line 104
    :cond_0
    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    :cond_1
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 107
    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getDelay()F
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    goto :goto_0
.end method

.method public getTime()J
    .locals 4

    .prologue
    .line 172
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    float-to-long v0, v0

    :goto_0
    return-wide v0

    :cond_0
    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    goto :goto_0
.end method

.method public getTimeDelay()I
    .locals 2

    .prologue
    .line 176
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    float-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    goto :goto_0
.end method

.method public getTimeStamp()F
    .locals 2

    .prologue
    .line 141
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    long-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    goto :goto_0
.end method

.method public hasDelay()Z
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeDelay()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 126
    return-void
.end method

.method public setDelay(F)V
    .locals 2
    .param p1, "delay"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 163
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 164
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, TimeStamp, setDelay(), the delay parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    .line 168
    const/4 v0, -0x1

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 169
    return-void
.end method

.method public setTime(J)V
    .locals 2
    .param p1, "timeStamp"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 181
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 182
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "Illegal timestamp"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_0
    iput-wide p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    .line 184
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    .line 186
    return-void
.end method

.method public setTimeDelay(I)V
    .locals 3
    .param p1, "delay"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, -0x1

    if-ge p1, v0, :cond_0

    .line 190
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value out of range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->delay:I

    .line 192
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->delayFloat:F

    .line 194
    return-void
.end method

.method public setTimeStamp(F)V
    .locals 2
    .param p1, "timeStamp"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 131
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    .line 132
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, TimeStamp, setTimeStamp(), the timeStamp parameter is <0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStamp:J

    .line 136
    iput p1, p0, Lgov/nist/javax/sip/header/TimeStamp;->timeStampFloat:F

    .line 137
    return-void
.end method
