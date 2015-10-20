.class Lcom/tencent/qrom/app/ShutdownThread$6;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/qrom/app/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/ShutdownThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/ShutdownThread;J[Z)V
    .locals 0

    .prologue
    .line 400
    iput-object p1, p0, Lcom/tencent/qrom/app/ShutdownThread$6;->this$0:Lcom/tencent/qrom/app/ShutdownThread;

    iput-wide p2, p0, Lcom/tencent/qrom/app/ShutdownThread$6;->val$endTime:J

    iput-object p4, p0, Lcom/tencent/qrom/app/ShutdownThread$6;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 406
    const-string v9, "nfc"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    .line 408
    .local v3, "nfc":Landroid/nfc/INfcAdapter;
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 410
    .local v5, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v9, "bluetooth_manager"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 415
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v3, :cond_0

    :try_start_0
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v9

    if-ne v9, v7, :cond_a

    :cond_0
    move v4, v7

    .line 417
    .local v4, "nfcOff":Z
    :goto_0
    if-nez v4, :cond_1

    .line 418
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off NFC..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_b

    :cond_2
    move v1, v7

    .line 428
    .local v1, "bluetoothOff":Z
    :goto_2
    if-nez v1, :cond_3

    .line 429
    const-string v9, "ShutdownThread"

    const-string v10, "Disabling Bluetooth..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 438
    :cond_3
    :goto_3
    if-eqz v5, :cond_4

    :try_start_2
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v9

    if-nez v9, :cond_c

    :cond_4
    move v6, v7

    .line 439
    .local v6, "radioOff":Z
    :goto_4
    if-nez v6, :cond_5

    .line 440
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    const/4 v9, 0x0

    invoke-interface {v5, v9}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 450
    :cond_5
    :goto_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/tencent/qrom/app/ShutdownThread$6;->val$endTime:J

    cmp-long v9, v9, v11

    if-gez v9, :cond_9

    .line 451
    if-nez v1, :cond_6

    .line 453
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-result v9

    if-nez v9, :cond_d

    move v1, v7

    .line 458
    :goto_6
    if-eqz v1, :cond_6

    .line 462
    :cond_6
    if-nez v6, :cond_7

    .line 464
    :try_start_4
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    move-result v9

    if-nez v9, :cond_e

    move v6, v7

    .line 469
    :goto_7
    if-eqz v6, :cond_7

    .line 473
    :cond_7
    if-nez v4, :cond_8

    .line 475
    :try_start_5
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5

    move-result v9

    if-ne v9, v7, :cond_f

    move v4, v7

    .line 480
    :goto_8
    if-eqz v6, :cond_8

    .line 485
    :cond_8
    if-eqz v6, :cond_10

    if-eqz v1, :cond_10

    if-eqz v4, :cond_10

    .line 487
    iget-object v9, p0, Lcom/tencent/qrom/app/ShutdownThread$6;->val$done:[Z

    aput-boolean v7, v9, v8

    .line 492
    :cond_9
    return-void

    .end local v1    # "bluetoothOff":Z
    .end local v4    # "nfcOff":Z
    .end local v6    # "radioOff":Z
    :cond_a
    move v4, v8

    .line 415
    goto :goto_0

    .line 421
    :catch_0
    move-exception v2

    .line 422
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    const/4 v4, 0x1

    .restart local v4    # "nfcOff":Z
    goto :goto_1

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_b
    move v1, v8

    .line 427
    goto :goto_2

    .line 432
    :catch_1
    move-exception v2

    .line 433
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 434
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_3

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_c
    move v6, v8

    .line 438
    goto :goto_4

    .line 443
    :catch_2
    move-exception v2

    .line 444
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    const/4 v6, 0x1

    .restart local v6    # "radioOff":Z
    goto :goto_5

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_d
    move v1, v8

    .line 453
    goto :goto_6

    .line 454
    :catch_3
    move-exception v2

    .line 455
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 456
    const/4 v1, 0x1

    goto :goto_6

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_e
    move v6, v8

    .line 464
    goto :goto_7

    .line 465
    :catch_4
    move-exception v2

    .line 466
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 467
    const/4 v6, 0x1

    goto :goto_7

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_f
    move v4, v8

    .line 475
    goto :goto_8

    .line 476
    :catch_5
    move-exception v2

    .line 477
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    const/4 v4, 0x1

    goto :goto_8

    .line 490
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_10
    const-wide/16 v9, 0x1f4

    invoke-static {v9, v10}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_5
.end method
