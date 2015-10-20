.class public interface abstract Ljavax/sip/header/AuthorizationHeader;
.super Ljava/lang/Object;
.source "AuthorizationHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Authorization"


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getCNonce()Ljava/lang/String;
.end method

.method public abstract getNonce()Ljava/lang/String;
.end method

.method public abstract getNonceCount()I
.end method

.method public abstract getOpaque()Ljava/lang/String;
.end method

.method public abstract getQop()Ljava/lang/String;
.end method

.method public abstract getRealm()Ljava/lang/String;
.end method

.method public abstract getResponse()Ljava/lang/String;
.end method

.method public abstract getScheme()Ljava/lang/String;
.end method

.method public abstract getURI()Ljavax/sip/address/URI;
.end method

.method public abstract getUsername()Ljava/lang/String;
.end method

.method public abstract isStale()Z
.end method

.method public abstract setAlgorithm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setCNonce(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setNonce(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setNonceCount(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setOpaque(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setQop(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setRealm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setResponse(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setScheme(Ljava/lang/String;)V
.end method

.method public abstract setStale(Z)V
.end method

.method public abstract setURI(Ljavax/sip/address/URI;)V
.end method

.method public abstract setUsername(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
