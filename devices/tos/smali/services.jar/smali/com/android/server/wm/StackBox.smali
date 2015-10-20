.class public Lcom/android/server/wm/StackBox;
.super Ljava/lang/Object;
.source "StackBox.java"


# static fields
.field public static final TASK_STACK_GOES_ABOVE:I = 0x4

.field public static final TASK_STACK_GOES_AFTER:I = 0x1

.field public static final TASK_STACK_GOES_BEFORE:I = 0x0

.field public static final TASK_STACK_GOES_BELOW:I = 0x5

.field public static final TASK_STACK_GOES_OVER:I = 0x6

.field public static final TASK_STACK_GOES_UNDER:I = 0x7

.field public static final TASK_STACK_TO_LEFT_OF:I = 0x2

.field public static final TASK_STACK_TO_RIGHT_OF:I = 0x3

.field static sCurrentBoxId:I


# instance fields
.field layoutNeeded:Z

.field mBounds:Landroid/graphics/Rect;

.field final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field mFirst:Lcom/android/server/wm/StackBox;

.field mParent:Lcom/android/server/wm/StackBox;

.field mSecond:Lcom/android/server/wm/StackBox;

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field mStack:Lcom/android/server/wm/TaskStack;

.field final mStackBoxId:I

.field mTmpRect:Landroid/graphics/Rect;

.field mUnderStatusBar:Z

.field mVertical:Z

.field mWeight:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "displayContent"    # Lcom/android/server/wm/DisplayContent;
    .param p3, "parent"    # Lcom/android/server/wm/StackBox;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    .line 89
    const-class v1, Lcom/android/server/wm/StackBox;

    monitor-enter v1

    .line 90
    :try_start_0
    sget v0, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    add-int/lit8 v2, v0, 0x1

    sput v2, Lcom/android/server/wm/StackBox;->sCurrentBoxId:I

    iput v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    .line 91
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iput-object p1, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 94
    iput-object p2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 95
    iput-object p3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 96
    return-void

    .line 91
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 336
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->animateDimLayers()Z

    move-result v0

    .line 340
    :goto_0
    return v0

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v0

    .line 339
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->animateDimLayers()Z

    move-result v1

    or-int/2addr v0, v1

    .line 340
    goto :goto_0
.end method

.method close()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mDimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget-object v0, v0, Lcom/android/server/wm/TaskStack;->mAnimationBackgroundSurface:Lcom/android/server/wm/DimLayer;

    iget-object v0, v0, Lcom/android/server/wm/DimLayer;->mDimSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->destroy()V

    .line 387
    :goto_0
    return-void

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    .line 386
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->close()V

    goto :goto_0
.end method

.method contains(I)Z
    .locals 1
    .param p1, "stackBoxId"    # I

    .prologue
    .line 112
    iget v0, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 390
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mParent="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 391
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 392
    const-string v0, " mVertical="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 393
    const-string v0, " layoutNeeded="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 394
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mFirst="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 396
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 397
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mSecond="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 398
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/StackBox;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 403
    :goto_0
    return-void

    .line 400
    :cond_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mStack="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/android/server/wm/TaskStack;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_0
.end method

.method getStackBounds(I)Landroid/graphics/Rect;
    .locals 3
    .param p1, "stackId"    # I

    .prologue
    .line 148
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    if-ne v1, p1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 155
    :goto_0
    return-object v1

    .line 149
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v0

    .line 152
    .local v0, "bounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_2

    move-object v1, v0

    .line 153
    goto :goto_0

    .line 155
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackBox;->getStackBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_0
.end method

.method getStackId()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v0, Lcom/android/server/wm/TaskStack;->mStackId:I

    .line 240
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 2

    .prologue
    .line 353
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v1}, Lcom/android/server/wm/TaskStack;->isDimming()Z

    move-result v0

    .line 358
    :goto_0
    return v0

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v0

    .line 357
    .local v0, "result":Z
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->isDimming()Z

    move-result v1

    or-int/2addr v0, v1

    .line 358
    goto :goto_0
.end method

.method isFirstChild()Z
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeDirty()V
    .locals 1

    .prologue
    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/StackBox;->layoutNeeded:Z

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->makeDirty()V

    .line 104
    :cond_0
    return-void
.end method

.method remove()I
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 246
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v4, v2, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    .line 248
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-nez v2, :cond_0

    .line 251
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, p0}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)V

    .line 252
    const/4 v2, 0x0

    .line 271
    :goto_0
    return v2

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v2, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 256
    .local v1, "sibling":Lcom/android/server/wm/StackBox;
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v0, v2, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 257
    .local v0, "grandparent":Lcom/android/server/wm/StackBox;
    iput-object v0, v1, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    .line 258
    if-nez v0, :cond_2

    .line 261
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->removeStackBox(Lcom/android/server/wm/StackBox;)V

    .line 262
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v1, v4}, Lcom/android/server/wm/DisplayContent;->addStackBox(Lcom/android/server/wm/StackBox;Z)V

    .line 271
    :goto_2
    invoke-virtual {v1}, Lcom/android/server/wm/StackBox;->getStackId()I

    move-result v2

    goto :goto_0

    .line 255
    .end local v0    # "grandparent":Lcom/android/server/wm/StackBox;
    .end local v1    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    iget-object v1, v2, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_1

    .line 265
    .restart local v0    # "grandparent":Lcom/android/server/wm/StackBox;
    .restart local v1    # "sibling":Lcom/android/server/wm/StackBox;
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {v2}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 266
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    goto :goto_2

    .line 268
    :cond_3
    iput-object v1, v0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    goto :goto_2
.end method

.method resetAnimationBackgroundAnimator()V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetAnimationBackgroundAnimator()V

    .line 332
    :goto_0
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    .line 331
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetAnimationBackgroundAnimator()V

    goto :goto_0
.end method

.method resetDimming()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->resetDimmingTag()V

    .line 350
    :goto_0
    return-void

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->resetDimming()V

    goto :goto_0
.end method

.method resize(IF)Z
    .locals 3
    .param p1, "stackBoxId"    # I
    .param p2, "weight"    # F

    .prologue
    const/4 v0, 0x1

    .line 275
    iget v1, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v1, p1, :cond_2

    .line 276
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->resize(IF)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    .end local p2    # "weight":F
    :cond_0
    :goto_0
    return v0

    .line 276
    .restart local p2    # "weight":F
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 280
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    if-eqz v1, :cond_0

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-virtual {p0}, Lcom/android/server/wm/StackBox;->isFirstChild()Z

    move-result v2

    if-eqz v2, :cond_3

    .end local p2    # "weight":F
    :goto_1
    iput p2, v1, Lcom/android/server/wm/StackBox;->mWeight:F

    goto :goto_0

    .restart local p2    # "weight":F
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float p2, v2, p2

    goto :goto_1
.end method

.method setStackBoxSizes(Landroid/graphics/Rect;Z)Z
    .locals 8
    .param p1, "bounds"    # Landroid/graphics/Rect;
    .param p2, "underStatusBar"    # Z

    .prologue
    const/4 v5, 0x0

    .line 291
    const/4 v0, 0x0

    .line 292
    .local v0, "change":Z
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    if-eq v6, p2, :cond_0

    .line 293
    const/4 v0, 0x1

    .line 294
    iput-boolean p2, p0, Lcom/android/server/wm/StackBox;->mUnderStatusBar:Z

    .line 296
    :cond_0
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v6, :cond_3

    .line 297
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    or-int/2addr v0, v5

    .line 298
    if-eqz v0, :cond_2

    .line 299
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 300
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v5, p1, p2}, Lcom/android/server/wm/TaskStack;->setBounds(Landroid/graphics/Rect;Z)V

    .line 322
    :cond_2
    :goto_0
    return v0

    .line 303
    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 304
    iget-boolean v6, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    if-eqz v6, :cond_4

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 306
    .local v3, "height":I
    int-to-float v6, v3

    iget v7, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 307
    .local v1, "firstHeight":I
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v1

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 308
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v6

    or-int/2addr v0, v6

    .line 309
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iput v7, v6, Landroid/graphics/Rect;->top:I

    .line 310
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v7, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v3

    iput v7, v6, Landroid/graphics/Rect;->bottom:I

    .line 311
    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v7, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v6, v7, v5}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 312
    goto :goto_0

    .line 313
    .end local v1    # "firstHeight":I
    .end local v3    # "height":I
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 314
    .local v4, "width":I
    int-to-float v5, v4

    iget v6, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    mul-float/2addr v5, v6

    float-to-int v2, v5

    .line 315
    .local v2, "firstWidth":I
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v2

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 316
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 317
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 318
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v4

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 319
    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/StackBox;->setStackBoxSizes(Landroid/graphics/Rect;Z)Z

    move-result v5

    or-int/2addr v0, v5

    goto :goto_0
.end method

.method split(IIIF)Lcom/android/server/wm/TaskStack;
    .locals 8
    .param p1, "stackId"    # I
    .param p2, "relativeStackBoxId"    # I
    .param p3, "position"    # I
    .param p4, "weight"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    .line 169
    iget v4, p0, Lcom/android/server/wm/StackBox;->mStackBoxId:I

    if-eq v4, p2, :cond_2

    .line 171
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 232
    :cond_0
    :goto_0
    return-object v2

    .line 175
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    .line 176
    .local v2, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v2, :cond_0

    .line 179
    iget-object v3, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/wm/StackBox;->split(IIIF)Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_0

    .line 183
    .end local v2    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_2
    new-instance v2, Lcom/android/server/wm/TaskStack;

    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v2, v4, p1, v5}, Lcom/android/server/wm/TaskStack;-><init>(Lcom/android/server/wm/WindowManagerService;ILcom/android/server/wm/DisplayContent;)V

    .line 186
    .restart local v2    # "stack":Lcom/android/server/wm/TaskStack;
    if-nez p3, :cond_4

    .line 188
    const/4 p3, 0x2

    .line 193
    :cond_3
    :goto_1
    packed-switch p3, :pswitch_data_0

    .line 197
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 198
    const/4 v4, 0x2

    if-ne p3, v4, :cond_5

    .line 199
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 200
    move-object v0, v2

    .line 201
    .local v0, "firstStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 223
    .local v1, "secondStack":Lcom/android/server/wm/TaskStack;
    :goto_2
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    .line 224
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v4, v0, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 225
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    iput-object v0, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 227
    new-instance v4, Lcom/android/server/wm/StackBox;

    iget-object v5, p0, Lcom/android/server/wm/StackBox;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, p0, Lcom/android/server/wm/StackBox;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-direct {v4, v5, v6, p0}, Lcom/android/server/wm/StackBox;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/StackBox;)V

    iput-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    .line 228
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v4, v1, Lcom/android/server/wm/TaskStack;->mStackBox:Lcom/android/server/wm/StackBox;

    .line 229
    iget-object v4, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    iput-object v1, v4, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 231
    iput-object v3, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    goto :goto_0

    .line 189
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :cond_4
    if-ne p3, v7, :cond_3

    .line 191
    const/4 p3, 0x3

    goto :goto_1

    .line 203
    :cond_5
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 205
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .line 207
    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 210
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :pswitch_0
    iput-boolean v7, p0, Lcom/android/server/wm/StackBox;->mVertical:Z

    .line 211
    const/4 v4, 0x4

    if-ne p3, v4, :cond_6

    .line 212
    iput p4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 213
    move-object v0, v2

    .line 214
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 216
    .end local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    .end local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    :cond_6
    sub-float v4, v6, p4

    iput v4, p0, Lcom/android/server/wm/StackBox;->mWeight:F

    .line 217
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    .line 218
    .restart local v0    # "firstStack":Lcom/android/server/wm/TaskStack;
    move-object v1, v2

    .restart local v1    # "secondStack":Lcom/android/server/wm/TaskStack;
    goto :goto_2

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method stackIdFromPoint(II)I
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_1

    .line 124
    const/4 v0, -0x1

    .line 133
    :cond_0
    :goto_0
    return v0

    .line 126
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v1, :cond_2

    .line 127
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v0, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    goto :goto_0

    .line 129
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    .line 130
    .local v0, "stackId":I
    if-gez v0, :cond_0

    .line 133
    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/StackBox;->stackIdFromPoint(II)I

    move-result v0

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->stopDimmingIfNeeded()V

    .line 368
    :goto_0
    return-void

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    .line 367
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0}, Lcom/android/server/wm/StackBox;->stopDimmingIfNeeded()V

    goto :goto_0
.end method

.method switchUserStacks(I)V
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 371
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->switchUser(I)V

    .line 377
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/StackBox;->switchUserStacks(I)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v0, :cond_0

    .line 408
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " stack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mStack:Lcom/android/server/wm/TaskStack;

    iget v1, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 410
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mParent:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " first="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mFirst:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/StackBox;->mSecond:Lcom/android/server/wm/StackBox;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
