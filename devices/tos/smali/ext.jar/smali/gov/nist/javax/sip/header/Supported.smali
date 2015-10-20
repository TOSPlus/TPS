.class public Lgov/nist/javax/sip/header/Supported;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Supported.java"

# interfaces
.implements Ljavax/sip/header/SupportedHeader;


# static fields
.field private static final serialVersionUID:J = -0x6a93a8fca822058eL


# instance fields
.field protected optionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "Supported"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "option_tag"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "Supported"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lgov/nist/javax/sip/header/Supported;->headerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "retval":Ljava/lang/String;
    iget-object v1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public getOptionTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public setOptionTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "optionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Supported, setOptionTag(), the optionTag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Supported;->optionTag:Ljava/lang/String;

    .line 106
    return-void
.end method
