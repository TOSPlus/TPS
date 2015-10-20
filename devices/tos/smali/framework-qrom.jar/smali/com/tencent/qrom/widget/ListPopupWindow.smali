.class public Lcom/tencent/qrom/widget/ListPopupWindow;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;,
        Lcom/tencent/qrom/widget/ListPopupWindow$PopupTouchInterceptor;,
        Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;,
        Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;,
        Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;,
        Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXPAND_LIST_TIMEOUT:I = 0xfa

.field public static final INPUT_METHOD_FROM_FOCUSABLE:I = 0x0

.field public static final INPUT_METHOD_NEEDED:I = 0x1

.field public static final INPUT_METHOD_NOT_NEEDED:I = 0x2

.field public static final MATCH_PARENT:I = -0x1

.field public static final POSITION_PROMPT_ABOVE:I = 0x0

.field public static final POSITION_PROMPT_BELOW:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ListPopupWindow"

.field public static final WRAP_CONTENT:I = -0x2

.field public static mDrawBottomDivider:Z

.field private static mIsRedPoint:[Z

.field private static mIsTransPopup:Z

.field private static mTextColors:[I


# instance fields
.field public isPopupFromTop:Z

.field private mAdapter:Landroid/widget/ListAdapter;

.field private mContext:Landroid/content/Context;

.field private mDropDownAlwaysVisible:Z

.field private mDropDownAnchorView:Landroid/view/View;

.field private mDropDownHeight:I

.field private mDropDownHorizontalOffset:I

.field private mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

.field private mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

.field private mDropDownVerticalOffset:I

.field private mDropDownVerticalOffsetSet:Z

.field private mDropDownWidth:I

.field private mForceIgnoreOutsideTouch:Z

.field private mHandler:Landroid/os/Handler;

.field private final mHideSelector:Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;

.field private mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

.field private mItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

.field mListItemExpandMaximum:I

.field private mModal:Z

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPopup:Lcom/tencent/qrom/widget/PopupWindow;

.field private mPromptPosition:I

.field private mPromptView:Landroid/view/View;

.field private final mResizePopupRunnable:Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;

.field private final mScrollListener:Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;

.field private mShowDropDownRunnable:Ljava/lang/Runnable;

.field private mTempRect:Landroid/graphics/Rect;

.field private final mTouchInterceptor:Lcom/tencent/qrom/widget/ListPopupWindow$PopupTouchInterceptor;

.field qromCustomHeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDrawBottomDivider:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 180
    const/4 v0, 0x0

    const v1, 0x7a0100a8

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/tencent/qrom/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 181
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 191
    const v0, 0x7a0100a8

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 203
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 204
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v0, -0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    .line 77
    iput v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    .line 82
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 83
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 84
    const v0, 0x7fffffff

    iput v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 87
    iput v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptPosition:I

    .line 98
    new-instance v0, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;

    .line 99
    new-instance v0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$PopupTouchInterceptor;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTouchInterceptor:Lcom/tencent/qrom/widget/ListPopupWindow$PopupTouchInterceptor;

    .line 100
    new-instance v0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mScrollListener:Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;

    .line 101
    new-instance v0, Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mHideSelector:Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;

    .line 104
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    .line 1372
    const/4 v0, 0x7

    iput v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->qromCustomHeight:I

    .line 225
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 226
    new-instance v0, Lcom/tencent/qrom/widget/PopupWindow;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/tencent/qrom/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    .line 227
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setInputMethodMode(I)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ[Z[I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "isTranPopup"    # Z
    .param p5, "isRedPoint"    # [Z
    .param p6, "textColors"    # [I

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 209
    sput-boolean p4, Lcom/tencent/qrom/widget/ListPopupWindow;->mIsTransPopup:Z

    .line 210
    sput-object p5, Lcom/tencent/qrom/widget/ListPopupWindow;->mIsRedPoint:[Z

    .line 211
    sput-object p6, Lcom/tencent/qrom/widget/ListPopupWindow;->mTextColors:[I

    .line 212
    return-void
.end method

.method static synthetic access$1000(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/PopupWindow;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/widget/ListPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/ListPopupWindow;)Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/ListPopupWindow;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method static synthetic access$700()Z
    .locals 1

    .prologue
    .line 60
    sget-boolean v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mIsTransPopup:Z

    return v0
.end method

.method static synthetic access$800()[Z
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mIsRedPoint:[Z

    return-object v0
.end method

.method static synthetic access$900()[I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTextColors:[I

    return-object v0
.end method

.method private buildDropDown()I
    .locals 24

    .prologue
    .line 1015
    const/16 v20, 0x0

    .line 1017
    .local v20, "otherHeights":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    if-nez v4, :cond_7

    .line 1018
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mContext:Landroid/content/Context;

    .line 1026
    .local v11, "context":Landroid/content/Context;
    new-instance v4, Lcom/tencent/qrom/widget/ListPopupWindow$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/tencent/qrom/widget/ListPopupWindow$1;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    .line 1036
    new-instance v5, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mModal:Z

    if-nez v4, :cond_6

    const/4 v4, 0x1

    :goto_0
    invoke-direct {v5, v11, v4}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;-><init>(Landroid/content/Context;Z)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    .line 1037
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setOverScrollMode(I)V

    .line 1038
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setVerticalScrollBarEnabled(Z)V

    .line 1039
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 1042
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1044
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 1045
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setIsNeedBounce(Z)V

    .line 1046
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setFocusable(Z)V

    .line 1047
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setFocusableInTouchMode(Z)V

    .line 1049
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    new-instance v5, Lcom/tencent/qrom/widget/ListPopupWindow$2;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/tencent/qrom/widget/ListPopupWindow$2;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;)V

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;)V

    .line 1065
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mScrollListener:Lcom/tencent/qrom/widget/ListPopupWindow$PopupScrollListener;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setOnScrollListener(Lcom/tencent/qrom/widget/AbsListView$OnScrollListener;)V

    .line 1067
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    if-eqz v4, :cond_1

    .line 1068
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v4, v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setOnItemSelectedListener(Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;)V

    .line 1071
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    .line 1073
    .local v12, "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v16, v0

    .line 1074
    .local v16, "hintView":Landroid/view/View;
    if-eqz v16, :cond_2

    .line 1077
    new-instance v14, Landroid/widget/LinearLayout;

    invoke-direct {v14, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1078
    .local v14, "hintContainer":Landroid/widget/LinearLayout;
    const/4 v4, 0x1

    invoke-virtual {v14, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1080
    new-instance v15, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v15, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 1084
    .local v15, "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptPosition:I

    packed-switch v4, :pswitch_data_0

    .line 1096
    const-string v4, "ListPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid hint position "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptPosition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    :goto_1
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    const/high16 v5, -0x80000000

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v23

    .line 1103
    .local v23, "widthSpec":I
    const/4 v13, 0x0

    .line 1104
    .local v13, "heightSpec":I
    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v1, v13}, Landroid/view/View;->measure(II)V

    .line 1106
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    .end local v15    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1107
    .restart local v15    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v20, v4, v5

    .line 1110
    move-object v12, v14

    .line 1113
    .end local v13    # "heightSpec":I
    .end local v14    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v15    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v23    # "widthSpec":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v4, v12}, Lcom/tencent/qrom/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1127
    .end local v11    # "context":Landroid/content/Context;
    .end local v16    # "hintView":Landroid/view/View;
    :cond_3
    :goto_2
    const/16 v21, 0x0

    .line 1128
    .local v21, "padding":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 1129
    .local v10, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v10, :cond_4

    .line 1130
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v10, v4}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1131
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    add-int v21, v4, v5

    .line 1135
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v4, :cond_4

    .line 1136
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    neg-int v4, v4

    move-object/from16 v0, p0

    iput v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 1141
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/PopupWindow;->getInputMethodMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    const/16 v17, 0x1

    .line 1143
    .local v17, "ignoreBottomDecorations":Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual/range {p0 .. p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    move/from16 v0, v17

    invoke-virtual {v4, v5, v6, v0}, Lcom/tencent/qrom/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;IZ)I

    move-result v19

    .line 1145
    .local v19, "maxHeight":I
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_9

    .line 1146
    :cond_5
    add-int v4, v19, v21

    .line 1170
    :goto_4
    return v4

    .line 1036
    .end local v10    # "background":Landroid/graphics/drawable/Drawable;
    .end local v12    # "dropDownView":Landroid/view/ViewGroup;
    .end local v17    # "ignoreBottomDecorations":Z
    .end local v19    # "maxHeight":I
    .end local v21    # "padding":I
    .restart local v11    # "context":Landroid/content/Context;
    :cond_6
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 1086
    .restart local v12    # "dropDownView":Landroid/view/ViewGroup;
    .restart local v14    # "hintContainer":Landroid/widget/LinearLayout;
    .restart local v15    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v16    # "hintView":Landroid/view/View;
    :pswitch_0
    invoke-virtual {v14, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1087
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_1

    .line 1091
    :pswitch_1
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1092
    invoke-virtual {v14, v12, v15}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    .line 1115
    .end local v11    # "context":Landroid/content/Context;
    .end local v12    # "dropDownView":Landroid/view/ViewGroup;
    .end local v14    # "hintContainer":Landroid/widget/LinearLayout;
    .end local v15    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v16    # "hintView":Landroid/view/View;
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v4}, Lcom/tencent/qrom/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/view/ViewGroup;

    .line 1116
    .restart local v12    # "dropDownView":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    move-object/from16 v22, v0

    .line 1117
    .local v22, "view":Landroid/view/View;
    if-eqz v22, :cond_3

    .line 1118
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout$LayoutParams;

    .line 1120
    .restart local v15    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, v15, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int v20, v4, v5

    goto/16 :goto_2

    .line 1141
    .end local v15    # "hintParams":Landroid/widget/LinearLayout$LayoutParams;
    .end local v22    # "view":Landroid/view/View;
    .restart local v10    # "background":Landroid/graphics/drawable/Drawable;
    .restart local v21    # "padding":I
    :cond_8
    const/16 v17, 0x0

    goto :goto_3

    .line 1149
    .restart local v17    # "ignoreBottomDecorations":Z
    .restart local v19    # "maxHeight":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, -0x1

    sub-int v8, v19, v20

    const/4 v9, -0x1

    invoke-virtual/range {v4 .. v9}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->measureHeightOfChildren(IIIII)I

    move-result v18

    .line 1164
    .local v18, "listContent":I
    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qrom/widget/ListPopupWindow;->qromGetHeight(III)I

    move-result v18

    .line 1168
    if-lez v18, :cond_a

    add-int v20, v20, v21

    .line 1170
    :cond_a
    add-int v4, v18, v20

    goto :goto_4

    .line 1084
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private qromGetHeight(III)I
    .locals 9
    .param p1, "listContent"    # I
    .param p2, "maxHeight"    # I
    .param p3, "otherHeights"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x0

    .line 1380
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->qromGetCustomListHeight()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->qromCustomHeight:I

    .line 1381
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1382
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v6

    .line 1384
    .local v6, "count":I
    if-lez v6, :cond_0

    .line 1385
    add-int/lit8 v0, v6, -0x1

    mul-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 1388
    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->qromCustomHeight:I

    if-le v6, v0, :cond_3

    .line 1389
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    sub-int v4, p2, p3

    move v2, v1

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->qromMeasureHeightOfChildren(IIIII)I

    move-result v7

    .line 1391
    .local v7, "listContentTotal":I
    div-int v0, v7, v6

    iget v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->qromCustomHeight:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getDividerHeight()I

    move-result v2

    iget v3, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->qromCustomHeight:I

    if-lez v3, :cond_1

    iget v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->qromCustomHeight:I

    add-int/lit8 v1, v1, -0x1

    :cond_1
    mul-int/2addr v1, v2

    add-int v8, v0, v1

    .line 1392
    .local v8, "listRet":I
    if-le v8, p2, :cond_2

    .line 1393
    move v8, p2

    .line 1398
    .end local v6    # "count":I
    .end local v7    # "listContentTotal":I
    .end local v8    # "listRet":I
    :cond_2
    :goto_0
    return v8

    :cond_3
    move v8, p1

    goto :goto_0
.end method

.method private removePromptView()V
    .locals 3

    .prologue
    .line 679
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 680
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 681
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 682
    check-cast v0, Landroid/view/ViewGroup;

    .line 683
    .local v0, "group":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 686
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "parent":Landroid/view/ViewParent;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 2

    .prologue
    .line 735
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    .line 736
    .local v0, "list":Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    if-eqz v0, :cond_0

    .line 738
    const/4 v1, 0x1

    # setter for: Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->access$502(Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 739
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->hideSelector()V

    .line 740
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->requestLayout()V

    .line 742
    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 662
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->dismiss()V

    .line 663
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->removePromptView()V

    .line 664
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 665
    iput-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    .line 666
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mResizePopupRunnable:Lcom/tencent/qrom/widget/ListPopupWindow$ResizePopupRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 667
    return-void
.end method

.method public getAnchorView()Landroid/view/View;
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    return-object v0
.end method

.method protected getAnimationController()Landroid/view/animation/LayoutAnimationController;
    .locals 13

    .prologue
    const-wide/16 v11, 0x64

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 253
    new-instance v10, Landroid/view/animation/AnimationSet;

    invoke-direct {v10, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 255
    .local v10, "set":Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 256
    .local v0, "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 257
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x40a00000    # 5.0f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 258
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 260
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    .end local v0    # "animation":Landroid/view/animation/Animation;
    iget-boolean v3, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->isPopupFromTop:Z

    if-eqz v3, :cond_0

    const v6, -0x41666666    # -0.3f

    :goto_0
    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 264
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    invoke-virtual {v0, v11, v12}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 265
    invoke-virtual {v10, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 267
    new-instance v9, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v9, v10}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 268
    .local v9, "controller":Landroid/view/animation/LayoutAnimationController;
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->isPopupFromTop:Z

    if-eqz v2, :cond_1

    :goto_1
    invoke-virtual {v9, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 269
    return-object v9

    .line 260
    .end local v0    # "animation":Landroid/view/animation/Animation;
    .end local v9    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_0
    const v6, 0x3e99999a    # 0.3f

    goto :goto_0

    .line 268
    .restart local v0    # "animation":Landroid/view/animation/Animation;
    .restart local v9    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->getAnimationStyle()I

    move-result v0

    return v0
.end method

.method public getBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    return v0
.end method

.method public getHorizontalOffset()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    return v0
.end method

.method public getInputMethodMode()I
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    return v0
.end method

.method public getListView()Lcom/tencent/qrom/widget/ListView;
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    return-object v0
.end method

.method public getPromptPosition()I
    .locals 1

    .prologue
    .line 292
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptPosition:I

    return v0
.end method

.method public getSelectedItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 784
    const/4 v0, 0x0

    .line 786
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectedItemId()J
    .locals 2

    .prologue
    .line 809
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    const-wide/high16 v0, -0x8000000000000000L

    .line 812
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getSelectedItemId()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getSelectedItemPosition()I
    .locals 1

    .prologue
    .line 796
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 797
    const/4 v0, -0x1

    .line 799
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v0

    goto :goto_0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 1

    .prologue
    .line 822
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 823
    const/4 v0, 0x0

    .line 825
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getSoftInputMode()I
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->getSoftInputMode()I

    move-result v0

    return v0
.end method

.method public getVerticalOffset()I
    .locals 1

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x0

    .line 463
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 480
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    return v0
.end method

.method public isDropDownAlwaysVisible()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    return v0
.end method

.method public isInputMethodNotNeeded()Z
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->getInputMethodMode()I

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

.method public isModal()Z
    .locals 1

    .prologue
    .line 315
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mModal:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 748
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 13
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v12, 0x14

    const/16 v11, 0x13

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 858
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 864
    const/16 v9, 0x3e

    if-eq p1, v9, :cond_8

    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v9

    if-gez v9, :cond_0

    const/16 v9, 0x42

    if-eq p1, v9, :cond_8

    const/16 v9, 0x17

    if-eq p1, v9, :cond_8

    .line 868
    :cond_0
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v4

    .line 871
    .local v4, "curIndex":I
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v9}, Lcom/tencent/qrom/widget/PopupWindow;->isAboveAnchor()Z

    move-result v9

    if-nez v9, :cond_4

    move v2, v7

    .line 873
    .local v2, "below":Z
    :goto_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 876
    .local v0, "adapter":Landroid/widget/ListAdapter;
    const v5, 0x7fffffff

    .line 877
    .local v5, "firstItem":I
    const/high16 v6, -0x80000000

    .line 879
    .local v6, "lastItem":I
    if-eqz v0, :cond_1

    .line 880
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    .line 881
    .local v1, "allEnabled":Z
    if-eqz v1, :cond_5

    move v5, v8

    .line 883
    :goto_1
    if-eqz v1, :cond_6

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v9

    add-int/lit8 v6, v9, -0x1

    .line 887
    .end local v1    # "allEnabled":Z
    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    if-ne p1, v11, :cond_2

    if-le v4, v5, :cond_3

    :cond_2
    if-nez v2, :cond_7

    if-ne p1, v12, :cond_7

    if-lt v4, v6, :cond_7

    .line 891
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->clearListSelection()V

    .line 892
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v8, v7}, Lcom/tencent/qrom/widget/PopupWindow;->setInputMethodMode(I)V

    .line 893
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 939
    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :goto_3
    :sswitch_0
    return v7

    .restart local v4    # "curIndex":I
    :cond_4
    move v2, v8

    .line 871
    goto :goto_0

    .line 881
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v1    # "allEnabled":Z
    .restart local v2    # "below":Z
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_5
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, v8, v7}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v5

    goto :goto_1

    .line 883
    :cond_6
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10, v8}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->lookForSelectablePosition(IZ)I

    move-result v6

    goto :goto_2

    .line 898
    .end local v1    # "allEnabled":Z
    :cond_7
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    # setter for: Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v9, v8}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->access$502(Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 901
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9, p1, p2}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    .line 904
    .local v3, "consumed":Z
    if-eqz v3, :cond_9

    .line 907
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/tencent/qrom/widget/PopupWindow;->setInputMethodMode(I)V

    .line 912
    iget-object v9, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v9}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->requestFocusFromTouch()Z

    .line 913
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 915
    sparse-switch p1, :sswitch_data_0

    .end local v0    # "adapter":Landroid/widget/ListAdapter;
    .end local v2    # "below":Z
    .end local v3    # "consumed":Z
    .end local v4    # "curIndex":I
    .end local v5    # "firstItem":I
    .end local v6    # "lastItem":I
    :cond_8
    move v7, v8

    .line 939
    goto :goto_3

    .line 925
    .restart local v0    # "adapter":Landroid/widget/ListAdapter;
    .restart local v2    # "below":Z
    .restart local v3    # "consumed":Z
    .restart local v4    # "curIndex":I
    .restart local v5    # "firstItem":I
    .restart local v6    # "lastItem":I
    :cond_9
    if-eqz v2, :cond_a

    if-ne p1, v12, :cond_a

    .line 928
    if-ne v4, v6, :cond_8

    goto :goto_3

    .line 931
    :cond_a
    if-nez v2, :cond_8

    if-ne p1, v11, :cond_8

    if-ne v4, v5, :cond_8

    goto :goto_3

    .line 915
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_0
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 983
    const/4 v3, 0x4

    if-ne p1, v3, :cond_3

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 986
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 987
    .local v0, "anchorView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 988
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 989
    .local v1, "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_0

    .line 990
    invoke-virtual {v1, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 1004
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_0
    :goto_0
    return v2

    .line 993
    .restart local v0    # "anchorView":Landroid/view/View;
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 994
    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 995
    .restart local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    if-eqz v1, :cond_2

    .line 996
    invoke-virtual {v1, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    .line 998
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v3

    if-nez v3, :cond_3

    .line 999
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 1004
    .end local v0    # "anchorView":Landroid/view/View;
    .end local v1    # "state":Landroid/view/KeyEvent$DispatcherState;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 953
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getSelectedItemPosition()I

    move-result v1

    if-ltz v1, :cond_1

    .line 954
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v1, p1, p2}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 955
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 956
    sparse-switch p1, :sswitch_data_0

    .line 968
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return v0

    .line 962
    .restart local v0    # "consumed":Z
    :sswitch_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->dismiss()V

    goto :goto_0

    .line 968
    .end local v0    # "consumed":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 956
    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public performItemClick(I)Z
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 767
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    if-eqz v0, :cond_0

    .line 769
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    .line 770
    .local v1, "list":Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 771
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    .line 772
    .local v6, "adapter":Landroid/widget/ListAdapter;
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    invoke-interface {v6, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v4

    move v3, p1

    invoke-interface/range {v0 .. v5}, Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;->onItemClick(Lcom/tencent/qrom/widget/AdapterView;Landroid/view/View;IJ)V

    .line 774
    .end local v1    # "list":Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    .end local v2    # "child":Landroid/view/View;
    .end local v6    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    const/4 v0, 0x1

    .line 776
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public postShow()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mShowDropDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 569
    return-void
.end method

.method public qromGetCustomListHeight()I
    .locals 1

    .prologue
    .line 1377
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->qromCustomHeight:I

    return v0
.end method

.method public qromSetCustomListHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 1374
    iput p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->qromCustomHeight:I

    .line 1375
    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 237
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 238
    new-instance v0, Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$PopupDataSetObserver;-><init>(Lcom/tencent/qrom/widget/ListPopupWindow;Lcom/tencent/qrom/widget/ListPopupWindow$1;)V

    iput-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    .line 242
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    .line 243
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 247
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    if-eqz v0, :cond_2

    .line 248
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 250
    :cond_2
    return-void

    .line 239
    :cond_3
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0
    .param p1, "anchor"    # Landroid/view/View;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAnchorView:Landroid/view/View;

    .line 438
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 1
    .param p1, "animationStyle"    # I

    .prologue
    .line 408
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->setAnimationStyle(I)V

    .line 409
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 399
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 400
    return-void
.end method

.method public setContentWidth(I)V
    .locals 3
    .param p1, "width"    # I

    .prologue
    .line 500
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v1}, Lcom/tencent/qrom/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 501
    .local v0, "popupBackground":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 502
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 503
    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iput v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    .line 507
    :goto_0
    return-void

    .line 505
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow;->setWidth(I)V

    goto :goto_0
.end method

.method public setDropDownAlwaysVisible(Z)V
    .locals 0
    .param p1, "dropDownAlwaysVisible"    # Z

    .prologue
    .line 341
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    .line 342
    return-void
.end method

.method public setForceIgnoreOutsideTouch(Z)V
    .locals 0
    .param p1, "forceIgnoreOutsideTouch"    # Z

    .prologue
    .line 326
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    .line 327
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 522
    iput p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    .line 523
    return-void
.end method

.method public setHorizontalOffset(I)V
    .locals 0
    .param p1, "offset"    # I

    .prologue
    .line 453
    iput p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    .line 454
    return-void
.end method

.method public setInputMethodMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 701
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->setInputMethodMode(I)V

    .line 702
    return-void
.end method

.method setListItemExpandMax(I)V
    .locals 0
    .param p1, "max"    # I

    .prologue
    .line 843
    iput p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mListItemExpandMaximum:I

    .line 844
    return-void
.end method

.method public setListSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "selector"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownListHighlight:Landroid/graphics/drawable/Drawable;

    .line 384
    return-void
.end method

.method public setModal(Z)V
    .locals 1
    .param p1, "modal"    # Z

    .prologue
    .line 305
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mModal:Z

    .line 306
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->setFocusable(Z)V

    .line 307
    return-void
.end method

.method public setOnDismissListener(Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->setOnDismissListener(Lcom/tencent/qrom/widget/PopupWindow$OnDismissListener;)V

    .line 676
    return-void
.end method

.method public setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .param p1, "clickListener"    # Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .prologue
    .line 533
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mItemClickListener:Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;

    .line 534
    return-void
.end method

.method public setOnItemSelectedListener(Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;)V
    .locals 0
    .param p1, "selectedListener"    # Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mItemSelectedListener:Lcom/tencent/qrom/widget/AdapterView$OnItemSelectedListener;

    .line 545
    return-void
.end method

.method public setPromptPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 282
    iput p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptPosition:I

    .line 283
    return-void
.end method

.method public setPromptView(Landroid/view/View;)V
    .locals 1
    .param p1, "prompt"    # Landroid/view/View;

    .prologue
    .line 554
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    .line 555
    .local v0, "showing":Z
    if-eqz v0, :cond_0

    .line 556
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->removePromptView()V

    .line 558
    :cond_0
    iput-object p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPromptView:Landroid/view/View;

    .line 559
    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->show()V

    .line 562
    :cond_1
    return-void
.end method

.method public setRemoveView(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 1402
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 1403
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    iput-boolean p1, v0, Lcom/tencent/qrom/widget/PopupWindow;->bRemoveView:Z

    .line 1405
    :cond_0
    return-void
.end method

.method public setSelection(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 720
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    .line 721
    .local v0, "list":Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 722
    const/4 v1, 0x0

    # setter for: Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->mListSelectionHidden:Z
    invoke-static {v0, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->access$502(Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;Z)Z

    .line 723
    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 724
    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->getChoiceMode()I

    move-result v1

    if-eqz v1, :cond_0

    .line 725
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setItemChecked(IZ)V

    .line 728
    :cond_0
    return-void
.end method

.method public setSoftInputMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 364
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/widget/PopupWindow;->setSoftInputMode(I)V

    .line 365
    return-void
.end method

.method public setVerticalOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    .line 472
    iput p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    .line 473
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffsetSet:Z

    .line 474
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 490
    iput p1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    .line 491
    return-void
.end method

.method public show()V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v9, -0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 576
    invoke-direct {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->buildDropDown()I

    move-result v6

    .line 578
    .local v6, "height":I
    const/4 v4, 0x0

    .line 579
    .local v4, "widthSpec":I
    const/4 v5, 0x0

    .line 581
    .local v5, "heightSpec":I
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->isInputMethodNotNeeded()Z

    move-result v7

    .line 582
    .local v7, "noInputMethod":Z
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    if-nez v7, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v8, v0}, Lcom/tencent/qrom/widget/PopupWindow;->setAllowScrollingAnchorParent(Z)V

    .line 584
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 585
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_2

    .line 588
    const/4 v4, -0x1

    .line 595
    :goto_1
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_8

    .line 598
    if-eqz v7, :cond_4

    move v5, v6

    .line 599
    :goto_2
    if-eqz v7, :cond_6

    .line 600
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_5

    move v0, v3

    :goto_3
    invoke-virtual {v8, v0, v2}, Lcom/tencent/qrom/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 615
    :goto_4
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    iget-boolean v3, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v3, :cond_a

    iget-boolean v3, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v3, :cond_a

    :goto_5
    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 617
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v3, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 656
    :cond_0
    :goto_6
    return-void

    :cond_1
    move v0, v2

    .line 582
    goto :goto_0

    .line 589
    :cond_2
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_3

    .line 590
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    goto :goto_1

    .line 592
    :cond_3
    iget v4, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    goto :goto_1

    :cond_4
    move v5, v3

    .line 598
    goto :goto_2

    :cond_5
    move v0, v2

    .line 600
    goto :goto_3

    .line 604
    :cond_6
    iget-object v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_7

    move v0, v3

    :goto_7
    invoke-virtual {v8, v0, v3}, Lcom/tencent/qrom/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto :goto_4

    :cond_7
    move v0, v2

    goto :goto_7

    .line 609
    :cond_8
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_9

    .line 610
    move v5, v6

    goto :goto_4

    .line 612
    :cond_9
    iget v5, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    goto :goto_4

    :cond_a
    move v1, v2

    .line 615
    goto :goto_5

    .line 620
    :cond_b
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v3, :cond_e

    .line 621
    const/4 v4, -0x1

    .line 629
    :goto_8
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v3, :cond_10

    .line 630
    const/4 v5, -0x1

    .line 639
    :goto_9
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, v4, v5}, Lcom/tencent/qrom/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 640
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setClipToScreenEnabled(Z)V

    .line 644
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    iget-boolean v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mForceIgnoreOutsideTouch:Z

    if-nez v8, :cond_12

    iget-boolean v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownAlwaysVisible:Z

    if-nez v8, :cond_12

    :goto_a
    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 645
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mTouchInterceptor:Lcom/tencent/qrom/widget/ListPopupWindow$PopupTouchInterceptor;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 646
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHorizontalOffset:I

    iget v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2, v8}, Lcom/tencent/qrom/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 648
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0, v3}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->setSelection(I)V

    .line 649
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mModal:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownList:Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;

    invoke-virtual {v0}, Lcom/tencent/qrom/widget/ListPopupWindow$DropDownListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 650
    :cond_c
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->clearListSelection()V

    .line 652
    :cond_d
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mModal:Z

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mHideSelector:Lcom/tencent/qrom/widget/ListPopupWindow$ListSelectorHider;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_6

    .line 623
    :cond_e
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    if-ne v0, v9, :cond_f

    .line 624
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {p0}, Lcom/tencent/qrom/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/tencent/qrom/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    .line 626
    :cond_f
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    iget v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownWidth:I

    invoke-virtual {v0, v8}, Lcom/tencent/qrom/widget/PopupWindow;->setWidth(I)V

    goto :goto_8

    .line 632
    :cond_10
    iget v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    if-ne v0, v9, :cond_11

    .line 633
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    invoke-virtual {v0, v6}, Lcom/tencent/qrom/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    .line 635
    :cond_11
    iget-object v0, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mPopup:Lcom/tencent/qrom/widget/PopupWindow;

    iget v8, p0, Lcom/tencent/qrom/widget/ListPopupWindow;->mDropDownHeight:I

    invoke-virtual {v0, v8}, Lcom/tencent/qrom/widget/PopupWindow;->setHeight(I)V

    goto :goto_9

    :cond_12
    move v1, v2

    .line 644
    goto :goto_a
.end method
