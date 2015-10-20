.class public Lcom/tencent/qrom/widget/QromSpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "QromSpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/ArrayAdapter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private icon:Landroid/widget/ImageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/tencent/qrom/widget/QromSpinnerAdapter;, "Lcom/tencent/qrom/widget/QromSpinnerAdapter<TT;>;"
    .local p2, "objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TT;>;"
    const v0, 0x7a030072

    const v1, 0x7a0900f7

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 24
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/qrom/widget/QromSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 25
    return-void
.end method


# virtual methods
.method public disableIcon()V
    .locals 2

    .prologue
    .line 44
    .local p0, "this":Lcom/tencent/qrom/widget/QromSpinnerAdapter;, "Lcom/tencent/qrom/widget/QromSpinnerAdapter<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromSpinnerAdapter;->icon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 45
    return-void
.end method

.method public getItemView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 29
    .local p0, "this":Lcom/tencent/qrom/widget/QromSpinnerAdapter;, "Lcom/tencent/qrom/widget/QromSpinnerAdapter<TT;>;"
    iget-object v1, p0, Lcom/tencent/qrom/widget/QromSpinnerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7a030072

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 30
    .local v0, "view":Landroid/view/View;
    const v1, 0x7a090035

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/tencent/qrom/widget/QromSpinnerAdapter;->icon:Landroid/widget/ImageView;

    .line 31
    const v1, 0x7a0900f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/tencent/qrom/widget/QromSpinnerAdapter;->text:Landroid/widget/TextView;

    .line 33
    return-object v0
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resID"    # I

    .prologue
    .line 38
    .local p0, "this":Lcom/tencent/qrom/widget/QromSpinnerAdapter;, "Lcom/tencent/qrom/widget/QromSpinnerAdapter<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromSpinnerAdapter;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 39
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromSpinnerAdapter;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "spinnerTitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 49
    .local p0, "this":Lcom/tencent/qrom/widget/QromSpinnerAdapter;, "Lcom/tencent/qrom/widget/QromSpinnerAdapter<TT;>;"
    iget-object v0, p0, Lcom/tencent/qrom/widget/QromSpinnerAdapter;->text:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    return-void
.end method
