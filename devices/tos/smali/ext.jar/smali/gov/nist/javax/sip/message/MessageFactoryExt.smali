.class public interface abstract Lgov/nist/javax/sip/message/MessageFactoryExt;
.super Ljava/lang/Object;
.source "MessageFactoryExt.java"

# interfaces
.implements Ljavax/sip/message/MessageFactory;


# virtual methods
.method public abstract createMultipartMimeContent(Ljavax/sip/header/ContentTypeHeader;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Lgov/nist/javax/sip/message/MultipartMimeContent;
.end method

.method public abstract setDefaultContentEncodingCharset(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setDefaultServerHeader(Ljavax/sip/header/ServerHeader;)V
.end method

.method public abstract setDefaultUserAgentHeader(Ljavax/sip/header/UserAgentHeader;)V
.end method
