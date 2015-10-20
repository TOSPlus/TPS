.class public abstract Lcom/android/internal/app/IBatteryStats$Stub;
.super Landroid/os/Binder;
.source "IBatteryStats.java"

# interfaces
.implements Lcom/android/internal/app/IBatteryStats;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/IBatteryStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/IBatteryStats$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.app.IBatteryStats"

.field static final TRANSACTION_getAwakeTimeBattery:I = 0x2e

.field static final TRANSACTION_getAwakeTimePlugged:I = 0x2f

.field static final TRANSACTION_getStatistics:I = 0x1

.field static final TRANSACTION_noteBluetoothOff:I = 0x1c

.field static final TRANSACTION_noteBluetoothOn:I = 0x1b

.field static final TRANSACTION_noteFullWifiLockAcquired:I = 0x1d

.field static final TRANSACTION_noteFullWifiLockAcquiredFromSource:I = 0x23

.field static final TRANSACTION_noteFullWifiLockReleased:I = 0x1e

.field static final TRANSACTION_noteFullWifiLockReleasedFromSource:I = 0x24

.field static final TRANSACTION_noteInputEvent:I = 0xf

.field static final TRANSACTION_noteNetworkInterfaceType:I = 0x2b

.field static final TRANSACTION_noteNetworkStatsEnabled:I = 0x2c

.field static final TRANSACTION_notePhoneDataConnectionState:I = 0x14

.field static final TRANSACTION_notePhoneOff:I = 0x12

.field static final TRANSACTION_notePhoneOn:I = 0x11

.field static final TRANSACTION_notePhoneSignalStrength:I = 0x13

.field static final TRANSACTION_notePhoneState:I = 0x15

.field static final TRANSACTION_noteScreenBrightness:I = 0xd

.field static final TRANSACTION_noteScreenOff:I = 0xe

.field static final TRANSACTION_noteScreenOn:I = 0xc

.field static final TRANSACTION_noteStartGps:I = 0xa

.field static final TRANSACTION_noteStartSensor:I = 0x4

.field static final TRANSACTION_noteStartWakelock:I = 0x2

.field static final TRANSACTION_noteStartWakelockFromSource:I = 0x6

.field static final TRANSACTION_noteStopGps:I = 0xb

.field static final TRANSACTION_noteStopSensor:I = 0x5

.field static final TRANSACTION_noteStopWakelock:I = 0x3

.field static final TRANSACTION_noteStopWakelockFromSource:I = 0x7

.field static final TRANSACTION_noteUserActivity:I = 0x10

.field static final TRANSACTION_noteVibratorOff:I = 0x9

.field static final TRANSACTION_noteVibratorOn:I = 0x8

.field static final TRANSACTION_noteWifiBatchedScanStartedFromSource:I = 0x27

.field static final TRANSACTION_noteWifiBatchedScanStoppedFromSource:I = 0x28

.field static final TRANSACTION_noteWifiMulticastDisabled:I = 0x22

.field static final TRANSACTION_noteWifiMulticastDisabledFromSource:I = 0x2a

.field static final TRANSACTION_noteWifiMulticastEnabled:I = 0x21

.field static final TRANSACTION_noteWifiMulticastEnabledFromSource:I = 0x29

.field static final TRANSACTION_noteWifiOff:I = 0x17

.field static final TRANSACTION_noteWifiOn:I = 0x16

.field static final TRANSACTION_noteWifiRunning:I = 0x18

.field static final TRANSACTION_noteWifiRunningChanged:I = 0x19

.field static final TRANSACTION_noteWifiScanStarted:I = 0x1f

.field static final TRANSACTION_noteWifiScanStartedFromSource:I = 0x25

.field static final TRANSACTION_noteWifiScanStopped:I = 0x20

.field static final TRANSACTION_noteWifiScanStoppedFromSource:I = 0x26

.field static final TRANSACTION_noteWifiStopped:I = 0x1a

.field static final TRANSACTION_setBatteryState:I = 0x2d


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/app/IBatteryStats$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;
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
    const-string v1, "com.android.internal.app.IBatteryStats"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/app/IBatteryStats;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/android/internal/app/IBatteryStats;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/app/IBatteryStats$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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

    .line 571
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_0
    return v0

    .line 42
    :sswitch_0
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x1

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getStatistics()[B

    move-result-object v9

    .line 49
    .local v9, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 51
    const/4 v0, 0x1

    goto :goto_0

    .line 55
    .end local v9    # "_result":[B
    :sswitch_2
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 59
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 61
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 63
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 64
    .local v4, "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelock(IILjava/lang/String;I)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :sswitch_3
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 74
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 76
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 79
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelock(IILjava/lang/String;I)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :sswitch_4
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 90
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartSensor(II)V

    .line 91
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v0, 0x1

    goto :goto_0

    .line 96
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_5
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 100
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 101
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopSensor(II)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_6
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 116
    .local v1, "_arg0":Landroid/os/WorkSource;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 118
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 121
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 113
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_1

    .line 127
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_7
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 136
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 138
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 140
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 141
    .restart local v4    # "_arg3":I
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopWakelockFromSource(Landroid/os/WorkSource;ILjava/lang/String;I)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 143
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 133
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_2

    .line 147
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_8
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 151
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v7

    .line 152
    .local v7, "_arg1":J
    invoke-virtual {p0, v1, v7, v8}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOn(IJ)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 158
    .end local v1    # "_arg0":I
    .end local v7    # "_arg1":J
    :sswitch_9
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 161
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteVibratorOff(I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 167
    .end local v1    # "_arg0":I
    :sswitch_a
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 170
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStartGps(I)V

    .line 171
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 176
    .end local v1    # "_arg0":I
    :sswitch_b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 179
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteStopGps(I)V

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 185
    .end local v1    # "_arg0":I
    :sswitch_c
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOn()V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 192
    :sswitch_d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 195
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenBrightness(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 201
    .end local v1    # "_arg0":I
    :sswitch_e
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteScreenOff()V

    .line 203
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 204
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 208
    :sswitch_f
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteInputEvent()V

    .line 210
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 211
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 215
    :sswitch_10
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 219
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 220
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteUserActivity(II)V

    .line 221
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 226
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    :sswitch_11
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOn()V

    .line 228
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 229
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 233
    :sswitch_12
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneOff()V

    .line 235
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 240
    :sswitch_13
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 242
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    sget-object v0, Landroid/telephony/SignalStrength;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SignalStrength;

    .line 248
    .local v1, "_arg0":Landroid/telephony/SignalStrength;
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 249
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 246
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/telephony/SignalStrength;
    goto :goto_3

    .line 254
    .end local v1    # "_arg0":Landroid/telephony/SignalStrength;
    :sswitch_14
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 258
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    .line 259
    .local v2, "_arg1":Z
    :goto_4
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneDataConnectionState(IZ)V

    .line 260
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 261
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 258
    .end local v2    # "_arg1":Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_4

    .line 265
    .end local v1    # "_arg0":I
    :sswitch_15
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 268
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->notePhoneState(I)V

    .line 269
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 274
    .end local v1    # "_arg0":I
    :sswitch_16
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOn()V

    .line 276
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 277
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 281
    :sswitch_17
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiOff()V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 288
    :sswitch_18
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 291
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 296
    .local v1, "_arg0":Landroid/os/WorkSource;
    :goto_5
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunning(Landroid/os/WorkSource;)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 294
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_5

    .line 302
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_19
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_5

    .line 305
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 311
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 312
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/WorkSource;

    .line 317
    .local v2, "_arg1":Landroid/os/WorkSource;
    :goto_7
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    .line 318
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 319
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 308
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_6

    .line 315
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/WorkSource;
    goto :goto_7

    .line 323
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":Landroid/os/WorkSource;
    :sswitch_1a
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 326
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 331
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_8
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiStopped(Landroid/os/WorkSource;)V

    .line 332
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 333
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 329
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_8

    .line 337
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_1b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOn()V

    .line 339
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 344
    :sswitch_1c
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteBluetoothOff()V

    .line 346
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 351
    :sswitch_1d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 354
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquired(I)V

    .line 355
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 360
    .end local v1    # "_arg0":I
    :sswitch_1e
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 363
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleased(I)V

    .line 364
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 365
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 369
    .end local v1    # "_arg0":I
    :sswitch_1f
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 372
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStarted(I)V

    .line 373
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 374
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 378
    .end local v1    # "_arg0":I
    :sswitch_20
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 381
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStopped(I)V

    .line 382
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 387
    .end local v1    # "_arg0":I
    :sswitch_21
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabled(I)V

    .line 391
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 392
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 396
    .end local v1    # "_arg0":I
    :sswitch_22
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 399
    .restart local v1    # "_arg0":I
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabled(I)V

    .line 400
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 405
    .end local v1    # "_arg0":I
    :sswitch_23
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 407
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_8

    .line 408
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 413
    .local v1, "_arg0":Landroid/os/WorkSource;
    :goto_9
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    .line 414
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 411
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_9

    .line 419
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_24
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 422
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 427
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_a
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 429
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 425
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_a

    .line 433
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_25
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 436
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 441
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_b
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStartedFromSource(Landroid/os/WorkSource;)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 439
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_b

    .line 447
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_26
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 450
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 455
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_c
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 456
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 453
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_c

    .line 461
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_27
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 463
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 464
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 470
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 471
    .local v2, "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStartedFromSource(Landroid/os/WorkSource;I)V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 467
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    .end local v2    # "_arg1":I
    :cond_c
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_d

    .line 477
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_28
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_d

    .line 480
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 485
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_e
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiBatchedScanStoppedFromSource(Landroid/os/WorkSource;)V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 487
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 483
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_d
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_e

    .line 491
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_29
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 493
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 494
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 499
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_f
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastEnabledFromSource(Landroid/os/WorkSource;)V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 497
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_f

    .line 505
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_2a
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_f

    .line 508
    sget-object v0, Landroid/os/WorkSource;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/WorkSource;

    .line 513
    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    :goto_10
    invoke-virtual {p0, v1}, Lcom/android/internal/app/IBatteryStats$Stub;->noteWifiMulticastDisabledFromSource(Landroid/os/WorkSource;)V

    .line 514
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 515
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 511
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :cond_f
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/os/WorkSource;
    goto :goto_10

    .line 519
    .end local v1    # "_arg0":Landroid/os/WorkSource;
    :sswitch_2b
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 523
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 524
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkInterfaceType(Ljava/lang/String;I)V

    .line 525
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 530
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":I
    :sswitch_2c
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 531
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->noteNetworkStatsEnabled()V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 533
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 537
    :sswitch_2d
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 541
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 543
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 545
    .local v3, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 547
    .restart local v4    # "_arg3":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 549
    .local v5, "_arg4":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg5":I
    move-object v0, p0

    .line 550
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats$Stub;->setBatteryState(IIIIII)V

    .line 551
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 552
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 556
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":I
    .end local v4    # "_arg3":I
    .end local v5    # "_arg4":I
    .end local v6    # "_arg5":I
    :sswitch_2e
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimeBattery()J

    move-result-wide v9

    .line 558
    .local v9, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 559
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 560
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 564
    .end local v9    # "_result":J
    :sswitch_2f
    const-string v0, "com.android.internal.app.IBatteryStats"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/app/IBatteryStats$Stub;->getAwakeTimePlugged()J

    move-result-wide v9

    .line 566
    .restart local v9    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v9, v10}, Landroid/os/Parcel;->writeLong(J)V

    .line 568
    const/4 v0, 0x1

    goto/16 :goto_0

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
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x29 -> :sswitch_29
        0x2a -> :sswitch_2a
        0x2b -> :sswitch_2b
        0x2c -> :sswitch_2c
        0x2d -> :sswitch_2d
        0x2e -> :sswitch_2e
        0x2f -> :sswitch_2f
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
