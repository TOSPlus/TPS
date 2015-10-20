.class public Lgov/nist/javax/sip/header/SubscriptionState;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "SubscriptionState.java"

# interfaces
.implements Ljavax/sip/header/SubscriptionStateHeader;


# static fields
.field private static final serialVersionUID:J = -0x5c9e37cd95983a79L


# instance fields
.field protected expires:I

.field protected reasonCode:Ljava/lang/String;

.field protected retryAfter:I

.field protected state:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 59
    const-string v0, "Subscription-State"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 60
    iput v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    .line 61
    iput v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    .line 62
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/SubscriptionState;->encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected encodeBody(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 3
    .param p1, "buffer"    # Ljava/lang/StringBuffer;

    .prologue
    const/4 v2, -0x1

    .line 171
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 174
    const-string v0, ";reason="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    :cond_1
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    if-eq v0, v2, :cond_2

    .line 176
    const-string v0, ";expires="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 177
    :cond_2
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    if-eq v0, v2, :cond_3

    .line 178
    const-string v0, ";retry-after="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 180
    :cond_3
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 181
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v0, p1}, Lgov/nist/core/NameValueList;->encode(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 184
    :cond_4
    return-object p1
.end method

.method public getExpires()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    return v0
.end method

.method public getReasonCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    return-object v0
.end method

.method public getRetryAfter()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    return v0
.end method

.method public getState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    return-object v0
.end method

.method public setExpires(I)V
    .locals 2
    .param p1, "expires"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 72
    if-gez p1, :cond_0

    .line 73
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setExpires(), the expires parameter is  < 0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->expires:I

    .line 77
    return-void
.end method

.method public setReasonCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "reasonCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setReasonCode(), the reasonCode parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->reasonCode:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public setRetryAfter(I)V
    .locals 2
    .param p1, "retryAfter"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 97
    if-gtz p1, :cond_0

    .line 98
    new-instance v0, Ljavax/sip/InvalidArgumentException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setRetryAfter(), the retryAfter parameter is <=0"

    invoke-direct {v0, v1}, Ljavax/sip/InvalidArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    iput p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->retryAfter:I

    .line 102
    return-void
.end method

.method public setState(Ljava/lang/String;)V
    .locals 2
    .param p1, "state"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 156
    if-nez p1, :cond_0

    .line 157
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, SubscriptionState, setState(), the state parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/SubscriptionState;->state:Ljava/lang/String;

    .line 161
    return-void
.end method
