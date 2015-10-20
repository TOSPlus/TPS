.class public interface abstract Ljavax/sip/message/Request;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Ljavax/sip/message/Message;


# static fields
.field public static final ACK:Ljava/lang/String; = "ACK"

.field public static final BYE:Ljava/lang/String; = "BYE"

.field public static final CANCEL:Ljava/lang/String; = "CANCEL"

.field public static final INFO:Ljava/lang/String; = "INFO"

.field public static final INVITE:Ljava/lang/String; = "INVITE"

.field public static final MESSAGE:Ljava/lang/String; = "MESSAGE"

.field public static final NOTIFY:Ljava/lang/String; = "NOTIFY"

.field public static final OPTIONS:Ljava/lang/String; = "OPTIONS"

.field public static final PRACK:Ljava/lang/String; = "PRACK"

.field public static final PUBLISH:Ljava/lang/String; = "PUBLISH"

.field public static final REFER:Ljava/lang/String; = "REFER"

.field public static final REGISTER:Ljava/lang/String; = "REGISTER"

.field public static final SUBSCRIBE:Ljava/lang/String; = "SUBSCRIBE"

.field public static final UPDATE:Ljava/lang/String; = "UPDATE"


# virtual methods
.method public abstract getMethod()Ljava/lang/String;
.end method

.method public abstract getRequestURI()Ljavax/sip/address/URI;
.end method

.method public abstract setMethod(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method

.method public abstract setRequestURI(Ljavax/sip/address/URI;)V
.end method
