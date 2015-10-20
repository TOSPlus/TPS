.class public Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;
.super Lcom/tencent/qrom/app/ActionBar$Tab;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/internal/app/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabImpl"
.end annotation


# instance fields
.field private mCallback:Lcom/tencent/qrom/app/ActionBar$TabListener;

.field private mContentDesc:Ljava/lang/CharSequence;

.field private mCustomView:Landroid/view/View;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mPosition:I

.field private mTag:Ljava/lang/Object;

.field private mText:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;


# direct methods
.method public constructor <init>(Lcom/tencent/qrom/internal/app/ActionBarImpl;)V
    .locals 1

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-direct {p0}, Lcom/tencent/qrom/app/ActionBar$Tab;-><init>()V

    .line 1454
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return-void
.end method


# virtual methods
.method public getCallback()Lcom/tencent/qrom/app/ActionBar$TabListener;
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mCallback:Lcom/tencent/qrom/app/ActionBar$TabListener;

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1566
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1480
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1500
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 1505
    iget v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    return v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1459
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public select()V
    .locals 1

    .prologue
    .line 1547
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->selectTab(Lcom/tencent/qrom/app/ActionBar$Tab;)V

    .line 1548
    return-void
.end method

.method public setContentDescription(I)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1552
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->setContentDescription(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 2
    .param p1, "contentDesc"    # Ljava/lang/CharSequence;

    .prologue
    .line 1557
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mContentDesc:Ljava/lang/CharSequence;

    .line 1558
    iget v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1559
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1561
    :cond_0
    return-object p0
.end method

.method public setCustomView(I)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 1494
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->setCustomView(Landroid/view/View;)Lcom/tencent/qrom/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1485
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mCustomView:Landroid/view/View;

    .line 1486
    iget v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1487
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1489
    :cond_0
    return-object p0
.end method

.method public setIcon(I)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1528
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 2
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1519
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1520
    iget v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1521
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1523
    :cond_0
    return-object p0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 1509
    iput p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    .line 1510
    return-void
.end method

.method public setTabListener(Lcom/tencent/qrom/app/ActionBar$TabListener;)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 0
    .param p1, "callback"    # Lcom/tencent/qrom/app/ActionBar$TabListener;

    .prologue
    .line 1474
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mCallback:Lcom/tencent/qrom/app/ActionBar$TabListener;

    .line 1475
    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 0
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mTag:Ljava/lang/Object;

    .line 1465
    return-object p0
.end method

.method public setText(I)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1100(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->setText(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/ActionBar$Tab;

    move-result-object v0

    return-object v0
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/ActionBar$Tab;
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 1533
    iput-object p1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mText:Ljava/lang/CharSequence;

    .line 1534
    iget v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    if-ltz v0, :cond_0

    .line 1535
    iget-object v0, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->this$0:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    # getter for: Lcom/tencent/qrom/internal/app/ActionBarImpl;->mTabScrollView:Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;
    invoke-static {v0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->access$1200(Lcom/tencent/qrom/internal/app/ActionBarImpl;)Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qrom/internal/app/ActionBarImpl$TabImpl;->mPosition:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/widget/ScrollingTabContainerView;->updateTab(I)V

    .line 1537
    :cond_0
    return-object p0
.end method
