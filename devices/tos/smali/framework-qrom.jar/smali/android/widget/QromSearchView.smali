.class public Landroid/widget/QromSearchView;
.super Landroid/widget/LinearLayout;
.source "QromSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;
.implements Landroid/widget/QromStretchAnimation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;,
        Landroid/widget/QromSearchView$QromSearchAutoComplete;,
        Landroid/widget/QromSearchView$OnSuggestionListener;,
        Landroid/widget/QromSearchView$onCancelClickListener;,
        Landroid/widget/QromSearchView$OnCloseListener;,
        Landroid/widget/QromSearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field static final HIDDEN_METHOD_INVOKER:Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "QromSearchView"


# instance fields
.field private currentView:Landroid/view/View;

.field isCancelClick:Z

.field private isChange:Z

.field isEnable:Z

.field isReturnEvent:Z

.field isSearchClick:Z

.field isSearchMode:Z

.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mContext:Landroid/content/Context;

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private mOnCancelClickListener:Landroid/widget/QromSearchView$onCancelClickListener;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/widget/QromSearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/widget/QromSearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/widget/QromSearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchBar:Landroid/widget/LinearLayout;

.field private mSearchCancelButton:Landroid/widget/TextView;

.field private mSearchEditFrame:Landroid/widget/LinearLayout;

.field private mSearchPlate:Landroid/widget/LinearLayout;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;

.field private mainContain:Landroid/widget/LinearLayout;

.field private maxSize:I

.field private maxSizeOffset:I

.field private minSize:I

.field private minSizeOffset:I

.field private preView:Landroid/view/View;

.field private screenDensity:F

.field private screentHeight:I

.field private screentWidth:I

.field private stretchanimation:Landroid/widget/QromStretchAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 168
    new-instance v0, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;

    invoke-direct {v0}, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;-><init>()V

    sput-object v0, Landroid/widget/QromSearchView;->HIDDEN_METHOD_INVOKER:Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/QromSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 386
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 389
    const v0, 0x7a010208

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/QromSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 390
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 393
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/QromSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 394
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 398
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 140
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/widget/QromSearchView;->mOnCancelClickListener:Landroid/widget/QromSearchView$onCancelClickListener;

    .line 145
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/QromSearchView;->screentWidth:I

    .line 146
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/QromSearchView;->screentHeight:I

    .line 147
    const/4 v9, 0x0

    iput v9, p0, Landroid/widget/QromSearchView;->screenDensity:F

    .line 148
    const/16 v9, 0x18

    iput v9, p0, Landroid/widget/QromSearchView;->maxSizeOffset:I

    .line 149
    const/16 v9, 0x48

    iput v9, p0, Landroid/widget/QromSearchView;->minSizeOffset:I

    .line 161
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/QromSearchView;->isCancelClick:Z

    .line 162
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/QromSearchView;->isSearchClick:Z

    .line 163
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/QromSearchView;->isSearchMode:Z

    .line 164
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/QromSearchView;->isEnable:Z

    .line 165
    const/4 v9, 0x0

    iput-boolean v9, p0, Landroid/widget/QromSearchView;->isReturnEvent:Z

    .line 169
    const/4 v9, 0x1

    iput-boolean v9, p0, Landroid/widget/QromSearchView;->isChange:Z

    .line 174
    new-instance v9, Landroid/widget/QromSearchView$1;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$1;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 185
    new-instance v9, Landroid/widget/QromSearchView$2;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$2;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 191
    new-instance v9, Landroid/widget/QromSearchView$3;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$3;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 205
    new-instance v9, Ljava/util/WeakHashMap;

    invoke-direct {v9}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 1017
    new-instance v9, Landroid/widget/QromSearchView$7;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$7;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 1086
    new-instance v9, Landroid/widget/QromSearchView$8;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$8;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1312
    new-instance v9, Landroid/widget/QromSearchView$9;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$9;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1555
    new-instance v9, Landroid/widget/QromSearchView$10;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$10;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1566
    new-instance v9, Landroid/widget/QromSearchView$11;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$11;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1852
    new-instance v9, Landroid/widget/QromSearchView$12;

    invoke-direct {v9, p0}, Landroid/widget/QromSearchView$12;-><init>(Landroid/widget/QromSearchView;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 400
    iput-object p1, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    .line 401
    const-string v9, "layout_inflater"

    invoke-virtual {p1, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .line 403
    .local v4, "inflater":Landroid/view/LayoutInflater;
    const v9, 0x7a030063

    const/4 v10, 0x1

    invoke-virtual {v4, v9, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 405
    const v9, 0x7a0900dc

    invoke-virtual {p0, v9}, Landroid/widget/QromSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iput-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    .line 406
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusable(Z)V

    .line 407
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusableInTouchMode(Z)V

    .line 409
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v9}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->clearFocus()V

    .line 410
    const v9, 0x7a0900e4

    invoke-virtual {p0, v9}, Landroid/widget/QromSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    .line 411
    iget-object v9, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7a0a0019

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 412
    .local v1, "bRipple":Z
    if-eqz v1, :cond_0

    .line 413
    iget-object v9, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getDefaultDrawable(Landroid/content/Context;)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    .line 415
    .local v6, "mCancelBtnRippleDrawable":Lcom/tencent/qrom/drawable/QromRippleDrawable;
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0xf

    if-le v9, v10, :cond_6

    .line 416
    iget-object v9, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 426
    .end local v6    # "mCancelBtnRippleDrawable":Lcom/tencent/qrom/drawable/QromRippleDrawable;
    :cond_0
    :goto_0
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v9, p0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setSearchView(Landroid/widget/QromSearchView;)V

    .line 427
    const v9, 0x7a0900d6

    invoke-virtual {p0, v9}, Landroid/widget/QromSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Landroid/widget/QromSearchView;->mSearchBar:Landroid/widget/LinearLayout;

    .line 428
    const v9, 0x7a0900d9

    invoke-virtual {p0, v9}, Landroid/widget/QromSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Landroid/widget/QromSearchView;->mSearchEditFrame:Landroid/widget/LinearLayout;

    .line 429
    const v9, 0x7a0900db

    invoke-virtual {p0, v9}, Landroid/widget/QromSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iput-object v9, p0, Landroid/widget/QromSearchView;->mSearchPlate:Landroid/widget/LinearLayout;

    .line 430
    const v9, 0x7a0900dd

    invoke-virtual {p0, v9}, Landroid/widget/QromSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    iput-object v9, p0, Landroid/widget/QromSearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 431
    iget-object v9, p0, Landroid/widget/QromSearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v10, p0, Landroid/widget/QromSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 432
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v10, p0, Landroid/widget/QromSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 433
    iget-object v9, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    iget-object v10, p0, Landroid/widget/QromSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 435
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    new-instance v10, Landroid/widget/QromSearchView$4;

    invoke-direct {v10, p0}, Landroid/widget/QromSearchView$4;-><init>(Landroid/widget/QromSearchView;)V

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 451
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v10, p0, Landroid/widget/QromSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 452
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v10, p0, Landroid/widget/QromSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 453
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v10, p0, Landroid/widget/QromSearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 454
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v10, p0, Landroid/widget/QromSearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 455
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v10, p0, Landroid/widget/QromSearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 457
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    new-instance v10, Landroid/widget/QromSearchView$5;

    invoke-direct {v10, p0}, Landroid/widget/QromSearchView$5;-><init>(Landroid/widget/QromSearchView;)V

    invoke-virtual {v9, v10}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 466
    iget-object v9, p0, Landroid/widget/QromSearchView;->mSearchEditFrame:Landroid/widget/LinearLayout;

    iput-object v9, p0, Landroid/widget/QromSearchView;->mainContain:Landroid/widget/LinearLayout;

    .line 467
    invoke-direct {p0}, Landroid/widget/QromSearchView;->initCommonData()V

    .line 468
    const/4 v9, 0x0

    invoke-direct {p0, v9}, Landroid/widget/QromSearchView;->initViewData(I)V

    .line 470
    const-string v9, "QromSearchView"

    const-string v10, "obtainStyledAttributes 11111"

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    sget-object v9, Lcom/tencent/qrom/R$styleable;->SearchView:[I

    const/4 v10, 0x0

    invoke-virtual {p1, p2, v9, p3, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 472
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v9, "QromSearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "obtainStyledAttributes 22222 a = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v9, 0x3

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/QromSearchView;->setIconifiedByDefault(Z)V

    .line 476
    const/4 v9, 0x2

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    .line 477
    .local v7, "maxWidth":I
    const-string v9, "QromSearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "obtainStyledAttributes 33333 maxWidth = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const/4 v9, -0x1

    if-eq v7, v9, :cond_1

    .line 479
    invoke-virtual {p0, v7}, Landroid/widget/QromSearchView;->setMaxWidth(I)V

    .line 481
    :cond_1
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 482
    .local v8, "queryHint":Ljava/lang/CharSequence;
    const-string v9, "QromSearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "obtainStyledAttributes 44444 queryHint = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 484
    invoke-virtual {p0, v8}, Landroid/widget/QromSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 486
    :cond_2
    const/4 v9, 0x1

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 487
    .local v3, "imeOptions":I
    const-string v9, "QromSearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "obtainStyledAttributes 55555 imeOptions = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/4 v9, -0x1

    if-eq v3, v9, :cond_3

    .line 489
    invoke-virtual {p0, v3}, Landroid/widget/QromSearchView;->setImeOptions(I)V

    .line 491
    :cond_3
    const/4 v9, 0x0

    const/4 v10, -0x1

    invoke-virtual {v0, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 492
    .local v5, "inputType":I
    const-string v9, "QromSearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "obtainStyledAttributes 66666 inputType = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v9, -0x1

    if-eq v5, v9, :cond_4

    .line 494
    invoke-virtual {p0, v5}, Landroid/widget/QromSearchView;->setInputType(I)V

    .line 496
    :cond_4
    const/4 v2, 0x1

    .line 497
    .local v2, "focusable":Z
    const/4 v9, 0x5

    invoke-virtual {v0, v9, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 498
    const-string v9, "QromSearchView"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "obtainStyledAttributes 77777 focusable = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    invoke-virtual {p0, v2}, Landroid/widget/QromSearchView;->setFocusable(Z)V

    .line 501
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 511
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.speech.action.WEB_SEARCH"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 512
    iget-object v9, p0, Landroid/widget/QromSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    iget-object v9, p0, Landroid/widget/QromSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    const-string v11, "web_search"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 516
    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v9, p0, Landroid/widget/QromSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 517
    iget-object v9, p0, Landroid/widget/QromSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    const/high16 v10, 0x10000000

    invoke-virtual {v9, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 519
    iget-object v9, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v9}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getDropDownAnchor()I

    move-result v9

    invoke-virtual {p0, v9}, Landroid/widget/QromSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v9

    iput-object v9, p0, Landroid/widget/QromSearchView;->mDropDownAnchor:Landroid/view/View;

    .line 520
    iget-object v9, p0, Landroid/widget/QromSearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v9, :cond_5

    .line 521
    iget-object v9, p0, Landroid/widget/QromSearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v10, Landroid/widget/QromSearchView$6;

    invoke-direct {v10, p0}, Landroid/widget/QromSearchView$6;-><init>(Landroid/widget/QromSearchView;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 531
    :cond_5
    iget-boolean v9, p0, Landroid/widget/QromSearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v9}, Landroid/widget/QromSearchView;->updateViewsVisibility(Z)V

    .line 532
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateQueryHint()V

    .line 533
    return-void

    .line 419
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v2    # "focusable":Z
    .end local v3    # "imeOptions":I
    .end local v5    # "inputType":I
    .end local v7    # "maxWidth":I
    .end local v8    # "queryHint":Ljava/lang/CharSequence;
    .restart local v6    # "mCancelBtnRippleDrawable":Lcom/tencent/qrom/drawable/QromRippleDrawable;
    :cond_6
    iget-object v9, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v9, v6}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/QromSearchView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/QromSearchView;)Landroid/widget/CursorAdapter;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/QromSearchView;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;
    .param p1, "x1"    # Z

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/QromSearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$1100(Landroid/widget/QromSearchView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onCancelClicked()V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/QromSearchView;)Landroid/app/SearchableInfo;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/QromSearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/KeyEvent;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromSearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/QromSearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/QromSearchView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$1700(Landroid/widget/QromSearchView;IILjava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/QromSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/QromSearchView;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;
    .param p1, "x1"    # I

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/QromSearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/QromSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Landroid/widget/QromSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Landroid/widget/QromSearchView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/QromSearchView;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->isChange:Z

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/QromSearchView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/QromSearchView;->currentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2200(Landroid/widget/QromSearchView;)Landroid/widget/QromStretchAnimation;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/QromSearchView;)Landroid/widget/QromSearchView$QromSearchAutoComplete;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/QromSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/QromSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/QromSearchView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/QromSearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/QromSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    iget-object v0, p0, Landroid/widget/QromSearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/QromSearchView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/QromSearchView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/QromSearchView;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/QromSearchView;

    .prologue
    .line 100
    invoke-direct {p0}, Landroid/widget/QromSearchView;->forceSuggestionQuery()V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 7

    .prologue
    .line 1519
    iget-object v4, p0, Landroid/widget/QromSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    .line 1520
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1521
    .local v3, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Landroid/widget/QromSearchView;->mSearchPlate:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 1522
    .local v0, "anchorPadding":I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1523
    .local v1, "dropDownPadding":Landroid/graphics/Rect;
    iget-boolean v4, p0, Landroid/widget/QromSearchView;->mIconifiedByDefault:Z

    if-eqz v4, :cond_1

    const v4, 0x7a0d000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    const v5, 0x7a0d000c

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    add-int v2, v4, v5

    .line 1527
    .local v2, "iconOffset":I
    :goto_0
    iget-object v4, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1528
    iget-object v4, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget v5, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v2

    neg-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1530
    iget-object v4, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v5, p0, Landroid/widget/QromSearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iget v6, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    add-int/2addr v5, v2

    sub-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setDropDownWidth(I)V

    .line 1533
    .end local v0    # "anchorPadding":I
    .end local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .end local v2    # "iconOffset":I
    .end local v3    # "res":Landroid/content/res/Resources;
    :cond_0
    return-void

    .line 1523
    .restart local v0    # "anchorPadding":I
    .restart local v1    # "dropDownPadding":Landroid/graphics/Rect;
    .restart local v3    # "res":Landroid/content/res/Resources;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private clickEvent(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 2123
    iget-object v4, p0, Landroid/widget/QromSearchView;->mainContain:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2125
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 2126
    iget-object v4, p0, Landroid/widget/QromSearchView;->mainContain:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2127
    .local v0, "child":Landroid/view/View;
    iget-object v4, p0, Landroid/widget/QromSearchView;->preView:Landroid/view/View;

    if-ne v4, v0, :cond_1

    .line 2128
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2131
    .local v3, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v4, p0, Landroid/widget/QromSearchView;->preView:Landroid/view/View;

    if-eq v4, p1, :cond_0

    .line 2132
    const/high16 v4, 0x3f800000    # 1.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2134
    :cond_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2125
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2137
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 2139
    .restart local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x0

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 2140
    iget-object v4, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    invoke-virtual {v4}, Landroid/widget/QromStretchAnimation;->getmType()Landroid/widget/QromStretchAnimation$TYPE;

    move-result-object v4

    sget-object v5, Landroid/widget/QromStretchAnimation$TYPE;->horizontal:Landroid/widget/QromStretchAnimation$TYPE;

    if-ne v4, v5, :cond_3

    .line 2141
    iget v4, p0, Landroid/widget/QromSearchView;->minSize:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 2146
    :cond_2
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 2142
    :cond_3
    iget-object v4, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    invoke-virtual {v4}, Landroid/widget/QromStretchAnimation;->getmType()Landroid/widget/QromStretchAnimation$TYPE;

    move-result-object v4

    sget-object v5, Landroid/widget/QromStretchAnimation$TYPE;->vertical:Landroid/widget/QromStretchAnimation$TYPE;

    if-ne v4, v5, :cond_2

    .line 2143
    iget v4, p0, Landroid/widget/QromSearchView;->minSize:I

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    goto :goto_2

    .line 2149
    .end local v0    # "child":Landroid/view/View;
    .end local v3    # "params":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iput-object p1, p0, Landroid/widget/QromSearchView;->preView:Landroid/view/View;

    .line 2151
    return-void
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "data"    # Landroid/net/Uri;
    .param p3, "extraData"    # Ljava/lang/String;
    .param p4, "query"    # Ljava/lang/String;
    .param p5, "actionKey"    # I
    .param p6, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1684
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1685
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1689
    if-eqz p2, :cond_0

    .line 1690
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1692
    :cond_0
    const-string v1, "user_query"

    iget-object v2, p0, Landroid/widget/QromSearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1693
    if-eqz p4, :cond_1

    .line 1694
    const-string v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1696
    :cond_1
    if-eqz p3, :cond_2

    .line 1697
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1699
    :cond_2
    iget-object v1, p0, Landroid/widget/QromSearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1700
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/widget/QromSearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1702
    :cond_3
    if-eqz p5, :cond_4

    .line 1703
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1704
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1706
    :cond_4
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1707
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .param p1, "c"    # Landroid/database/Cursor;
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1799
    :try_start_0
    const-string v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1801
    .local v1, "action":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1802
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1804
    :cond_0
    if-nez v1, :cond_1

    .line 1805
    const-string v1, "android.intent.action.SEARCH"

    .line 1809
    :cond_1
    const-string v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1810
    .local v7, "data":Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1811
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1814
    :cond_2
    if-eqz v7, :cond_3

    .line 1815
    const-string v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1816
    .local v10, "id":Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1820
    .end local v10    # "id":Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1822
    .local v2, "dataUri":Landroid/net/Uri;
    :goto_0
    const-string v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1823
    .local v4, "query":Ljava/lang/String;
    const-string v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "extraData":Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1825
    invoke-direct/range {v0 .. v6}, Landroid/widget/QromSearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1835
    .end local v1    # "action":Ljava/lang/String;
    .end local v2    # "dataUri":Landroid/net/Uri;
    .end local v3    # "extraData":Ljava/lang/String;
    .end local v4    # "query":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1820
    .restart local v1    # "action":Ljava/lang/String;
    .restart local v7    # "data":Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1826
    .end local v1    # "action":Ljava/lang/String;
    .end local v7    # "data":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1829
    .local v8, "e":Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1833
    .local v11, "rowNum":I
    :goto_2
    const-string v0, "QromSearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search Suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v8}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1835
    const/4 v0, 0x0

    goto :goto_1

    .line 1830
    .end local v11    # "rowNum":I
    :catch_1
    move-exception v9

    .line 1831
    .local v9, "e2":Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11    # "rowNum":I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1729
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1734
    .local v8, "searchActivity":Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1735
    .local v6, "queryIntent":Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1736
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1743
    .local v3, "pending":Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1748
    .local v5, "queryExtras":Landroid/os/Bundle;
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1751
    .local v9, "voiceIntent":Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1752
    .local v1, "languageModel":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1753
    .local v4, "prompt":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1754
    .local v0, "language":Ljava/lang/String;
    const/4 v2, 0x1

    .line 1756
    .local v2, "maxResults":I
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1757
    .local v7, "resources":Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_0

    .line 1758
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1760
    :cond_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1761
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1763
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1764
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1766
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1767
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1769
    :cond_3
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1770
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1771
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1772
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1773
    const-string v11, "calling_package"

    if-nez v8, :cond_4

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1777
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1778
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1780
    return-object v9

    .line 1773
    :cond_4
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .param p1, "baseIntent"    # Landroid/content/Intent;
    .param p2, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 1714
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1715
    .local v1, "voiceIntent":Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1716
    .local v0, "searchActivity":Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1718
    return-object v1

    .line 1716
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->dismissDropDown()V

    .line 1358
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 2

    .prologue
    .line 1840
    sget-object v0, Landroid/widget/QromSearchView;->HIDDEN_METHOD_INVOKER:Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->doBeforeTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1841
    sget-object v0, Landroid/widget/QromSearchView;->HIDDEN_METHOD_INVOKER:Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;

    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->doAfterTextChanged(Landroid/widget/AutoCompleteTextView;)V

    .line 1842
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .param p0, "c"    # Landroid/database/Cursor;
    .param p1, "actionKey"    # Landroid/app/SearchableInfo$ActionKeyInfo;

    .prologue
    .line 1210
    const/4 v1, 0x0

    .line 1212
    .local v1, "result":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1213
    .local v0, "column":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1214
    invoke-static {p0, v0}, Landroid/widget/QromSuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1219
    :cond_0
    if-nez v1, :cond_1

    .line 1220
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1222
    :cond_1
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "hintText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1234
    iget-boolean v1, p0, Landroid/widget/QromSearchView;->mIconifiedByDefault:Z

    if-nez v1, :cond_0

    .line 1243
    .end local p1    # "hintText":Ljava/lang/CharSequence;
    :goto_0
    return-object p1

    .line 1236
    .restart local p1    # "hintText":Ljava/lang/CharSequence;
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1237
    .local v0, "ssb":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-object p1, v0

    .line 1243
    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 893
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    .line 1226
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1227
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7a0100fd

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1229
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 919
    iget-object v3, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 920
    const/4 v1, 0x0

    .line 921
    .local v1, "testIntent":Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 922
    iget-object v1, p0, Landroid/widget/QromSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 926
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 927
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 929
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 932
    .end local v0    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v1    # "testIntent":Landroid/content/Intent;
    :cond_1
    return v2

    .line 923
    .restart local v1    # "testIntent":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 924
    iget-object v1, p0, Landroid/widget/QromSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method private initCommonData()V
    .locals 7

    .prologue
    const/16 v6, 0x64

    .line 2068
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 2069
    .local v1, "metric":Landroid/util/DisplayMetrics;
    iget-object v2, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2070
    .local v0, "manager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2071
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Landroid/widget/QromSearchView;->screentWidth:I

    .line 2072
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Landroid/widget/QromSearchView;->screentHeight:I

    .line 2073
    iget v2, v1, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Landroid/widget/QromSearchView;->screenDensity:F

    .line 2075
    iget v2, p0, Landroid/widget/QromSearchView;->screentWidth:I

    iget v3, p0, Landroid/widget/QromSearchView;->screenDensity:F

    invoke-direct {p0, v2, v3}, Landroid/widget/QromSearchView;->measureSize(IF)V

    .line 2076
    new-instance v2, Landroid/widget/QromStretchAnimation;

    iget v3, p0, Landroid/widget/QromSearchView;->maxSize:I

    iget v4, p0, Landroid/widget/QromSearchView;->minSize:I

    sget-object v5, Landroid/widget/QromStretchAnimation$TYPE;->horizontal:Landroid/widget/QromStretchAnimation$TYPE;

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/widget/QromStretchAnimation;-><init>(IILandroid/widget/QromStretchAnimation$TYPE;I)V

    iput-object v2, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    .line 2078
    iget-object v2, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/QromStretchAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 2079
    iget-object v2, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    invoke-virtual {v2, v6}, Landroid/widget/QromStretchAnimation;->setDuration(I)V

    .line 2080
    iget-object v2, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    invoke-virtual {v2, p0}, Landroid/widget/QromStretchAnimation;->setOnAnimationListener(Landroid/widget/QromStretchAnimation$AnimationListener;)V

    .line 2081
    return-void
.end method

.method private initViewData(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 2090
    const/4 v4, 0x0

    .line 2091
    .local v4, "sizeValue":I
    const/4 v3, 0x0

    .line 2092
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v5, p0, Landroid/widget/QromSearchView;->mainContain:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2093
    .local v1, "childCount":I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 2094
    :cond_0
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "index outofbounds"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 2097
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v5, v1, -0x1

    if-ge v2, v5, :cond_5

    .line 2099
    iget-object v5, p0, Landroid/widget/QromSearchView;->mainContain:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2101
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 2103
    if-ne v2, p1, :cond_3

    .line 2104
    iput-object v0, p0, Landroid/widget/QromSearchView;->preView:Landroid/view/View;

    .line 2105
    iget v4, p0, Landroid/widget/QromSearchView;->maxSize:I

    .line 2109
    :goto_1
    iget-object v5, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    invoke-virtual {v5}, Landroid/widget/QromStretchAnimation;->getmType()Landroid/widget/QromStretchAnimation$TYPE;

    move-result-object v5

    sget-object v6, Landroid/widget/QromStretchAnimation$TYPE;->horizontal:Landroid/widget/QromStretchAnimation$TYPE;

    if-ne v5, v6, :cond_4

    .line 2110
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2115
    :cond_2
    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2097
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2107
    :cond_3
    iget v4, p0, Landroid/widget/QromSearchView;->minSize:I

    goto :goto_1

    .line 2111
    :cond_4
    iget-object v5, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    invoke-virtual {v5}, Landroid/widget/QromStretchAnimation;->getmType()Landroid/widget/QromStretchAnimation$TYPE;

    move-result-object v5

    sget-object v6, Landroid/widget/QromStretchAnimation$TYPE;->vertical:Landroid/widget/QromStretchAnimation$TYPE;

    if-ne v5, v6, :cond_2

    .line 2112
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 2118
    .end local v0    # "child":Landroid/view/View;
    :cond_5
    return-void
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1845
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1639
    if-nez p1, :cond_0

    .line 1649
    :goto_0
    return-void

    .line 1645
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1646
    :catch_0
    move-exception v0

    .line 1647
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string v1, "QromSearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "actionKey"    # I
    .param p2, "actionMsg"    # Ljava/lang/String;
    .param p3, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1661
    const-string v1, "android.intent.action.SEARCH"

    .local v1, "action":Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1662
    invoke-direct/range {v0 .. v6}, Landroid/widget/QromSearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1663
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1664
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    .line 1622
    iget-object v2, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1623
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1625
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/QromSearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1628
    .local v1, "intent":Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/widget/QromSearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1630
    const/4 v2, 0x1

    .line 1632
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private measureSize(IF)V
    .locals 6
    .param p1, "layoutSize"    # I
    .param p2, "density"    # F

    .prologue
    .line 2159
    const-string v3, "QromSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "density = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    div-int/lit8 v1, p1, 0x2

    .line 2161
    .local v1, "halfWidth":I
    iget v3, p0, Landroid/widget/QromSearchView;->maxSizeOffset:I

    float-to-int v4, p2

    mul-int/2addr v3, v4

    sub-int v3, p1, v3

    iput v3, p0, Landroid/widget/QromSearchView;->maxSize:I

    .line 2162
    iget-object v3, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 2163
    .local v0, "country":Ljava/lang/String;
    const-string v3, "UK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "US"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 2164
    .local v2, "isUKorUS":Z
    :goto_0
    if-eqz v2, :cond_2

    iget v3, p0, Landroid/widget/QromSearchView;->minSizeOffset:I

    add-int/lit8 v3, v3, 0x10

    :goto_1
    float-to-int v4, p2

    mul-int/2addr v3, v4

    sub-int v3, p1, v3

    iput v3, p0, Landroid/widget/QromSearchView;->minSize:I

    .line 2165
    const-string v3, "QromSearchView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "country="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/QromSearchView;->maxSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/widget/QromSearchView;->minSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    return-void

    .line 2163
    .end local v2    # "isUKorUS":Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 2164
    .restart local v2    # "isUKorUS":Z
    :cond_2
    iget v3, p0, Landroid/widget/QromSearchView;->minSizeOffset:I

    goto :goto_1
.end method

.method private onCancelClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1363
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/QromSearchView;->isCancelClick:Z

    .line 1364
    iget-boolean v1, p0, Landroid/widget/QromSearchView;->isSearchMode:Z

    if-nez v1, :cond_3

    .line 1365
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->btnDisappearAnimator()V

    .line 1375
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1376
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1377
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1379
    :cond_1
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->clearFocus()V

    .line 1382
    iget-object v1, p0, Landroid/widget/QromSearchView;->mOnCancelClickListener:Landroid/widget/QromSearchView$onCancelClickListener;

    if-eqz v1, :cond_2

    .line 1383
    iget-object v1, p0, Landroid/widget/QromSearchView;->mOnCancelClickListener:Landroid/widget/QromSearchView$onCancelClickListener;

    invoke-interface {v1, v3}, Landroid/widget/QromSearchView$onCancelClickListener;->onClick(Z)V

    .line 1385
    :cond_2
    return-void

    .line 1368
    .end local v0    # "text":Ljava/lang/CharSequence;
    :cond_3
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1369
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1370
    iput-boolean v3, p0, Landroid/widget/QromSearchView;->isSearchClick:Z

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1389
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1390
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1391
    iget-boolean v1, p0, Landroid/widget/QromSearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 1393
    iget-object v1, p0, Landroid/widget/QromSearchView;->mOnCloseListener:Landroid/widget/QromSearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/QromSearchView;->mOnCloseListener:Landroid/widget/QromSearchView$OnCloseListener;

    invoke-interface {v1}, Landroid/widget/QromSearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1395
    :cond_0
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->clearFocus()V

    .line 1397
    invoke-direct {p0, v3}, Landroid/widget/QromSearchView;->updateViewsVisibility(Z)V

    .line 1409
    :cond_1
    :goto_0
    return-void

    .line 1401
    :cond_2
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1402
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusable(Z)V

    .line 1403
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusableInTouchMode(Z)V

    .line 1404
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->requestFocus()Z

    .line 1405
    iget-object v1, p0, Landroid/widget/QromSearchView;->mCloseButton:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1406
    invoke-direct {p0, v3}, Landroid/widget/QromSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .param p1, "position"    # I
    .param p2, "actionKey"    # I
    .param p3, "actionMsg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1536
    iget-object v1, p0, Landroid/widget/QromSearchView;->mOnSuggestionListener:Landroid/widget/QromSearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/QromSearchView;->mOnSuggestionListener:Landroid/widget/QromSearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Landroid/widget/QromSearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1538
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/QromSearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1539
    invoke-direct {p0, v0}, Landroid/widget/QromSearchView;->setImeVisibility(Z)V

    .line 1540
    invoke-direct {p0}, Landroid/widget/QromSearchView;->dismissSuggestions()V

    .line 1541
    const/4 v0, 0x1

    .line 1543
    :cond_1
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 1547
    iget-object v0, p0, Landroid/widget/QromSearchView;->mOnSuggestionListener:Landroid/widget/QromSearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/QromSearchView;->mOnSuggestionListener:Landroid/widget/QromSearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Landroid/widget/QromSearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1549
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/QromSearchView;->rewriteQueryFromSuggestion(I)V

    .line 1550
    const/4 v0, 0x1

    .line 1552
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onOffClickable(Z)V
    .locals 4
    .param p1, "isClickable"    # Z

    .prologue
    .line 2171
    iget-object v3, p0, Landroid/widget/QromSearchView;->mainContain:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    .line 2172
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-ge v2, v3, :cond_0

    .line 2173
    iget-object v3, p0, Landroid/widget/QromSearchView;->mainContain:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2174
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 2172
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2176
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void
.end method

.method private onSearchClicked()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1414
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->isSearchClick:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/QromSearchView;->isSearchMode:Z

    if-nez v0, :cond_0

    .line 1415
    iput-boolean v2, p0, Landroid/widget/QromSearchView;->isSearchClick:Z

    .line 1416
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->onAnimatorByClick()V

    .line 1419
    :cond_0
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->isSearchMode:Z

    if-eqz v0, :cond_1

    .line 1421
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1422
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1423
    iput-boolean v1, p0, Landroid/widget/QromSearchView;->isCancelClick:Z

    .line 1428
    :cond_1
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusable(Z)V

    .line 1429
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusableInTouchMode(Z)V

    .line 1430
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->requestFocus()Z

    .line 1431
    invoke-direct {p0, v1}, Landroid/widget/QromSearchView;->setImeVisibility(Z)V

    .line 1432
    iget-object v0, p0, Landroid/widget/QromSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 1433
    iget-object v0, p0, Landroid/widget/QromSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1435
    :cond_2
    return-void
.end method

.method private onSearchviewAnimatorByCancelClick()V
    .locals 0

    .prologue
    .line 1451
    return-void
.end method

.method private onSearchviewAnimatorByClick()V
    .locals 0

    .prologue
    .line 1447
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1343
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1344
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1345
    iget-object v1, p0, Landroid/widget/QromSearchView;->mOnQueryChangeListener:Landroid/widget/QromSearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/QromSearchView;->mOnQueryChangeListener:Landroid/widget/QromSearchView$OnQueryTextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/QromSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1347
    :cond_0
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1348
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/QromSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1349
    invoke-direct {p0, v3}, Landroid/widget/QromSearchView;->setImeVisibility(Z)V

    .line 1351
    :cond_1
    invoke-direct {p0}, Landroid/widget/QromSearchView;->dismissSuggestions()V

    .line 1354
    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v8, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1138
    iget-object v7, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v7, :cond_1

    .line 1195
    :cond_0
    :goto_0
    return v5

    .line 1141
    :cond_1
    iget-object v7, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v7, :cond_0

    .line 1144
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1147
    const/16 v7, 0x42

    if-eq p2, v7, :cond_2

    const/16 v7, 0x54

    if-eq p2, v7, :cond_2

    const/16 v7, 0x3d

    if-ne p2, v7, :cond_3

    .line 1149
    :cond_2
    iget-object v6, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1150
    .local v3, "position":I
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Landroid/widget/QromSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 1155
    .end local v3    # "position":I
    :cond_3
    if-eq p2, v8, :cond_4

    const/16 v7, 0x16

    if-ne p2, v7, :cond_6

    .line 1160
    :cond_4
    if-ne p2, v8, :cond_5

    move v4, v5

    .line 1162
    .local v4, "selPoint":I
    :goto_1
    iget-object v7, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setSelection(I)V

    .line 1163
    iget-object v7, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v7, v5}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setListSelection(I)V

    .line 1164
    iget-object v5, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->clearListSelection()V

    .line 1165
    sget-object v5, Landroid/widget/QromSearchView;->HIDDEN_METHOD_INVOKER:Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;

    iget-object v7, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v5, v7, v6}, Landroid/widget/QromSearchView$AutoCompleteTextViewReflector;->ensureImeVisible(Landroid/widget/AutoCompleteTextView;Z)V

    move v5, v6

    .line 1167
    goto :goto_0

    .line 1160
    .end local v4    # "selPoint":I
    :cond_5
    iget-object v7, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->length()I

    move-result v4

    goto :goto_1

    .line 1171
    :cond_6
    const/16 v6, 0x13

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getListSelection()I

    move-result v6

    if-eqz v6, :cond_0

    .line 1178
    :cond_7
    iget-object v6, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1179
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1183
    :cond_8
    iget-object v6, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1184
    .restart local v3    # "position":I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1185
    iget-object v6, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1186
    .local v2, "c":Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1187
    invoke-static {v2, v0}, Landroid/widget/QromSearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1188
    .local v1, "actionMsg":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1189
    invoke-direct {p0, v3, p2, v1}, Landroid/widget/QromSearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1324
    iget-object v4, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1325
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Landroid/widget/QromSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1326
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1327
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/QromSearchView;->updateSubmitButton(Z)V

    .line 1328
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/QromSearchView;->updateVoiceButton(Z)V

    .line 1329
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateCloseButton()V

    .line 1330
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateSubmitArea()V

    .line 1336
    iget-object v2, p0, Landroid/widget/QromSearchView;->mOnQueryChangeListener:Landroid/widget/QromSearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/QromSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1337
    iget-object v2, p0, Landroid/widget/QromSearchView;->mOnQueryChangeListener:Landroid/widget/QromSearchView$OnQueryTextListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/QromSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1339
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/QromSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1340
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v3

    .line 1326
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    move v2, v3

    .line 1328
    goto :goto_1
.end method

.method private onVoiceClicked()V
    .locals 6

    .prologue
    .line 1455
    iget-object v4, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1458
    :cond_1
    iget-object v2, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1460
    .local v2, "searchable":Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1461
    iget-object v4, p0, Landroid/widget/QromSearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/QromSearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1463
    .local v3, "webSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1469
    .end local v3    # "webSearchIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1472
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v4, "QromSearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1464
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1465
    iget-object v4, p0, Landroid/widget/QromSearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/QromSearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1467
    .local v0, "appSearchIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 978
    iget-object v0, p0, Landroid/widget/QromSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/QromSearchView;->post(Ljava/lang/Runnable;)Z

    .line 979
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 1589
    iget-object v3, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1590
    .local v2, "oldQuery":Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1591
    .local v0, "c":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1609
    :goto_0
    return-void

    .line 1594
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1596
    iget-object v3, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1597
    .local v1, "newQuery":Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1600
    invoke-direct {p0, v1}, Landroid/widget/QromSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1603
    :cond_1
    invoke-direct {p0, v2}, Landroid/widget/QromSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1607
    .end local v1    # "newQuery":Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/QromSearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 996
    if-eqz p1, :cond_1

    .line 997
    iget-object v1, p0, Landroid/widget/QromSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/QromSearchView;->post(Ljava/lang/Runnable;)Z

    .line 1007
    :cond_0
    :goto_0
    return-void

    .line 999
    :cond_1
    iget-object v1, p0, Landroid/widget/QromSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/QromSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1000
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1003
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1004
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 1655
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1657
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setSelection(I)V

    .line 1658
    return-void

    .line 1657
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 961
    iget-object v3, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 964
    .local v0, "hasText":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v3, p0, Landroid/widget/QromSearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/QromSearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_2

    .line 965
    .local v1, "showClose":Z
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/widget/QromSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 966
    iget-object v2, p0, Landroid/widget/QromSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v0, :cond_4

    sget-object v2, Landroid/widget/QromSearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 975
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "showClose":Z
    :cond_1
    move v0, v2

    .line 961
    goto :goto_0

    .restart local v0    # "hasText":Z
    :cond_2
    move v1, v2

    .line 964
    goto :goto_1

    .line 965
    .restart local v1    # "showClose":Z
    :cond_3
    const/16 v2, 0x8

    goto :goto_2

    .line 966
    :cond_4
    sget-object v2, Landroid/widget/QromSearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    .line 982
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 983
    .local v0, "focused":Z
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchPlate:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Landroid/widget/QromSearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 985
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->invalidate()V

    .line 986
    return-void

    .line 983
    :cond_0
    sget-object v1, Landroid/widget/QromSearchView;->EMPTY_STATE_SET:[I

    goto :goto_0
.end method

.method private updateQueryHint()V
    .locals 4

    .prologue
    .line 1247
    iget-object v2, p0, Landroid/widget/QromSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1248
    iget-object v2, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v3, p0, Landroid/widget/QromSearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/widget/QromSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1249
    :cond_1
    iget-object v2, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_3

    .line 1250
    const/4 v0, 0x0

    .line 1251
    .local v0, "hint":Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1252
    .local v1, "hintId":I
    if-eqz v1, :cond_2

    .line 1253
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1255
    :cond_2
    if-eqz v0, :cond_0

    .line 1256
    iget-object v2, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/widget/QromSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1259
    .end local v0    # "hint":Ljava/lang/CharSequence;
    .end local v1    # "hintId":I
    :cond_3
    iget-object v2, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const-string v3, ""

    invoke-direct {p0, v3}, Landroid/widget/QromSearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1267
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 1268
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v3, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setThreshold(I)V

    .line 1269
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v3, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setImeOptions(I)V

    .line 1270
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1273
    .local v0, "inputType":I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1276
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1277
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1278
    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    .line 1281
    :cond_0
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setInputType(I)V

    .line 1282
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1283
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1287
    :cond_1
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1288
    new-instance v1, Landroid/widget/QromSuggestionsAdapter;

    invoke-virtual {p0}, Landroid/widget/QromSearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/widget/QromSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/QromSuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/QromSearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1290
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v3, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1291
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Landroid/widget/QromSuggestionsAdapter;

    iget-boolean v3, p0, Landroid/widget/QromSearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/QromSuggestionsAdapter;->setQueryRefinement(I)V

    .line 1295
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 951
    const/16 v0, 0x8

    .line 952
    .local v0, "visibility":I
    invoke-direct {p0}, Landroid/widget/QromSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 955
    const/4 v0, 0x0

    .line 958
    :cond_0
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 940
    const/16 v0, 0x8

    .line 941
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/QromSearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/QromSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/QromSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/widget/QromSearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 943
    :cond_0
    const/4 v0, 0x0

    .line 948
    :cond_1
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7
    .param p1, "collapsed"    # Z

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 898
    iput-boolean p1, p0, Landroid/widget/QromSearchView;->mIconified:Z

    .line 900
    if-eqz p1, :cond_2

    move v1, v2

    .line 902
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v5, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    move v0, v4

    .line 903
    .local v0, "hasText":Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/widget/QromSearchView;->updateSubmitButton(Z)V

    .line 905
    iget-object v5, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_0

    .line 906
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onCancelClicked()V

    .line 910
    :cond_0
    iget-object v6, p0, Landroid/widget/QromSearchView;->mSearchEditFrame:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_4

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 911
    iget-object v6, p0, Landroid/widget/QromSearchView;->mSearchPlate:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_5

    move v5, v3

    :goto_3
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 912
    iget-object v5, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v3, v2

    :cond_1
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 913
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateCloseButton()V

    .line 914
    if-nez v0, :cond_6

    :goto_4
    invoke-direct {p0, v4}, Landroid/widget/QromSearchView;->updateVoiceButton(Z)V

    .line 915
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateSubmitArea()V

    .line 916
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_2
    move v1, v3

    .line 900
    goto :goto_0

    .restart local v1    # "visCollapsed":I
    :cond_3
    move v0, v2

    .line 902
    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_4
    move v5, v2

    .line 910
    goto :goto_2

    :cond_5
    move v5, v2

    .line 911
    goto :goto_3

    :cond_6
    move v4, v2

    .line 914
    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 2
    .param p1, "empty"    # Z

    .prologue
    .line 1304
    const/16 v0, 0x8

    .line 1305
    .local v0, "visibility":I
    iget-boolean v1, p0, Landroid/widget/QromSearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/QromSearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1306
    const/4 v0, 0x0

    .line 1310
    :cond_0
    return-void
.end method


# virtual methods
.method public animationEnd(Landroid/view/View;I)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    const/4 v3, 0x1

    .line 2181
    const-string v0, "QromSearchView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "animationEnd tpye = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2182
    if-ne p2, v3, :cond_0

    .line 2183
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->btnAppearAnimator()V

    .line 2187
    :goto_0
    return-void

    .line 2185
    :cond_0
    iput-boolean v3, p0, Landroid/widget/QromSearchView;->isSearchClick:Z

    goto :goto_0
.end method

.method public btnAppearAnimator()V
    .locals 11

    .prologue
    const/4 v7, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2192
    const-string v5, "alpha"

    new-array v6, v7, [F

    fill-array-data v6, :array_0

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    .line 2193
    .local v3, "pvalphaCancel":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v1

    .line 2194
    .local v1, "getx":F
    iget-object v5, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getWidth()I

    move-result v5

    int-to-float v0, v5

    .line 2195
    .local v0, "getWidth":F
    const-string v5, "translationX"

    new-array v6, v7, [F

    iget-object v7, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getX()F

    move-result v7

    iget-object v8, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    aput v7, v6, v9

    iget-object v7, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getX()F

    move-result v7

    aput v7, v6, v10

    invoke-static {v5, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 2198
    .local v4, "pvxCancel":Landroid/animation/PropertyValuesHolder;
    iget-object v5, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    new-array v6, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v3, v6, v9

    invoke-static {v5, v6}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 2199
    .local v2, "mObjectAnimator":Landroid/animation/ObjectAnimator;
    new-instance v5, Landroid/widget/QromSearchView$13;

    invoke-direct {v5, p0}, Landroid/widget/QromSearchView$13;-><init>(Landroid/widget/QromSearchView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2231
    new-instance v5, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v5}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2232
    const-wide/16 v5, 0xc8

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2233
    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 2234
    return-void

    .line 2192
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public btnDisappearAnimator()V
    .locals 9

    .prologue
    const/4 v5, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2237
    const-string v3, "alpha"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 2238
    .local v1, "pvalphaCancel":Landroid/animation/PropertyValuesHolder;
    const-string v3, "translationX"

    new-array v4, v5, [F

    iget-object v5, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v5

    aput v5, v4, v7

    iget-object v5, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getX()F

    move-result v5

    iget-object v6, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 2241
    .local v2, "pvxCancel":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    new-array v4, v8, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 2242
    .local v0, "mObjectAnimator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/widget/QromSearchView$14;

    invoke-direct {v3, p0}, Landroid/widget/QromSearchView$14;-><init>(Landroid/widget/QromSearchView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2272
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2273
    const-wide/16 v3, 0x64

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 2274
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 2275
    return-void

    .line 2237
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 616
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/QromSearchView;->mClearingFocus:Z

    .line 617
    invoke-direct {p0, v1}, Landroid/widget/QromSearchView;->setImeVisibility(Z)V

    .line 618
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 619
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->clearFocus()V

    .line 621
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusable(Z)V

    .line 622
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setFocusableInTouchMode(Z)V

    .line 624
    iput-boolean v1, p0, Landroid/widget/QromSearchView;->mClearingFocus:Z

    .line 625
    return-void
.end method

.method public clearSearchViewFocus()V
    .locals 1

    .prologue
    .line 349
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->clearFocus()V

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/QromSearchView;->isReturnEvent:Z

    .line 351
    return-void
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 682
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 743
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 823
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 793
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 1498
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->clearFocus()V

    .line 1499
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/QromSearchView;->updateViewsVisibility(Z)V

    .line 1500
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget v1, p0, Landroid/widget/QromSearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setImeOptions(I)V

    .line 1501
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/QromSearchView;->mExpandedInActionView:Z

    .line 1502
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1509
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1516
    :goto_0
    return-void

    .line 1511
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/QromSearchView;->mExpandedInActionView:Z

    .line 1512
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/widget/QromSearchView;->mCollapsedImeOptions:I

    .line 1513
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget v1, p0, Landroid/widget/QromSearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setImeOptions(I)V

    .line 1514
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1515
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/QromSearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method public onAnimatorByClick()V
    .locals 3

    .prologue
    .line 1439
    iget-object v0, p0, Landroid/widget/QromSearchView;->mainContain:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/QromSearchView;->currentView:Landroid/view/View;

    .line 1440
    iget-object v0, p0, Landroid/widget/QromSearchView;->currentView:Landroid/view/View;

    invoke-direct {p0, v0}, Landroid/widget/QromSearchView;->clickEvent(Landroid/view/View;)V

    .line 1442
    iget-object v0, p0, Landroid/widget/QromSearchView;->stretchanimation:Landroid/widget/QromStretchAnimation;

    iget-object v1, p0, Landroid/widget/QromSearchView;->currentView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/QromStretchAnimation;->startAnimation(Landroid/view/View;I)V

    .line 1443
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 2280
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2281
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 990
    iget-object v0, p0, Landroid/widget/QromSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/QromSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 991
    iget-object v0, p0, Landroid/widget/QromSearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/QromSearchView;->post(Ljava/lang/Runnable;)Z

    .line 992
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 993
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1065
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    .line 1066
    const/4 v1, 0x0

    .line 1078
    :goto_0
    return v1

    .line 1071
    :cond_0
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1072
    .local v0, "actionKey":Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1073
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/QromSearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1075
    const/4 v1, 0x1

    goto :goto_0

    .line 1078
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 860
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 861
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 890
    :goto_0
    return-void

    .line 865
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 866
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 868
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 888
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 889
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 871
    :sswitch_0
    iget v2, p0, Landroid/widget/QromSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 872
    iget v2, p0, Landroid/widget/QromSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 874
    :cond_2
    invoke-direct {p0}, Landroid/widget/QromSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 876
    goto :goto_1

    .line 879
    :sswitch_1
    iget v2, p0, Landroid/widget/QromSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 880
    iget v2, p0, Landroid/widget/QromSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 885
    :sswitch_2
    iget v2, p0, Landroid/widget/QromSearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Landroid/widget/QromSearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/widget/QromSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 868
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "queryText"    # Ljava/lang/CharSequence;

    .prologue
    .line 1014
    invoke-direct {p0, p1}, Landroid/widget/QromSearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 1015
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1480
    invoke-direct {p0}, Landroid/widget/QromSearchView;->postUpdateFocusedState()V

    .line 1481
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1482
    invoke-direct {p0}, Landroid/widget/QromSearchView;->forceSuggestionQuery()V

    .line 1484
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 1488
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1490
    invoke-direct {p0}, Landroid/widget/QromSearchView;->postUpdateFocusedState()V

    .line 1491
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v0, 0x0

    .line 597
    iget-boolean v1, p0, Landroid/widget/QromSearchView;->mClearingFocus:Z

    if-eqz v1, :cond_1

    .line 609
    :cond_0
    :goto_0
    return v0

    .line 599
    :cond_1
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_2

    .line 602
    iget-object v1, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v1, p1, p2}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 603
    .local v0, "result":Z
    if-eqz v0, :cond_0

    goto :goto_0

    .line 609
    .end local v0    # "result":Z
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public requestSearchViewFocus()V
    .locals 0

    .prologue
    .line 354
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->requestFocus()Z

    .line 355
    return-void
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "appSearchData"    # Landroid/os/Bundle;

    .prologue
    .line 566
    iput-object p1, p0, Landroid/widget/QromSearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 567
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 757
    if-eqz p1, :cond_0

    .line 758
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onCloseClicked()V

    .line 762
    :goto_0
    return-void

    .line 760
    :cond_0
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 732
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 736
    :goto_0
    return-void

    .line 733
    :cond_0
    iput-boolean p1, p0, Landroid/widget/QromSearchView;->mIconifiedByDefault:Z

    .line 734
    invoke-direct {p0, p1}, Landroid/widget/QromSearchView;->updateViewsVisibility(Z)V

    .line 735
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 578
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setImeOptions(I)V

    .line 579
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 590
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setInputType(I)V

    .line 591
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 852
    iput p1, p0, Landroid/widget/QromSearchView;->mMaxWidth:I

    .line 854
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->requestLayout()V

    .line 855
    return-void
.end method

.method public setOnCancelClickListener(Landroid/widget/QromSearchView$onCancelClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/QromSearchView$onCancelClickListener;

    .prologue
    .line 256
    iput-object p1, p0, Landroid/widget/QromSearchView;->mOnCancelClickListener:Landroid/widget/QromSearchView$onCancelClickListener;

    .line 257
    return-void
.end method

.method public setOnCloseListener(Landroid/widget/QromSearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/QromSearchView$OnCloseListener;

    .prologue
    .line 643
    iput-object p1, p0, Landroid/widget/QromSearchView;->mOnCloseListener:Landroid/widget/QromSearchView$OnCloseListener;

    .line 644
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 652
    iput-object p1, p0, Landroid/widget/QromSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 653
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/QromSearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/QromSearchView$OnQueryTextListener;

    .prologue
    .line 634
    iput-object p1, p0, Landroid/widget/QromSearchView;->mOnQueryChangeListener:Landroid/widget/QromSearchView$OnQueryTextListener;

    .line 635
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 673
    iput-object p1, p0, Landroid/widget/QromSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 674
    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/QromSearchView$OnSuggestionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/widget/QromSearchView$OnSuggestionListener;

    .prologue
    .line 661
    iput-object p1, p0, Landroid/widget/QromSearchView;->mOnSuggestionListener:Landroid/widget/QromSearchView$OnSuggestionListener;

    .line 662
    return-void
.end method

.method public setOpenFoucusable(Z)V
    .locals 0
    .param p1, "isFouces"    # Z

    .prologue
    .line 261
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 694
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 695
    if-eqz p1, :cond_0

    .line 696
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setSelection(I)V

    .line 697
    iput-object p1, p0, Landroid/widget/QromSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 701
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 702
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onSubmitQuery()V

    .line 704
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 715
    iput-object p1, p0, Landroid/widget/QromSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 716
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateQueryHint()V

    .line 717
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 811
    iput-boolean p1, p0, Landroid/widget/QromSearchView;->mQueryRefinement:Z

    .line 812
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Landroid/widget/QromSuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 813
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Landroid/widget/QromSuggestionsAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/QromSuggestionsAdapter;->setQueryRefinement(I)V

    .line 816
    :cond_0
    return-void

    .line 813
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchCancleBtnByDefault()V
    .locals 2

    .prologue
    .line 312
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 315
    :cond_0
    return-void
.end method

.method public setSearchEditBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 296
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchPlate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 297
    return-void
.end method

.method public setSearchEditBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 292
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchPlate:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 293
    return-void
.end method

.method public setSearchEditTextHint(I)V
    .locals 0
    .param p1, "resid"    # I

    .prologue
    .line 289
    return-void
.end method

.method public setSearchEditTextHint(Ljava/lang/String;)V
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 285
    return-void
.end method

.method public setSearchViewBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 269
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_0

    .line 270
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :goto_0
    return-void

    .line 273
    :cond_0
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setSearchViewBackgroundColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 280
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 281
    return-void
.end method

.method public setSearchViewBackgroundResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 264
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 266
    return-void
.end method

.method public setSearchViewDefaultStatus()V
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onCancelClicked()V

    .line 303
    :cond_0
    return-void
.end method

.method public setSearchViewEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 345
    iput-boolean p1, p0, Landroid/widget/QromSearchView;->isEnable:Z

    .line 346
    return-void
.end method

.method public setSearchViewHeightAndMargin(III)V
    .locals 3
    .param p1, "height"    # I
    .param p2, "topMargin"    # I
    .param p3, "bottomMargin"    # I

    .prologue
    const/4 v2, 0x0

    .line 337
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 338
    .local v0, "para":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v1, p0, Landroid/widget/QromSearchView;->mSearchBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, p2, v2, p3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 340
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->requestLayout()V

    .line 341
    return-void
.end method

.method public setSearchViewIsChange(Z)V
    .locals 0
    .param p1, "change"    # Z

    .prologue
    .line 318
    iput-boolean p1, p0, Landroid/widget/QromSearchView;->isChange:Z

    .line 319
    return-void
.end method

.method public setSearchViewThemeDarkToLight()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 323
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchBar:Landroid/widget/LinearLayout;

    const v1, 0x7a0202a8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 324
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchPlate:Landroid/widget/LinearLayout;

    iget-object v1, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0b0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 326
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v1, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setTextColor(I)V

    .line 327
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v1, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0b0026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setHintTextColor(I)V

    .line 328
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchCancelButton:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0b002d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 330
    iget-object v0, p0, Landroid/widget/QromSearchView;->mCloseButton:Landroid/widget/ImageView;

    const v1, 0x7a020211

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 331
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v1, p0, Landroid/widget/QromSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a020122

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 333
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const v1, 0x7a0201ff

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->qromSetCursorDrawableRes(I)V

    .line 334
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .param p1, "searchable"    # Landroid/app/SearchableInfo;

    .prologue
    .line 544
    iput-object p1, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 545
    iget-object v0, p0, Landroid/widget/QromSearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 546
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateSearchAutoComplete()V

    .line 547
    invoke-direct {p0}, Landroid/widget/QromSearchView;->updateQueryHint()V

    .line 550
    :cond_0
    invoke-direct {p0}, Landroid/widget/QromSearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/QromSearchView;->mVoiceButtonEnabled:Z

    .line 552
    iget-boolean v0, p0, Landroid/widget/QromSearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 555
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 557
    :cond_1
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/QromSearchView;->updateViewsVisibility(Z)V

    .line 558
    return-void
.end method

.method public setShowSearchMode()V
    .locals 1

    .prologue
    .line 306
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/QromSearchView;->isSearchMode:Z

    .line 307
    invoke-direct {p0}, Landroid/widget/QromSearchView;->onSearchClicked()V

    .line 308
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 783
    iput-boolean p1, p0, Landroid/widget/QromSearchView;->mSubmitButtonEnabled:Z

    .line 784
    invoke-virtual {p0}, Landroid/widget/QromSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/QromSearchView;->updateViewsVisibility(Z)V

    .line 785
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/CursorAdapter;

    .prologue
    .line 833
    iput-object p1, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 835
    iget-object v0, p0, Landroid/widget/QromSearchView;->mQueryTextView:Landroid/widget/QromSearchView$QromSearchAutoComplete;

    iget-object v1, p0, Landroid/widget/QromSearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/QromSearchView$QromSearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 836
    return-void
.end method
