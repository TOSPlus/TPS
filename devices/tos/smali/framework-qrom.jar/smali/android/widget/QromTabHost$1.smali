.class Landroid/widget/QromTabHost$1;
.super Ljava/lang/Object;
.source "QromTabHost.java"

# interfaces
.implements Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method constructor <init>(Landroid/widget/QromTabHost;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 120
    iget-object v0, p0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$000(Landroid/widget/QromTabHost;)Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$000(Landroid/widget/QromTabHost;)Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 123
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 22
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$000(Landroid/widget/QromTabHost;)Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v18

    if-eqz v18, :cond_0

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$000(Landroid/widget/QromTabHost;)Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 134
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/widget/QromTabHost$TabSpec;

    .line 135
    .local v17, "tabSpec":Landroid/widget/QromTabHost$TabSpec;
    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static/range {v17 .. v17}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v18

    if-nez v18, :cond_1

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static/range {v17 .. v17}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Landroid/widget/QromTabHost$IndicatorStrategy;->supportTextFade()Z

    move-result v18

    if-nez v18, :cond_1

    .line 181
    .end local v17    # "tabSpec":Landroid/widget/QromTabHost$TabSpec;
    :cond_2
    :goto_0
    return-void

    .line 139
    :cond_3
    if-ltz p1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 142
    const/16 v18, 0x0

    cmpg-float v18, p2, v18

    if-ltz v18, :cond_2

    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, p2, v18

    if-gtz v18, :cond_2

    .line 145
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_4

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    cmpl-double v18, v18, v20

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, p1

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 146
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # invokes: Landroid/widget/QromTabHost;->cancelScrollState()V
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$300(Landroid/widget/QromTabHost;)V

    goto :goto_0

    .line 150
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mInit:Z
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$400(Landroid/widget/QromTabHost;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    # setter for: Landroid/widget/QromTabHost;->mInit:Z
    invoke-static/range {v18 .. v19}, Landroid/widget/QromTabHost;->access$402(Landroid/widget/QromTabHost;Z)Z

    .line 153
    const/4 v10, 0x0

    .line 154
    .local v10, "normalIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/widget/QromTabHost;->mCurrentTab:I

    move/from16 v16, v0

    .line 156
    .local v16, "selectIndex":I
    move/from16 v0, v16

    if-ne v10, v0, :cond_6

    .line 157
    const/4 v10, 0x1

    .line 159
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;
    invoke-static/range {v20 .. v20}, Landroid/widget/QromTabHost;->access$600(Landroid/widget/QromTabHost;)Landroid/widget/QromTabWidget;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/QromTabHost$IndicatorStrategy;->getTextColor(Landroid/view/View;)I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    # setter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static {v0, v1}, Landroid/widget/QromTabHost;->access$502(Landroid/widget/QromTabHost;I)I

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;
    invoke-static/range {v20 .. v20}, Landroid/widget/QromTabHost;->access$600(Landroid/widget/QromTabHost;)Landroid/widget/QromTabWidget;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/QromTabHost$IndicatorStrategy;->getTextColor(Landroid/view/View;)I

    move-result v18

    move-object/from16 v0, v19

    move/from16 v1, v18

    # setter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static {v0, v1}, Landroid/widget/QromTabHost;->access$702(Landroid/widget/QromTabHost;I)I

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v20, v0

    # getter for: Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;
    invoke-static/range {v20 .. v20}, Landroid/widget/QromTabHost;->access$600(Landroid/widget/QromTabHost;)Landroid/widget/QromTabWidget;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/widget/QromTabHost$IndicatorStrategy;->getTextColors(Landroid/view/View;)Landroid/content/res/ColorStateList;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    # setter for: Landroid/widget/QromTabHost;->mTextColors:Landroid/content/res/ColorStateList;
    invoke-static {v0, v1}, Landroid/widget/QromTabHost;->access$802(Landroid/widget/QromTabHost;Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    .line 164
    .end local v10    # "normalIndex":I
    .end local v16    # "selectIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$700(Landroid/widget/QromTabHost;)I

    move-result v18

    shr-int/lit8 v18, v18, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, p2

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$500(Landroid/widget/QromTabHost;)I

    move-result v19

    shr-int/lit8 v19, v19, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    add-float v5, v18, v19

    .line 165
    .local v5, "la":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$700(Landroid/widget/QromTabHost;)I

    move-result v18

    shr-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, p2

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$500(Landroid/widget/QromTabHost;)I

    move-result v19

    shr-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    add-float v9, v18, v19

    .line 166
    .local v9, "lr":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$700(Landroid/widget/QromTabHost;)I

    move-result v18

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, p2

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$500(Landroid/widget/QromTabHost;)I

    move-result v19

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    add-float v8, v18, v19

    .line 167
    .local v8, "lg":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$700(Landroid/widget/QromTabHost;)I

    move-result v18

    shr-int/lit8 v18, v18, 0x0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    sub-float v19, v19, p2

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$500(Landroid/widget/QromTabHost;)I

    move-result v19

    shr-int/lit8 v19, v19, 0x0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, p2

    add-float v6, v18, v19

    .line 169
    .local v6, "lb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$700(Landroid/widget/QromTabHost;)I

    move-result v18

    shr-int/lit8 v18, v18, 0x18

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$500(Landroid/widget/QromTabHost;)I

    move-result v19

    shr-int/lit8 v19, v19, 0x18

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, p2

    mul-float v19, v19, v20

    add-float v11, v18, v19

    .line 170
    .local v11, "ra":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$700(Landroid/widget/QromTabHost;)I

    move-result v18

    shr-int/lit8 v18, v18, 0x10

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$500(Landroid/widget/QromTabHost;)I

    move-result v19

    shr-int/lit8 v19, v19, 0x10

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, p2

    mul-float v19, v19, v20

    add-float v15, v18, v19

    .line 171
    .local v15, "rr":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$700(Landroid/widget/QromTabHost;)I

    move-result v18

    shr-int/lit8 v18, v18, 0x8

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$500(Landroid/widget/QromTabHost;)I

    move-result v19

    shr-int/lit8 v19, v19, 0x8

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, p2

    mul-float v19, v19, v20

    add-float v13, v18, v19

    .line 172
    .local v13, "rg":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mSelectedColor:I
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$700(Landroid/widget/QromTabHost;)I

    move-result v18

    shr-int/lit8 v18, v18, 0x0

    move/from16 v0, v18

    and-int/lit16 v0, v0, 0xff

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mNormalColor:I
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$500(Landroid/widget/QromTabHost;)I

    move-result v19

    shr-int/lit8 v19, v19, 0x0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f800000    # 1.0f

    sub-float v20, v20, p2

    mul-float v19, v19, v20

    add-float v12, v18, v19

    .line 175
    .local v12, "rb":F
    float-to-int v0, v5

    move/from16 v18, v0

    float-to-int v0, v9

    move/from16 v19, v0

    float-to-int v0, v8

    move/from16 v20, v0

    float-to-int v0, v6

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 176
    .local v7, "leftColor":I
    float-to-int v0, v11

    move/from16 v18, v0

    float-to-int v0, v15

    move/from16 v19, v0

    float-to-int v0, v13

    move/from16 v20, v0

    float-to-int v0, v12

    move/from16 v21, v0

    invoke-static/range {v18 .. v21}, Landroid/graphics/Color;->argb(IIII)I

    move-result v14

    .line 178
    .local v14, "rightColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$600(Landroid/widget/QromTabHost;)Landroid/widget/QromTabWidget;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v7}, Landroid/widget/QromTabHost$IndicatorStrategy;->setTextColor(Landroid/view/View;I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v18, v0

    # getter for: Landroid/widget/QromTabHost;->mTabSpecs:Ljava/util/List;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost;->access$100(Landroid/widget/QromTabHost;)Ljava/util/List;

    move-result-object v18

    add-int/lit8 v19, p1, 0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/widget/QromTabHost$TabSpec;

    # getter for: Landroid/widget/QromTabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/QromTabHost$IndicatorStrategy;
    invoke-static/range {v18 .. v18}, Landroid/widget/QromTabHost$TabSpec;->access$200(Landroid/widget/QromTabHost$TabSpec;)Landroid/widget/QromTabHost$IndicatorStrategy;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    move-object/from16 v19, v0

    # getter for: Landroid/widget/QromTabHost;->mTabWidget:Landroid/widget/QromTabWidget;
    invoke-static/range {v19 .. v19}, Landroid/widget/QromTabHost;->access$600(Landroid/widget/QromTabHost;)Landroid/widget/QromTabWidget;

    move-result-object v19

    add-int/lit8 v20, p1, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/QromTabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v14}, Landroid/widget/QromTabHost$IndicatorStrategy;->setTextColor(Landroid/view/View;I)V

    goto/16 :goto_0
.end method

.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 184
    iget-object v0, p0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$000(Landroid/widget/QromTabHost;)Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    # getter for: Landroid/widget/QromTabHost;->mPagerListener:Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;
    invoke-static {v0}, Landroid/widget/QromTabHost;->access$000(Landroid/widget/QromTabHost;)Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/qrom/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 187
    :cond_0
    iget-object v0, p0, Landroid/widget/QromTabHost$1;->this$0:Landroid/widget/QromTabHost;

    invoke-virtual {v0, p1}, Landroid/widget/QromTabHost;->setCurrentTab(I)V

    .line 188
    return-void
.end method
