.class Lcom/tencent/qrom/support/v4/view/ViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/support/v4/view/ViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/support/v4/view/ViewPager;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/support/v4/view/ViewPager;)V
    .locals 0

    .prologue
    .line 2088
    iput-object p1, p0, Lcom/tencent/qrom/support/v4/view/ViewPager$PagerObserver;->this$0:Lcom/tencent/qrom/support/v4/view/ViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/support/v4/view/ViewPager;Lcom/tencent/qrom/support/v4/view/ViewPager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/support/v4/view/ViewPager;
    .param p2, "x1"    # Lcom/tencent/qrom/support/v4/view/ViewPager$1;

    .prologue
    .line 2088
    invoke-direct {p0, p1}, Lcom/tencent/qrom/support/v4/view/ViewPager$PagerObserver;-><init>(Lcom/tencent/qrom/support/v4/view/ViewPager;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 2091
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/view/ViewPager$PagerObserver;->this$0:Lcom/tencent/qrom/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/tencent/qrom/support/v4/view/ViewPager;->dataSetChanged()V

    .line 2092
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 2095
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/view/ViewPager$PagerObserver;->this$0:Lcom/tencent/qrom/support/v4/view/ViewPager;

    invoke-virtual {v0}, Lcom/tencent/qrom/support/v4/view/ViewPager;->dataSetChanged()V

    .line 2096
    return-void
.end method
