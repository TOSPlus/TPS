.class public final Lgov/nist/javax/sip/header/ContentLanguageList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ContentLanguageList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ContentLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x49956ed2c3a07141L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 50
    const-class v0, Lgov/nist/javax/sip/header/ContentLanguage;

    const-string v1, "Content-Language"

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Lgov/nist/javax/sip/header/ContentLanguageList;

    invoke-direct {v0}, Lgov/nist/javax/sip/header/ContentLanguageList;-><init>()V

    .line 44
    .local v0, "retval":Lgov/nist/javax/sip/header/ContentLanguageList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ContentLanguageList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ContentLanguageList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 45
    return-object v0
.end method
