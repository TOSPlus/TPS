.class Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;
.super Ljava/lang/Object;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ArrowScrollFocusResult"
.end annotation


# instance fields
.field private mAmountToScroll:I

.field private mSelectedPosition:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 2842
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/ListView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/ListView$1;

    .prologue
    .line 2842
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;-><init>()V

    return-void
.end method


# virtual methods
.method public getAmountToScroll()I
    .locals 1

    .prologue
    .line 2859
    iget v0, p0, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;->mAmountToScroll:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 2855
    iget v0, p0, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;->mSelectedPosition:I

    return v0
.end method

.method populate(II)V
    .locals 0
    .param p1, "selectedPosition"    # I
    .param p2, "amountToScroll"    # I

    .prologue
    .line 2850
    iput p1, p0, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;->mSelectedPosition:I

    .line 2851
    iput p2, p0, Lcom/tencent/qrom/widget/ListView$ArrowScrollFocusResult;->mAmountToScroll:I

    .line 2852
    return-void
.end method
