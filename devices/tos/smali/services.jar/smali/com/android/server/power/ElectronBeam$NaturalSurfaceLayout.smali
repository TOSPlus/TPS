.class final Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;
.super Ljava/lang/Object;
.source "ElectronBeam.java"

# interfaces
.implements Lcom/android/server/display/DisplayTransactionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ElectronBeam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NaturalSurfaceLayout"
.end annotation


# instance fields
.field private final mDisplayManager:Lcom/android/server/display/DisplayManagerService;

.field private mSurfaceControl:Landroid/view/SurfaceControl;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;Landroid/view/SurfaceControl;)V
    .locals 1
    .param p1, "displayManager"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "surfaceControl"    # Landroid/view/SurfaceControl;

    .prologue
    .line 691
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    iput-object p1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    .line 693
    iput-object p2, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 694
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V

    .line 695
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    .line 698
    monitor-enter p0

    .line 699
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 700
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 701
    iget-object v0, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListener(Lcom/android/server/display/DisplayTransactionListener;)V

    .line 702
    return-void

    .line 700
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onDisplayTransaction()V
    .locals 6

    .prologue
    .line 706
    monitor-enter p0

    .line 707
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_0

    .line 708
    monitor-exit p0

    .line 731
    :goto_0
    return-void

    .line 711
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mDisplayManager:Lcom/android/server/display/DisplayManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/display/DisplayManagerService;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 712
    .local v0, "displayInfo":Landroid/view/DisplayInfo;
    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    packed-switch v1, :pswitch_data_0

    .line 730
    :goto_1
    monitor-exit p0

    goto :goto_0

    .end local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 714
    .restart local v0    # "displayInfo":Landroid/view/DisplayInfo;
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 715
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 718
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 719
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, -0x40800000    # -1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 722
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    iget v3, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 723
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V

    goto :goto_1

    .line 726
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl;->setPosition(FF)V

    .line 727
    iget-object v1, p0, Lcom/android/server/power/ElectronBeam$NaturalSurfaceLayout;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/SurfaceControl;->setMatrix(FFFF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 712
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
