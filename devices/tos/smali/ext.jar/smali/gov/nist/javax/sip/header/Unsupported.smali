.class public Lgov/nist/javax/sip/header/Unsupported;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Unsupported.java"

# interfaces
.implements Ljavax/sip/header/UnsupportedHeader;


# static fields
.field private static final serialVersionUID:J = -0x2268a6084c766aa7L


# instance fields
.field protected optionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "ot"    # Ljava/lang/String;

    .prologue
    .line 64
    const-string v0, "Unsupported"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 65
    iput-object p1, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    .line 66
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public setOptionTag(Ljava/lang/String;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception,  Unsupported, setOptionTag(), The option tag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Unsupported;->optionTag:Ljava/lang/String;

    .line 93
    return-void
.end method
