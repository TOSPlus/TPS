.class Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;
.super Ljava/lang/Object;
.source "QromResolverActivity.java"

# interfaces
.implements Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromResolverActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "QromPageChangeListener"
.end annotation


# instance fields
.field private imageViews:[Landroid/widget/ImageView;

.field private pagerCount:I

.field final synthetic this$0:Lcom/tencent/qrom/app/QromResolverActivity;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/app/QromResolverActivity;I[Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "pagerCount"    # I
    .param p3, "imageViews"    # [Landroid/widget/ImageView;

    .prologue
    .line 537
    iput-object p1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 538
    iput p2, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->pagerCount:I

    .line 539
    iput-object p3, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->imageViews:[Landroid/widget/ImageView;

    .line 540
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 545
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 551
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 555
    iget-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->this$0:Lcom/tencent/qrom/app/QromResolverActivity;

    # setter for: Lcom/tencent/qrom/app/QromResolverActivity;->whichPage:I
    invoke-static {v1, p1}, Lcom/tencent/qrom/app/QromResolverActivity;->access$302(Lcom/tencent/qrom/app/QromResolverActivity;I)I

    .line 556
    iget-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->imageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_1

    .line 566
    :cond_0
    return-void

    .line 559
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->imageViews:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 560
    iget v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->pagerCount:I

    rem-int v1, p1, v1

    if-ne v0, v1, :cond_2

    .line 561
    iget-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->imageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7a0200b4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 559
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 563
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/app/QromResolverActivity$QromPageChangeListener;->imageViews:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const v2, 0x7a0200b5

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1
.end method
