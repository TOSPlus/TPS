.class public interface abstract Lgov/nist/javax/sip/header/AddressParameters;
.super Ljava/lang/Object;
.source "AddressParameters.java"

# interfaces
.implements Ljavax/sip/header/Parameters;


# virtual methods
.method public abstract getAddress()Ljavax/sip/address/Address;
.end method

.method public abstract getParameters()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract setAddress(Ljavax/sip/address/Address;)V
.end method
