.class public Lgov/nist/javax/sip/header/ims/PrivacyList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "PrivacyList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ims/Privacy;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x18f656c60d36e885L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    const-class v0, Lgov/nist/javax/sip/header/ims/Privacy;

    const-string v1, "Privacy"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 53
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 57
    new-instance v0, Lgov/nist/javax/sip/header/ims/PrivacyList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ims/PrivacyList;-><init>()V

    .line 58
    .local v0, "retval":Lgov/nist/javax/sip/header/ims/PrivacyList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ims/PrivacyList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ims/PrivacyList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    move-result-object v1

    return-object v1
.end method
