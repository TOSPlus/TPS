.class public interface abstract Ljavax/sip/message/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract addFirst(Ljavax/sip/header/Header;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract addHeader(Ljavax/sip/header/Header;)V
.end method

.method public abstract addLast(Ljavax/sip/header/Header;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/SipException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getApplicationData()Ljava/lang/Object;
.end method

.method public abstract getContent()Ljava/lang/Object;
.end method

.method public abstract getContentDisposition()Ljavax/sip/header/ContentDispositionHeader;
.end method

.method public abstract getContentEncoding()Ljavax/sip/header/ContentEncodingHeader;
.end method

.method public abstract getContentLanguage()Ljavax/sip/header/ContentLanguageHeader;
.end method

.method public abstract getContentLength()Ljavax/sip/header/ContentLengthHeader;
.end method

.method public abstract getExpires()Ljavax/sip/header/ExpiresHeader;
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljavax/sip/header/Header;
.end method

.method public abstract getHeaderNames()Ljava/util/ListIterator;
.end method

.method public abstract getHeaders(Ljava/lang/String;)Ljava/util/ListIterator;
.end method

.method public abstract getRawContent()[B
.end method

.method public abstract getSIPVersion()Ljava/lang/String;
.end method

.method public abstract getUnrecognizedHeaders()Ljava/util/ListIterator;
.end method

.method public abstract hashCode()I
.end method

.method public abstract removeContent()V
.end method

.method public abstract removeFirst(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
.end method

.method public abstract removeLast(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation
.end method

.method public abstract setApplicationData(Ljava/lang/Object;)V
.end method

.method public abstract setContent(Ljava/lang/Object;Ljavax/sip/header/ContentTypeHeader;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setContentDisposition(Ljavax/sip/header/ContentDispositionHeader;)V
.end method

.method public abstract setContentEncoding(Ljavax/sip/header/ContentEncodingHeader;)V
.end method

.method public abstract setContentLanguage(Ljavax/sip/header/ContentLanguageHeader;)V
.end method

.method public abstract setContentLength(Ljavax/sip/header/ContentLengthHeader;)V
.end method

.method public abstract setExpires(Ljavax/sip/header/ExpiresHeader;)V
.end method

.method public abstract setHeader(Ljavax/sip/header/Header;)V
.end method

.method public abstract setSIPVersion(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract toString()Ljava/lang/String;
.end method
