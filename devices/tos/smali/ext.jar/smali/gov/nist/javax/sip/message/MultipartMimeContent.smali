.class public interface abstract Lgov/nist/javax/sip/message/MultipartMimeContent;
.super Ljava/lang/Object;
.source "MultipartMimeContent.java"


# virtual methods
.method public abstract add(Lgov/nist/javax/sip/message/Content;)Z
.end method

.method public abstract addContent(Lgov/nist/javax/sip/message/Content;)V
.end method

.method public abstract getContentCount()I
.end method

.method public abstract getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
.end method

.method public abstract getContents()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lgov/nist/javax/sip/message/Content;",
            ">;"
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
