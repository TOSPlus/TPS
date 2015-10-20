.class public Lgov/nist/javax/sip/message/ContentImpl;
.super Ljava/lang/Object;
.source "ContentImpl.java"

# interfaces
.implements Lgov/nist/javax/sip/message/Content;


# instance fields
.field private boundary:Ljava/lang/String;

.field private content:Ljava/lang/Object;

.field private contentDispositionHeader:Ljavax/sip/header/ContentDispositionHeader;

.field private contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "boundary"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    .line 28
    iput-object p2, p0, Lgov/nist/javax/sip/message/ContentImpl;->boundary:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    return-object v0
.end method

.method public getContentDispositionHeader()Ljavax/sip/header/ContentDispositionHeader;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentDispositionHeader:Ljavax/sip/header/ContentDispositionHeader;

    return-object v0
.end method

.method public getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    return-object v0
.end method

.method public setContent(Ljava/lang/Object;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/Object;

    .prologue
    .line 37
    iput-object p1, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    .line 38
    return-void
.end method

.method public setContentDispositionHeader(Ljavax/sip/header/ContentDispositionHeader;)V
    .locals 0
    .param p1, "contentDispositionHeader"    # Ljavax/sip/header/ContentDispositionHeader;

    .prologue
    .line 80
    iput-object p1, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentDispositionHeader:Ljavax/sip/header/ContentDispositionHeader;

    .line 81
    return-void
.end method

.method public setContentTypeHeader(Ljavax/sip/header/ContentTypeHeader;)V
    .locals 0
    .param p1, "contentTypeHeader"    # Ljavax/sip/header/ContentTypeHeader;

    .prologue
    .line 98
    iput-object p1, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentTypeHeader:Ljavax/sip/header/ContentTypeHeader;

    .line 99
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->boundary:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 62
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    .line 64
    :cond_0
    iget-object v0, p0, Lgov/nist/javax/sip/message/ContentImpl;->contentDispositionHeader:Ljavax/sip/header/ContentDispositionHeader;

    if-eqz v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/ContentImpl;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/ContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/ContentImpl;->getContentDispositionHeader()Ljavax/sip/header/ContentDispositionHeader;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 69
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/ContentImpl;->boundary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lgov/nist/javax/sip/message/ContentImpl;->getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lgov/nist/javax/sip/message/ContentImpl;->content:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
