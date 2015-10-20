.class Landroid/widget/QromTabHost$ViewIndicatorStrategy;
.super Ljava/lang/Object;
.source "QromTabHost.java"

# interfaces
.implements Landroid/widget/QromTabHost$IndicatorStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/QromTabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewIndicatorStrategy"
.end annotation


# instance fields
.field private final mView:Landroid/view/View;

.field final synthetic this$0:Landroid/widget/QromTabHost;


# direct methods
.method private constructor <init>(Landroid/widget/QromTabHost;Landroid/view/View;)V
    .locals 0
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 896
    iput-object p1, p0, Landroid/widget/QromTabHost$ViewIndicatorStrategy;->this$0:Landroid/widget/QromTabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 897
    iput-object p2, p0, Landroid/widget/QromTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    .line 898
    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/QromTabHost;Landroid/view/View;Landroid/widget/QromTabHost$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/widget/QromTabHost;
    .param p2, "x1"    # Landroid/view/View;
    .param p3, "x2"    # Landroid/widget/QromTabHost$1;

    .prologue
    .line 892
    invoke-direct {p0, p1, p2}, Landroid/widget/QromTabHost$ViewIndicatorStrategy;-><init>(Landroid/widget/QromTabHost;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public createIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 901
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getIndicatorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Landroid/widget/QromTabHost$ViewIndicatorStrategy;->mView:Landroid/view/View;

    return-object v0
.end method

.method public getTextColor(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 913
    const/4 v0, 0x0

    return v0
.end method

.method public getTextColors(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 920
    const/4 v0, 0x0

    return-object v0
.end method

.method public setTextColor(Landroid/view/View;I)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "color"    # I

    .prologue
    .line 917
    return-void
.end method

.method public setTextColors(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "colors"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 924
    return-void
.end method

.method public supportTextFade()Z
    .locals 1

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method
