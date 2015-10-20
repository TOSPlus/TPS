.class public Lcom/tencent/qrom/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;,
        Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;,
        Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;,
        Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;,
        Lcom/tencent/qrom/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Lcom/tencent/qrom/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final EXPAND_MAX:I = 0x3

.field static final TAG:Ljava/lang/String; = "AutoCompleteTextView"


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

.field private mLastKeyCode:I

.field private mObserver:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

.field private mOpenBefore:Z

.field private mPassThroughClickListener:Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;

.field private mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private mThreshold:I

.field private mValidator:Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 134
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 137
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 138
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v7, -0x2

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 141
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 115
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 117
    iput v5, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 120
    iput-object v6, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mValidator:Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;

    .line 127
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 143
    new-instance v2, Lcom/tencent/qrom/widget/ListPopupWindow;

    const v3, 0x101006b

    invoke-direct {v2, p1, p2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    .line 145
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->setSoftInputMode(I)V

    .line 146
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v2, v4}, Lcom/tencent/qrom/widget/ListPopupWindow;->setPromptPosition(I)V

    .line 148
    sget-object v2, Lcom/android/internal/R$styleable;->AutoCompleteTextView:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mThreshold:I

    .line 156
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 158
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v2, v5}, Lcom/tencent/qrom/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 165
    const/4 v2, 0x6

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 170
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->setWidth(I)V

    .line 173
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v7}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->setHeight(I)V

    .line 177
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->qromSetCustomListHeight(I)V

    .line 178
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const v3, 0x7a0f00e3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 179
    const v2, 0x7a03006d

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintResource:I

    .line 182
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    new-instance v3, Lcom/tencent/qrom/widget/AutoCompleteTextView$DropDownItemClickListener;

    invoke-direct {v3, p0, v6}, Lcom/tencent/qrom/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 184
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    .line 189
    .local v1, "inputType":I
    and-int/lit8 v2, v1, 0xf

    if-ne v2, v4, :cond_0

    .line 191
    const/high16 v2, 0x10000

    or-int/2addr v1, v2

    .line 192
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->setRawInputType(I)V

    .line 195
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    invoke-virtual {p0, v4}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->setFocusable(Z)V

    .line 199
    new-instance v2, Lcom/tencent/qrom/widget/AutoCompleteTextView$MyWatcher;

    invoke-direct {v2, p0, v6}, Lcom/tencent/qrom/widget/AutoCompleteTextView$MyWatcher;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$1;)V

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 201
    new-instance v2, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v2, p0, v6}, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$1;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;

    .line 202
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {p0, v2}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    return-void
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .prologue
    .line 95
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/AutoCompleteTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView;

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/AutoCompleteTextView;)Landroid/widget/ListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/widget/AutoCompleteTextView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/AutoCompleteTextView;
    .param p1, "x1"    # I

    .prologue
    .line 95
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method private buildImeCompletions()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    .line 1119
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 1120
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_3

    .line 1121
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v6

    .line 1122
    .local v6, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v6, :cond_3

    .line 1123
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    const/16 v11, 0x14

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1124
    .local v2, "count":I
    new-array v1, v2, [Landroid/view/inputmethod/CompletionInfo;

    .line 1125
    .local v1, "completions":[Landroid/view/inputmethod/CompletionInfo;
    const/4 v8, 0x0

    .line 1127
    .local v8, "realCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1128
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1129
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .line 1130
    .local v7, "item":Ljava/lang/Object;
    invoke-interface {v0, v3}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    .line 1131
    .local v4, "id":J
    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v4, v5, v8, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v1, v8

    .line 1133
    add-int/lit8 v8, v8, 0x1

    .line 1127
    .end local v4    # "id":J
    .end local v7    # "item":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1137
    :cond_1
    if-eq v8, v2, :cond_2

    .line 1138
    new-array v9, v8, [Landroid/view/inputmethod/CompletionInfo;

    .line 1139
    .local v9, "tmp":[Landroid/view/inputmethod/CompletionInfo;
    invoke-static {v1, v12, v9, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1140
    move-object v1, v9

    .line 1143
    .end local v9    # "tmp":[Landroid/view/inputmethod/CompletionInfo;
    :cond_2
    invoke-virtual {v6, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1146
    .end local v1    # "completions":[Landroid/view/inputmethod/CompletionInfo;
    .end local v2    # "count":I
    .end local v3    # "i":I
    .end local v6    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v8    # "realCount":I
    :cond_3
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    .line 219
    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 8
    .param p1, "selectedView"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 885
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 887
    if-gez p2, :cond_1

    .line 888
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v7

    .line 892
    .local v7, "selectedItem":Ljava/lang/Object;
    :goto_0
    if-nez v7, :cond_2

    .line 893
    const-string v0, "AutoCompleteTextView"

    const-string v1, "performCompletion: no selected item"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_0
    :goto_1
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    .restart local v7    # "selectedItem":Ljava/lang/Object;
    goto :goto_0

    .line 897
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 898
    invoke-virtual {p0, v7}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    .line 899
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 901
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_5

    .line 902
    iget-object v6, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    .line 904
    .local v6, "list":Lcom/tencent/qrom/widget/ListPopupWindow;
    if-eqz p1, :cond_3

    if-gez p2, :cond_4

    .line 905
    :cond_3
    invoke-virtual {v6}, Lcom/tencent/qrom/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    .line 906
    invoke-virtual {v6}, Lcom/tencent/qrom/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    .line 907
    invoke-virtual {v6}, Lcom/tencent/qrom/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    .line 909
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v6}, Lcom/tencent/qrom/widget/ListPopupWindow;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V

    .line 913
    .end local v6    # "list":Lcom/tencent/qrom/widget/ListPopupWindow;
    .end local v7    # "selectedItem":Ljava/lang/Object;
    :cond_5
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_1
.end method

.method private updateDropDownForFilter(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 965
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 987
    :cond_0
    :goto_0
    return-void

    .line 974
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    .line 975
    .local v0, "dropDownAlwaysVisible":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    .line 976
    .local v1, "enoughToFilter":Z
    if-gtz p1, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    if-eqz v1, :cond_3

    .line 977
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_0

    .line 978
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    .line 980
    :cond_3
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 981
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 985
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    goto :goto_0
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->clearListSelection()V

    .line 828
    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "selectedItem"    # Ljava/lang/Object;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 2

    .prologue
    .line 1036
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1037
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1038
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    .line 1040
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->dismiss()V

    .line 1041
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 1042
    return-void
.end method

.method doAfterTextChanged()V
    .locals 2

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_1

    .line 799
    :cond_0
    :goto_0
    return-void

    .line 778
    :cond_1
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 785
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 786
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    .line 787
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    .line 792
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_4

    .line 793
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_0

    .line 796
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method doBeforeTextChanged()V
    .locals 1

    .prologue
    .line 762
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 766
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mOpenBefore:Z

    goto :goto_0
.end method

.method public enoughToFilter()Z
    .locals 2

    .prologue
    .line 742
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ensureImeVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 1071
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1073
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1074
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->showDropDown()V

    .line 1076
    :cond_1
    return-void

    .line 1071
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getCompletionHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 260
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getDropDownAnchor()I
    .locals 1

    .prologue
    .line 325
    iget v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    return v0
.end method

.method public getDropDownAnimationStyle()I
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getDropDownBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDropDownHeight()I
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDropDownHorizontalOffset()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getHorizontalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownVerticalOffset()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getVerticalOffset()I

    move-result v0

    return v0
.end method

.method public getDropDownWidth()I
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getWidth()I

    move-result v0

    return v0
.end method

.method protected getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItemClickListener()Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getItemSelectedListener()Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 565
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getListSelection()I
    .locals 1

    .prologue
    .line 850
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result v0

    return v0
.end method

.method public getOnItemClickListener()Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    return-object v0
.end method

.method public getOnItemSelectedListener()Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    return-object v0
.end method

.method public getThreshold()I
    .locals 1

    .prologue
    .line 497
    iget v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mThreshold:I

    return v0
.end method

.method public getValidator()Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;
    .locals 1

    .prologue
    .line 1168
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mValidator:Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;

    return-object v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    return v0
.end method

.method public isDropDownDismissedOnCompletion()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPerformingCompletion()Z
    .locals 1

    .prologue
    .line 923
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mBlockCompletion:Z

    return v0
.end method

.method public isPopupShowing()Z
    .locals 1

    .prologue
    .line 807
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 1023
    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    .line 1024
    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2
    .param p1, "completion"    # Landroid/view/inputmethod/CompletionInfo;

    .prologue
    .line 879
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->performItemClick(I)Z

    .line 882
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1028
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1029
    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    .line 1030
    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1
    .param p1, "hint"    # I

    .prologue
    .line 999
    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    .line 1000
    packed-switch p1, :pswitch_data_0

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 1002
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1003
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 1000
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onFilterComplete(I)V
    .locals 0
    .param p1, "count"    # I

    .prologue
    .line 960
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    .line 961
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 1
    .param p1, "focused"    # Z
    .param p2, "direction"    # I
    .param p3, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 1011
    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1013
    if-nez p1, :cond_0

    .line 1014
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->performValidation()V

    .line 1016
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1017
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 1019
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 705
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/qrom/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 730
    :cond_0
    :goto_0
    return v0

    .line 709
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-nez v1, :cond_2

    .line 710
    packed-switch p1, :pswitch_data_0

    .line 718
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x3d

    if-ne p1, v1, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-nez v1, :cond_0

    .line 722
    :cond_3
    iput p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 723
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 724
    .local v0, "handled":Z
    const/4 v1, 0x0

    iput v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mLastKeyCode:I

    .line 726
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->clearListSelection()V

    goto :goto_0

    .line 712
    .end local v0    # "handled":Z
    :pswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 713
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->performValidation()V

    goto :goto_1

    .line 710
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 653
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v2

    if-nez v2, :cond_3

    .line 657
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 658
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 659
    .local v0, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_0

    .line 660
    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 674
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v1

    .line 663
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 664
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    .line 665
    .restart local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v0, :cond_2

    .line 666
    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 668
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    .line 669
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->dismissDropDown()V

    goto :goto_0

    .line 674
    .end local v0    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 679
    iget-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v2, p1, p2}, Lcom/tencent/qrom/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 680
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 681
    sparse-switch p1, :sswitch_data_0

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x3d

    if-ne p1, v2, :cond_2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 696
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->performCompletion()V

    .line 700
    :cond_1
    :goto_0
    return v1

    .line 688
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 689
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->performCompletion()V

    goto :goto_0

    .line 700
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 681
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x3d -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 991
    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    .line 992
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 993
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 995
    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    .prologue
    .line 874
    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    .line 875
    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "keyCode"    # I

    .prologue
    .line 865
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    .line 866
    return-void
.end method

.method public performValidation()V
    .locals 2

    .prologue
    .line 1179
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mValidator:Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;

    if-nez v1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1181
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1183
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mValidator:Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1184
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mValidator:Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 950
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->clearComposingText()V

    .line 952
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 955
    .local v0, "spannable":Landroid/text/Editable;
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 956
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    const/4 v2, 0x0

    .line 634
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mObserver:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_1

    .line 635
    new-instance v0, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-direct {v0, p0, v2}, Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mObserver:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

    .line 639
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 640
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_2

    .line 642
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Landroid/widget/Filterable;

    invoke-interface {v0}, Landroid/widget/Filterable;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    .line 643
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mObserver:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/Adapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 648
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 649
    return-void

    .line 636
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 637
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mObserver:Lcom/tencent/qrom/widget/AutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0

    .line 645
    :cond_2
    iput-object v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    goto :goto_1
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v3, 0x0

    .line 233
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    .line 234
    if-eqz p1, :cond_1

    .line 235
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    .line 236
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x1020014

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 238
    .local v0, "hintView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iput-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    .line 240
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 248
    .end local v0    # "hintView":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    .line 246
    iput-object v3, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 1
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 462
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setDropDownAlwaysVisible(Z)V

    .line 463
    return-void
.end method

.method public setDropDownAnchor(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 338
    iput p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    .line 339
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 340
    return-void
.end method

.method public setDropDownAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 424
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAnimationStyle(I)V

    .line 425
    return-void
.end method

.method public setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 361
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 362
    return-void
.end method

.method public setDropDownBackgroundResource(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 372
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 373
    return-void
.end method

.method public setDropDownDismissedOnCompletion(Z)V
    .locals 0
    .param p1, "dropDownDismissedOnCompletion"    # Z

    .prologue
    .line 483
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    .line 484
    return-void
.end method

.method public setDropDownHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setHeight(I)V

    .line 315
    return-void
.end method

.method public setDropDownHorizontalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 399
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 400
    return-void
.end method

.method public setDropDownVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 381
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 382
    return-void
.end method

.method public setDropDownWidth(I)V
    .locals 1
    .param p1, "width"    # I

    .prologue
    .line 286
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setWidth(I)V

    .line 287
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 1
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 1115
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setForceIgnoreOutsideTouch(Z)V

    .line 1116
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "r"    # I
    .param p4, "b"    # I

    .prologue
    .line 1046
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    .line 1048
    .local v0, "result":Z
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->showDropDown()V

    .line 1052
    :cond_0
    return v0
.end method

.method public setListSelection(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 836
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setSelection(I)V

    .line 837
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 207
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;

    # setter for: Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;->mWrapped:Landroid/view/View$OnClickListener;
    invoke-static {v0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;->access$302(Lcom/tencent/qrom/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    .line 208
    return-void
.end method

.method public setOnDismissListener(Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;)V
    .locals 2
    .param p1, "dismissListener"    # Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;

    .prologue
    .line 594
    const/4 v0, 0x0

    .line 595
    .local v0, "wrappedListener":Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;
    if-eqz p1, :cond_0

    .line 596
    new-instance v0, Lcom/tencent/qrom/widget/AutoCompleteTextView$1;

    .end local v0    # "wrappedListener":Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;
    invoke-direct {v0, p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView$1;-><init>(Lcom/tencent/qrom/widget/AutoCompleteTextView;Lcom/tencent/qrom/widget/AutoCompleteTextView$OnDismissListener;)V

    .line 602
    .restart local v0    # "wrappedListener":Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->setOnDismissListener(Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;)V

    .line 603
    return-void
.end method

.method public setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "l"    # Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 529
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .line 530
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 539
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    .line 540
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Z)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "filter"    # Z

    .prologue
    .line 933
    if-eqz p2, :cond_0

    .line 934
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 940
    :goto_0
    return-void

    .line 936
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mBlockCompletion:Z

    .line 937
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 938
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mBlockCompletion:Z

    goto :goto_0
.end method

.method public setThreshold(I)V
    .locals 0
    .param p1, "threshold"    # I

    .prologue
    .line 515
    if-gtz p1, :cond_0

    .line 516
    const/4 p1, 0x1

    .line 519
    :cond_0
    iput p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mThreshold:I

    .line 520
    return-void
.end method

.method public setValidator(Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;)V
    .locals 0
    .param p1, "validator"    # Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;

    .prologue
    .line 1157
    iput-object p1, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mValidator:Lcom/tencent/qrom/widget/AutoCompleteTextView$Validator;

    .line 1158
    return-void
.end method

.method public showDropDown()V
    .locals 3

    .prologue
    .line 1089
    invoke-direct {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->buildImeCompletions()V

    .line 1091
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1092
    iget v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1093
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1098
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1100
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setInputMethodMode(I)V

    .line 1101
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setListItemExpandMax(I)V

    .line 1103
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 1104
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListView;->setOverScrollMode(I)V

    .line 1105
    return-void

    .line 1095
    :cond_2
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public showDropDownAfterLayout()V
    .locals 1

    .prologue
    .line 1061
    iget-object v0, p0, Lcom/tencent/qrom/widget/AutoCompleteTextView;->mPopup:Lcom/tencent/qrom/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow;->postShow()V

    .line 1062
    return-void
.end method
