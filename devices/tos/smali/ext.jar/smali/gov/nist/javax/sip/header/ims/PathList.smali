.class public Lgov/nist/javax/sip/header/ims/PathList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PathList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/Path;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 42
    const-class v0, Lgov/nist/javax/sip/header/ims/Path;

    const-string v1, "Path"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lgov/nist/javax/sip/header/ims/PathList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PathList;-><init>()V

    .line 48
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PathList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PathList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PathList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
