.class public Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PMediaAuthorizationList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/PMediaAuthorization;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7229c9cc5ff9b13dL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    const-class v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorization;

    const-string v1, "P-Media-Authorization"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 48
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;-><init>()V

    .line 53
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PMediaAuthorizationList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
