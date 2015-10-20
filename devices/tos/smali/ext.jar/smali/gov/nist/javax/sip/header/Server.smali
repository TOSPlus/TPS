.class public Lgov/nist/javax/sip/header/Server;
.super Lgov/nist/javax/sip/header/SIPHeader;
.source "Server.java"

# interfaces
.implements Ljavax/sip/header/ServerHeader;


# static fields
.field private static final serialVersionUID:J = -0x31ca4c7c2de02b7dL


# instance fields
.field protected productTokens:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 86
    const-string v0, "Server"

    invoke-direct {p0, v0}, Lgov/nist/javax/sip/header/SIPHeader;-><init>(Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    .line 88
    return-void
.end method

.method private encodeProduct()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 63
    .local v1, "tokens":Ljava/lang/StringBuffer;
    iget-object v2, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 65
    .local v0, "it":Ljava/util/ListIterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 67
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public addProductToken(Ljava/lang/String;)V
    .locals 1
    .param p1, "pt"    # Ljava/lang/String;

    .prologue
    .line 79
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method public encodeBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lgov/nist/javax/sip/header/Server;->encodeProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProduct()Ljava/util/ListIterator;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    const/4 v0, 0x0

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_0
.end method

.method public setProduct(Ljava/util/List;)V
    .locals 2
    .param p1, "product"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .prologue
    .line 117
    if-nez p1, :cond_0

    .line 118
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "JAIN-SIP Exception, UserAgent, setProduct(), the  product parameter is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 122
    :cond_0
    iput-object p1, p0, Lgov/nist/javax/sip/header/Server;->productTokens:Ljava/util/List;

    .line 123
    return-void
.end method
