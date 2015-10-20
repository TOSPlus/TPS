.class public Lcom/tencent/qrom/content/QromIntent;
.super Ljava/lang/Object;
.source "QromIntent.java"


# static fields
.field public static final ALL_BRIGHT:I = 0xf

.field public static final BUTTON_BRIGHT_BIT:I = 0x4

.field public static final KEYBOARD_BRIGHT_BIT:I = 0x8

.field public static final NANJI_DEVICE_STR:Ljava/lang/String;

.field public static final NANJI_RELEASE_LONG_TIME:J

.field public static final NANJI_VER_INT:I

.field public static final NANJI_VER_STR:Ljava/lang/String;

.field public static final QROM_ADD_BLACKLIST_APP_ACTION:Ljava/lang/String; = "qrom.intent.action.ADD_BLACKLIST_APP"

.field public static final QROM_BLACK_APP_PACKAGE_NAME:Ljava/lang/String; = "qrom.intent.extra.BLACKAPP_PACKAGENAME"

.field public static final QROM_BRIGHTNESS_DIM:I = 0x14

.field public static final QROM_POWER_STATE_CHANGE:Ljava/lang/String; = "qrom.intent.action.POWERSTATE_CHANGE"

.field public static final QROM_POWER_STATE_CHANGE_EXTRA:Ljava/lang/String; = "qrom.intent.extra.POWERSTATE_CHANGE"

.field public static final QROM_REMOVE_BLACKLIST_APP_ACTION:Ljava/lang/String; = "qrom.intent.action.REMOVE_BLACKLIST_APP"

.field public static final QROM__FACE_DECTECTED_SUCCESS:Ljava/lang/String; = "qrom.action.face_detected_success"

.field public static final SCREEN_BRIGHT:I = 0x3

.field public static final SCREEN_BRIGHT_BIT:I = 0x2

.field public static final SCREEN_BUTTON_BRIGHT:I = 0x7

.field public static final SCREEN_DIM:I = 0x1

.field public static final SCREEN_OFF:I = 0x0

.field public static final SCREEN_ON_BIT:I = 0x1

.field private static mCanvas:Landroid/graphics/Canvas;

.field private static mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 60
    const-string v0, "ro.build.version.nanji"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/tencent/qrom/content/QromIntent;->NANJI_VER_INT:I

    .line 66
    const-string v0, "ro.build.nanji.releaseTime"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/tencent/qrom/content/QromIntent;->NANJI_RELEASE_LONG_TIME:J

    .line 72
    const-string v0, "ro.build.version.nanji.display"

    invoke-static {v0}, Lcom/tencent/qrom/content/QromIntent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/content/QromIntent;->NANJI_VER_STR:Ljava/lang/String;

    .line 77
    const-string v0, "ro.qrom.device"

    invoke-static {v0}, Lcom/tencent/qrom/content/QromIntent;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/qrom/content/QromIntent;->NANJI_DEVICE_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBitmapWithNoScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "background"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const v9, 0x3f666666    # 0.9f

    const v8, 0x3f4ccccd    # 0.8f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x1

    .line 100
    invoke-static {}, Lcom/tencent/qrom/content/QromIntent;->init()V

    move-object v3, p0

    .line 101
    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 102
    .local v0, "background_bit":Landroid/graphics/Bitmap;
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1    # "mIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 103
    .local v2, "icon":Landroid/graphics/Bitmap;
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v3, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v0, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 107
    .local v1, "copy":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    cmpl-float v3, v3, v4

    if-gez v3, :cond_0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v8

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_1

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 110
    sget-object v3, Lcom/tencent/qrom/content/QromIntent;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    sget-object v3, Lcom/tencent/qrom/content/QromIntent;->mCanvas:Landroid/graphics/Canvas;

    sget-object v4, Lcom/tencent/qrom/content/QromIntent;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v1, v6, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 112
    sget-object v3, Lcom/tencent/qrom/content/QromIntent;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 114
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v9

    float-to-int v4, v4

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 118
    :cond_1
    sget-object v3, Lcom/tencent/qrom/content/QromIntent;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 119
    sget-object v3, Lcom/tencent/qrom/content/QromIntent;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    invoke-virtual {v3, v2, v4, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 120
    sget-object v3, Lcom/tencent/qrom/content/QromIntent;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 122
    return-object v0
.end method

.method public static getDrawableWithNoScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2
    .param p0, "background"    # Landroid/graphics/drawable/Drawable;
    .param p1, "mIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 125
    invoke-static {p0, p1}, Lcom/tencent/qrom/content/QromIntent;->getBitmapWithNoScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 126
    .local v0, "bp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 127
    .local v1, "bpd":Landroid/graphics/drawable/BitmapDrawable;
    return-object v1
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "property"    # Ljava/lang/String;

    .prologue
    .line 80
    const-string v0, "unknown"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 88
    sget-object v0, Lcom/tencent/qrom/content/QromIntent;->mCanvas:Landroid/graphics/Canvas;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    sput-object v0, Lcom/tencent/qrom/content/QromIntent;->mCanvas:Landroid/graphics/Canvas;

    .line 91
    :cond_0
    sget-object v0, Lcom/tencent/qrom/content/QromIntent;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/tencent/qrom/content/QromIntent;->mPaint:Landroid/graphics/Paint;

    .line 93
    sget-object v0, Lcom/tencent/qrom/content/QromIntent;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 94
    sget-object v0, Lcom/tencent/qrom/content/QromIntent;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    sget-object v0, Lcom/tencent/qrom/content/QromIntent;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 96
    sget-object v0, Lcom/tencent/qrom/content/QromIntent;->mPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 98
    :cond_1
    return-void
.end method
