.class public Lgov/nist/javax/sip/header/AcceptList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AcceptList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Accept;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x18fdc630b7aed5dfL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lgov/nist/javax/sip/header/Accept;

    const-string v1, "Accept"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lgov/nist/javax/sip/header/AcceptList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptList;-><init>()V

    .line 51
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 52
    return-object v0
.end method
