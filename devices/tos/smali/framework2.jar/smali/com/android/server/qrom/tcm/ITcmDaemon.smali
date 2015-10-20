.class public interface abstract Lcom/android/server/qrom/tcm/ITcmDaemon;
.super Ljava/lang/Object;
.source "ITcmDaemon.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/qrom/tcm/ITcmDaemon$Stub;
    }
.end annotation


# virtual methods
.method public abstract addQromAsSystemServer(Landroid/os/IBinder;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getQromSystemServerPid()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
