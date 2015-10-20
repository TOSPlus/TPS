.class public interface abstract Ljavax/sip/header/FromHeader;
.super Ljava/lang/Object;
.source "FromHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/HeaderAddress;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "From"


# virtual methods
.method public abstract getDisplayName()Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getUserAtHostPort()Ljava/lang/String;
.end method

.method public abstract hasTag()Z
.end method

.method public abstract removeTag()V
.end method

.method public abstract setTag(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
