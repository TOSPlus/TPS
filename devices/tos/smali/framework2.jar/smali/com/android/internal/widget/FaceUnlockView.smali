.class public Lcom/android/internal/widget/FaceUnlockView;
.super Landroid/widget/RelativeLayout;
.source "FaceUnlockView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceUnlockView"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/FaceUnlockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    .line 38
    const/4 v0, 0x0

    .line 39
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 40
    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 49
    move v0, v1

    .line 51
    :goto_0
    return v0

    .line 42
    :sswitch_0
    move v0, p2

    .line 43
    goto :goto_0

    .line 45
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 46
    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, -0x80000000

    .line 56
    invoke-virtual {p0}, Lcom/android/internal/widget/FaceUnlockView;->getSuggestedMinimumWidth()I

    move-result v2

    .line 57
    .local v2, "minimumWidth":I
    invoke-virtual {p0}, Lcom/android/internal/widget/FaceUnlockView;->getSuggestedMinimumHeight()I

    move-result v1

    .line 58
    .local v1, "minimumHeight":I
    invoke-direct {p0, p1, v2}, Lcom/android/internal/widget/FaceUnlockView;->resolveMeasured(II)I

    move-result v6

    .line 59
    .local v6, "viewWidth":I
    invoke-direct {p0, p2, v1}, Lcom/android/internal/widget/FaceUnlockView;->resolveMeasured(II)I

    move-result v5

    .line 61
    .local v5, "viewHeight":I
    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 62
    .local v0, "chosenSize":I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 64
    .local v4, "newWidthMeasureSpec":I
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 67
    .local v3, "newHeightMeasureSpec":I
    invoke-super {p0, v4, v3}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 68
    return-void
.end method
