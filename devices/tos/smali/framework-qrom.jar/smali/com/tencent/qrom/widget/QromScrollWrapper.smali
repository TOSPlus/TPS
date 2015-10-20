.class public Lcom/tencent/qrom/widget/QromScrollWrapper;
.super Ljava/lang/Object;
.source "QromScrollWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;
.implements Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;


# instance fields
.field private blurRadius:I

.field private blurTask:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

.field private contentLayout:I

.field private downSampling:I

.field private footerBitmap:Landroid/graphics/Bitmap;

.field private footerHeight:I

.field private footerView:Landroid/widget/ImageView;

.field private frame:Landroid/widget/FrameLayout;

.field private headerBitmap:Landroid/graphics/Bitmap;

.field private headerHeight:I

.field private headerView:Landroid/widget/ImageView;

.field private height:I

.field private lastScrollPosition:I

.field private scrollView:Lcom/tencent/qrom/widget/QromScrollView;

.field private width:I

.field private windowBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput v1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurRadius:I

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->lastScrollPosition:I

    .line 38
    iput v1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    return-void
.end method

.method private computeBlurOverlay()V
    .locals 8

    .prologue
    .line 170
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 185
    :cond_0
    :goto_0
    return-void

    .line 173
    :cond_1
    const/4 v7, 0x0

    .line 174
    .local v7, "scrollPosition":I
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/QromScrollView;->getScrollY()I

    move-result v7

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->width:I

    iget v4, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->height:I

    iget v5, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->windowBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qrom/widget/QromScrollWrapper;->drawViewToBitmap(Landroid/graphics/Bitmap;Landroid/view/View;IIILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerBitmap:Landroid/graphics/Bitmap;

    .line 179
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->width:I

    iget v4, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->height:I

    iget v5, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->windowBackground:Landroid/graphics/drawable/Drawable;

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qrom/widget/QromScrollWrapper;->drawViewToBitmap(Landroid/graphics/Bitmap;Landroid/view/View;IIILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    .line 180
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromScrollWrapper;->startBlurTask()V

    .line 182
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lcom/tencent/qrom/widget/QromScrollView;->scrollTo(II)V

    goto :goto_0
.end method

.method private drawViewToBitmap(Landroid/graphics/Bitmap;Landroid/view/View;IIILandroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "dest"    # Landroid/graphics/Bitmap;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "downSampling"    # I
    .param p6, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v7, 0x0

    .line 250
    const/high16 v5, 0x3f800000    # 1.0f

    int-to-float v6, p5

    div-float v4, v5, v6

    .line 251
    .local v4, "scale":F
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 252
    .local v3, "heightCopy":I
    invoke-virtual {p2, v7, v7, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 253
    int-to-float v5, p3

    mul-float/2addr v5, v4

    float-to-int v1, v5

    .line 254
    .local v1, "bmpWidth":I
    int-to-float v5, p4

    mul-float/2addr v5, v4

    float-to-int v0, v5

    .line 255
    .local v0, "bmpHeight":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    if-ne v5, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    if-eq v5, v0, :cond_1

    .line 256
    :cond_0
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 258
    :cond_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 259
    .local v2, "c":Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 260
    invoke-virtual {p6, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 261
    const/4 v5, 0x1

    if-le p5, v5, :cond_2

    .line 262
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 264
    :cond_2
    invoke-virtual {p2, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 265
    invoke-virtual {p2, v7, v7, p3, v3}, Landroid/view/View;->layout(IIII)V

    .line 266
    return-object p1
.end method

.method private isBlurTaskFinished()Z
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurTask:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNewScroll(I)V
    .locals 1
    .param p1, "t"    # I

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/QromScrollWrapper;->updateBlurOverlay(IZ)V

    .line 241
    return-void
.end method

.method private startBlurTask()V
    .locals 4

    .prologue
    .line 188
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurTask:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurTask:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    invoke-virtual {v0}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;->cancel()V

    .line 191
    :cond_0
    new-instance v0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurRadius:I

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;-><init>(Landroid/content/Context;Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurTask:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    .line 192
    new-instance v0, Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    iget-object v1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurRadius:I

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/tencent/qrom/gaussblur/GlassBlurTask;-><init>(Landroid/content/Context;Lcom/tencent/qrom/gaussblur/GlassBlurTask$Listener;Landroid/graphics/Bitmap;I)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurTask:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    .line 193
    return-void
.end method

.method private updateBlurOverlay(IZ)V
    .locals 12
    .param p1, "top"    # I
    .param p2, "force"    # Z

    .prologue
    const/4 v11, 0x0

    .line 196
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    if-nez v6, :cond_1

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 199
    :cond_1
    if-gez p1, :cond_2

    .line 200
    const/4 p1, 0x0

    .line 202
    :cond_2
    if-nez p2, :cond_3

    iget v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->lastScrollPosition:I

    if-eq v6, p1, :cond_0

    .line 205
    :cond_3
    iput p1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->lastScrollPosition:I

    .line 207
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerBitmap:Landroid/graphics/Bitmap;

    iget v7, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int v7, p1, v7

    iget v8, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->width:I

    iget v9, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int/2addr v8, v9

    iget v9, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    iget v10, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int/2addr v9, v10

    invoke-static {v6, v11, v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 208
    .local v5, "headerSection":Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/QromScrollView;->getHeight()I

    move-result v6

    add-int/2addr v6, p1

    iget v8, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    sub-int/2addr v6, v8

    iget v8, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int/2addr v6, v8

    iget-object v8, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    iget v10, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int/2addr v9, v10

    sub-int/2addr v8, v9

    if-ge v6, v8, :cond_4

    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/QromScrollView;->getHeight()I

    move-result v6

    add-int/2addr v6, p1

    iget v8, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    sub-int/2addr v6, v8

    iget v8, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int/2addr v6, v8

    :goto_1
    iget v8, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->width:I

    iget v9, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int/2addr v8, v9

    iget v9, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    iget v10, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int/2addr v9, v10

    invoke-static {v7, v11, v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 213
    .local v2, "footerSection":Landroid/graphics/Bitmap;
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromScrollWrapper;->isBlurTaskFinished()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 214
    move-object v3, v5

    .line 215
    .local v3, "headerBlur":Landroid/graphics/Bitmap;
    move-object v0, v2

    .line 220
    .local v0, "footerBlur":Landroid/graphics/Bitmap;
    :goto_2
    iget v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->width:I

    iget v7, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    invoke-static {v3, v6, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 221
    .local v4, "headerEnlarged":Landroid/graphics/Bitmap;
    iget v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->width:I

    iget v7, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    invoke-static {v0, v6, v7, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 222
    .local v1, "footerEnlarged":Landroid/graphics/Bitmap;
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 225
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 227
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 208
    .end local v0    # "footerBlur":Landroid/graphics/Bitmap;
    .end local v1    # "footerEnlarged":Landroid/graphics/Bitmap;
    .end local v2    # "footerSection":Landroid/graphics/Bitmap;
    .end local v3    # "headerBlur":Landroid/graphics/Bitmap;
    .end local v4    # "headerEnlarged":Landroid/graphics/Bitmap;
    :cond_4
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v8, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    iget v9, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    div-int/2addr v8, v9

    sub-int/2addr v6, v8

    goto :goto_1

    .line 217
    .restart local v2    # "footerSection":Landroid/graphics/Bitmap;
    :cond_5
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/tencent/qrom/gaussblur/GlassBlur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 218
    .restart local v3    # "headerBlur":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/tencent/qrom/gaussblur/GlassBlur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .restart local v0    # "footerBlur":Landroid/graphics/Bitmap;
    goto :goto_2
.end method


# virtual methods
.method public contentLayout(Landroid/content/Context;I)Lcom/tencent/qrom/widget/QromScrollWrapper;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 42
    iput p2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->contentLayout:I

    .line 43
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    .line 44
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->contentLayout:I

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/widget/QromScrollView;

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    .line 46
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    .line 47
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    .line 50
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    invoke-direct {v1, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 51
    .local v1, "headerLP":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    invoke-direct {v0, v5, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 52
    .local v0, "footerLP":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 53
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 54
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    iput-boolean v6, v2, Lcom/tencent/qrom/widget/QromScrollView;->statusbarFlag:Z

    .line 57
    return-object p0
.end method

.method public contentLayoutWithStatusbar(Landroid/content/Context;I)Lcom/tencent/qrom/widget/QromScrollWrapper;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layout"    # I

    .prologue
    const/4 v6, -0x1

    .line 61
    iput p2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->contentLayout:I

    .line 62
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    .line 63
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 64
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->contentLayout:I

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/tencent/qrom/widget/QromScrollView;

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    .line 65
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    .line 66
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    .line 69
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    invoke-direct {v1, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 70
    .local v1, "headerLP":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    invoke-direct {v0, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 71
    .local v0, "footerLP":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 72
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 73
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 74
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tencent/qrom/widget/QromScrollView;->statusbarFlag:Z

    .line 76
    return-object p0
.end method

.method public contentLayoutWithStatusbar(Landroid/content/Context;Lcom/tencent/qrom/widget/QromScrollView;)Lcom/tencent/qrom/widget/QromScrollWrapper;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Lcom/tencent/qrom/widget/QromScrollView;

    .prologue
    const/4 v4, -0x1

    .line 80
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    .line 81
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    iput-object p2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    .line 83
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    .line 84
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    .line 87
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    invoke-direct {v1, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 88
    .local v1, "headerLP":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    invoke-direct {v0, v4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 89
    .local v0, "footerLP":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x30

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 90
    const/16 v2, 0x50

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 91
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 93
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/tencent/qrom/widget/QromScrollView;->statusbarFlag:Z

    .line 94
    return-object p0
.end method

.method public createView(Landroid/content/Context;)Landroid/view/View;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v4, 0x1010054

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 99
    new-array v0, v6, [I

    aput v4, v0, v5

    .line 101
    .local v0, "attrs":[I
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 102
    .local v1, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v3, v4, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v3, v4, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 105
    .local v2, "style":Landroid/content/res/TypedArray;
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->windowBackground:Landroid/graphics/drawable/Drawable;

    .line 106
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 108
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 109
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    const/4 v5, 0x2

    invoke-virtual {v3, v4, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 111
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 113
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v3, p0}, Lcom/tencent/qrom/widget/QromScrollView;->setOnScrollChangedListener(Lcom/tencent/qrom/widget/QromScrollView$OnScrollChangedListener;)V

    .line 114
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    return-object v3
.end method

.method public getBlurRadius()I
    .locals 1

    .prologue
    .line 136
    iget v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurRadius:I

    return v0
.end method

.method public getDownsampling()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    return v0
.end method

.method public invalidate()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerBitmap:Landroid/graphics/Bitmap;

    .line 119
    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerBitmap:Landroid/graphics/Bitmap;

    .line 120
    invoke-direct {p0}, Lcom/tencent/qrom/widget/QromScrollWrapper;->computeBlurOverlay()V

    .line 121
    iget v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->lastScrollPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/QromScrollWrapper;->updateBlurOverlay(IZ)V

    .line 122
    return-void
.end method

.method public onBlurOperationFinished()V
    .locals 2

    .prologue
    .line 245
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurTask:Lcom/tencent/qrom/gaussblur/GlassBlurTask;

    .line 246
    iget v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->lastScrollPosition:I

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/tencent/qrom/widget/QromScrollWrapper;->updateBlurOverlay(IZ)V

    .line 247
    return-void
.end method

.method public onGlobalLayout()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 156
    iget v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->width:I

    if-eqz v3, :cond_0

    .line 167
    :goto_0
    return-void

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 160
    .local v1, "widthMeasureSpec":I
    const/4 v3, -0x2

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 161
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v3, v1, v0}, Lcom/tencent/qrom/widget/QromScrollView;->measure(II)V

    .line 162
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->frame:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->width:I

    .line 163
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/QromScrollView;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->height:I

    .line 165
    iget-object v3, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/QromScrollView;->getScrollY()I

    move-result v2

    :cond_1
    iput v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->lastScrollPosition:I

    .line 166
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromScrollWrapper;->invalidate()V

    goto :goto_0
.end method

.method public onScrollChanged(Landroid/widget/ScrollView;IIII)V
    .locals 0
    .param p1, "who"    # Landroid/widget/ScrollView;
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "oldl"    # I
    .param p5, "oldt"    # I

    .prologue
    .line 236
    invoke-direct {p0, p3}, Lcom/tencent/qrom/widget/QromScrollWrapper;->onNewScroll(I)V

    .line 237
    return-void
.end method

.method public setBlurRadius(I)V
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 125
    invoke-static {p1}, Lcom/tencent/qrom/gaussblur/GlassBlurUtil;->isValidBlurRadius(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid blur radius"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurRadius:I

    if-ne v0, p1, :cond_1

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_1
    iput p1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->blurRadius:I

    .line 132
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromScrollWrapper;->invalidate()V

    goto :goto_0
.end method

.method public setDownsampling(I)V
    .locals 2
    .param p1, "newValue"    # I

    .prologue
    .line 140
    invoke-static {p1}, Lcom/tencent/qrom/gaussblur/GlassBlurUtil;->isValidDownsampling(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid downsampling"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    if-ne v0, p1, :cond_1

    .line 148
    :goto_0
    return-void

    .line 146
    :cond_1
    iput p1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->downSampling:I

    .line 147
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/QromScrollWrapper;->invalidate()V

    goto :goto_0
.end method

.method public setFooterBlank(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 276
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->footerHeight:I

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromScrollView;->setFooterHeight(I)V

    .line 277
    return-void

    .line 275
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setHeaderBlank(Z)V
    .locals 3
    .param p1, "flag"    # Z

    .prologue
    const/4 v1, 0x0

    .line 270
    iget-object v2, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->scrollView:Lcom/tencent/qrom/widget/QromScrollView;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/tencent/qrom/widget/QromScrollWrapper;->headerHeight:I

    :cond_0
    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/QromScrollView;->setHeaderHeight(I)V

    .line 272
    return-void

    .line 270
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method
