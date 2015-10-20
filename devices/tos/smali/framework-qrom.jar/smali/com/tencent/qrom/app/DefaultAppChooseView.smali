.class public Lcom/tencent/qrom/app/DefaultAppChooseView;
.super Landroid/widget/RelativeLayout;
.source "DefaultAppChooseView.java"

# interfaces
.implements Landroid/widget/Checkable;


# instance fields
.field private mChecked:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mIsDefaultIRadioButton:Lcom/tencent/qrom/widget/RadioButton;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutid"    # I

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/tencent/qrom/app/DefaultAppChooseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "layoutid"    # I

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/qrom/app/DefaultAppChooseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "layoutid"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 42
    iget-object v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    const v0, 0x7a090168

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/DefaultAppChooseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mImageView:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7a09016a

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/DefaultAppChooseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mTextView:Landroid/widget/TextView;

    .line 45
    const v0, 0x7a090169

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/DefaultAppChooseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tencent/qrom/widget/RadioButton;

    iput-object v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mIsDefaultIRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    .line 47
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 2
    .param p1, "checked"    # Z

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mChecked:Z

    if-eq v0, p1, :cond_0

    .line 67
    iput-boolean p1, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mChecked:Z

    .line 68
    iget-object v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mIsDefaultIRadioButton:Lcom/tencent/qrom/widget/RadioButton;

    iget-boolean v1, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mChecked:Z

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/RadioButton;->setChecked(Z)V

    .line 71
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/tencent/qrom/app/DefaultAppChooseView;->mChecked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/DefaultAppChooseView;->setChecked(Z)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
