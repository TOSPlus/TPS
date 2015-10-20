.class abstract Landroid/widget/Editor$PinnedPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PinnedPopupWindow"
.end annotation


# instance fields
.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 2253
    iput-object p1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2254
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->createPopupWindow()V

    .line 2256
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 2257
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 2258
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 2260
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->initContentView()V

    .line 2262
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 2264
    .local v0, "wrapContent":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2266
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 2267
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 2292
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->measureContent()V

    .line 2293
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 2294
    .local v2, "width":I
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    .line 2295
    .local v1, "offset":I
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2296
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    .line 2298
    iget-object v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 2299
    .local v0, "line":I
    invoke-virtual {p0, v0}, Landroid/widget/Editor$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    move-result v3

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2300
    iget v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    .line 2301
    return-void
.end method

.method private updatePosition(II)V
    .locals 7
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 2304
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 2305
    .local v1, "positionX":I
    iget v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .line 2307
    .local v2, "positionY":I
    invoke-virtual {p0, v2}, Landroid/widget/Editor$PinnedPopupWindow;->clipVertically(I)I

    move-result v2

    .line 2310
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2311
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 2312
    .local v3, "width":I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2313
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 2315
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2316
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 2321
    :goto_0
    return-void

    .line 2318
    :cond_0
    iget-object v4, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract clipVertically(I)I
.end method

.method protected abstract createPopupWindow()V
.end method

.method protected abstract getTextOffset()I
.end method

.method protected abstract getVerticalLocalPosition(I)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 2324
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2325
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    .line 2326
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 2359
    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x80000000

    .line 2279
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$600(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2280
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 2285
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 2270
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    .line 2272
    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2274
    iget-object v1, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$1300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    .line 2275
    .local v0, "positionListener":Landroid/widget/Editor$PositionListener;
    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/Editor$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    .line 2276
    return-void
.end method

.method public tos_org_updatePosition(IIZZ)V
    .locals 2
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    .line 2350
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$PinnedPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$1400(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2351
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$PinnedPopupWindow;->computeLocalPosition()V

    .line 2352
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$PinnedPopupWindow;->updatePosition(II)V

    .line 2356
    :goto_0
    return-void

    .line 2354
    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$PinnedPopupWindow;->hide()V

    goto :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 5
    .param p1, "parentPositionX"    # I
    .param p2, "parentPositionY"    # I
    .param p3, "parentPositionChanged"    # Z
    .param p4, "parentScrolled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 2331
    new-instance v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;

    invoke-direct {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;-><init>()V

    .line 2332
    .local v0, "param":Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;
    iput v4, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->invokeType:I

    .line 2333
    iput-object p0, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->thisObject:Ljava/lang/Object;

    .line 2334
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    .line 2335
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2336
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    .line 2337
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2338
    iget-object v1, v0, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->args:[Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 2340
    const-string v1, "android.widget.Editor$PinnedPopupWindow#updatePosition"

    invoke-static {v1, v0}, Lcom/android/internal/os/TosModulesLoader;->invoke(Ljava/lang/String;Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;)V

    .line 2341
    invoke-virtual {v0}, Lcom/android/internal/os/TosPlugMethod$MethodPlugParam;->returnEarly()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2346
    :goto_0
    return-void

    .line 2345
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/Editor$PinnedPopupWindow;->tos_org_updatePosition(IIZZ)V

    goto :goto_0
.end method
