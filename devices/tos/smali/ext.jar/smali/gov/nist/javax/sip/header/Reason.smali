.class public Lgov/nist/javax/sip/header/Reason;
.super Lgov/nist/javax/sip/header/ParametersHeader;
.source "Reason.java"

# interfaces
.implements Ljavax/sip/header/ReasonHeader;


# static fields
.field private static final serialVersionUID:J = -0x7b8f262d9617f9acL


# instance fields
.field public final CAUSE:Ljava/lang/String;

.field public final TEXT:Ljava/lang/String;

.field protected protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    const-string v0, "Reason"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/ParametersHeader;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v0, "text"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Reason;->TEXT:Ljava/lang/String;

    .line 63
    const-string v0, "cause"

    iput-object v0, p0, Lgov/nist/javax/sip/header/Reason;->CAUSE:Ljava/lang/String;

    .line 126
    return-void
.end method


# virtual methods
.method protected encodeBody()Ljava/lang/String;
    .locals 3

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 144
    .local v0, "s":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v1}, Lgov/nist/core/NameValueList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 146
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    invoke-virtual {v2}, Lgov/nist/core/NameValueList;->encode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCause()I
    .locals 1

    .prologue
    .line 71
    const-string v0, "cause"

    invoke-virtual {p0, v0}, Lgov/nist/javax/sip/header/Reason;->getParameterAsInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const-string v0, "Reason"

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "text"

    invoke-virtual {v0, v1}, Lgov/nist/core/NameValueList;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setCause(I)V
    .locals 3
    .param p1, "cause"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation

    .prologue
    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "cause"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 89
    iput-object p1, p0, Lgov/nist/javax/sip/header/Reason;->protocol:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-eq v0, v1, :cond_0

    .line 107
    invoke-static {p1}, Lgov/nist/javax/sip/Utils;->getQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/header/Reason;->parameters:Lgov/nist/core/NameValueList;

    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Lgov/nist/core/NameValueList;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 110
    return-void
.end method
