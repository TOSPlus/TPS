.class public Lcom/tencent/qrom/app/AlertDialog$Builder;
.super Ljava/lang/Object;
.source "AlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/AlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/tencent/qrom/app/AlertController$AlertParams;

.field private mTheme:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 442
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/qrom/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 443
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 455
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;ZI)V

    .line 456
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBottomDialog"    # Z

    .prologue
    .line 460
    const v0, 0x7a0f0018

    invoke-static {p1, v0}, Lcom/tencent/qrom/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/app/AlertDialog$Builder;-><init>(Landroid/content/Context;ZI)V

    .line 462
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZI)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBottomDialog"    # Z
    .param p3, "theme"    # I

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 465
    new-instance v0, Lcom/tencent/qrom/app/AlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-static {p1, p3}, Lcom/tencent/qrom/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/tencent/qrom/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    .line 467
    iput p3, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->mTheme:I

    .line 468
    return-void
.end method


# virtual methods
.method public create()Lcom/tencent/qrom/app/AlertDialog;
    .locals 4

    .prologue
    .line 1116
    new-instance v0, Lcom/tencent/qrom/app/AlertDialog;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 1117
    .local v0, "dialog":Lcom/tencent/qrom/app/AlertDialog;
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    # getter for: Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;
    invoke-static {v0}, Lcom/tencent/qrom/app/AlertDialog;->access$000(Lcom/tencent/qrom/app/AlertDialog;)Lcom/tencent/qrom/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/AlertController$AlertParams;->apply(Lcom/tencent/qrom/app/AlertController;)V

    .line 1118
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog;->setCancelable(Z)V

    .line 1119
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1120
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCanceOutWindow:Z

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1122
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1123
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1124
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1126
    :cond_1
    return-object v0
.end method

.method public create(Z)Lcom/tencent/qrom/app/AlertDialog;
    .locals 4
    .param p1, "isBottomDialog"    # Z

    .prologue
    .line 1141
    new-instance v0, Lcom/tencent/qrom/app/AlertDialog;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->mTheme:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 1142
    .local v0, "dialog":Lcom/tencent/qrom/app/AlertDialog;
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    # getter for: Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;
    invoke-static {v0}, Lcom/tencent/qrom/app/AlertDialog;->access$000(Lcom/tencent/qrom/app/AlertDialog;)Lcom/tencent/qrom/app/AlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/AlertController$AlertParams;->apply(Lcom/tencent/qrom/app/AlertController;)V

    .line 1143
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog;->setCancelable(Z)V

    .line 1144
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 1145
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-boolean v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCanceOutWindow:Z

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1147
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1148
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 1149
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 1151
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method qromCheckButtonListener(Lcom/tencent/qrom/app/AlertController$AlertParams;Lcom/tencent/qrom/app/AlertDialog;)Z
    .locals 2
    .param p1, "P"    # Lcom/tencent/qrom/app/AlertController$AlertParams;
    .param p2, "dialog"    # Lcom/tencent/qrom/app/AlertDialog;

    .prologue
    .line 1164
    const/4 v0, 0x1

    .line 1165
    .local v0, "bRet":Z
    iget-object v1, p1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v1, :cond_1

    .line 1167
    :cond_0
    const/4 v0, 0x0

    .line 1170
    :cond_1
    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 812
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 813
    return-object p0
.end method

.method public setBottomButtonAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 722
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    .line 723
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 724
    return-object p0
.end method

.method public setBottomButtonColorItems([I)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [I

    .prologue
    .line 793
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonColorItems:[I

    .line 794
    return-object p0
.end method

.method public setBottomButtonCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCursor:Landroid/database/Cursor;

    .line 716
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonLabelColumn:Ljava/lang/String;

    .line 717
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 718
    return-object p0
.end method

.method public setBottomButtonItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 702
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    .line 703
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 704
    return-object p0
.end method

.method public setBottomButtonItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 708
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    .line 709
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 710
    return-object p0
.end method

.method public setBottomButtonMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 729
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    .line 730
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 731
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItems:[Z

    .line 732
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonMultiChoice:Z

    .line 733
    return-object p0
.end method

.method public setBottomButtonMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 747
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCursor:Landroid/database/Cursor;

    .line 748
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 749
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonCheckedColumn:Ljava/lang/String;

    .line 750
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonLabelColumn:Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonMultiChoice:Z

    .line 752
    return-object p0
.end method

.method public setBottomButtonMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 738
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    .line 739
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 740
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItems:[Z

    .line 741
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonMultiChoice:Z

    .line 742
    return-object p0
.end method

.method public setBottomButtonSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 757
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    .line 758
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 759
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItem:I

    .line 760
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonSingleChoice:Z

    .line 761
    return-object p0
.end method

.method public setBottomButtonSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCursor:Landroid/database/Cursor;

    .line 767
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 768
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItem:I

    .line 769
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonLabelColumn:Ljava/lang/String;

    .line 770
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonSingleChoice:Z

    .line 771
    return-object p0
.end method

.method public setBottomButtonSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 785
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    .line 786
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 787
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItem:I

    .line 788
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonSingleChoice:Z

    .line 789
    return-object p0
.end method

.method public setBottomButtonSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 776
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    .line 777
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 778
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItem:I

    .line 779
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonSingleChoice:Z

    .line 780
    return-object p0
.end method

.method public setCancelable(Z)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 650
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCancelable:Z

    .line 651
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 830
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 831
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 833
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 514
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 515
    return-object p0
.end method

.method public setIcon(I)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIconId:I

    .line 545
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 555
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 565
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 566
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 567
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIconId:I

    .line 568
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z

    .prologue
    .line 1097
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mForceInverseBackground:Z

    .line 1098
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 683
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 684
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 685
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 696
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 697
    return-object p0
.end method

.method public setListHeight(I)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mListViewHeight:I

    .line 1176
    return-object p0
.end method

.method public setMessage(I)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 524
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 525
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 534
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 535
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 856
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 857
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 858
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 859
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 860
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 913
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 914
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 915
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 916
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 918
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 883
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 884
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 885
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 886
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsMultiChoice:Z

    .line 887
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 603
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNegativeButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 611
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNegativeButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNegativeButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 616
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 617
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 618
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .line 619
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCanceOutWindow:Z

    .line 620
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 607
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNegativeButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 624
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNeutralButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 632
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNeutralButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNeutralButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 637
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 638
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 639
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .line 640
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCanceOutWindow:Z

    .line 641
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 628
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setNeutralButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 662
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 663
    return-object p0
.end method

.method public setOnItemSelectedListener(Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 1037
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    .line 1038
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 672
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 673
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 582
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "textId"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 590
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPositiveButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 595
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 596
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 597
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .line 598
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCanceOutWindow:Z

    .line 599
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 586
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog$Builder;->setPositiveButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1105
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-boolean p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1106
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 939
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 940
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 941
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCheckedItem:I

    .line 942
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 943
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 967
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 968
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 969
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCheckedItem:I

    .line 970
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 971
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 972
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 1021
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1022
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCheckedItem:I

    .line 1023
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 1024
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 994
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 995
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 996
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCheckedItem:I

    .line 997
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsSingleChoice:Z

    .line 998
    return-object p0
.end method

.method public setTitle(I)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 489
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iget-object v1, v1, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 490
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 499
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 500
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 1052
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1053
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/tencent/qrom/app/AlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 1079
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput-object p1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 1080
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1081
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingLeft:I

    .line 1082
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingTop:I

    .line 1083
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingRight:I

    .line 1084
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog$Builder;->P:Lcom/tencent/qrom/app/AlertController$AlertParams;

    iput p5, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingBottom:I

    .line 1085
    return-object p0
.end method

.method public show()Lcom/tencent/qrom/app/AlertDialog;
    .locals 1

    .prologue
    .line 1134
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog$Builder;->create()Lcom/tencent/qrom/app/AlertDialog;

    move-result-object v0

    .line 1135
    .local v0, "dialog":Lcom/tencent/qrom/app/AlertDialog;
    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertDialog;->show()V

    .line 1136
    return-object v0
.end method

.method public show(Z)Lcom/tencent/qrom/app/AlertDialog;
    .locals 1
    .param p1, "isBottomDialog"    # Z

    .prologue
    .line 1155
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/AlertDialog$Builder;->create(Z)Lcom/tencent/qrom/app/AlertDialog;

    move-result-object v0

    .line 1156
    .local v0, "dialog":Lcom/tencent/qrom/app/AlertDialog;
    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertDialog;->show()V

    .line 1157
    return-object v0
.end method
