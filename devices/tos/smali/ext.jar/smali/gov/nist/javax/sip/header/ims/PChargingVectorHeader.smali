.class public interface abstract Lgov/nist/javax/sip/header/ims/PChargingVectorHeader;
.super Ljava/lang/Object;
.source "PChargingVectorHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "P-Charging-Vector"


# virtual methods
.method public abstract getICID()Ljava/lang/String;
.end method

.method public abstract getICIDGeneratedAt()Ljava/lang/String;
.end method

.method public abstract getOriginatingIOI()Ljava/lang/String;
.end method

.method public abstract getTerminatingIOI()Ljava/lang/String;
.end method

.method public abstract setICID(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setICIDGeneratedAt(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setOriginatingIOI(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setTerminatingIOI(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
