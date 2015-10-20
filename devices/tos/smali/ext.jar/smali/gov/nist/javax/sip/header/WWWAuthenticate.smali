.class public Lgov/nist/javax/sip/header/WWWAuthenticate;
.super Lgov/nist/javax/sip/header/AuthenticationHeader;
.source "WWWAuthenticate.java"

# interfaces
.implements Lgov/nist/javax/sip/header/ims/WWWAuthenticateHeaderIms;
.implements Ljavax/sip/header/WWWAuthenticateHeader;


# static fields
.field private static final serialVersionUID:J = 0x199e8450a455c1eL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "WWW-Authenticate"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getURI()Ljavax/sip/address/URI;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public setURI(Ljavax/sip/address/URI;)V
    .locals 0
    .param p1, "uri"    # Ljavax/sip/address/URI;

    .prologue
    .line 80
    return-void
.end method
