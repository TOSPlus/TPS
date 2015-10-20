.class public interface abstract Landroid/qrom/tcm/IQRomTCMService;
.super Ljava/lang/Object;
.source "IQRomTCMService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/qrom/tcm/IQRomTCMService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getPackageName()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract init()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
