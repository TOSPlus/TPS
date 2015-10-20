.class public interface abstract Ljavax/sip/address/Address;
.super Ljava/lang/Object;
.source "Address.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# virtual methods
.method public abstract clone()Ljava/lang/Object;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getHost()Ljava/lang/String;
.end method

.method public abstract getPort()I
.end method

.method public abstract getURI()Ljavax/sip/address/URI;
.end method

.method public abstract getUserAtHostPort()Ljava/lang/String;
.end method

.method public abstract hasDisplayName()Z
.end method

.method public abstract hashCode()I
.end method

.method public abstract isSIPAddress()Z
.end method

.method public abstract isWildcard()Z
.end method

.method public abstract setDisplayName(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setURI(Ljavax/sip/address/URI;)V
.end method

.method public abstract setWildCardFlag()V
.end method
