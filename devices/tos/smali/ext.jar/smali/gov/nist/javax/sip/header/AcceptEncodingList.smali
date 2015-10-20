.class public Lgov/nist/javax/sip/header/AcceptEncodingList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AcceptEncodingList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/AcceptEncoding;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lgov/nist/javax/sip/header/AcceptEncoding;

    const-string v1, "Accept-Encoding"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lgov/nist/javax/sip/header/AcceptEncodingList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptEncodingList;-><init>()V

    .line 46
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptEncodingList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptEncodingList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptEncodingList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 47
    return-object v0
.end method
