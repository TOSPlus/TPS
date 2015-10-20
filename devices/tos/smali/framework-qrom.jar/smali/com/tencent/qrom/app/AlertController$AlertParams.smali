.class public Lcom/tencent/qrom/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mBottomButtonAdapter:Landroid/widget/ListAdapter;

.field public mBottomButtonCheckedItem:I

.field public mBottomButtonCheckedItems:[Z

.field public mBottomButtonColorItems:[I

.field public mBottomButtonCursor:Landroid/database/Cursor;

.field public mBottomButtonItems:[Ljava/lang/CharSequence;

.field public mBottomButtonLabelColumn:Ljava/lang/String;

.field public mBottomButtonOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mCanceOutWindow:Z

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsBottomButtonCheckedColumn:Ljava/lang/String;

.field public mIsBottomButtonMultiChoice:Z

.field public mIsBottomButtonSingleChoice:Z

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mListViewHeight:I

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNegativeColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mNeutralColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Lcom/tencent/qrom/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mPositiveColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 1365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1294
    iput v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIconId:I

    .line 1300
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .line 1303
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .line 1306
    sget-object v0, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .line 1309
    iput-boolean v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCanceOutWindow:Z

    .line 1320
    iput-boolean v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 1324
    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCheckedItem:I

    .line 1332
    iput-boolean v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 1345
    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItem:I

    .line 1349
    iput v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mListViewHeight:I

    .line 1366
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 1367
    iput-boolean v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCancelable:Z

    .line 1368
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1369
    return-void
.end method

.method private createBottomButtons(Lcom/tencent/qrom/app/AlertController;)V
    .locals 20
    .param p1, "dialog"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 1583
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIconId:I

    if-gtz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v3, :cond_7

    :cond_2
    const/4 v9, 0x1

    .line 1586
    .local v9, "hasTitle":Z
    :goto_0
    const/16 v19, 0x0

    .line 1587
    .local v19, "hasButton":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonLayout:I
    invoke-static/range {p1 .. p1}, Lcom/tencent/qrom/app/AlertController;->access$1900(Lcom/tencent/qrom/app/AlertController;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/tencent/qrom/widget/ListView;

    .line 1588
    .local v8, "listView":Lcom/tencent/qrom/widget/ListView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0a0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v18

    .line 1589
    .local v18, "bRipple":Z
    if-nez v18, :cond_3

    .line 1590
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a020029    # 1.6875046E35f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1593
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 1594
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonMultiChoice:Z

    if-eqz v3, :cond_9

    .line 1595
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCursor:Landroid/database/Cursor;

    if-nez v3, :cond_8

    .line 1596
    new-instance v2, Lcom/tencent/qrom/app/AlertController$AlertParams$7;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonMultiChoiceItemLayout:I
    invoke-static/range {p1 .. p1}, Lcom/tencent/qrom/app/AlertController;->access$2000(Lcom/tencent/qrom/app/AlertController;)I

    move-result v5

    const v6, 0x7a0900ee

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/tencent/qrom/app/AlertController$AlertParams$7;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/tencent/qrom/widget/ListView;Z)V

    .line 1714
    .local v2, "adapter":Landroid/widget/ListAdapter;
    :goto_1
    move-object/from16 v0, p1

    # setter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0, v2}, Lcom/tencent/qrom/app/AlertController;->access$2302(Lcom/tencent/qrom/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1715
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCheckedItem:I

    move-object/from16 v0, p1

    # setter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonCheckedItem:I
    invoke-static {v0, v3}, Lcom/tencent/qrom/app/AlertController;->access$2402(Lcom/tencent/qrom/app/AlertController;I)I

    .line 1717
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_d

    .line 1718
    new-instance v3, Lcom/tencent/qrom/app/AlertController$AlertParams$11;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/tencent/qrom/app/AlertController$AlertParams$11;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Lcom/tencent/qrom/app/AlertController;)V

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 1739
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_5

    .line 1740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/widget/ListView;->setOnItemSelectedListener(Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;)V

    .line 1743
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonSingleChoice:Z

    if-eqz v3, :cond_e

    .line 1744
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/widget/ListView;->setChoiceMode(I)V

    .line 1749
    :cond_6
    :goto_3
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    # invokes: Lcom/tencent/qrom/app/AlertController;->setBottomButtonsStartAnimation(Landroid/view/ViewGroup;I)V
    invoke-static {v8, v3}, Lcom/tencent/qrom/app/AlertController;->access$2500(Landroid/view/ViewGroup;I)V

    .line 1750
    move-object/from16 v0, p1

    # setter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v0, v8}, Lcom/tencent/qrom/app/AlertController;->access$2602(Lcom/tencent/qrom/app/AlertController;Lcom/tencent/qrom/widget/ListView;)Lcom/tencent/qrom/widget/ListView;

    .line 1751
    return-void

    .line 1583
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v8    # "listView":Lcom/tencent/qrom/widget/ListView;
    .end local v9    # "hasTitle":Z
    .end local v18    # "bRipple":Z
    .end local v19    # "hasButton":Z
    :cond_7
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1623
    .restart local v8    # "listView":Lcom/tencent/qrom/widget/ListView;
    .restart local v9    # "hasTitle":Z
    .restart local v18    # "bRipple":Z
    .restart local v19    # "hasButton":Z
    :cond_8
    new-instance v2, Lcom/tencent/qrom/app/AlertController$AlertParams$8;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCursor:Landroid/database/Cursor;

    const/4 v14, 0x0

    move-object v10, v2

    move-object/from16 v11, p0

    move-object v15, v8

    move-object/from16 v16, p1

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/tencent/qrom/app/AlertController$AlertParams$8;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/tencent/qrom/widget/ListView;Lcom/tencent/qrom/app/AlertController;Z)V

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_1

    .line 1666
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonSingleChoice:Z

    if-eqz v3, :cond_a

    # getter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonSingleChoiceItemLayout:I
    invoke-static/range {p1 .. p1}, Lcom/tencent/qrom/app/AlertController;->access$2100(Lcom/tencent/qrom/app/AlertController;)I

    move-result v13

    .line 1668
    .local v13, "layout":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCursor:Landroid/database/Cursor;

    if-nez v3, :cond_c

    .line 1669
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :goto_5
    goto :goto_1

    .line 1666
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v13    # "layout":I
    :cond_a
    # getter for: Lcom/tencent/qrom/app/AlertController;->mBottomButtonItemLayout:I
    invoke-static/range {p1 .. p1}, Lcom/tencent/qrom/app/AlertController;->access$2200(Lcom/tencent/qrom/app/AlertController;)I

    move-result v13

    goto :goto_4

    .line 1669
    .restart local v13    # "layout":I
    :cond_b
    new-instance v10, Lcom/tencent/qrom/app/AlertController$AlertParams$9;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v14, 0x7a0900ee

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    move-object/from16 v11, p0

    move/from16 v16, v9

    invoke-direct/range {v10 .. v16}, Lcom/tencent/qrom/app/AlertController$AlertParams$9;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Z)V

    move-object v2, v10

    goto :goto_5

    .line 1690
    :cond_c
    new-instance v2, Lcom/tencent/qrom/app/AlertController$AlertParams$10;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    new-array v15, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonLabelColumn:Ljava/lang/String;

    aput-object v4, v15, v3

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v16, v0

    const/4 v3, 0x0

    const v4, 0x7a0900ee

    aput v4, v16, v3

    move-object v10, v2

    move-object/from16 v11, p0

    move/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/tencent/qrom/app/AlertController$AlertParams$10;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IZ)V

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_1

    .line 1726
    .end local v13    # "layout":I
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_4

    .line 1727
    new-instance v3, Lcom/tencent/qrom/app/AlertController$AlertParams$12;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v8, v1}, Lcom/tencent/qrom/app/AlertController$AlertParams$12;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Lcom/tencent/qrom/widget/ListView;Lcom/tencent/qrom/app/AlertController;)V

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_2

    .line 1745
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsBottomButtonMultiChoice:Z

    if-eqz v3, :cond_6

    .line 1746
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/widget/ListView;->setChoiceMode(I)V

    goto/16 :goto_3
.end method

.method private createListView(Lcom/tencent/qrom/app/AlertController;)V
    .locals 21
    .param p1, "dialog"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 1432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIconId:I

    if-gtz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v3, :cond_b

    :cond_2
    const/4 v9, 0x1

    .line 1435
    .local v9, "hasTitle":Z
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_c

    :cond_5
    const/4 v10, 0x1

    .line 1440
    .local v10, "hasButton":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mListLayout:I
    invoke-static/range {p1 .. p1}, Lcom/tencent/qrom/app/AlertController;->access$1200(Lcom/tencent/qrom/app/AlertController;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/tencent/qrom/app/AlertController$RecycleListView;

    .line 1441
    .local v8, "listView":Lcom/tencent/qrom/app/AlertController$RecycleListView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0a0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v20

    .line 1442
    .local v20, "bRipple":Z
    if-nez v20, :cond_6

    .line 1443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a020029    # 1.6875046E35f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/AlertController$RecycleListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1446
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/AlertController$RecycleListView;->setFooterDividersEnabled(Z)V

    .line 1447
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v3, :cond_e

    .line 1448
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_d

    .line 1449
    new-instance v2, Lcom/tencent/qrom/app/AlertController$AlertParams$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    # getter for: Lcom/tencent/qrom/app/AlertController;->mMultiChoiceItemLayout:I
    invoke-static/range {p1 .. p1}, Lcom/tencent/qrom/app/AlertController;->access$1300(Lcom/tencent/qrom/app/AlertController;)I

    move-result v5

    const v6, 0x7a0900ee

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/tencent/qrom/app/AlertController$AlertParams$1;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/tencent/qrom/app/AlertController$RecycleListView;ZZ)V

    .line 1535
    .local v2, "adapter":Landroid/widget/ListAdapter;
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/tencent/qrom/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v3, :cond_7

    .line 1536
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnPrepareListViewListener:Lcom/tencent/qrom/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v3, v8}, Lcom/tencent/qrom/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Lcom/tencent/qrom/widget/ListView;)V

    .line 1542
    :cond_7
    move-object/from16 v0, p1

    # setter for: Lcom/tencent/qrom/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0, v2}, Lcom/tencent/qrom/app/AlertController;->access$1602(Lcom/tencent/qrom/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1543
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCheckedItem:I

    move-object/from16 v0, p1

    # setter for: Lcom/tencent/qrom/app/AlertController;->mCheckedItem:I
    invoke-static {v0, v3}, Lcom/tencent/qrom/app/AlertController;->access$1702(Lcom/tencent/qrom/app/AlertController;I)I

    .line 1545
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_12

    .line 1546
    new-instance v3, Lcom/tencent/qrom/app/AlertController$AlertParams$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v1}, Lcom/tencent/qrom/app/AlertController$AlertParams$5;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Lcom/tencent/qrom/app/AlertController;)V

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/AlertController$RecycleListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 1567
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_9

    .line 1568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/AlertController$RecycleListView;->setOnItemSelectedListener(Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;)V

    .line 1571
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v3, :cond_13

    .line 1572
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/AlertController$RecycleListView;->setChoiceMode(I)V

    .line 1576
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    iput-boolean v3, v8, Lcom/tencent/qrom/app/AlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1578
    move-object/from16 v0, p1

    # setter for: Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v0, v8}, Lcom/tencent/qrom/app/AlertController;->access$1802(Lcom/tencent/qrom/app/AlertController;Lcom/tencent/qrom/widget/ListView;)Lcom/tencent/qrom/widget/ListView;

    .line 1579
    return-void

    .line 1432
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v8    # "listView":Lcom/tencent/qrom/app/AlertController$RecycleListView;
    .end local v9    # "hasTitle":Z
    .end local v10    # "hasButton":Z
    .end local v20    # "bRipple":Z
    :cond_b
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1435
    .restart local v9    # "hasTitle":Z
    :cond_c
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 1469
    .restart local v8    # "listView":Lcom/tencent/qrom/app/AlertController$RecycleListView;
    .restart local v10    # "hasButton":Z
    .restart local v20    # "bRipple":Z
    :cond_d
    new-instance v2, Lcom/tencent/qrom/app/AlertController$AlertParams$2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v15, 0x0

    move-object v11, v2

    move-object/from16 v12, p0

    move-object/from16 v16, v8

    move-object/from16 v17, p1

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/tencent/qrom/app/AlertController$AlertParams$2;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/tencent/qrom/app/AlertController$RecycleListView;Lcom/tencent/qrom/app/AlertController;ZZ)V

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto :goto_2

    .line 1505
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v3, :cond_f

    # getter for: Lcom/tencent/qrom/app/AlertController;->mSingleChoiceItemLayout:I
    invoke-static/range {p1 .. p1}, Lcom/tencent/qrom/app/AlertController;->access$1400(Lcom/tencent/qrom/app/AlertController;)I

    move-result v14

    .line 1506
    .local v14, "layout":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_11

    .line 1507
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :goto_6
    goto/16 :goto_2

    .line 1505
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v14    # "layout":I
    :cond_f
    # getter for: Lcom/tencent/qrom/app/AlertController;->mListItemLayout:I
    invoke-static/range {p1 .. p1}, Lcom/tencent/qrom/app/AlertController;->access$1500(Lcom/tencent/qrom/app/AlertController;)I

    move-result v14

    goto :goto_5

    .line 1507
    .restart local v14    # "layout":I
    :cond_10
    new-instance v11, Lcom/tencent/qrom/app/AlertController$AlertParams$3;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const v15, 0x7a0900ee

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object/from16 v16, v0

    move-object/from16 v12, p0

    move/from16 v17, v9

    move/from16 v18, v10

    invoke-direct/range {v11 .. v18}, Lcom/tencent/qrom/app/AlertController$AlertParams$3;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;ZZ)V

    move-object v2, v11

    goto :goto_6

    .line 1521
    :cond_11
    new-instance v2, Lcom/tencent/qrom/app/AlertController$AlertParams$4;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v4, v16, v3

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v17, v0

    const/4 v3, 0x0

    const v4, 0x7a0900ee

    aput v4, v17, v3

    move-object v11, v2

    move-object/from16 v12, p0

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/tencent/qrom/app/AlertController$AlertParams$4;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_2

    .line 1554
    .end local v14    # "layout":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_8

    .line 1555
    new-instance v3, Lcom/tencent/qrom/app/AlertController$AlertParams$6;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v3, v0, v8, v1}, Lcom/tencent/qrom/app/AlertController$AlertParams$6;-><init>(Lcom/tencent/qrom/app/AlertController$AlertParams;Lcom/tencent/qrom/app/AlertController$RecycleListView;Lcom/tencent/qrom/app/AlertController;)V

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/AlertController$RecycleListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_3

    .line 1573
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v3, :cond_a

    .line 1574
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/AlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_4
.end method


# virtual methods
.method public apply(Lcom/tencent/qrom/app/AlertController;)V
    .locals 6
    .param p1, "dialog"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    const/4 v5, 0x0

    .line 1372
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v0, :cond_b

    .line 1373
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1385
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 1386
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1388
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_2

    .line 1389
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/AlertController;->setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1392
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_3

    .line 1393
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/AlertController;->setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1396
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_4

    .line 1397
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/AlertController;->setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1400
    :cond_4
    iget-boolean v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mForceInverseBackground:Z

    if-eqz v0, :cond_5

    .line 1401
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 1405
    :cond_5
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_7

    .line 1406
    :cond_6
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/AlertController$AlertParams;->createListView(Lcom/tencent/qrom/app/AlertController;)V

    .line 1408
    :cond_7
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v0, :cond_8

    .line 1409
    iget-boolean v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v0, :cond_e

    .line 1410
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 1417
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonItems:[Ljava/lang/CharSequence;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonCursor:Landroid/database/Cursor;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_a

    .line 1419
    :cond_9
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/AlertController$AlertParams;->createBottomButtons(Lcom/tencent/qrom/app/AlertController;)V

    .line 1428
    :cond_a
    return-void

    .line 1375
    :cond_b
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c

    .line 1376
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1378
    :cond_c
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_d

    .line 1379
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1381
    :cond_d
    iget v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIconId:I

    if-lez v0, :cond_0

    .line 1382
    iget v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mIconId:I

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/AlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1413
    :cond_e
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController$AlertParams;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/tencent/qrom/app/AlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
