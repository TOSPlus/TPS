.class public interface abstract Lgov/nist/javax/sip/header/ims/PChargingFunctionAddressesHeader;
.super Ljava/lang/Object;
.source "PChargingFunctionAddressesHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "P-Charging-Function-Addresses"


# virtual methods
.method public abstract addChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract addEventChargingFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract getChargingCollectionFunctionAddresses()Ljava/util/ListIterator;
.end method

.method public abstract getEventChargingFunctionAddresses()Ljava/util/ListIterator;
.end method

.method public abstract removeChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract removeEventChargingFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setChargingCollectionFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setEventChargingFunctionAddress(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
