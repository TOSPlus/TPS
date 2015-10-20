.class public interface abstract Ljavax/sip/header/AuthenticationInfoHeader;
.super Ljava/lang/Object;
.source "AuthenticationInfoHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Authentication-Info"


# virtual methods
.method public abstract getCNonce()Ljava/lang/String;
.end method

.method public abstract getNextNonce()Ljava/lang/String;
.end method

.method public abstract getNonceCount()I
.end method

.method public abstract getQop()Ljava/lang/String;
.end method

.method public abstract getResponse()Ljava/lang/String;
.end method

.method public abstract setCNonce(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setNextNonce(Ljava/lang/String;)V
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

.method public abstract setQop(Ljava/lang/String;)V
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
