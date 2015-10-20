.class public Lgov/nist/javax/sip/header/ims/PAssociatedURIList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PAssociatedURIList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/PAssociatedURI;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3dd0dfc13f8dd6a3L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    const-class v0, Lgov/nist/javax/sip/header/ims/PAssociatedURI;

    const-string v1, "P-Associated-URI"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;-><init>()V

    .line 63
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PAssociatedURIList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PAssociatedURIList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
