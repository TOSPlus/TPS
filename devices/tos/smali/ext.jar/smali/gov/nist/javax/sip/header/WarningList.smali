.class public Lgov/nist/javax/sip/header/WarningList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "WarningList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/Warning;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x13c080768c5c44dfL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lgov/nist/javax/sip/header/Warning;

    const-string v1, "Warning"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lgov/nist/javax/sip/header/WarningList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/WarningList;-><init>()V

    .line 52
    .local v0, "retval":Lgov/nist/javax/sip/header/WarningList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/WarningList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/WarningList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
