.class public abstract Lcom/android/internal/appwidget/IAppWidgetService$Stub;
.super Landroid/os/Binder;
.source "IAppWidgetService.java"

# interfaces
.implements Lcom/android/internal/appwidget/IAppWidgetService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/appwidget/IAppWidgetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.appwidget.IAppWidgetService"

.field static final TRANSACTION_allocateAppWidgetId:I = 0x3

.field static final TRANSACTION_bindAppWidgetId:I = 0x13

.field static final TRANSACTION_bindAppWidgetIdIfAllowed:I = 0x14

.field static final TRANSACTION_bindRemoteViewsService:I = 0x15

.field static final TRANSACTION_deleteAllHosts:I = 0x6

.field static final TRANSACTION_deleteAppWidgetId:I = 0x4

.field static final TRANSACTION_deleteHost:I = 0x5

.field static final TRANSACTION_getAppWidgetIds:I = 0x17

.field static final TRANSACTION_getAppWidgetIdsForHost:I = 0x8

.field static final TRANSACTION_getAppWidgetInfo:I = 0x10

.field static final TRANSACTION_getAppWidgetOptions:I = 0xb

.field static final TRANSACTION_getAppWidgetViews:I = 0x7

.field static final TRANSACTION_getInstalledProviders:I = 0xf

.field static final TRANSACTION_hasBindAppWidgetPermission:I = 0x11

.field static final TRANSACTION_notifyAppWidgetViewDataChanged:I = 0xe

.field static final TRANSACTION_partiallyUpdateAppWidgetIds:I = 0xc

.field static final TRANSACTION_setBindAppWidgetPermission:I = 0x12

.field static final TRANSACTION_startListening:I = 0x1

.field static final TRANSACTION_stopListening:I = 0x2

.field static final TRANSACTION_unbindRemoteViewsService:I = 0x16

.field static final TRANSACTION_updateAppWidgetIds:I = 0x9

.field static final TRANSACTION_updateAppWidgetOptions:I = 0xa

.field static final TRANSACTION_updateAppWidgetProvider:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "com.android.internal.appwidget.IAppWidgetService"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/appwidget/IAppWidgetService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/android/internal/appwidget/IAppWidgetService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/appwidget/IAppWidgetService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 423
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 43
    :sswitch_0
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/appwidget/IAppWidgetHost$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/appwidget/IAppWidgetHost;

    move-result-object v2

    .line 52
    .local v2, "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 54
    .local v3, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 56
    .local v4, "_arg2":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .local v5, "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .local v6, "_arg4":I
    move-object v1, p0

    .line 59
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->startListening(Lcom/android/internal/appwidget/IAppWidgetHost;Ljava/lang/String;ILjava/util/List;I)[I

    move-result-object v13

    .line 60
    .local v13, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 62
    move-object/from16 v0, p3

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 63
    const/4 v1, 0x1

    goto :goto_0

    .line 67
    .end local v2    # "_arg0":Lcom/android/internal/appwidget/IAppWidgetHost;
    .end local v3    # "_arg1":Ljava/lang/String;
    .end local v4    # "_arg2":I
    .end local v5    # "_arg3":Ljava/util/List;, "Ljava/util/List<Landroid/widget/RemoteViews;>;"
    .end local v6    # "_arg4":I
    .end local v13    # "_result":[I
    :sswitch_2
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 71
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 72
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->stopListening(II)V

    .line 73
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    const/4 v1, 0x1

    goto :goto_0

    .line 78
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_3
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 82
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 84
    .restart local v3    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 85
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->allocateAppWidgetId(Ljava/lang/String;II)I

    move-result v13

    .line 86
    .local v13, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    const/4 v1, 0x1

    goto :goto_0

    .line 92
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    .end local v13    # "_result":I
    :sswitch_4
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 96
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 97
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAppWidgetId(II)V

    .line 98
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 103
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_5
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 107
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 108
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteHost(II)V

    .line 109
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 114
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_6
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 117
    .restart local v2    # "_arg0":I
    invoke-virtual {p0, v2}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->deleteAllHosts(I)V

    .line 118
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 123
    .end local v2    # "_arg0":I
    :sswitch_7
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 127
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 128
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetViews(II)Landroid/widget/RemoteViews;

    move-result-object v13

    .line 129
    .local v13, "_result":Landroid/widget/RemoteViews;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v13, :cond_0

    .line 131
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/widget/RemoteViews;->writeToParcel(Landroid/os/Parcel;I)V

    .line 137
    :goto_1
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 135
    :cond_0
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 141
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_result":Landroid/widget/RemoteViews;
    :sswitch_8
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 145
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 146
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIdsForHost(II)[I

    move-result-object v13

    .line 147
    .local v13, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 149
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 153
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_result":[I
    :sswitch_9
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 157
    .local v2, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 164
    .local v3, "_arg1":Landroid/widget/RemoteViews;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 165
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetIds([ILandroid/widget/RemoteViews;I)V

    .line 166
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 161
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":I
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_2

    .line 171
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_a
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 175
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 176
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 182
    .local v3, "_arg1":Landroid/os/Bundle;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 183
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetOptions(ILandroid/os/Bundle;I)V

    .line 184
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 185
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 179
    .end local v3    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_arg2":I
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/os/Bundle;
    goto :goto_3

    .line 189
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/os/Bundle;
    :sswitch_b
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 193
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 194
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetOptions(II)Landroid/os/Bundle;

    move-result-object v13

    .line 195
    .local v13, "_result":Landroid/os/Bundle;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v13, :cond_3

    .line 197
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 203
    :goto_4
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 201
    :cond_3
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_4

    .line 207
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_result":Landroid/os/Bundle;
    :sswitch_c
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 211
    .local v2, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_4

    .line 212
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 218
    .local v3, "_arg1":Landroid/widget/RemoteViews;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 219
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->partiallyUpdateAppWidgetIds([ILandroid/widget/RemoteViews;I)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 215
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":I
    :cond_4
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_5

    .line 225
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_d
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 228
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 234
    .local v2, "_arg0":Landroid/content/ComponentName;
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_6

    .line 235
    sget-object v1, Landroid/widget/RemoteViews;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/RemoteViews;

    .line 241
    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 242
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->updateAppWidgetProvider(Landroid/content/ComponentName;Landroid/widget/RemoteViews;I)V

    .line 243
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 231
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    .end local v4    # "_arg2":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_6

    .line 238
    :cond_6
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/widget/RemoteViews;
    goto :goto_7

    .line 248
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":Landroid/widget/RemoteViews;
    :sswitch_e
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 250
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 252
    .local v2, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 254
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 255
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->notifyAppWidgetViewDataChanged([III)V

    .line 256
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 257
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 261
    .end local v2    # "_arg0":[I
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":I
    :sswitch_f
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 265
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 266
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getInstalledProviders(II)Ljava/util/List;

    move-result-object v14

    .line 267
    .local v14, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 269
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 273
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v14    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    :sswitch_10
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 278
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetInfo(II)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v13

    .line 279
    .local v13, "_result":Landroid/appwidget/AppWidgetProviderInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v13, :cond_7

    .line 281
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 282
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 287
    :goto_8
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 285
    :cond_7
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 291
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":I
    .end local v13    # "_result":Landroid/appwidget/AppWidgetProviderInfo;
    :sswitch_11
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 293
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 296
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->hasBindAppWidgetPermission(Ljava/lang/String;I)Z

    move-result v13

    .line 297
    .local v13, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 298
    if-eqz v13, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 298
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 303
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v13    # "_result":Z
    :sswitch_12
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .restart local v2    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    const/4 v3, 0x1

    .line 309
    .local v3, "_arg1":Z
    :goto_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 310
    .restart local v4    # "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->setBindAppWidgetPermission(Ljava/lang/String;ZI)V

    .line 311
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 307
    .end local v3    # "_arg1":Z
    .end local v4    # "_arg2":I
    :cond_9
    const/4 v3, 0x0

    goto :goto_a

    .line 316
    .end local v2    # "_arg0":Ljava/lang/String;
    :sswitch_13
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 318
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 320
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_a

    .line 321
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    .line 327
    .local v3, "_arg1":Landroid/content/ComponentName;
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 328
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 334
    .local v4, "_arg2":Landroid/os/Bundle;
    :goto_c
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 335
    .local v11, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetId(ILandroid/content/ComponentName;Landroid/os/Bundle;I)V

    .line 336
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 337
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 324
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    .end local v11    # "_arg3":I
    :cond_a
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/ComponentName;
    goto :goto_b

    .line 331
    :cond_b
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/os/Bundle;
    goto :goto_c

    .line 341
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/ComponentName;
    .end local v4    # "_arg2":Landroid/os/Bundle;
    :sswitch_14
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 345
    .local v2, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 347
    .local v3, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_c

    .line 348
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    .line 354
    .local v4, "_arg2":Landroid/content/ComponentName;
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 355
    sget-object v1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/Bundle;

    .line 361
    .local v11, "_arg3":Landroid/os/Bundle;
    :goto_e
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .restart local v6    # "_arg4":I
    move-object v7, p0

    move-object v8, v2

    move v9, v3

    move-object v10, v4

    move v12, v6

    .line 362
    invoke-virtual/range {v7 .. v12}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindAppWidgetIdIfAllowed(Ljava/lang/String;ILandroid/content/ComponentName;Landroid/os/Bundle;I)Z

    move-result v13

    .line 363
    .restart local v13    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    if-eqz v13, :cond_e

    const/4 v1, 0x1

    :goto_f
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 365
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 351
    .end local v4    # "_arg2":Landroid/content/ComponentName;
    .end local v6    # "_arg4":I
    .end local v11    # "_arg3":Landroid/os/Bundle;
    .end local v13    # "_result":Z
    :cond_c
    const/4 v4, 0x0

    .restart local v4    # "_arg2":Landroid/content/ComponentName;
    goto :goto_d

    .line 358
    :cond_d
    const/4 v11, 0x0

    .restart local v11    # "_arg3":Landroid/os/Bundle;
    goto :goto_e

    .line 364
    .restart local v6    # "_arg4":I
    .restart local v13    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_f

    .line 369
    .end local v2    # "_arg0":Ljava/lang/String;
    .end local v3    # "_arg1":I
    .end local v4    # "_arg2":Landroid/content/ComponentName;
    .end local v6    # "_arg4":I
    .end local v11    # "_arg3":Landroid/os/Bundle;
    .end local v13    # "_result":Z
    :sswitch_15
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 373
    .local v2, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 374
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 380
    .local v3, "_arg1":Landroid/content/Intent;
    :goto_10
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 382
    .local v4, "_arg2":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 383
    .local v11, "_arg3":I
    invoke-virtual {p0, v2, v3, v4, v11}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->bindRemoteViewsService(ILandroid/content/Intent;Landroid/os/IBinder;I)V

    .line 384
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 385
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 377
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":Landroid/os/IBinder;
    .end local v11    # "_arg3":I
    :cond_f
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/Intent;
    goto :goto_10

    .line 389
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/Intent;
    :sswitch_16
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 391
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 393
    .restart local v2    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_10

    .line 394
    sget-object v1, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 400
    .restart local v3    # "_arg1":Landroid/content/Intent;
    :goto_11
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 401
    .local v4, "_arg2":I
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->unbindRemoteViewsService(ILandroid/content/Intent;I)V

    .line 402
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 403
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 397
    .end local v3    # "_arg1":Landroid/content/Intent;
    .end local v4    # "_arg2":I
    :cond_10
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Landroid/content/Intent;
    goto :goto_11

    .line 407
    .end local v2    # "_arg0":I
    .end local v3    # "_arg1":Landroid/content/Intent;
    :sswitch_17
    const-string v1, "com.android.internal.appwidget.IAppWidgetService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 410
    sget-object v1, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 416
    .local v2, "_arg0":Landroid/content/ComponentName;
    :goto_12
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 417
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/appwidget/IAppWidgetService$Stub;->getAppWidgetIds(Landroid/content/ComponentName;I)[I

    move-result-object v13

    .line 418
    .local v13, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 420
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 413
    .end local v2    # "_arg0":Landroid/content/ComponentName;
    .end local v3    # "_arg1":I
    .end local v13    # "_result":[I
    :cond_11
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/content/ComponentName;
    goto :goto_12

    .line 39
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
