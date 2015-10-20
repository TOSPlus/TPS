.class public interface abstract Ljavax/sip/address/AddressFactory;
.super Ljava/lang/Object;
.source "AddressFactory.java"


# virtual methods
.method public abstract createAddress()Ljavax/sip/address/Address;
.end method

.method public abstract createAddress(Ljava/lang/String;)Ljavax/sip/address/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createAddress(Ljava/lang/String;Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createAddress(Ljavax/sip/address/URI;)Ljavax/sip/address/Address;
.end method

.method public abstract createSipURI(Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createSipURI(Ljava/lang/String;Ljava/lang/String;)Ljavax/sip/address/SipURI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createTelURL(Ljava/lang/String;)Ljavax/sip/address/TelURL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract createURI(Ljava/lang/String;)Ljavax/sip/address/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
