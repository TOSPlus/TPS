.class public Lcom/tencent/qrom/services/QromPowerManagerService;
.super Ljava/lang/Object;
.source "QromPowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;,
        Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;,
        Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;,
        Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;
    }
.end annotation


# static fields
.field static final QROM_ACTION_START_FACEDETECT:Ljava/lang/String; = "android.qrom.action.start.facedetect"

.field static final QROM_ACTION_STOP_FACEDETECT:Ljava/lang/String; = "android.qrom.action.stop.facedetect"

.field static final QROM_FACE_DETECT_TIME_GAP:I = 0xfa0

.field static final QROM_TAG:Ljava/lang/String; = "QromPowerManagerService"

.field static final mb_isDebug:Z


# instance fields
.field private final REMOVE_BRIGHTNESS_MASK:I

.field private final SET_BRIGHTNESS_MASK:I

.field private mBootComplete:Z

.field private mBrightnessMode:I

.field mBrightnessModeObserver:Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;

.field private mCurrentScreenBrightness:I

.field private mDimMasked:Z

.field private mFaceDetectHandler:Landroid/os/Handler;

.field mFloatLayout:Landroid/widget/LinearLayout;

.field private mHaveManualChangedWhenAutoMode:Z

.field private mHaveMasked:Z

.field private mIsNeedQromMask:Z

.field private mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

.field private mPowerState:I

.field mScreenStateChangeReceiver:Landroid/content/BroadcastReceiver;

.field mWindowManager:Landroid/view/WindowManager;

.field mqromContext:Landroid/content/Context;

.field qrommFaceDetectEnabled:Z

.field qrommFaceDetectStarted:Z

.field qrommFaceDetectTimeoutTask:Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;

.field qrommFacedetectObserver:Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;

.field wmParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v3, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectEnabled:Z

    .line 37
    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBootComplete:Z

    .line 38
    iput v3, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I

    .line 83
    new-instance v0, Lcom/tencent/qrom/services/QromPowerManagerService$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/services/QromPowerManagerService$1;-><init>(Lcom/tencent/qrom/services/QromPowerManagerService;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mScreenStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 105
    const/4 v0, 0x2

    iput v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->SET_BRIGHTNESS_MASK:I

    .line 106
    const/4 v0, 0x3

    iput v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->REMOVE_BRIGHTNESS_MASK:I

    .line 140
    new-instance v0, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;-><init>(Lcom/tencent/qrom/services/QromPowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessModeObserver:Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;

    .line 170
    new-instance v0, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;-><init>(Lcom/tencent/qrom/services/QromPowerManagerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFacedetectObserver:Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;

    .line 208
    new-instance v0, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;-><init>(Lcom/tencent/qrom/services/QromPowerManagerService;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectTimeoutTask:Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;

    .line 209
    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectStarted:Z

    .line 239
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mPowerState:I

    .line 240
    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mDimMasked:Z

    .line 265
    iput-boolean v3, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mIsNeedQromMask:Z

    .line 267
    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z

    .line 268
    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z

    .line 49
    iput-object p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/services/QromPowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBootComplete:Z

    return v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/services/QromPowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qrom/services/QromPowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qrom/services/QromPowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/qrom/services/QromPowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/qrom/services/QromPowerManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mDimMasked:Z

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/services/QromPowerManagerService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;
    .param p1, "x1"    # Z

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mDimMasked:Z

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/services/QromPowerManagerService;)Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/services/QromPowerManagerService;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;

    .prologue
    .line 26
    iget v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/tencent/qrom/services/QromPowerManagerService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/services/QromPowerManagerService;
    .param p1, "x1"    # I

    .prologue
    .line 26
    iput p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I

    return p1
.end method

.method private isNeedQromMask()V
    .locals 2

    .prologue
    .line 270
    const-string v0, "ro.qrom.brightness_mask"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mIsNeedQromMask:Z

    .line 271
    return-void
.end method


# virtual methods
.method createFloatView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 331
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mWindowManager:Landroid/view/WindowManager;

    .line 332
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    .line 334
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x1a

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 339
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 340
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 342
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 343
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 345
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 346
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 348
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 349
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 351
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mFloatLayout:Landroid/widget/LinearLayout;

    .line 353
    iget-object v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mFloatLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 354
    return-void
.end method

.method public qromInit(Z)V
    .locals 8
    .param p1, "bootComplete"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 53
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "QromPowerManagerServiceThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 54
    .local v3, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v4, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v4, p0, v7}, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;-><init>(Lcom/tencent/qrom/services/QromPowerManagerService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    .line 57
    invoke-direct {p0}, Lcom/tencent/qrom/services/QromPowerManagerService;->isNeedQromMask()V

    .line 59
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mFaceDetectHandler:Landroid/os/Handler;

    .line 61
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 62
    .local v2, "filter":Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mScreenStateChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v7, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    const-string v4, "qrom_face_detect_enable"

    invoke-static {v4}, Lcom/tencent/qrom/provider/QromSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 67
    .local v1, "faceDetecUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v7, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFacedetectObserver:Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectObserver;

    invoke-virtual {v4, v1, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 68
    iget-object v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "qrom_face_detect_enable"

    invoke-static {v4, v7, v6}, Lcom/tencent/qrom/provider/QromSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectEnabled:Z

    .line 70
    const-string v4, "screen_brightness_mode"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 71
    .local v0, "brightnessModeUri":Landroid/net/Uri;
    iget-object v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v7, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessModeObserver:Lcom/tencent/qrom/services/QromPowerManagerService$QromBrightnessModeObserver;

    invoke-virtual {v4, v0, v6, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    iget-object v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "screen_brightness_mode"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I

    .line 74
    iget-object v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness"

    const/16 v6, 0x64

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mCurrentScreenBrightness:I

    .line 76
    iput-boolean p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBootComplete:Z

    .line 78
    iget v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I

    if-nez v4, :cond_0

    .line 79
    iget v4, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mCurrentScreenBrightness:I

    invoke-virtual {p0, v4}, Lcom/tencent/qrom/services/QromPowerManagerService;->qromSetBacklightBrightness(I)I

    .line 81
    :cond_0
    return-void

    .end local v0    # "brightnessModeUri":Landroid/net/Uri;
    :cond_1
    move v4, v6

    .line 68
    goto :goto_0
.end method

.method public qromSendPowerStateChangeBroadcast(I)V
    .locals 4
    .param p1, "newState"    # I

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x1

    .line 242
    iget-boolean v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBootComplete:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mPowerState:I

    if-eq v1, p1, :cond_2

    iget v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mCurrentScreenBrightness:I

    if-ge v1, v3, :cond_0

    iget v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I

    if-ne v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z

    if-nez v1, :cond_2

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 250
    .local v0, "msg":Landroid/os/Message;
    if-le p1, v2, :cond_3

    iget v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mPowerState:I

    if-ne v1, v2, :cond_3

    .line 251
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 252
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mDimMasked:Z

    .line 259
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 262
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iput p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mPowerState:I

    .line 263
    return-void

    .line 254
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_3
    if-ne p1, v2, :cond_1

    iget v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mPowerState:I

    if-le v1, v2, :cond_1

    .line 255
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 256
    iput v3, v0, Landroid/os/Message;->arg1:I

    .line 257
    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mDimMasked:Z

    goto :goto_0
.end method

.method public qromSetAutoBrightnessValue(I)I
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 274
    move v0, p1

    .line 276
    .local v0, "bRet":I
    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBootComplete:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z

    if-eqz v2, :cond_0

    .line 277
    iget v0, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mCurrentScreenBrightness:I

    .line 278
    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mIsNeedQromMask:Z

    if-eqz v2, :cond_0

    .line 279
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 280
    .local v1, "msg":Landroid/os/Message;
    const/16 v2, 0x14

    if-ge v0, v2, :cond_1

    .line 281
    const/4 v2, 0x2

    iput v2, v1, Landroid/os/Message;->what:I

    .line 282
    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 283
    const/16 v0, 0x14

    .line 288
    :goto_0
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->sendMessage(Landroid/os/Message;)Z

    .line 292
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return v0

    .line 286
    .restart local v1    # "msg":Landroid/os/Message;
    :cond_1
    const/4 v2, 0x3

    iput v2, v1, Landroid/os/Message;->what:I

    goto :goto_0
.end method

.method public qromSetBacklightBrightness(I)I
    .locals 4
    .param p1, "value"    # I

    .prologue
    const/4 v3, 0x1

    .line 297
    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBootComplete:Z

    if-nez v2, :cond_0

    move v1, p1

    .line 324
    .end local p1    # "value":I
    .local v1, "value":I
    :goto_0
    return v1

    .line 301
    .end local v1    # "value":I
    .restart local p1    # "value":I
    :cond_0
    iget v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBrightnessMode:I

    if-ne v2, v3, :cond_2

    .line 302
    iput-boolean v3, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z

    .line 308
    :goto_1
    iput p1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mCurrentScreenBrightness:I

    .line 311
    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mIsNeedQromMask:Z

    if-eqz v2, :cond_1

    .line 312
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    invoke-static {v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 313
    .local v0, "msg":Landroid/os/Message;
    const/16 v2, 0x14

    if-ge p1, v2, :cond_3

    .line 314
    const/4 v2, 0x2

    iput v2, v0, Landroid/os/Message;->what:I

    .line 315
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 316
    const/16 p1, 0x14

    .line 321
    :goto_2
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mMaskHandler:Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/services/QromPowerManagerService$QromMaskHandler;->sendMessage(Landroid/os/Message;)Z

    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    move v1, p1

    .line 324
    .end local p1    # "value":I
    .restart local v1    # "value":I
    goto :goto_0

    .line 305
    .end local v1    # "value":I
    .restart local p1    # "value":I
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveManualChangedWhenAutoMode:Z

    goto :goto_1

    .line 319
    .restart local v0    # "msg":Landroid/os/Message;
    :cond_3
    const/4 v2, 0x3

    iput v2, v0, Landroid/os/Message;->what:I

    goto :goto_2
.end method

.method public qromSetFaceDetectTimeoutLocked(III)V
    .locals 4
    .param p1, "nextState"    # I
    .param p2, "wakelockstate"    # I
    .param p3, "dimDelay"    # I

    .prologue
    .line 188
    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mBootComplete:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mFaceDetectHandler:Landroid/os/Handler;

    if-eqz v2, :cond_1

    .line 189
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mFaceDetectHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectTimeoutTask:Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectEnabled:Z

    if-eqz v2, :cond_1

    .line 192
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_2

    .line 193
    const-wide/16 v0, 0x0

    .line 194
    .local v0, "nFaceDetectDelay":J
    const/16 v2, 0xfa0

    if-le p3, v2, :cond_0

    .line 195
    add-int/lit16 v2, p3, -0xfa0

    int-to-long v0, v2

    .line 198
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mFaceDetectHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectTimeoutTask:Lcom/tencent/qrom/services/QromPowerManagerService$QromFaceDetectTimeoutTask;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 205
    .end local v0    # "nFaceDetectDelay":J
    :cond_1
    :goto_0
    return-void

    .line 200
    :cond_2
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/tencent/qrom/services/QromPowerManagerService;->qromStopFaceDetect()V

    goto :goto_0
.end method

.method qromStartFaceDetect()V
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.qrom.action.start.facedetect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 235
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectStarted:Z

    .line 237
    :cond_0
    return-void
.end method

.method qromStopFaceDetect()V
    .locals 2

    .prologue
    .line 219
    iget-boolean v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectStarted:Z

    if-eqz v1, :cond_0

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.qrom.action.stop.facedetect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 221
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 223
    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mqromContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 225
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->qrommFaceDetectStarted:Z

    .line 228
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method qrom_log(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 45
    return-void
.end method

.method setBrightnessMaskValue(I)V
    .locals 5
    .param p1, "value"    # I

    .prologue
    const v1, 0x3f666666    # 0.9f

    .line 357
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mFloatLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mHaveMasked:Z

    if-eqz v2, :cond_0

    .line 358
    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v3, p1

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    sub-float v0, v2, v3

    .line 359
    .local v0, "dimValue":F
    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    cmpg-float v3, v0, v1

    if-gez v3, :cond_1

    .end local v0    # "dimValue":F
    :goto_0
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 360
    iget-object v1, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->mFloatLayout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/tencent/qrom/services/QromPowerManagerService;->wmParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    :cond_0
    return-void

    .restart local v0    # "dimValue":F
    :cond_1
    move v0, v1

    .line 359
    goto :goto_0
.end method
