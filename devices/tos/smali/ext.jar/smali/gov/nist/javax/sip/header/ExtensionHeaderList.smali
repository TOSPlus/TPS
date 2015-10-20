.class public Lgov/nist/javax/sip/header/ExtensionHeaderList;
.super Lgov/nist/javax/sip/header/SIPHeaderList;
.source "ExtensionHeaderList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgov/nist/javax/sip/header/SIPHeaderList",
        "<",
        "Lgov/nist/javax/sip/header/ExtensionHeaderImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40f769eda9aeca95L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    const-class v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "hName"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    invoke-direct {p0, v0, p1}, Lgov/nist/javax/sip/header/SIPHeaderList;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 55
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    new-instance v0, Lgov/nist/javax/sip/header/ExtensionHeaderList;

    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderList;->headerName:Ljava/lang/String;

    invoke-direct {v0, v1}, Lgov/nist/javax/sip/header/ExtensionHeaderList;-><init>(Ljava/lang/String;)V

    .line 50
    .local v0, "retval":Lgov/nist/javax/sip/header/ExtensionHeaderList;
    iget-object v1, p0, Lgov/nist/javax/sip/header/ExtensionHeaderList;->hlist:Ljava/util/List;

    invoke-virtual {v0, v1}, Lgov/nist/javax/sip/header/ExtensionHeaderList;->clonehlist(Ljava/util/List;)Lgov/nist/javax/sip/header/SIPHeaderList;

    .line 51
    return-object v0
.end method

.method public encode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 63
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v2, "retval":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lgov/nist/javax/sip/header/ExtensionHeaderList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 65
    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lgov/nist/javax/sip/header/ExtensionHeaderImpl;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;

    .line 67
    .local v0, "eh":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    invoke-virtual {v0}, Lgov/nist/javax/sip/header/ExtensionHeaderImpl;->encode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 69
    .end local v0    # "eh":Lgov/nist/javax/sip/header/ExtensionHeaderImpl;
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
