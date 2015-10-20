.class public Lgov/nist/javax/sip/header/AuthenticationInfoList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AuthenticationInfoList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/AuthenticationInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lgov/nist/javax/sip/header/AuthenticationInfo;

    const-string v1, "Authentication-Info"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lgov/nist/javax/sip/header/AuthenticationInfoList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AuthenticationInfoList;-><init>()V

    .line 46
    .local v0, "retval":Lgov/nist/javax/sip/header/AuthenticationInfoList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AuthenticationInfoList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AuthenticationInfoList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 47
    return-object v0
.end method
