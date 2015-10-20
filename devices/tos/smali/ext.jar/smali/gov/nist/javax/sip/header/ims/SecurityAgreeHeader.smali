.class public interface abstract Lgov/nist/javax/sip/header/ims/SecurityAgreeHeader;
.super Ljava/lang/Object;
.source "SecurityAgreeHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# virtual methods
.method public abstract getAlgorithm()Ljava/lang/String;
.end method

.method public abstract getEncryptionAlgorithm()Ljava/lang/String;
.end method

.method public abstract getMode()Ljava/lang/String;
.end method

.method public abstract getPortClient()I
.end method

.method public abstract getPortServer()I
.end method

.method public abstract getPreference()F
.end method

.method public abstract getProtocol()Ljava/lang/String;
.end method

.method public abstract getSPIClient()I
.end method

.method public abstract getSPIServer()I
.end method

.method public abstract getSecurityMechanism()Ljava/lang/String;
.end method

.method public abstract setAlgorithm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setEncryptionAlgorithm(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setMode(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setPortClient(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setPortServer(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setPreference(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setProtocol(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setSPIClient(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setSPIServer(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setSecurityMechanism(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
