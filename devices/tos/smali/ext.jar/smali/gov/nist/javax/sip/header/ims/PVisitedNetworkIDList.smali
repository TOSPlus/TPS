.class public Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PVisitedNetworkIDList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3c52770d868f0e9eL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    const-class v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkID;

    const-string v1, "P-Visited-Network-ID"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;-><init>()V

    .line 53
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PVisitedNetworkIDList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
