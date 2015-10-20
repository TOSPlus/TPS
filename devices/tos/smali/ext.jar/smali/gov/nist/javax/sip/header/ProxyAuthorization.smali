.class public Lgov/nist/javax/sip/header/ProxyAuthorization;
.super Lgov/nist/javax/sip/header/AuthenticationHeader;
.source "ProxyAuthorization.java"

# interfaces
.implements Ljavax/sip/header/ProxyAuthorizationHeader;


# static fields
.field private static final serialVersionUID:J = -0x58786e9fcf4e2b3aL


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const-string v0, "Proxy-Authorization"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/AuthenticationHeader;-><init>(Ljava/lang/String;)V

    .line 57
    return-void
.end method
