.class public interface abstract Ljavax/sip/header/Parameters;
.super Ljava/lang/Object;
.source "Parameters.java"


# virtual methods
.method public abstract getParameter(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getParameterNames()Ljava/util/Iterator;
.end method

.method public abstract removeParameter(Ljava/lang/String;)V
.end method

.method public abstract setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation
.end method
