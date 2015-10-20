.class public abstract Lcom/android/internal/app/IMediaContainerService$Stub;
.super Landroid/os/Binder;
.source "IMediaContainerService.java"

# interfaces
.implements Lcom/android/internal/app/IMediaContainerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IMediaContainerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IMediaContainerService"

.field static final TRANSACTION_calculateDirectorySize:I = 0x7

.field static final TRANSACTION_calculateInstalledSize:I = 0xa

.field static final TRANSACTION_checkExternalFreeStorage:I = 0x5

.field static final TRANSACTION_checkInternalFreeStorage:I = 0x4

.field static final TRANSACTION_clearDirectory:I = 0x9

.field static final TRANSACTION_copyResource:I = 0x2

.field static final TRANSACTION_copyResourceToContainer:I = 0x1

.field static final TRANSACTION_getFileSystemStats:I = 0x8

.field static final TRANSACTION_getMinimalPackageInfo:I = 0x3

.field static final TRANSACTION_getObbInfo:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IMediaContainerService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;
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
    const-string v1, "com.android.internal.app.IMediaContainerService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IMediaContainerService;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IMediaContainerService;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IMediaContainerService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 12
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 215
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 56
    .local v1, "_arg0":Landroid/net/Uri;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 58
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 60
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 62
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "_arg4":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v6, 0x1

    .line 66
    .local v6, "_arg5":Z
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    .local v7, "_arg6":Z
    :goto_3
    move-object v0, p0

    .line 67
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/app/IMediaContainerService$Stub;->copyResourceToContainer(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x1

    goto :goto_0

    .line 53
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    .end local v7    # "_arg6":Z
    .end local v10    # "_result":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Uri;
    goto :goto_1

    .line 64
    .restart local v2    # "_arg1":Ljava/lang/String;
    .restart local v3    # "_arg2":Ljava/lang/String;
    .restart local v4    # "_arg3":Ljava/lang/String;
    .restart local v5    # "_arg4":Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    .line 66
    .restart local v6    # "_arg5":Z
    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    .line 74
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_arg5":Z
    :sswitch_2
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 83
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 84
    sget-object v0, Landroid/content/pm/ContainerEncryptionParams;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ContainerEncryptionParams;

    .line 90
    .local v2, "_arg1":Landroid/content/pm/ContainerEncryptionParams;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 91
    sget-object v0, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelFileDescriptor;

    .line 96
    .local v3, "_arg2":Landroid/os/ParcelFileDescriptor;
    :goto_6
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/IMediaContainerService$Stub;->copyResource(Landroid/net/Uri;Landroid/content/pm/ContainerEncryptionParams;Landroid/os/ParcelFileDescriptor;)I

    move-result v10

    .line 97
    .local v10, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeInt(I)V

    .line 99
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 80
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/content/pm/ContainerEncryptionParams;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    .end local v10    # "_result":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Uri;
    goto :goto_4

    .line 87
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/content/pm/ContainerEncryptionParams;
    goto :goto_5

    .line 94
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    goto :goto_6

    .line 103
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/content/pm/ContainerEncryptionParams;
    .end local v3    # "_arg2":Landroid/os/ParcelFileDescriptor;
    :sswitch_3
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 107
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 109
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 110
    .local v8, "_arg2":J
    invoke-virtual {p0, v1, v2, v8, v9}, Lcom/android/internal/app/IMediaContainerService$Stub;->getMinimalPackageInfo(Ljava/lang/String;IJ)Landroid/content/pm/PackageInfoLite;

    move-result-object v10

    .line 111
    .local v10, "_result":Landroid/content/pm/PackageInfoLite;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    if-eqz v10, :cond_6

    .line 113
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/content/pm/PackageInfoLite;->writeToParcel(Landroid/os/Parcel;I)V

    .line 119
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 117
    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 123
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    .end local v8    # "_arg2":J
    .end local v10    # "_result":Landroid/content/pm/PackageInfoLite;
    :sswitch_4
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 126
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 132
    .local v1, "_arg0":Landroid/net/Uri;
    :goto_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    .line 134
    .local v2, "_arg1":Z
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .line 135
    .restart local v8    # "_arg2":J
    invoke-virtual {p0, v1, v2, v8, v9}, Lcom/android/internal/app/IMediaContainerService$Stub;->checkInternalFreeStorage(Landroid/net/Uri;ZJ)Z

    move-result v10

    .line 136
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v10, :cond_9

    const/4 v0, 0x1

    :goto_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 138
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 129
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Z
    .end local v8    # "_arg2":J
    .end local v10    # "_result":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Uri;
    goto :goto_8

    .line 132
    :cond_8
    const/4 v2, 0x0

    goto :goto_9

    .line 137
    .restart local v2    # "_arg1":Z
    .restart local v8    # "_arg2":J
    .restart local v10    # "_result":Z
    :cond_9
    const/4 v0, 0x0

    goto :goto_a

    .line 142
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Z
    .end local v8    # "_arg2":J
    .end local v10    # "_result":Z
    :sswitch_5
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 145
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 151
    .restart local v1    # "_arg0":Landroid/net/Uri;
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    const/4 v2, 0x1

    .line 152
    .restart local v2    # "_arg1":Z
    :goto_c
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IMediaContainerService$Stub;->checkExternalFreeStorage(Landroid/net/Uri;Z)Z

    move-result v10

    .line 153
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v10, :cond_c

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 148
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Z
    .end local v10    # "_result":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/net/Uri;
    goto :goto_b

    .line 151
    :cond_b
    const/4 v2, 0x0

    goto :goto_c

    .line 154
    .restart local v2    # "_arg1":Z
    .restart local v10    # "_result":Z
    :cond_c
    const/4 v0, 0x0

    goto :goto_d

    .line 159
    .end local v1    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Z
    .end local v10    # "_result":Z
    :sswitch_6
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 162
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IMediaContainerService$Stub;->getObbInfo(Ljava/lang/String;)Landroid/content/res/ObbInfo;

    move-result-object v10

    .line 163
    .local v10, "_result":Landroid/content/res/ObbInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    if-eqz v10, :cond_d

    .line 165
    const/4 v0, 0x1

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    const/4 v0, 0x1

    invoke-virtual {v10, p3, v0}, Landroid/content/res/ObbInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 171
    :goto_e
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 169
    :cond_d
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_e

    .line 175
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":Landroid/content/res/ObbInfo;
    :sswitch_7
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 178
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IMediaContainerService$Stub;->calculateDirectorySize(Ljava/lang/String;)J

    move-result-wide v10

    .line 179
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 181
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 185
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":J
    :sswitch_8
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 188
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IMediaContainerService$Stub;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v10

    .line 189
    .local v10, "_result":[J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, v10}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 191
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 195
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v10    # "_result":[J
    :sswitch_9
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 198
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IMediaContainerService$Stub;->clearDirectory(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 204
    .end local v1    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string v0, "com.android.internal.app.IMediaContainerService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 208
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    const/4 v2, 0x1

    .line 209
    .restart local v2    # "_arg1":Z
    :goto_f
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IMediaContainerService$Stub;->calculateInstalledSize(Ljava/lang/String;Z)J

    move-result-wide v10

    .line 210
    .local v10, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    invoke-virtual {p3, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 212
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    .end local v2    # "_arg1":Z
    .end local v10    # "_result":J
    :cond_e
    const/4 v2, 0x0

    goto :goto_f

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
