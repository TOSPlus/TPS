.class public Lgov/nist/javax/sip/header/Require;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Require.java"

# interfaces
.implements Ljavax/sip/header/RequireHeader;


# static fields
.field private static final serialVersionUID:J = -0x33f351927d496d21L


# instance fields
.field protected optionTag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const-string v0, "Require"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 65
    const-string v0, "Require"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 66
    iput-object p1, p0, Lgov/nist/javax/sip/header/Require;->optionTag:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lgov/nist/javax/sip/header/Require;->optionTag:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lgov/nist/javax/sip/header/Require;->optionTag:Ljava/lang/String;

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
    .line 86
    if-nez p1, :cond_0

    .line 87
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, Require, setOptionTag(), the optionTag parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 90
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Require;->optionTag:Ljava/lang/String;

    .line 91
    return-void
.end method
