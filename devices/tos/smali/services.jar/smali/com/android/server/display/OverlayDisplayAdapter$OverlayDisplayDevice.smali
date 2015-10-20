.class final Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "OverlayDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/OverlayDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "OverlayDisplayDevice"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private final mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private final mSecure:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mWidth:I

.field final synthetic this$0:Lcom/android/server/display/OverlayDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/OverlayDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFIZLandroid/graphics/SurfaceTexture;)V
    .locals 0
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I
    .param p6, "refreshRate"    # F
    .param p7, "densityDpi"    # I
    .param p8, "secure"    # Z
    .param p9, "surfaceTexture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->this$0:Lcom/android/server/display/OverlayDisplayAdapter;

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    .line 205
    iput-object p3, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    .line 206
    iput p4, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mWidth:I

    .line 207
    iput p5, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mHeight:I

    .line 208
    iput p6, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    .line 209
    iput p7, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDensityDpi:I

    .line 210
    iput-boolean p8, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSecure:Z

    .line 211
    iput-object p9, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 212
    return-void
.end method


# virtual methods
.method public destroyLocked()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 215
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 216
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 218
    iput-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/SurfaceControl;->destroyDisplay(Landroid/os/IBinder;)V

    .line 221
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 2

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_1

    .line 236
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 237
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 238
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 239
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 240
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mRefreshRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 241
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDensityDpi:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 242
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDensityDpi:I

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 243
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mDensityDpi:I

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 244
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0x40

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 245
    iget-boolean v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSecure:Z

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 249
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    if-nez v0, :cond_0

    .line 227
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->mSurface:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/android/server/display/OverlayDisplayAdapter$OverlayDisplayDevice;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    .line 231
    :cond_1
    return-void
.end method
