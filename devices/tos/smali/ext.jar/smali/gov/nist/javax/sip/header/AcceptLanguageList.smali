.class public Lgov/nist/javax/sip/header/AcceptLanguageList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "AcceptLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/AcceptLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2da707f5d2dc9048L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 53
    const-class v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    const-string v1, "Accept-Language"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguageList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguageList;-><init>()V

    .line 48
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguageList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/AcceptLanguageList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/AcceptLanguageList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 49
    return-object v0
.end method

.method public getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getFirst()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    .line 58
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    if-eqz v0, :cond_0

    .line 61
    .end local v0    # "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    :goto_0
    return-object v0

    .restart local v0    # "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    .end local v0    # "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic getFirst()Ljavax/sip/header/Header;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getFirst()Lgov/nist/javax/sip/header/AcceptLanguage;

    move-result-object v0

    return-object v0
.end method

.method public getLast()Lgov/nist/javax/sip/header/AcceptLanguage;
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lgov/nist/javax/sip/header/SIPHeaderList;->getLast()Ljavax/sip/header/Header;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    .line 66
    .local v0, "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    if-eqz v0, :cond_0

    .line 69
    .end local v0    # "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    :goto_0
    return-object v0

    .restart local v0    # "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    :cond_0
    new-instance v0, Lgov/nist/javax/sip/header/AcceptLanguage;

    .end local v0    # "retval":Lgov/nist/javax/sip/header/AcceptLanguage;
    invoke-direct {v0}, Lgov/nist/javax/sip/header/AcceptLanguage;-><init>()V

    goto :goto_0
.end method

.method public bridge synthetic getLast()Ljavax/sip/header/Header;
    .locals 1

    .prologue
    .line 40
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/AcceptLanguageList;->getLast()Lgov/nist/javax/sip/header/AcceptLanguage;

    move-result-object v0

    return-object v0
.end method
