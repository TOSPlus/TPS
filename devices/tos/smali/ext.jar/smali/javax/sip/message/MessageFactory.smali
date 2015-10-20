.class public interface abstract Ljavax/sip/message/MessageFactory;
.super Ljava/lang/Object;
.source "MessageFactory.java"


# virtual methods
.method public abstract createRequest(Ljava/lang/String;)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createRequest(Ljavax/sip/address/URI;Ljava/lang/String;Ljavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createResponse(ILjavax/sip/header/CallIdHeader;Ljavax/sip/header/CSeqHeader;Ljavax/sip/header/FromHeader;Ljavax/sip/header/ToHeader;Ljava/util/List;Ljavax/sip/header/MaxForwardsHeader;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createResponse(ILjavax/sip/message/Request;)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;Ljava/lang/Object;)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createResponse(ILjavax/sip/message/Request;Ljavax/sip/header/ContentTypeHeader;[B)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createResponse(Ljava/lang/String;)Ljavax/sip/message/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
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
