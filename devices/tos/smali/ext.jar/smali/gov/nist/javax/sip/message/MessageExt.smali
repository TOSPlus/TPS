.class public interface abstract Lgov/nist/javax/sip/message/MessageExt;
.super Ljava/lang/Object;
.source "MessageExt.java"

# interfaces
.implements Ljavax/sip/message/Message;


# virtual methods
.method public abstract getApplicationData()Ljava/lang/Object;
.end method

.method public abstract getCSeqHeader()Ljavax/sip/header/CSeqHeader;
.end method

.method public abstract getCallIdHeader()Ljavax/sip/header/CallIdHeader;
.end method

.method public abstract getContentLengthHeader()Ljavax/sip/header/ContentLengthHeader;
.end method

.method public abstract getContentTypeHeader()Ljavax/sip/header/ContentTypeHeader;
.end method

.method public abstract getFirstLine()Ljava/lang/String;
.end method

.method public abstract getFromHeader()Ljavax/sip/header/FromHeader;
.end method

.method public abstract getMultipartMimeContent()Lgov/nist/javax/sip/message/MultipartMimeContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract getToHeader()Ljavax/sip/header/ToHeader;
.end method

.method public abstract getTopmostViaHeader()Ljavax/sip/header/ViaHeader;
.end method

.method public abstract setApplicationData(Ljava/lang/Object;)V
.end method
