.class public interface abstract Ljavax/sip/header/SubjectHeader;
.super Ljava/lang/Object;
.source "SubjectHeader.java"

# interfaces
.implements Ljavax/sip/header/Header;


# static fields
.field public static final NAME:Ljava/lang/String; = "Subject"


# virtual methods
.method public abstract getSubject()Ljava/lang/String;
.end method

.method public abstract setSubject(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
