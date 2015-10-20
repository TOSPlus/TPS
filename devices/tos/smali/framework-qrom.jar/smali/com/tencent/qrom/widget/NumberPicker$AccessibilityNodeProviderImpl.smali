.class Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;
.super Landroid/view/accessibility/AccessibilityNodeProvider;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessibilityNodeProviderImpl"
.end annotation


# static fields
.field private static final UNDEFINED:I = -0x80000000

.field private static final VIRTUAL_VIEW_ID_DECREMENT:I = 0x3

.field private static final VIRTUAL_VIEW_ID_INCREMENT:I = 0x1

.field private static final VIRTUAL_VIEW_ID_INPUT:I = 0x2


# instance fields
.field private mAccessibilityFocusedView:I

.field private final mTempArray:[I

.field private final mTempRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lcom/tencent/qrom/widget/NumberPicker;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/widget/NumberPicker;)V
    .locals 1

    .prologue
    .line 2347
    iput-object p1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-direct {p0}, Landroid/view/accessibility/AccessibilityNodeProvider;-><init>()V

    .line 2356
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2358
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2360
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    return-void
.end method

.method private createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 9
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    .line 2703
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v3

    .line 2704
    .local v3, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v5, Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2705
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/tencent/qrom/widget/NumberPicker;->access$6300(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2706
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;)V

    .line 2708
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2709
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v6, 0x3

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2711
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2712
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2713
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3, v5, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->addChild(Landroid/view/View;I)V

    .line 2716
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->getParentForAccessibility()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2717
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2718
    invoke-virtual {v3, v7}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 2720
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iget v0, v5, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    .line 2723
    .local v0, "applicationScale":F
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2724
    .local v1, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2725
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2726
    invoke-virtual {v3, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2728
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->isVisibleToUser()Z
    invoke-static {v5}, Lcom/tencent/qrom/widget/NumberPicker;->access$6400(Lcom/tencent/qrom/widget/NumberPicker;)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2730
    move-object v2, v1

    .line 2731
    .local v2, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2732
    .local v4, "locationOnScreen":[I
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5, v4}, Lcom/tencent/qrom/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2733
    const/4 v5, 0x0

    aget v5, v4, v5

    aget v6, v4, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Rect;->offset(II)V

    .line 2734
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->scale(F)V

    .line 2735
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2737
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v5, v8, :cond_2

    .line 2738
    const/16 v5, 0x40

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2740
    :cond_2
    iget v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v5, v8, :cond_3

    .line 2741
    const/16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2743
    :cond_3
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2744
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/NumberPicker;->getMaxValue()I

    move-result v6

    if-ge v5, v6, :cond_5

    .line 2745
    :cond_4
    const/16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2747
    :cond_5
    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v5}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/NumberPicker;->getMinValue()I

    move-result v6

    if-le v5, v6, :cond_7

    .line 2748
    :cond_6
    const/16 v5, 0x2000

    invoke-virtual {v3, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2752
    :cond_7
    return-object v3
.end method

.method private createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "left"    # I
    .param p4, "top"    # I
    .param p5, "right"    # I
    .param p6, "bottom"    # I

    .prologue
    const/4 v5, 0x1

    .line 2669
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2670
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    const-class v4, Landroid/widget/Button;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 2671
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$6100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2672
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2, v4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2673
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setParent(Landroid/view/View;)V

    .line 2674
    invoke-virtual {v2, p2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 2675
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    .line 2676
    invoke-virtual {v2, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLongClickable(Z)V

    .line 2677
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 2678
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2679
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p3, p4, p5, p6}, Landroid/graphics/Rect;->set(IIII)V

    .line 2680
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {v4, v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$6200(Lcom/tencent/qrom/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2681
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2682
    move-object v1, v0

    .line 2683
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2684
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4, v3}, Lcom/tencent/qrom/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2685
    const/4 v4, 0x0

    aget v4, v3, v4

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2686
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2688
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, p1, :cond_0

    .line 2689
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2691
    :cond_0
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, p1, :cond_1

    .line 2692
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2694
    :cond_1
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2695
    const/16 v4, 0x10

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2698
    :cond_2
    return-object v2
.end method

.method private createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 6
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v5, 0x2

    .line 2647
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/EditText;->createAccessibilityNodeInfo()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    .line 2648
    .local v2, "info":Landroid/view/accessibility/AccessibilityNodeInfo;
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo;->setSource(Landroid/view/View;I)V

    .line 2649
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v4, v5, :cond_0

    .line 2650
    const/16 v4, 0x40

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2652
    :cond_0
    iget v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v4, v5, :cond_1

    .line 2653
    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 2655
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempRect:Landroid/graphics/Rect;

    .line 2656
    .local v0, "boundsInParent":Landroid/graphics/Rect;
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2657
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->isVisibleToUser(Landroid/graphics/Rect;)Z
    invoke-static {v4, v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$6000(Lcom/tencent/qrom/widget/NumberPicker;Landroid/graphics/Rect;)Z

    move-result v4

    invoke-virtual {v2, v4}, Landroid/view/accessibility/AccessibilityNodeInfo;->setVisibleToUser(Z)V

    .line 2658
    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 2659
    move-object v1, v0

    .line 2660
    .local v1, "boundsInScreen":Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mTempArray:[I

    .line 2661
    .local v3, "locationOnScreen":[I
    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v4, v3}, Lcom/tencent/qrom/widget/NumberPicker;->getLocationOnScreen([I)V

    .line 2662
    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Rect;->offset(II)V

    .line 2663
    invoke-virtual {v2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setBoundsInScreen(Landroid/graphics/Rect;)V

    .line 2664
    return-object v2
.end method

.method private findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V
    .locals 4
    .param p1, "searchedLowerCase"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "outResult":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    const/4 v3, 0x2

    .line 2613
    packed-switch p2, :pswitch_data_0

    .line 2643
    :cond_0
    :goto_0
    return-void

    .line 2615
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2616
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2618
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2622
    .end local v1    # "text":Ljava/lang/String;
    :pswitch_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 2623
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2625
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2628
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2629
    .local v0, "contentDesc":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2631
    invoke-virtual {p0, v3}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2636
    .end local v0    # "contentDesc":Ljava/lang/CharSequence;
    .end local v1    # "text":Ljava/lang/CharSequence;
    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v1

    .line 2637
    .local v1, "text":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2639
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2613
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getVirtualDecrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2764
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mValue:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$6500(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .line 2765
    .local v0, "value":I
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$6600(Lcom/tencent/qrom/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2766
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$6700(Lcom/tencent/qrom/widget/NumberPicker;I)I

    move-result v0

    .line 2768
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$6800(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 2769
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$900(Lcom/tencent/qrom/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$6900(Lcom/tencent/qrom/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    .line 2772
    :goto_0
    return-object v1

    .line 2769
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$900(Lcom/tencent/qrom/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$6800(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2772
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getVirtualIncrementButtonText()Ljava/lang/String;
    .locals 3

    .prologue
    .line 2776
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mValue:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$6500(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 2777
    .local v0, "value":I
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mWrapSelectorWheel:Z
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$6600(Lcom/tencent/qrom/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2778
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->getWrappedSelectorIndex(I)I
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$6700(Lcom/tencent/qrom/widget/NumberPicker;I)I

    move-result v0

    .line 2780
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mMaxValue:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$1100(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 2781
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$900(Lcom/tencent/qrom/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->formatNumber(I)Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$6900(Lcom/tencent/qrom/widget/NumberPicker;I)Ljava/lang/String;

    move-result-object v1

    .line 2784
    :goto_0
    return-object v1

    .line 2781
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mDisplayedValues:[Ljava/lang/String;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$900(Lcom/tencent/qrom/widget/NumberPicker;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mMinValue:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$6800(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    sub-int v2, v0, v2

    aget-object v1, v1, v2

    goto :goto_0

    .line 2784
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private hasVirtualDecrementButton()Z
    .locals 2

    .prologue
    .line 2756
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/NumberPicker;->getMinValue()I

    move-result v1

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasVirtualIncrementButton()Z
    .locals 2

    .prologue
    .line 2760
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/NumberPicker;->getMaxValue()I

    move-result v1

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V
    .locals 3
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I
    .param p3, "text"    # Ljava/lang/String;

    .prologue
    .line 2600
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$5800(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2601
    invoke-static {p2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2602
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    const-class v1, Landroid/widget/Button;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 2603
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$5900(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 2604
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2605
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 2606
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v0, v1, p1}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2607
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qrom/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2609
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method

.method private sendAccessibilityEventForVirtualText(I)V
    .locals 3
    .param p1, "eventType"    # I

    .prologue
    .line 2589
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$5700(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2590
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 2591
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2592
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2593
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;I)V

    .line 2594
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1, v2, v0}, Lcom/tencent/qrom/widget/NumberPicker;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 2596
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_0
    return-void
.end method


# virtual methods
.method public createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;
    .locals 8
    .param p1, "virtualViewId"    # I

    .prologue
    .line 2364
    packed-switch p1, :pswitch_data_0

    .line 2384
    :pswitch_0
    invoke-super {p0, p1}, Landroid/view/accessibility/AccessibilityNodeProvider;->createAccessibilityNodeInfo(I)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    :goto_0
    return-object v0

    .line 2366
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$2600(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollY:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$2700(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$2800(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$2900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$3000(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollY:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$3100(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$3200(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTop:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/NumberPicker;->access$3300(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForNumberPicker(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2369
    :pswitch_2
    const/4 v1, 0x3

    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$3400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollY:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$3500(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$3600(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v0

    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/NumberPicker;->access$3700(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/NumberPicker;->access$3800(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$1900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v0

    iget-object v6, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/NumberPicker;->access$3900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v6

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto :goto_0

    .line 2374
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$4000(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$1900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$3900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$4100(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$4200(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$4300(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$1400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$3900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibiltyNodeInfoForInputText(IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2379
    :pswitch_4
    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$4400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$1400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v0

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mSelectionDividerHeight:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$3900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    sub-int v4, v0, v4

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollX:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$4500(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v0

    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/NumberPicker;->access$4600(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v5

    iget-object v6, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mLeft:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/NumberPicker;->access$4700(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v5, v0

    iget-object v0, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mScrollY:I
    invoke-static {v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$4800(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v0

    iget-object v6, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I
    invoke-static {v6}, Lcom/tencent/qrom/widget/NumberPicker;->access$4900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v6

    iget-object v7, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTop:I
    invoke-static {v7}, Lcom/tencent/qrom/widget/NumberPicker;->access$5000(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v7

    sub-int/2addr v6, v7

    add-int/2addr v6, v0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->createAccessibilityNodeInfoForVirtualButton(ILjava/lang/String;IIII)Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    goto/16 :goto_0

    .line 2364
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .param p1, "searched"    # Ljava/lang/String;
    .param p2, "virtualViewId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2390
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2391
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 2413
    :goto_0
    return-object v0

    .line 2393
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 2394
    .local v1, "searchedLowerCase":Ljava/lang/String;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2395
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/view/accessibility/AccessibilityNodeInfo;>;"
    packed-switch p2, :pswitch_data_0

    .line 2413
    :pswitch_0
    invoke-super {p0, p1, p2}, Landroid/view/accessibility/AccessibilityNodeProvider;->findAccessibilityNodeInfosByText(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 2397
    :pswitch_1
    const/4 v2, 0x3

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2399
    const/4 v2, 0x2

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    .line 2401
    const/4 v2, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2408
    :pswitch_2
    invoke-direct {p0, v1, p2, v0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->findAccessibilityNodeInfosByTextInChild(Ljava/lang/String;ILjava/util/List;)V

    goto :goto_0

    .line 2395
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public performAction(IILandroid/os/Bundle;)Z
    .locals 6
    .param p1, "virtualViewId"    # I
    .param p2, "action"    # I
    .param p3, "arguments"    # Landroid/os/Bundle;

    .prologue
    const/high16 v5, 0x10000

    const v4, 0x8000

    const/high16 v3, -0x80000000

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 2418
    packed-switch p1, :pswitch_data_0

    .line 2565
    :goto_0
    :pswitch_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/accessibility/AccessibilityNodeProvider;->performAction(IILandroid/os/Bundle;)Z

    move-result v0

    :cond_0
    :goto_1
    return v0

    .line 2420
    :pswitch_1
    sparse-switch p2, :sswitch_data_0

    goto :goto_0

    .line 2422
    :sswitch_0
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2423
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2424
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->requestAccessibilityFocus()Z

    move v0, v1

    .line 2425
    goto :goto_1

    .line 2429
    :sswitch_1
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2430
    iput v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2431
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->clearAccessibilityFocus()V

    move v0, v1

    .line 2432
    goto :goto_1

    .line 2437
    :sswitch_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/NumberPicker;->getMaxValue()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 2439
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$200(Lcom/tencent/qrom/widget/NumberPicker;Z)V

    move v0, v1

    .line 2440
    goto :goto_1

    .line 2444
    :sswitch_3
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->getWrapSelectorWheel()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->getValue()I

    move-result v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v3}, Lcom/tencent/qrom/widget/NumberPicker;->getMinValue()I

    move-result v3

    if-le v2, v3, :cond_0

    .line 2446
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$200(Lcom/tencent/qrom/widget/NumberPicker;Z)V

    move v0, v1

    .line 2447
    goto :goto_1

    .line 2453
    :pswitch_2
    sparse-switch p2, :sswitch_data_1

    .line 2499
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Landroid/widget/EditText;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_1

    .line 2455
    :sswitch_4
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2456
    iget-object v1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    move-result v0

    goto/16 :goto_1

    .line 2460
    :sswitch_5
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocused()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2461
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->clearFocus()V

    move v0, v1

    .line 2462
    goto/16 :goto_1

    .line 2467
    :sswitch_6
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2468
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->performClick()Z

    move v0, v1

    .line 2469
    goto/16 :goto_1

    .line 2474
    :sswitch_7
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2475
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->performLongClick()Z

    move v0, v1

    .line 2476
    goto/16 :goto_1

    .line 2481
    :sswitch_8
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2482
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2483
    invoke-virtual {p0, p1, v4}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2485
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2486
    goto/16 :goto_1

    .line 2490
    :sswitch_9
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2491
    iput v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2492
    invoke-virtual {p0, p1, v5}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2494
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mInputText:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/tencent/qrom/widget/NumberPicker;->access$100(Lcom/tencent/qrom/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->invalidate()V

    move v0, v1

    .line 2495
    goto/16 :goto_1

    .line 2504
    :pswitch_3
    sparse-switch p2, :sswitch_data_2

    goto/16 :goto_1

    .line 2506
    :sswitch_a
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2507
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v1}, Lcom/tencent/qrom/widget/NumberPicker;->access$200(Lcom/tencent/qrom/widget/NumberPicker;Z)V

    .line 2508
    invoke-virtual {p0, p1, v1}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2510
    goto/16 :goto_1

    .line 2514
    :sswitch_b
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2515
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2516
    invoke-virtual {p0, p1, v4}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2518
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$1400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$5100(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/NumberPicker;->access$5200(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2519
    goto/16 :goto_1

    .line 2523
    :sswitch_c
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2524
    iput v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2525
    invoke-virtual {p0, p1, v5}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2527
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottomSelectionDividerBottom:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$1400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$5300(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    iget-object v5, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mBottom:I
    invoke-static {v5}, Lcom/tencent/qrom/widget/NumberPicker;->access$5400(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2528
    goto/16 :goto_1

    .line 2534
    :pswitch_4
    sparse-switch p2, :sswitch_data_3

    goto/16 :goto_1

    .line 2536
    :sswitch_d
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/NumberPicker;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2537
    if-ne p1, v1, :cond_3

    move v0, v1

    .line 2538
    .local v0, "increment":Z
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # invokes: Lcom/tencent/qrom/widget/NumberPicker;->changeValueByOne(Z)V
    invoke-static {v2, v0}, Lcom/tencent/qrom/widget/NumberPicker;->access$200(Lcom/tencent/qrom/widget/NumberPicker;Z)V

    .line 2539
    invoke-virtual {p0, p1, v1}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    move v0, v1

    .line 2541
    goto/16 :goto_1

    .line 2545
    .end local v0    # "increment":Z
    :sswitch_e
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-eq v2, p1, :cond_0

    .line 2546
    iput p1, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2547
    invoke-virtual {p0, p1, v4}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2549
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$5500(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$1900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2550
    goto/16 :goto_1

    .line 2554
    :sswitch_f
    iget v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    if-ne v2, p1, :cond_0

    .line 2555
    iput v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->mAccessibilityFocusedView:I

    .line 2556
    invoke-virtual {p0, p1, v5}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 2558
    iget-object v2, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    iget-object v3, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Lcom/tencent/qrom/widget/NumberPicker;->access$5600(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->this$0:Lcom/tencent/qrom/widget/NumberPicker;

    # getter for: Lcom/tencent/qrom/widget/NumberPicker;->mTopSelectionDividerTop:I
    invoke-static {v4}, Lcom/tencent/qrom/widget/NumberPicker;->access$1900(Lcom/tencent/qrom/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Lcom/tencent/qrom/widget/NumberPicker;->invalidate(IIII)V

    move v0, v1

    .line 2559
    goto/16 :goto_1

    .line 2418
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch

    .line 2420
    :sswitch_data_0
    .sparse-switch
        0x40 -> :sswitch_0
        0x80 -> :sswitch_1
        0x1000 -> :sswitch_2
        0x2000 -> :sswitch_3
    .end sparse-switch

    .line 2453
    :sswitch_data_1
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x10 -> :sswitch_6
        0x20 -> :sswitch_7
        0x40 -> :sswitch_8
        0x80 -> :sswitch_9
    .end sparse-switch

    .line 2504
    :sswitch_data_2
    .sparse-switch
        0x10 -> :sswitch_a
        0x40 -> :sswitch_b
        0x80 -> :sswitch_c
    .end sparse-switch

    .line 2534
    :sswitch_data_3
    .sparse-switch
        0x10 -> :sswitch_d
        0x40 -> :sswitch_e
        0x80 -> :sswitch_f
    .end sparse-switch
.end method

.method public sendAccessibilityEventForVirtualView(II)V
    .locals 1
    .param p1, "virtualViewId"    # I
    .param p2, "eventType"    # I

    .prologue
    .line 2569
    packed-switch p1, :pswitch_data_0

    .line 2586
    :cond_0
    :goto_0
    return-void

    .line 2571
    :pswitch_0
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualDecrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2572
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualDecrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2577
    :pswitch_1
    invoke-direct {p0, p2}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualText(I)V

    goto :goto_0

    .line 2580
    :pswitch_2
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->hasVirtualIncrementButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2581
    invoke-direct {p0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->getVirtualIncrementButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/NumberPicker$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualButton(IILjava/lang/String;)V

    goto :goto_0

    .line 2569
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
