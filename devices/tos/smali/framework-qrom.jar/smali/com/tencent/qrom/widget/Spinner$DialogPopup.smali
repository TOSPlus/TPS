.class Lcom/tencent/qrom/widget/Spinner$DialogPopup;
.super Ljava/lang/Object;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/tencent/qrom/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DialogPopup"
.end annotation


# instance fields
.field private mHeight:I

.field private mListAdapter:Landroid/widget/ListAdapter;

.field private mPopup:Lcom/tencent/qrom/app/AlertDialog;

.field private mPrompt:Ljava/lang/CharSequence;

.field final synthetic this$0:Lcom/tencent/qrom/widget/Spinner;


# direct methods
.method private constructor <init>(Lcom/tencent/qrom/widget/Spinner;)V
    .locals 1

    .prologue
    .line 706
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 710
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mHeight:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/tencent/qrom/widget/Spinner;Lcom/tencent/qrom/widget/Spinner$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/tencent/qrom/widget/Spinner;
    .param p2, "x1"    # Lcom/tencent/qrom/widget/Spinner$1;

    .prologue
    .line 706
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/Spinner$DialogPopup;-><init>(Lcom/tencent/qrom/widget/Spinner;)V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPopup:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertDialog;->dismiss()V

    .line 714
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPopup:Lcom/tencent/qrom/app/AlertDialog;

    .line 716
    :cond_0
    return-void
.end method

.method public getHintText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPopup:Lcom/tencent/qrom/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPopup:Lcom/tencent/qrom/app/AlertDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/Spinner;->setSelection(I)V

    .line 760
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->dismiss()V

    .line 761
    return-void
.end method

.method public qromSetCustomListHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 764
    iput p1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mHeight:I

    .line 765
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 723
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    .line 724
    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 727
    iput-object p1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    .line 728
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 735
    new-instance v0, Lcom/tencent/qrom/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7a0f001c

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 736
    .local v0, "builder":Lcom/tencent/qrom/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 737
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPrompt:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    .line 740
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mListAdapter:Landroid/widget/ListAdapter;

    iget-object v2, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->this$0:Lcom/tencent/qrom/widget/Spinner;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/app/AlertDialog$Builder;->show()Lcom/tencent/qrom/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPopup:Lcom/tencent/qrom/app/AlertDialog;

    .line 742
    iget-object v1, p0, Lcom/tencent/qrom/widget/Spinner$DialogPopup;->mPopup:Lcom/tencent/qrom/app/AlertDialog;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 756
    return-void
.end method
