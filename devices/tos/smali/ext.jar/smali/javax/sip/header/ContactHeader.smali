.class public interface abstract Ljavax/sip/header/ContactHeader;
.super Ljava/lang/Object;
.source "ContactHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/HeaderAddress;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Contact"


# virtual methods
.method public abstract getExpires()I
.end method

.method public abstract getQValue()F
.end method

.method public abstract isWildCard()Z
.end method

.method public abstract setExpires(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setQValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method

.method public abstract setWildCard()V
.end method

.method public abstract setWildCardFlag(Z)V
.end method
