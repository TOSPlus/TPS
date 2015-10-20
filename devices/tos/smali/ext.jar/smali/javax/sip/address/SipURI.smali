.class public interface abstract Ljavax/sip/address/SipURI;
.super Ljava/lang/Object;
.source "SipURI.java"

# interfaces
.implements Ljavax/sip/address/URI;
.implements Ljavax/sip/header/Parameters;


# virtual methods
.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeaderNames()Ljava/util/Iterator;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getLrParam()Ljava/lang/String;
.end method

.method public abstract getMAddrParam()Ljava/lang/String;
.end method

.method public abstract getMethodParam()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getTTLParam()I
.end method

.method public abstract getTransportParam()Ljava/lang/String;
.end method

.method public abstract getUser()Ljava/lang/String;
.end method

.method public abstract getUserAtHost()Ljava/lang/String;
.end method

.method public abstract getUserAtHostPort()Ljava/lang/String;
.end method

.method public abstract getUserParam()Ljava/lang/String;
.end method

.method public abstract getUserPassword()Ljava/lang/String;
.end method

.method public abstract getUserType()Ljava/lang/String;
.end method

.method public abstract hasLrParam()Z
.end method

.method public abstract hasTransport()Z
.end method

.method public abstract isSecure()Z
.end method

.method public abstract removeUserType()V
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setHost(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setLrParam()V
.end method

.method public abstract setMAddrParam(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setMethodParam(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setPort(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setSecure(Z)V
.end method

.method public abstract setTTLParam(I)V
.end method

.method public abstract setTransportParam(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setUser(Ljava/lang/String;)V
.end method

.method public abstract setUserParam(Ljava/lang/String;)V
.end method

.method public abstract setUserPassword(Ljava/lang/String;)V
.end method
