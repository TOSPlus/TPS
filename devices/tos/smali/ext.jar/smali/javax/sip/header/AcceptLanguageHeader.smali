.class public interface abstract Ljavax/sip/header/AcceptLanguageHeader;
.super Ljava/lang/Object;
.source "AcceptLanguageHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;
.implements Ljavax/sip/header/Parameters;


# static fields
.field public static final NAME:Ljava/lang/String; = "Accept-Language"


# virtual methods
.method public abstract getAcceptLanguage()Ljava/util/Locale;
.end method

.method public abstract getQValue()F
.end method

.method public abstract hasQValue()Z
.end method

.method public abstract removeQValue()V
.end method

.method public abstract setAcceptLanguage(Ljava/util/Locale;)V
.end method

.method public abstract setLanguageRange(Ljava/lang/String;)V
.end method

.method public abstract setQValue(F)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/sip/InvalidArgumentException;
        }
    .end annotation
.end method
