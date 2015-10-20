.class public interface abstract Ljavax/sip/header/CallInfoHeader;
.super Ljava/lang/Object;
.source "CallInfoHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Call-Info"


# virtual methods
.method public abstract getInfo()Ljavax/sip/address/URI;
.end method

.method public abstract getPurpose()Ljava/lang/String;
.end method

.method public abstract setInfo(Ljavax/sip/address/URI;)V
.end method

.method public abstract setPurpose(Ljava/lang/String;)V
.end method
