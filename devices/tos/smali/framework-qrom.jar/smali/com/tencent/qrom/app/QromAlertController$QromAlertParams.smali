.class public Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;
.super Lcom/android/internal/app/AlertController$AlertParams;
.source "QromAlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromAlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QromAlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mNegativeColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

.field public mNeutralColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

.field public mPositiveColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;-><init>(Landroid/content/Context;)V

    .line 1135
    sget-object v0, Lcom/tencent/qrom/app/QromAlertController$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    iput-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mPositiveColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    .line 1136
    sget-object v0, Lcom/tencent/qrom/app/QromAlertController$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    iput-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNegativeColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    .line 1137
    sget-object v0, Lcom/tencent/qrom/app/QromAlertController$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    iput-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNeutralColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    .line 1154
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    .line 1155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCancelable:Z

    .line 1156
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mInflater:Landroid/view/LayoutInflater;

    .line 1157
    return-void
.end method

.method private createListView(Lcom/android/internal/app/AlertController;)V
    .locals 29
    .param p1, "ac"    # Lcom/android/internal/app/AlertController;

    .prologue
    .line 1227
    move-object/from16 v0, p1

    instance-of v3, v0, Lcom/tencent/qrom/app/QromAlertController;

    if-eqz v3, :cond_0

    check-cast p1, Lcom/tencent/qrom/app/QromAlertController;

    .end local p1    # "ac":Lcom/android/internal/app/AlertController;
    move-object/from16 v17, p1

    .line 1228
    .local v17, "dialog":Lcom/tencent/qrom/app/QromAlertController;
    :goto_0
    if-nez v17, :cond_1

    .line 1229
    const-string v3, "rick_Print:"

    const-string v4, "createListView dialog == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1388
    :goto_1
    return-void

    .line 1227
    .end local v17    # "dialog":Lcom/tencent/qrom/app/QromAlertController;
    .restart local p1    # "ac":Lcom/android/internal/app/AlertController;
    :cond_0
    const/16 v17, 0x0

    goto :goto_0

    .line 1233
    .end local p1    # "ac":Lcom/android/internal/app/AlertController;
    .restart local v17    # "dialog":Lcom/tencent/qrom/app/QromAlertController;
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCustomTitleView:Landroid/view/View;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIconId:I

    if-gtz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mView:Landroid/view/View;

    if-eqz v3, :cond_c

    :cond_4
    const/4 v9, 0x1

    .line 1236
    .local v9, "hasTitle":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    :cond_7
    const/4 v10, 0x1

    .line 1241
    .local v10, "hasButton":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mInflater:Landroid/view/LayoutInflater;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mListLayout:I
    invoke-static/range {v17 .. v17}, Lcom/tencent/qrom/app/QromAlertController;->access$800(Lcom/tencent/qrom/app/QromAlertController;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;

    .line 1242
    .local v8, "listView":Lcom/tencent/qrom/app/QromAlertController$RecycleListView;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0a0019

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v27

    .line 1243
    .local v27, "bRipple":Z
    if-nez v27, :cond_e

    .line 1244
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a020029    # 1.6875046E35f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1255
    :goto_4
    const/4 v3, 0x0

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setFooterDividersEnabled(Z)V

    .line 1256
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIsMultiChoice:Z

    if-eqz v3, :cond_10

    .line 1257
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_f

    .line 1258
    new-instance v2, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mMultiChoiceItemLayout:I
    invoke-static/range {v17 .. v17}, Lcom/tencent/qrom/app/QromAlertController;->access$900(Lcom/tencent/qrom/app/QromAlertController;)I

    move-result v5

    const v6, 0x7a0900ee

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$1;-><init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/tencent/qrom/app/QromAlertController$RecycleListView;ZZ)V

    .line 1344
    .local v2, "adapter":Landroid/widget/ListAdapter;
    :goto_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v3, :cond_8

    .line 1345
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mOnPrepareListViewListener:Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;

    invoke-interface {v3, v8}, Lcom/android/internal/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    .line 1351
    :cond_8
    move-object/from16 v0, v17

    # setter for: Lcom/tencent/qrom/app/QromAlertController;->mAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0, v2}, Lcom/tencent/qrom/app/QromAlertController;->access$1302(Lcom/tencent/qrom/app/QromAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;

    .line 1352
    move-object/from16 v0, p0

    iget v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCheckedItem:I

    move-object/from16 v0, v17

    # setter for: Lcom/tencent/qrom/app/QromAlertController;->mCheckedItem:I
    invoke-static {v0, v3}, Lcom/tencent/qrom/app/QromAlertController;->access$1402(Lcom/tencent/qrom/app/QromAlertController;I)I

    .line 1354
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v3, :cond_14

    .line 1355
    new-instance v3, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v1}, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$5;-><init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Lcom/tencent/qrom/app/QromAlertController;)V

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1376
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v3, :cond_a

    .line 1377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 1380
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIsSingleChoice:Z

    if-eqz v3, :cond_15

    .line 1381
    const/4 v3, 0x1

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setChoiceMode(I)V

    .line 1385
    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mRecycleOnMeasure:Z

    iput-boolean v3, v8, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->mRecycleOnMeasure:Z

    .line 1387
    move-object/from16 v0, v17

    # setter for: Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;
    invoke-static {v0, v8}, Lcom/tencent/qrom/app/QromAlertController;->access$1502(Lcom/tencent/qrom/app/QromAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;

    goto/16 :goto_1

    .line 1233
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v8    # "listView":Lcom/tencent/qrom/app/QromAlertController$RecycleListView;
    .end local v9    # "hasTitle":Z
    .end local v10    # "hasButton":Z
    .end local v27    # "bRipple":Z
    :cond_c
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1236
    .restart local v9    # "hasTitle":Z
    :cond_d
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 1246
    .restart local v8    # "listView":Lcom/tencent/qrom/app/QromAlertController$RecycleListView;
    .restart local v10    # "hasButton":Z
    .restart local v27    # "bRipple":Z
    :cond_e
    new-instance v28, Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7a0b0028

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7a0b0010

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-direct {v0, v3, v4, v5}, Lcom/tencent/qrom/drawable/QromRippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1252
    .local v28, "drawable":Lcom/tencent/qrom/drawable/QromRippleDrawable;
    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1278
    .end local v28    # "drawable":Lcom/tencent/qrom/drawable/QromRippleDrawable;
    :cond_f
    new-instance v2, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$2;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCursor:Landroid/database/Cursor;

    const/4 v15, 0x0

    move-object v11, v2

    move-object/from16 v12, p0

    move-object/from16 v16, v8

    move/from16 v18, v9

    move/from16 v19, v10

    invoke-direct/range {v11 .. v19}, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$2;-><init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLcom/tencent/qrom/app/QromAlertController$RecycleListView;Lcom/tencent/qrom/app/QromAlertController;ZZ)V

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_5

    .line 1314
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIsSingleChoice:Z

    if-eqz v3, :cond_11

    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mSingleChoiceItemLayout:I
    invoke-static/range {v17 .. v17}, Lcom/tencent/qrom/app/QromAlertController;->access$1100(Lcom/tencent/qrom/app/QromAlertController;)I

    move-result v21

    .line 1315
    .local v21, "layout":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v3, :cond_13

    .line 1316
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    :goto_9
    goto/16 :goto_5

    .line 1314
    .end local v2    # "adapter":Landroid/widget/ListAdapter;
    .end local v21    # "layout":I
    :cond_11
    # getter for: Lcom/tencent/qrom/app/QromAlertController;->mListItemLayout:I
    invoke-static/range {v17 .. v17}, Lcom/tencent/qrom/app/QromAlertController;->access$1200(Lcom/tencent/qrom/app/QromAlertController;)I

    move-result v21

    goto :goto_8

    .line 1316
    .restart local v21    # "layout":I
    :cond_12
    new-instance v18, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v22, 0x7a0900ee

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v19, p0

    move/from16 v24, v9

    move/from16 v25, v10

    invoke-direct/range {v18 .. v25}, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$3;-><init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;ZZ)V

    move-object/from16 v2, v18

    goto :goto_9

    .line 1330
    :cond_13
    new-instance v2, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCursor:Landroid/database/Cursor;

    move-object/from16 v22, v0

    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    move-object/from16 v23, v0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mLabelColumn:Ljava/lang/String;

    aput-object v4, v23, v3

    const/4 v3, 0x1

    new-array v0, v3, [I

    move-object/from16 v24, v0

    const/4 v3, 0x0

    const v4, 0x7a0900ee

    aput v4, v24, v3

    move-object/from16 v18, v2

    move-object/from16 v19, p0

    move/from16 v25, v9

    move/from16 v26, v10

    invoke-direct/range {v18 .. v26}, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$4;-><init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[IZZ)V

    .restart local v2    # "adapter":Landroid/widget/ListAdapter;
    goto/16 :goto_5

    .line 1363
    .end local v21    # "layout":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v3, :cond_9

    .line 1364
    new-instance v3, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v3, v0, v8, v1}, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams$6;-><init>(Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;Lcom/tencent/qrom/app/QromAlertController$RecycleListView;Lcom/tencent/qrom/app/QromAlertController;)V

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto/16 :goto_6

    .line 1382
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIsMultiChoice:Z

    if-eqz v3, :cond_b

    .line 1383
    const/4 v3, 0x2

    invoke-virtual {v8, v3}, Lcom/tencent/qrom/app/QromAlertController$RecycleListView;->setChoiceMode(I)V

    goto/16 :goto_7
.end method


# virtual methods
.method public apply(Lcom/android/internal/app/AlertController;)V
    .locals 6
    .param p1, "ac"    # Lcom/android/internal/app/AlertController;

    .prologue
    const/4 v5, 0x0

    .line 1161
    instance-of v1, p1, Lcom/tencent/qrom/app/QromAlertController;

    if-eqz v1, :cond_9

    move-object v0, p1

    .line 1162
    check-cast v0, Lcom/tencent/qrom/app/QromAlertController;

    .line 1169
    .local v0, "dialog":Lcom/tencent/qrom/app/QromAlertController;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v1, :cond_a

    .line 1170
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 1185
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1

    .line 1186
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 1188
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    .line 1189
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mPositiveColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/QromAlertController;->setButton(Lcom/tencent/qrom/app/QromAlertController$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1192
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    .line 1193
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNegativeColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/QromAlertController;->setButton(Lcom/tencent/qrom/app/QromAlertController$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1196
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_4

    .line 1197
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNeutralColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    const/4 v2, -0x3

    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/QromAlertController;->setButton(Lcom/tencent/qrom/app/QromAlertController$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 1200
    :cond_4
    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mForceInverseBackground:Z

    if-eqz v1, :cond_5

    .line 1201
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->setInverseBackgroundForced(Z)V

    .line 1205
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_7

    .line 1206
    :cond_6
    invoke-direct {p0, v0}, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->createListView(Lcom/android/internal/app/AlertController;)V

    .line 1208
    :cond_7
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mView:Landroid/view/View;

    if-eqz v1, :cond_8

    .line 1209
    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mViewSpacingSpecified:Z

    if-eqz v1, :cond_e

    .line 1210
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mView:Landroid/view/View;

    iget v2, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mViewSpacingLeft:I

    iget v3, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mViewSpacingTop:I

    iget v4, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mViewSpacingRight:I

    iget v5, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mViewSpacingBottom:I

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/QromAlertController;->setView(Landroid/view/View;IIII)V

    .line 1224
    .end local v0    # "dialog":Lcom/tencent/qrom/app/QromAlertController;
    :cond_8
    :goto_1
    return-void

    .line 1165
    :cond_9
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertController$AlertParams;->apply(Lcom/android/internal/app/AlertController;)V

    goto :goto_1

    .line 1172
    .restart local v0    # "dialog":Lcom/tencent/qrom/app/QromAlertController;
    :cond_a
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_b

    .line 1173
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 1175
    :cond_b
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_c

    .line 1176
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1178
    :cond_c
    iget v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIconId:I

    if-lez v1, :cond_d

    .line 1179
    iget v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIconId:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->setIcon(I)V

    .line 1181
    :cond_d
    iget v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIconAttrId:I

    if-lez v1, :cond_0

    .line 1182
    iget v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mIconAttrId:I

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->getIconAttributeResId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->setIcon(I)V

    goto/16 :goto_0

    .line 1213
    :cond_e
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromAlertController;->setView(Landroid/view/View;)V

    goto :goto_1
.end method
