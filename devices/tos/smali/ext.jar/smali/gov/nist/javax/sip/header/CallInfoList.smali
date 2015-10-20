.class public Lgov/nist/javax/sip/header/CallInfoList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "CallInfoList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/CallInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x44b166a75897e317L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    const-class v0, Lgov/nist/javax/sip/header/CallInfo;

    const-string v1, "Call-Info"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lgov/nist/javax/sip/header/CallInfoList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/CallInfoList;-><init>()V

    .line 50
    .local v0, "retval":Lgov/nist/javax/sip/header/CallInfoList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/CallInfoList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/CallInfoList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 51
    return-object v0
.end method
