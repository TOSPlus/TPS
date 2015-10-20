.class public abstract Lcom/tencent/qrom/services/IQromNotificationManager$Stub;
.super Landroid/os/Binder;
.source "IQromNotificationManager.java"

# interfaces
.implements Lcom/tencent/qrom/services/IQromNotificationManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/services/IQromNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/services/IQromNotificationManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.tencent.qrom.services.IQromNotificationManager"

.field static final TRANSACTION_installDeletePackage:I = 0x4

.field static final TRANSACTION_setNotificationsEnabledForPackage:I = 0x1

.field static final TRANSACTION_shouldShowIcon:I = 0x3

.field static final TRANSACTION_shouldShowNotification:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.tencent.qrom.services.IQromNotificationManager"

    invoke-virtual {p0, p0, v0}, Lcom/tencent/qrom/services/IQromNotificationManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/tencent/qrom/services/IQromNotificationManager;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.tencent.qrom.services.IQromNotificationManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/tencent/qrom/services/IQromNotificationManager;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/tencent/qrom/services/IQromNotificationManager;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/tencent/qrom/services/IQromNotificationManager$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/tencent/qrom/services/IQromNotificationManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 99
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_0
    return v5

    .line 42
    :sswitch_0
    const-string v6, "com.tencent.qrom.services.IQromNotificationManager"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v7, "com.tencent.qrom.services.IQromNotificationManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    move v1, v5

    .line 53
    .local v1, "_arg1":Z
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 55
    .local v2, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 56
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/tencent/qrom/services/IQromNotificationManager$Stub;->setNotificationsEnabledForPackage(Ljava/lang/String;ZII)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :cond_0
    move v1, v6

    .line 51
    goto :goto_1

    .line 62
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_2
    const-string v7, "com.tencent.qrom.services.IQromNotificationManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2

    .line 65
    sget-object v7, Landroid/app/Notification;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification;

    .line 71
    .local v0, "_arg0":Landroid/app/Notification;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/services/IQromNotificationManager$Stub;->shouldShowNotification(Landroid/app/Notification;Ljava/lang/String;)Z

    move-result v4

    .line 73
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v4, :cond_1

    move v6, v5

    :cond_1
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 68
    .end local v0    # "_arg0":Landroid/app/Notification;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v4    # "_result":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/app/Notification;
    goto :goto_2

    .line 79
    .end local v0    # "_arg0":Landroid/app/Notification;
    :sswitch_3
    const-string v7, "com.tencent.qrom.services.IQromNotificationManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 82
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/services/IQromNotificationManager$Stub;->shouldShowIcon(Ljava/lang/String;)Z

    move-result v4

    .line 83
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_3

    move v6, v5

    :cond_3
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 89
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v4    # "_result":Z
    :sswitch_4
    const-string v7, "com.tencent.qrom.services.IQromNotificationManager"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 93
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_4

    move v1, v5

    .line 94
    .local v1, "_arg1":Z
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/services/IQromNotificationManager$Stub;->installDeletePackage(Ljava/lang/String;Z)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .end local v1    # "_arg1":Z
    :cond_4
    move v1, v6

    .line 93
    goto :goto_3

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
