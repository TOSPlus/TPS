.class Lcom/android/server/ConnectivityService$DefaultNetworkFactory;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/android/server/ConnectivityService$NetworkFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultNetworkFactory"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mTrackerHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "trackerHandler"    # Landroid/os/Handler;

    .prologue
    .line 722
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 723
    iput-object p1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    .line 724
    iput-object p2, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    .line 725
    return-void
.end method


# virtual methods
.method public createTracker(ILandroid/net/NetworkConfig;)Landroid/net/NetworkStateTracker;
    .locals 3
    .param p1, "targetNetworkType"    # I
    .param p2, "config"    # Landroid/net/NetworkConfig;

    .prologue
    .line 729
    iget v0, p2, Landroid/net/NetworkConfig;->radio:I

    packed-switch v0, :pswitch_data_0

    .line 743
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to create a NetworkStateTracker for an unknown radio type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Landroid/net/NetworkConfig;->radio:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 731
    :pswitch_1
    new-instance v0, Landroid/net/wifi/WifiStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/WifiStateTracker;-><init>(ILjava/lang/String;)V

    .line 741
    :goto_0
    return-object v0

    .line 733
    :pswitch_2
    new-instance v0, Landroid/net/MobileDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/MobileDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 735
    :pswitch_3
    new-instance v0, Landroid/net/DummyDataStateTracker;

    iget-object v1, p2, Landroid/net/NetworkConfig;->name:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Landroid/net/DummyDataStateTracker;-><init>(ILjava/lang/String;)V

    goto :goto_0

    .line 737
    :pswitch_4
    invoke-static {}, Landroid/bluetooth/BluetoothTetheringDataTracker;->getInstance()Landroid/bluetooth/BluetoothTetheringDataTracker;

    move-result-object v0

    goto :goto_0

    .line 739
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/ConnectivityService$DefaultNetworkFactory;->mTrackerHandler:Landroid/os/Handler;

    # invokes: Lcom/android/server/ConnectivityService;->makeWimaxStateTracker(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;
    invoke-static {v0, v1}, Lcom/android/server/ConnectivityService;->access$200(Landroid/content/Context;Landroid/os/Handler;)Landroid/net/NetworkStateTracker;

    move-result-object v0

    goto :goto_0

    .line 741
    :pswitch_6
    invoke-static {}, Landroid/net/EthernetDataTracker;->getInstance()Landroid/net/EthernetDataTracker;

    move-result-object v0

    goto :goto_0

    .line 729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method
