.class public Lgov/nist/javax/sip/header/WWWAuthenticateList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "WWWAuthenticateList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/WWWAuthenticate;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x60da0aa6d8ffdfa2L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 56
    const-class v0, Lgov/nist/javax/sip/header/WWWAuthenticate;

    const-string v1, "WWW-Authenticate"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 57
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lgov/nist/javax/sip/header/WWWAuthenticateList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WWWAuthenticateList;-><init>()V

    .line 50
    .local v0, "retval":Lgov/nist/javax/sip/header/WWWAuthenticateList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/WWWAuthenticateList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/WWWAuthenticateList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
