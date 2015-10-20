.class public Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "ExtensionHeaderImpl.java"

# interfaces
.implements Ljavax/sip/header/ExtensionHeader;


# static fields
.field private static final serialVersionUID:J = -0x78a704c29fbbc6b9L


# instance fields
.field protected value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>()V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-direct {p0, p1}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 61
    return-void
.end method


# virtual methods
.method public encode()Ljava/lang/String;
    .locals 2

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->headerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->getHeaderValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderValue()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 84
    iget-object v3, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    .line 100
    :goto_0
    return-object v3

    .line 87
    :cond_0
    const/4 v1, 0x0

    .line 90
    .local v1, "encodedHdr":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->encode()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 94
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 95
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1

    .line 96
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 91
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v2

    .line 92
    .local v2, "ex":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0

    .line 98
    .end local v2    # "ex":Ljava/lang/Exception;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    :cond_1
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    .line 100
    iget-object v3, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "headerName"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->headerName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->value:Ljava/lang/String;

    .line 77
    return-void
.end method
