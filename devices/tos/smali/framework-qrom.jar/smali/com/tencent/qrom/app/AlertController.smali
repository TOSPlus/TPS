.class public Lcom/tencent/qrom/app/AlertController;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/AlertController$4;,
        Lcom/tencent/qrom/app/AlertController$AlertParams;,
        Lcom/tencent/qrom/app/AlertController$RecycleListView;,
        Lcom/tencent/qrom/app/AlertController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final DEFAULT_ANIMATION_DELAY_TIME:I = 0x3c

.field private static final DEFAULT_ANIMATION_DUR:I = 0xa0

.field private static final DEFAULT_ANIMATION_SHORT_DELAY_TIME:I = 0x1e

.field private static final DEFAULT_ANIMATION_SHORT_DUR:I = 0x82

.field private static final DEFAULT_ITEM_COUNT:I = 0x3

.field private static final DEFAULT_LISTITEM_COUNT:I = 0x6

.field private static mBottomButtonAnimationDelayTime:I

.field private static mBottomButtonAnimationDur:I

.field private static mBottomButtonAnimationShortDelayTime:I

.field private static mBottomButtonAnimationShortDur:I

.field private static mListItemHeight:I

.field private static mListSpace:I

.field private static paddingLeft:I

.field private static paddingRight:I


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

.field private mBottomButtonAdapter:Landroid/widget/ListAdapter;

.field private mBottomButtonCheckedItem:I

.field private mBottomButtonItemLayout:I

.field private mBottomButtonItems:[Ljava/lang/CharSequence;

.field private mBottomButtonLayout:I

.field private mBottomButtonMultiChoiceItemLayout:I

.field private mBottomButtonSingleChoiceItemLayout:I

.field private mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

.field private mBottomButtonsPanel:Landroid/widget/LinearLayout;

.field private mBottomButtonsVisible:Z

.field private mButtonBGSet:Z

.field mButtonHandler:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field private mCheckedItem:I

.field private final mContext:Landroid/content/Context;

.field private mCustomTitleView:Landroid/view/View;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mForceInverseBackground:Z

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconId:I

.field private mIconView:Landroid/widget/ImageView;

.field private mIsBottomDialog:Z

.field public mIsContextMenu:Z

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Lcom/tencent/qrom/widget/ListView;

.field private mListViewHeight:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMsgSpacer:Landroid/view/View;

.field private mMultiChoiceItemLayout:I

.field private mNegativeColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field private mNeutralColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field private mPositiveColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

.field private mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

.field private mSingleChoiceItemLayout:I

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private mViewSpacingBottom:I

.field private mViewSpacingLeft:I

.field private mViewSpacingRight:I

.field private mViewSpacingSpecified:Z

.field private mViewSpacingTop:I

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 187
    const/16 v0, 0xa0

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDur:I

    .line 188
    const/16 v0, 0x3c

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDelayTime:I

    .line 189
    const/16 v0, 0x82

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDur:I

    .line 190
    const/16 v0, 0x1e

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDelayTime:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    .line 264
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V

    .line 265
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;
    .param p4, "isBottomDialog"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v1, p0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingSpecified:Z

    .line 132
    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mIconId:I

    .line 151
    iput-boolean v1, p0, Lcom/tencent/qrom/app/AlertController;->mIsContextMenu:Z

    .line 152
    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mListViewHeight:I

    .line 157
    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mCheckedItem:I

    .line 171
    iput-boolean v2, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsVisible:Z

    .line 176
    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonCheckedItem:I

    .line 177
    iput-boolean v1, p0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    .line 197
    new-instance v0, Lcom/tencent/qrom/app/AlertController$1;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/app/AlertController$1;-><init>(Lcom/tencent/qrom/app/AlertController;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 268
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    .line 269
    iput-object p2, p0, Lcom/tencent/qrom/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 270
    iput-object p3, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    .line 271
    new-instance v0, Lcom/tencent/qrom/app/AlertController$ButtonHandler;

    invoke-direct {v0, p2}, Lcom/tencent/qrom/app/AlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mHandler:Landroid/os/Handler;

    .line 274
    const v0, 0x7a030052

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mAlertDialogLayout:I

    .line 275
    const v0, 0x7a030065

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mListLayout:I

    .line 276
    const v0, 0x7a03006a

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mMultiChoiceItemLayout:I

    .line 277
    const v0, 0x7a03006b

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mSingleChoiceItemLayout:I

    .line 278
    const v0, 0x7a030069

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mListItemLayout:I

    .line 280
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    .line 281
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    .line 282
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d003d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    .line 283
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0d005e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    sput v0, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    .line 285
    const v0, 0x7a030014

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonLayout:I

    .line 286
    const v0, 0x7a030015

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonItemLayout:I

    .line 287
    const v0, 0x7a030017

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonSingleChoiceItemLayout:I

    .line 288
    const v0, 0x7a030016

    iput v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonMultiChoiceItemLayout:I

    .line 289
    iput-boolean p4, p0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    .line 290
    iput-boolean v2, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsVisible:Z

    .line 292
    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/tencent/qrom/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 294
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0c001b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDur:I

    .line 295
    sget v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDur:I

    if-ge v0, v2, :cond_0

    .line 296
    const/16 v0, 0xa0

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDur:I

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0c001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDur:I

    .line 299
    sget v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDur:I

    if-ge v0, v2, :cond_1

    .line 300
    const/16 v0, 0x82

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDur:I

    .line 302
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0c001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDelayTime:I

    .line 304
    sget v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDelayTime:I

    if-ge v0, v2, :cond_2

    .line 305
    const/16 v0, 0x3c

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDelayTime:I

    .line 307
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0c001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDelayTime:I

    .line 309
    sget v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDelayTime:I

    if-ge v0, v2, :cond_3

    .line 310
    const/16 v0, 0x1e

    sput v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDelayTime:I

    .line 312
    :cond_3
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Landroid/widget/TextView;
    .param p2, "x2"    # I

    .prologue
    .line 82
    invoke-static {p0, p1, p2}, Lcom/tencent/qrom/app/AlertController;->setButtonColor(Landroid/content/Context;Landroid/widget/TextView;I)V

    return-void
.end method

.method static synthetic access$1100(Landroid/view/View;IIZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 82
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/app/AlertController;->setListBackground(Landroid/view/View;IIZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/app/AlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$1300(Lcom/tencent/qrom/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/app/AlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1400(Lcom/tencent/qrom/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/app/AlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1500(Lcom/tencent/qrom/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/app/AlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1602(Lcom/tencent/qrom/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1702(Lcom/tencent/qrom/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/tencent/qrom/app/AlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1802(Lcom/tencent/qrom/app/AlertController;Lcom/tencent/qrom/widget/ListView;)Lcom/tencent/qrom/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;
    .param p1, "x1"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/tencent/qrom/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonLayout:I

    return v0
.end method

.method static synthetic access$200(Lcom/tencent/qrom/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/tencent/qrom/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonMultiChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$2100(Lcom/tencent/qrom/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$2200(Lcom/tencent/qrom/app/AlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonItemLayout:I

    return v0
.end method

.method static synthetic access$2302(Lcom/tencent/qrom/app/AlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$2402(Lcom/tencent/qrom/app/AlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonCheckedItem:I

    return p1
.end method

.method static synthetic access$2500(Landroid/view/ViewGroup;I)V
    .locals 0
    .param p0, "x0"    # Landroid/view/ViewGroup;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-static {p0, p1}, Lcom/tencent/qrom/app/AlertController;->setBottomButtonsStartAnimation(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method static synthetic access$2602(Lcom/tencent/qrom/app/AlertController;Lcom/tencent/qrom/widget/ListView;)Lcom/tencent/qrom/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;
    .param p1, "x1"    # Lcom/tencent/qrom/widget/ListView;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/app/AlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/app/AlertController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/app/AlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/app/AlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/app/AlertController;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonItems:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 317
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    :goto_0
    return v2

    .line 321
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 322
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 325
    check-cast v1, Landroid/view/ViewGroup;

    .line 326
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 327
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 328
    add-int/lit8 v0, v0, -0x1

    .line 329
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 330
    invoke-static {p0}, Lcom/tencent/qrom/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 335
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 1071
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 1072
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1073
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 1074
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1075
    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7a09009c

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1076
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1077
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1079
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7a09009d

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1080
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 1081
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1083
    :cond_1
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;Landroid/widget/LinearLayout;Z)V
    .locals 24
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "a"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;
    .param p8, "bottomButtonsPanel"    # Landroid/widget/LinearLayout;
    .param p9, "hasBottomButtons"    # Z

    .prologue
    .line 1112
    const/16 v21, 0x0

    const v22, 0x7a0200ca

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 1114
    .local v9, "fullDark":I
    const/16 v21, 0x1

    const v22, 0x7a0200ce

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 1116
    .local v18, "topDark":I
    const/16 v21, 0x2

    const v22, 0x7a0200cc

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 1118
    .local v7, "centerDark":I
    const/16 v21, 0x3

    const v22, 0x7a0200b8

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 1120
    .local v4, "bottomDark":I
    const/16 v21, 0x4

    const v22, 0x7a0200cb

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 1122
    .local v8, "fullBright":I
    const/16 v21, 0x5

    const v22, 0x7a0200cf

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v17

    .line 1124
    .local v17, "topBright":I
    const/16 v21, 0x6

    const v22, 0x7a0200cd

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1126
    .local v6, "centerBright":I
    const/16 v21, 0x7

    const v22, 0x7a0200b9

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1128
    .local v3, "bottomBright":I
    const/16 v21, 0x8

    const v22, 0x7a0200cd

    move-object/from16 v0, p5

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1131
    .local v5, "bottomMedium":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/app/AlertController;->mIsContextMenu:Z

    move/from16 v21, v0

    if-eqz v21, :cond_0

    .line 1132
    const v17, 0x7a0200b7

    .line 1133
    move/from16 v18, v17

    .line 1146
    :cond_0
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v20, v0

    .line 1147
    .local v20, "views":[Landroid/view/View;
    const/16 v21, 0x5

    move/from16 v0, v21

    new-array v12, v0, [Z

    .line 1148
    .local v12, "light":[Z
    const/4 v11, 0x0

    .line 1149
    .local v11, "lastView":Landroid/view/View;
    const/4 v10, 0x0

    .line 1151
    .local v10, "lastLight":Z
    const/4 v14, 0x0

    .line 1152
    .local v14, "pos":I
    if-eqz p6, :cond_1

    .line 1153
    aput-object p1, v20, v14

    .line 1154
    const/16 v21, 0x0

    aput-boolean v21, v12, v14

    .line 1155
    add-int/lit8 v14, v14, 0x1

    .line 1163
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v21

    const/16 v22, 0x8

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_2
    aput-object p2, v20, v14

    .line 1164
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_6

    const/16 v21, 0x1

    :goto_0
    aput-boolean v21, v12, v14

    .line 1165
    add-int/lit8 v14, v14, 0x1

    .line 1166
    if-eqz p3, :cond_3

    .line 1167
    aput-object p3, v20, v14

    .line 1168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/app/AlertController;->mForceInverseBackground:Z

    move/from16 v21, v0

    aput-boolean v21, v12, v14

    .line 1169
    add-int/lit8 v14, v14, 0x1

    .line 1171
    :cond_3
    if-eqz p9, :cond_4

    .line 1172
    aput-object p8, v20, v14

    .line 1173
    const/16 v21, 0x1

    aput-boolean v21, v12, v14

    .line 1174
    add-int/lit8 v14, v14, 0x1

    .line 1176
    :cond_4
    if-eqz p4, :cond_5

    .line 1177
    aput-object p7, v20, v14

    .line 1178
    const/16 v21, 0x1

    aput-boolean v21, v12, v14

    .line 1181
    :cond_5
    const/16 v16, 0x0

    .line 1182
    .local v16, "setView":Z
    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v14, v0, :cond_c

    .line 1183
    aget-object v19, v20, v14

    .line 1184
    .local v19, "v":Landroid/view/View;
    if-nez v19, :cond_7

    .line 1182
    :goto_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 1164
    .end local v16    # "setView":Z
    .end local v19    # "v":Landroid/view/View;
    :cond_6
    const/16 v21, 0x0

    goto :goto_0

    .line 1187
    .restart local v16    # "setView":Z
    .restart local v19    # "v":Landroid/view/View;
    :cond_7
    if-eqz v11, :cond_8

    .line 1188
    if-nez v16, :cond_a

    .line 1189
    if-eqz v10, :cond_9

    move/from16 v21, v17

    :goto_3
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1193
    :goto_4
    const/16 v16, 0x1

    .line 1195
    :cond_8
    move-object/from16 v11, v19

    .line 1196
    aget-boolean v10, v12, v14

    goto :goto_2

    :cond_9
    move/from16 v21, v18

    .line 1189
    goto :goto_3

    .line 1191
    :cond_a
    if-eqz v10, :cond_b

    move/from16 v21, v6

    :goto_5
    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_4

    :cond_b
    move/from16 v21, v7

    goto :goto_5

    .line 1199
    .end local v19    # "v":Landroid/view/View;
    :cond_c
    if-eqz v11, :cond_e

    .line 1200
    if-eqz v16, :cond_13

    .line 1204
    if-eqz v10, :cond_12

    if-eqz p4, :cond_11

    move v15, v5

    .line 1205
    .local v15, "resId":I
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/app/AlertController;->mIsContextMenu:Z

    move/from16 v21, v0

    if-eqz v21, :cond_d

    const v15, 0x7a0200b6

    .line 1206
    :cond_d
    invoke-virtual {v11, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1208
    if-eqz p4, :cond_e

    .line 1209
    const/16 v21, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1243
    .end local v8    # "fullBright":I
    .end local v15    # "resId":I
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1245
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/AlertController;->mCheckedItem:I

    move/from16 v21, v0

    const/16 v22, -0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_f

    .line 1246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/AlertController;->mCheckedItem:I

    move/from16 v22, v0

    const/16 v23, 0x1

    invoke-virtual/range {v21 .. v23}, Lcom/tencent/qrom/widget/ListView;->setItemChecked(IZ)V

    .line 1247
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/AlertController;->mCheckedItem:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    .line 1250
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    move/from16 v21, v0

    if-eqz v21, :cond_10

    .line 1251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    move-object/from16 v21, v0

    const v22, 0x7a09005d

    invoke-virtual/range {v21 .. v22}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    .line 1252
    .local v13, "parent":Landroid/view/ViewGroup;
    if-eqz v13, :cond_10

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x7a0202dd

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1256
    .end local v13    # "parent":Landroid/view/ViewGroup;
    :cond_10
    return-void

    .restart local v8    # "fullBright":I
    :cond_11
    move v15, v3

    .line 1204
    goto/16 :goto_6

    :cond_12
    move v15, v4

    goto/16 :goto_6

    .line 1214
    :cond_13
    if-eqz v10, :cond_14

    .end local v8    # "fullBright":I
    :goto_8
    invoke-virtual {v11, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_7

    .restart local v8    # "fullBright":I
    :cond_14
    move v8, v9

    goto :goto_8
.end method

.method private static setBottomButtonsStartAnimation(Landroid/view/ViewGroup;I)V
    .locals 11
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "count"    # I

    .prologue
    const/4 v10, 0x3

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1833
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1836
    .local v0, "animation":Landroid/view/animation/Animation;
    if-le p1, v10, :cond_0

    .line 1837
    sget v1, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDur:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1841
    :goto_0
    new-instance v9, Landroid/view/animation/LayoutAnimationController;

    invoke-direct {v9, v0}, Landroid/view/animation/LayoutAnimationController;-><init>(Landroid/view/animation/Animation;)V

    .line 1842
    .local v9, "controller":Landroid/view/animation/LayoutAnimationController;
    if-le p1, v10, :cond_1

    .line 1843
    sget v1, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDelayTime:I

    int-to-float v1, v1

    sget v2, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationShortDur:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v9, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    .line 1847
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/view/animation/LayoutAnimationController;->setOrder(I)V

    .line 1848
    invoke-virtual {p0, v9}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    .line 1849
    return-void

    .line 1839
    .end local v9    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_0
    sget v1, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDur:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    .line 1845
    .restart local v9    # "controller":Landroid/view/animation/LayoutAnimationController;
    :cond_1
    sget v1, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDelayTime:I

    int-to-float v1, v1

    sget v2, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAnimationDur:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v9, v1}, Landroid/view/animation/LayoutAnimationController;->setDelay(F)V

    goto :goto_1
.end method

.method private static setButtonColor(Landroid/content/Context;Landroid/widget/TextView;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "color"    # I

    .prologue
    const v1, 0x7a0b005c

    .line 1757
    packed-switch p2, :pswitch_data_0

    .line 1771
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1775
    :goto_0
    return-void

    .line 1759
    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1763
    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0b0018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1767
    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0b0019

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 1757
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static setListBackground(Landroid/view/View;IIZZ)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "hasTitle"    # Z
    .param p4, "hasButton"    # Z

    .prologue
    .line 1780
    const/4 v1, 0x0

    .line 1781
    .local v1, "paddingTop":I
    const/4 v0, 0x0

    .line 1782
    .local v0, "paddingBottom":I
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 1783
    add-int/lit8 v2, p2, -0x1

    if-ne p1, v2, :cond_0

    .line 1785
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1786
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    sget v4, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1828
    :goto_0
    return-void

    .line 1789
    :cond_0
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1790
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1792
    :cond_1
    if-nez p3, :cond_3

    if-eqz p4, :cond_3

    .line 1793
    if-nez p1, :cond_2

    .line 1795
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1796
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    add-int/2addr v3, v1

    sget v4, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1799
    :cond_2
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1800
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1802
    :cond_3
    if-nez p3, :cond_7

    if-nez p4, :cond_7

    .line 1803
    const/4 v2, 0x1

    if-le p2, v2, :cond_6

    .line 1804
    if-nez p1, :cond_4

    .line 1806
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1807
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    add-int/2addr v3, v1

    sget v4, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    invoke-virtual {p0, v2, v3, v4, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1808
    :cond_4
    add-int/lit8 v2, p2, -0x1

    if-ne p1, v2, :cond_5

    .line 1810
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1811
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    sget v4, Lcom/tencent/qrom/app/AlertController;->mListSpace:I

    add-int/2addr v4, v0

    invoke-virtual {p0, v2, v1, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1814
    :cond_5
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1815
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1819
    :cond_6
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1820
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    .line 1825
    :cond_7
    sget v2, Lcom/tencent/qrom/app/AlertController;->mListItemHeight:I

    invoke-virtual {p0, v2}, Landroid/view/View;->setMinimumHeight(I)V

    .line 1826
    sget v2, Lcom/tencent/qrom/app/AlertController;->paddingLeft:I

    sget v3, Lcom/tencent/qrom/app/AlertController;->paddingRight:I

    invoke-virtual {p0, v2, v1, v3, v0}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_0
.end method

.method private setupBottomButtons(Landroid/widget/LinearLayout;)Z
    .locals 5
    .param p1, "bottomButtonsPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v4, -0x1

    .line 1087
    const/4 v0, 0x0

    .line 1088
    .local v0, "hasButtons":Z
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    if-eqz v1, :cond_0

    .line 1089
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1090
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1092
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1095
    const/4 v0, 0x1

    .line 1096
    iget v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonCheckedItem:I

    if-le v1, v4, :cond_0

    .line 1097
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    iget v2, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonCheckedItem:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qrom/widget/ListView;->setItemChecked(IZ)V

    .line 1098
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    iget v2, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonCheckedItem:I

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    .line 1102
    :cond_0
    return v0
.end method

.method private setupButtons()Z
    .locals 14

    .prologue
    const/16 v13, 0xf

    const/16 v12, 0x8

    const v11, 0x7a020203

    const v9, 0x7a020209

    const v10, 0x7a020205

    .line 890
    const/4 v2, 0x1

    .line 891
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 892
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 893
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v6, 0x0

    .line 894
    .local v6, "whichButtons":I
    const/4 v4, 0x0

    .line 895
    .local v4, "buttonCount":I
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a09006a

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 897
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 899
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_5

    .line 900
    :cond_0
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 911
    :goto_0
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a090069

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 913
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 915
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_7

    .line 916
    :cond_1
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 929
    :goto_1
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a09006b

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 931
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getVisibility()I

    move-result v7

    if-ne v7, v12, :cond_9

    .line 934
    :cond_2
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v12}, Landroid/widget/Button;->setVisibility(I)V

    .line 944
    :goto_2
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/tencent/qrom/app/AlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 949
    if-ne v6, v2, :cond_a

    .line 950
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/tencent/qrom/app/AlertController;->centerButton(Landroid/widget/Button;)V

    .line 959
    :cond_3
    :goto_3
    iget-boolean v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonBGSet:Z

    if-nez v7, :cond_4

    .line 960
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7a0a0019

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 961
    .local v3, "bRipple":Z
    packed-switch v4, :pswitch_data_0

    .line 1067
    .end local v3    # "bRipple":Z
    :cond_4
    :goto_4
    if-eqz v6, :cond_1b

    const/4 v7, 0x1

    :goto_5
    return v7

    .line 902
    :cond_5
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 903
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 905
    :cond_6
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mPositiveColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    invoke-virtual {p0, v7, v8}, Lcom/tencent/qrom/app/AlertController;->setButtonColor(Landroid/widget/Button;Lcom/tencent/qrom/app/AlertDialog$ButtonColor;)V

    .line 906
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 907
    or-int/2addr v6, v2

    .line 908
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 918
    :cond_7
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 919
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 921
    :cond_8
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 922
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mNegativeColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    invoke-virtual {p0, v7, v8}, Lcom/tencent/qrom/app/AlertController;->setButtonColor(Landroid/widget/Button;Lcom/tencent/qrom/app/AlertDialog$ButtonColor;)V

    .line 923
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 925
    or-int/2addr v6, v0

    .line 926
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 936
    :cond_9
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 937
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mNeutralColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    invoke-virtual {p0, v7, v8}, Lcom/tencent/qrom/app/AlertController;->setButtonColor(Landroid/widget/Button;Lcom/tencent/qrom/app/AlertDialog$ButtonColor;)V

    .line 938
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 940
    or-int/2addr v6, v1

    .line 941
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 951
    :cond_a
    if-ne v6, v0, :cond_b

    .line 952
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/tencent/qrom/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 953
    :cond_b
    if-ne v6, v1, :cond_3

    .line 954
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v7}, Lcom/tencent/qrom/app/AlertController;->centerButton(Landroid/widget/Button;)V

    goto/16 :goto_3

    .line 963
    .restart local v3    # "bRipple":Z
    :pswitch_0
    const/4 v5, 0x0

    .line 964
    .local v5, "onlyBtn":Landroid/widget/Button;
    if-ne v6, v2, :cond_d

    .line 965
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 971
    :cond_c
    :goto_6
    if-eqz v5, :cond_4

    .line 974
    if-eqz v3, :cond_10

    .line 975
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v13, :cond_f

    .line 976
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 966
    :cond_d
    if-ne v6, v0, :cond_e

    .line 967
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_6

    .line 968
    :cond_e
    if-ne v6, v1, :cond_c

    .line 969
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_6

    .line 979
    :cond_f
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v7, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 982
    :cond_10
    invoke-virtual {v5, v11}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 987
    .end local v5    # "onlyBtn":Landroid/widget/Button;
    :pswitch_1
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 990
    if-eqz v3, :cond_12

    .line 991
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v13, :cond_11

    .line 992
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 993
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 996
    :cond_11
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 997
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1000
    :cond_12
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1001
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1004
    :cond_13
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 1007
    if-eqz v3, :cond_15

    .line 1008
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v13, :cond_14

    .line 1009
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1010
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1013
    :cond_14
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1014
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1017
    :cond_15
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1018
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1021
    :cond_16
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1025
    if-eqz v3, :cond_18

    .line 1026
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v13, :cond_17

    .line 1027
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1028
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1031
    :cond_17
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1032
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1035
    :cond_18
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1036
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1044
    :pswitch_2
    if-eqz v3, :cond_1a

    .line 1045
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v7, v13, :cond_19

    .line 1046
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1047
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a020207

    invoke-static {v8, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1048
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1051
    :cond_19
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1052
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a020207

    invoke-static {v8, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1053
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v8, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 1056
    :cond_1a
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v7, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1057
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    const v8, 0x7a020207

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1058
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_4

    .line 1067
    .end local v3    # "bRipple":Z
    :cond_1b
    const/4 v7, 0x0

    goto/16 :goto_5

    .line 961
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private setupContent(Landroid/widget/LinearLayout;)V
    .locals 14
    .param p1, "contentPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v13, 0x6

    const/4 v12, -0x2

    const/16 v11, 0x8

    const/4 v9, -0x1

    const/4 v10, 0x0

    .line 804
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a090065

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/tencent/qrom/widget/QromScrollView;

    iput-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    .line 807
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v7, v10}, Lcom/tencent/qrom/widget/QromScrollView;->setFocusable(Z)V

    .line 808
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v7, v10}, Lcom/tencent/qrom/widget/QromScrollView;->setHeaderHeight(I)V

    .line 809
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v7, v10}, Lcom/tencent/qrom/widget/QromScrollView;->setFooterHeight(I)V

    .line 811
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a090038

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    .line 814
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a0900fc

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMsgSpacer:Landroid/view/View;

    .line 816
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-nez v7, :cond_1

    .line 870
    :cond_0
    :goto_0
    return-void

    .line 820
    :cond_1
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v7, :cond_4

    .line 821
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 822
    iget-boolean v7, p0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    if-eqz v7, :cond_2

    .line 823
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a0f00c4

    invoke-virtual {v7, v8, v9}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 826
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 828
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 829
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 830
    .local v1, "lineCount":I
    const/4 v7, 0x1

    if-le v1, v7, :cond_3

    .line 831
    const/4 v7, 0x3

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 833
    :cond_3
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 835
    .end local v1    # "lineCount":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_4
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 836
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a09010f

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 837
    .local v4, "massageLayout":Landroid/view/View;
    if-eqz v4, :cond_5

    .line 838
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 839
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v7, v4}, Lcom/tencent/qrom/widget/QromScrollView;->removeView(Landroid/view/View;)V

    .line 844
    :goto_1
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    if-eqz v7, :cond_8

    .line 845
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a090065

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 847
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 849
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 850
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    if-nez v7, :cond_7

    .line 851
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 852
    .local v5, "num":I
    if-le v5, v13, :cond_0

    .line 853
    const/4 v6, 0x0

    .line 854
    .local v6, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v13, :cond_6

    .line 855
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-interface {v7, v0, v8, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 856
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v10, v10}, Landroid/view/View;->measure(II)V

    .line 857
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 854
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 841
    .end local v0    # "i":I
    .end local v2    # "listItem":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "num":I
    .end local v6    # "totalHeight":I
    :cond_5
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    iget-object v8, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Lcom/tencent/qrom/widget/QromScrollView;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 859
    .restart local v0    # "i":I
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "num":I
    .restart local v6    # "totalHeight":I
    :cond_6
    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v7}, Lcom/tencent/qrom/widget/ListView;->getDividerHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v7, v6

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 860
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 863
    .end local v0    # "i":I
    .end local v5    # "num":I
    .end local v6    # "totalHeight":I
    :cond_7
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 867
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_8
    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private setupTitle(Landroid/widget/LinearLayout;)Z
    .locals 11
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v10, -0x1

    const/4 v9, -0x2

    const/16 v8, 0x8

    .line 725
    const/4 v1, 0x1

    .line 728
    .local v1, "hasTitle":Z
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7a090060

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 731
    .local v4, "titleTemplate":Landroid/view/View;
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 733
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 736
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 738
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 800
    :goto_0
    return v1

    .line 740
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v6

    .line 742
    .local v0, "hasTextTitle":Z
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7a090035

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    .line 745
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7a090062

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 748
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 749
    if-eqz v0, :cond_3

    .line 751
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qrom/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 754
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 755
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    .line 756
    .local v2, "lineCount":I
    if-le v2, v6, :cond_2

    .line 757
    const/4 v5, 0x3

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 759
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 780
    .end local v2    # "lineCount":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 781
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 783
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 785
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    iget v5, p0, Lcom/tencent/qrom/app/AlertController;->mIconId:I

    if-lez v5, :cond_4

    .line 787
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/tencent/qrom/app/AlertController;->mIconId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 788
    :cond_4
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 789
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/tencent/qrom/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 792
    :cond_5
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 793
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7a09010a

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 794
    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 795
    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 796
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 28

    .prologue
    .line 593
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a090064

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 594
    .local v4, "contentPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/qrom/app/AlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 595
    invoke-direct/range {p0 .. p0}, Lcom/tencent/qrom/app/AlertController;->setupButtons()Z

    move-result v6

    .line 597
    .local v6, "hasButtons":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a09005e

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 599
    .local v3, "topPanel":Landroid/widget/LinearLayout;
    const v13, 0x101005d

    .line 600
    .local v13, "alertDialogStyle":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    if-eqz v2, :cond_0

    .line 601
    const v13, 0x7a0101f2

    .line 603
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    sget-object v26, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const/16 v27, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v2, v10, v0, v13, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 606
    .local v7, "array":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/tencent/qrom/app/AlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v8

    .line 608
    .local v8, "hasTitle":Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a090068

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 610
    .local v9, "buttonPanel":Landroid/view/View;
    if-nez v6, :cond_2

    .line 611
    const/16 v2, 0x8

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 612
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 618
    :goto_0
    const/4 v5, 0x0

    .line 619
    .local v5, "customPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    if-eqz v2, :cond_e

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a090067

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .end local v5    # "customPanel":Landroid/widget/LinearLayout;
    check-cast v5, Landroid/widget/LinearLayout;

    .line 622
    .restart local v5    # "customPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a090094

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/FrameLayout;

    .line 623
    .local v14, "custom":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/16 v26, -0x1

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v10, v0, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v14, v2, v10}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 624
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingSpecified:Z

    if-eqz v2, :cond_1

    .line 625
    move-object/from16 v0, p0

    iget v2, v0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingRight:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingBottom:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v14, v2, v10, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 628
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    instance-of v2, v2, Lcom/tencent/qrom/widget/ListView;

    if-eqz v2, :cond_d

    .line 629
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 630
    .local v21, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    check-cast v2, Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    .line 631
    .local v12, "adapter":Landroid/widget/ListAdapter;
    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    if-nez v2, :cond_4

    .line 632
    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v23

    .line 633
    .local v23, "num":I
    const/4 v2, 0x6

    move/from16 v0, v23

    if-le v0, v2, :cond_4

    .line 634
    const/16 v25, 0x0

    .line 635
    .local v25, "totalHeight":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_1
    const/4 v2, 0x6

    move/from16 v0, v19

    if-ge v0, v2, :cond_3

    .line 636
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    check-cast v2, Lcom/tencent/qrom/widget/ListView;

    move/from16 v0, v19

    invoke-interface {v12, v0, v10, v2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v20

    .line 637
    .local v20, "listItem":Landroid/view/View;
    const/4 v2, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2, v10}, Landroid/view/View;->measure(II)V

    .line 638
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v25, v25, v2

    .line 635
    add-int/lit8 v19, v19, 0x1

    goto :goto_1

    .line 614
    .end local v5    # "customPanel":Landroid/widget/LinearLayout;
    .end local v12    # "adapter":Landroid/widget/ListAdapter;
    .end local v14    # "custom":Landroid/widget/FrameLayout;
    .end local v19    # "i":I
    .end local v20    # "listItem":Landroid/view/View;
    .end local v21    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "num":I
    .end local v25    # "totalHeight":I
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/view/View;->setVisibility(I)V

    .line 615
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 640
    .restart local v5    # "customPanel":Landroid/widget/LinearLayout;
    .restart local v12    # "adapter":Landroid/widget/ListAdapter;
    .restart local v14    # "custom":Landroid/widget/FrameLayout;
    .restart local v19    # "i":I
    .restart local v21    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v23    # "num":I
    .restart local v25    # "totalHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    check-cast v2, Lcom/tencent/qrom/widget/ListView;

    invoke-virtual {v2}, Lcom/tencent/qrom/widget/ListView;->getDividerHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x5

    add-int v2, v2, v25

    move-object/from16 v0, v21

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 641
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 655
    .end local v12    # "adapter":Landroid/widget/ListAdapter;
    .end local v19    # "i":I
    .end local v21    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v23    # "num":I
    .end local v25    # "totalHeight":I
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    if-eqz v2, :cond_5

    .line 656
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    iput v10, v2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 666
    .end local v14    # "custom":Landroid/widget/FrameLayout;
    :cond_5
    :goto_3
    if-eqz v8, :cond_12

    .line 667
    const/4 v15, 0x0

    .line 668
    .local v15, "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    if-eqz v2, :cond_7

    .line 669
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a090063

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 674
    :cond_7
    if-eqz v15, :cond_8

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    const/16 v17, 0x1

    .line 677
    .local v17, "hasTextTitle":Z
    :goto_4
    if-eqz v17, :cond_10

    .line 678
    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    .line 685
    .end local v17    # "hasTextTitle":Z
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    if-nez v2, :cond_11

    .line 686
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 687
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a09010b

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v24

    .line 690
    .local v24, "titleSpacer":Landroid/view/View;
    if-eqz v24, :cond_9

    .line 691
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 704
    .end local v15    # "divider":Landroid/view/View;
    .end local v24    # "titleSpacer":Landroid/view/View;
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a090142

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    .line 706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/tencent/qrom/app/AlertController;->setupBottomButtons(Landroid/widget/LinearLayout;)Z

    move-result v11

    .line 707
    .local v11, "hasBottomButtons":Z
    if-eqz v11, :cond_a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsVisible:Z

    if-nez v2, :cond_13

    .line 708
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 712
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    if-eqz v2, :cond_b

    .line 713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v10, 0x1

    invoke-virtual {v2, v10}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 716
    :cond_b
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/tencent/qrom/app/AlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;Landroid/widget/LinearLayout;Z)V

    .line 718
    if-eqz v6, :cond_c

    .line 719
    const/4 v2, 0x0

    const/4 v10, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    invoke-virtual {v9, v2, v10, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 721
    :cond_c
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 722
    return-void

    .line 645
    .end local v11    # "hasBottomButtons":Z
    .restart local v14    # "custom":Landroid/widget/FrameLayout;
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    const/4 v10, 0x0

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v2, v10, v0}, Landroid/view/View;->measure(II)V

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    .line 647
    .local v16, "h":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v10, 0x7a0d0063

    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v22, v0

    .line 648
    .local v22, "mMaxHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move/from16 v0, v22

    if-le v2, v0, :cond_4

    .line 649
    invoke-virtual {v14}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v21

    .line 650
    .restart local v21    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 651
    move-object/from16 v0, v21

    invoke-virtual {v14, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 660
    .end local v14    # "custom":Landroid/widget/FrameLayout;
    .end local v16    # "h":I
    .end local v21    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "mMaxHeight":I
    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const v10, 0x7a090067

    invoke-virtual {v2, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 676
    .restart local v15    # "divider":Landroid/view/View;
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 680
    .restart local v17    # "hasTextTitle":Z
    :cond_10
    const/16 v2, 0x8

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 695
    .end local v17    # "hasTextTitle":Z
    :cond_11
    invoke-virtual {v15}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v18

    .line 696
    .local v18, "height":I
    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto/16 :goto_6

    .line 700
    .end local v15    # "divider":Landroid/view/View;
    .end local v18    # "height":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    if-nez v2, :cond_9

    .line 701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mMsgSpacer:Landroid/view/View;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 710
    .restart local v11    # "hasBottomButtons":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 259
    const/4 v0, 0x0

    return v0
.end method

.method public static useRippleDrawable(Landroid/view/View;I)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "contentResId"    # I

    .prologue
    .line 1860
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7a0b0029

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4}, Lcom/tencent/qrom/utils/QromRippleUtils;->getCustomDrawable(Landroid/content/Context;III)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v1

    .line 1861
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0a0019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 1862
    .local v0, "bRipple":Z
    if-eqz v0, :cond_0

    .line 1863
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-le v2, v3, :cond_1

    .line 1864
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1870
    :cond_0
    :goto_0
    return-void

    .line 1867
    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public getBottomButtons()Lcom/tencent/qrom/widget/ListView;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 563
    packed-switch p1, :pswitch_data_0

    .line 571
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 565
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 567
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 569
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 563
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getListView()Lcom/tencent/qrom/widget/ListView;
    .locals 1

    .prologue
    .line 559
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mListView:Lcom/tencent/qrom/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 4

    .prologue
    const/high16 v3, 0x20000

    .line 340
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 342
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    invoke-static {v1}, Lcom/tencent/qrom/app/AlertController;->canTextInput(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 343
    :cond_0
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/app/AlertController;->mAlertDialogLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 348
    .local v0, "contentView":Landroid/view/View;
    iget-boolean v1, p0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    if-eqz v1, :cond_2

    .line 349
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 354
    :goto_0
    invoke-direct {p0}, Lcom/tencent/qrom/app/AlertController;->setupView()V

    .line 355
    return-void

    .line 351
    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    iget v2, p0, Lcom/tencent/qrom/app/AlertController;->mAlertDialogLayout:I

    invoke-virtual {v1, v2}, Landroid/view/Window;->setContentView(I)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 584
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/QromScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mScrollView:Lcom/tencent/qrom/widget/QromScrollView;

    invoke-virtual {v0, p2}, Lcom/tencent/qrom/widget/QromScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBottomButtonVisible(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .prologue
    .line 523
    iput-boolean p1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsVisible:Z

    .line 524
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 525
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 527
    :cond_0
    return-void

    .line 525
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setBottomButtons(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "bottomButtonItemsId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 452
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 453
    .local v0, "bottomButtonItems":[Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, p2}, Lcom/tencent/qrom/app/AlertController;->setBottomButtons([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 454
    return-void
.end method

.method public setBottomButtons(I[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "bottomButtonItemsId"    # I
    .param p2, "bottomButtonColorItems"    # [I
    .param p3, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 462
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 463
    .local v0, "bottomButtonItems":[Ljava/lang/CharSequence;
    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/qrom/app/AlertController;->setBottomButtons([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V

    .line 464
    return-void
.end method

.method public setBottomButtons([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "bottomButtonItems"    # [Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 457
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/qrom/app/AlertController;->setBottomButtons([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V

    .line 458
    return-void
.end method

.method public setBottomButtons([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 12
    .param p1, "bottomButtonItems"    # [Ljava/lang/CharSequence;
    .param p2, "bottomButtonColorItems"    # [I
    .param p3, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 468
    if-eqz p1, :cond_0

    array-length v1, p1

    if-gtz v1, :cond_1

    .line 520
    :cond_0
    :goto_0
    return-void

    .line 471
    :cond_1
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonItems:[Ljava/lang/CharSequence;

    .line 472
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mCustomTitleView:Landroid/view/View;

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_4

    iget v1, p0, Lcom/tencent/qrom/app/AlertController;->mIconId:I

    if-gtz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    if-eqz v1, :cond_8

    :cond_4
    const/4 v7, 0x1

    .line 475
    .local v7, "hasTitle":Z
    :goto_1
    const/4 v10, 0x0

    .line 476
    .local v10, "hasButton":Z
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    if-nez v1, :cond_6

    .line 477
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonLayout:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/tencent/qrom/widget/ListView;

    .line 479
    .local v11, "listView":Lcom/tencent/qrom/widget/ListView;
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a0a0019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 480
    .local v8, "bRipple":Z
    if-nez v8, :cond_5

    .line 481
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7a020029    # 1.6875046E35f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v11, v1}, Lcom/tencent/qrom/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 483
    :cond_5
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/tencent/qrom/widget/ListView;->setFooterDividersEnabled(Z)V

    .line 484
    new-instance v1, Lcom/tencent/qrom/app/AlertController$2;

    invoke-direct {v1, p0, p3}, Lcom/tencent/qrom/app/AlertController$2;-><init>(Lcom/tencent/qrom/app/AlertController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v11, v1}, Lcom/tencent/qrom/widget/ListView;->setOnItemClickListener(Lcom/tencent/qrom/widget/AdapterView$OnItemClickListener;)V

    .line 490
    iput-object v11, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    .line 492
    .end local v8    # "bRipple":Z
    .end local v11    # "listView":Lcom/tencent/qrom/widget/ListView;
    :cond_6
    new-instance v0, Lcom/tencent/qrom/app/AlertController$3;

    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonItemLayout:I

    const v4, 0x7a0900ee

    iget-object v5, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonItems:[Ljava/lang/CharSequence;

    move-object v1, p0

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/tencent/qrom/app/AlertController$3;-><init>(Lcom/tencent/qrom/app/AlertController;Landroid/content/Context;II[Ljava/lang/CharSequence;[IZ)V

    .line 507
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    iput-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    .line 508
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1}, Lcom/tencent/qrom/app/AlertController;->setupBottomButtons(Landroid/widget/LinearLayout;)Z

    move-result v9

    .line 510
    .local v9, "hasBottomButtons":Z
    if-eqz v9, :cond_7

    iget-boolean v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsVisible:Z

    if-nez v1, :cond_9

    .line 511
    :cond_7
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 516
    :goto_2
    iget-boolean v1, p0, Lcom/tencent/qrom/app/AlertController;->mIsBottomDialog:Z

    if-eqz v1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mWindow:Landroid/view/Window;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    goto/16 :goto_0

    .line 472
    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v7    # "hasTitle":Z
    .end local v9    # "hasBottomButtons":Z
    .end local v10    # "hasButton":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_1

    .line 513
    .restart local v0    # "listAdapter":Landroid/widget/ListAdapter;
    .restart local v7    # "hasTitle":Z
    .restart local v9    # "hasBottomButtons":Z
    .restart local v10    # "hasButton":Z
    :cond_9
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    iget-object v2, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/tencent/qrom/app/AlertController;->setBottomButtonsStartAnimation(Landroid/view/ViewGroup;I)V

    .line 514
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsPanel:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public setBottomButtonsStartAnimation(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 1852
    if-eqz p1, :cond_0

    .line 1853
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 1854
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonsListView:Lcom/tencent/qrom/widget/ListView;

    iget-object v1, p0, Lcom/tencent/qrom/app/AlertController;->mBottomButtonAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/qrom/app/AlertController;->setBottomButtonsStartAnimation(Landroid/view/ViewGroup;I)V

    .line 1857
    :cond_0
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 415
    sget-object v1, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/AlertController;->setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 416
    return-void
.end method

.method public setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "whichButton"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "msg"    # Landroid/os/Message;

    .prologue
    .line 421
    if-nez p5, :cond_0

    if-eqz p4, :cond_0

    .line 422
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p5

    .line 425
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 446
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :pswitch_0
    iput-object p3, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 429
    iput-object p5, p0, Lcom/tencent/qrom/app/AlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 430
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mPositiveColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .line 448
    :goto_0
    return-void

    .line 434
    :pswitch_1
    iput-object p3, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 435
    iput-object p5, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 436
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mNegativeColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    goto :goto_0

    .line 440
    :pswitch_2
    iput-object p3, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 441
    iput-object p5, p0, Lcom/tencent/qrom/app/AlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 442
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mNeutralColor:Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonColor(Landroid/widget/Button;Lcom/tencent/qrom/app/AlertDialog$ButtonColor;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;

    .prologue
    .line 873
    sget-object v0, Lcom/tencent/qrom/app/AlertController$4;->$SwitchMap$com$tencent$qrom$app$AlertDialog$ButtonColor:[I

    invoke-virtual {p2}, Lcom/tencent/qrom/app/AlertDialog$ButtonColor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 883
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0b005b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 887
    :goto_0
    return-void

    .line 875
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 879
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    .line 873
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 0
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 369
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 537
    iput p1, p0, Lcom/tencent/qrom/app/AlertController;->mIconId:I

    .line 538
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 539
    if-lez p1, :cond_1

    .line 540
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/qrom/app/AlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 541
    :cond_1
    if-nez p1, :cond_0

    .line 542
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 548
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 549
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 552
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 555
    iput-boolean p1, p0, Lcom/tencent/qrom/app/AlertController;->mForceInverseBackground:Z

    .line 556
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    .line 373
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 358
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 359
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 362
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 382
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    .line 383
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingSpecified:Z

    .line 384
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 391
    iput-object p1, p0, Lcom/tencent/qrom/app/AlertController;->mView:Landroid/view/View;

    .line 392
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingSpecified:Z

    .line 393
    iput p2, p0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingLeft:I

    .line 394
    iput p3, p0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingTop:I

    .line 395
    iput p4, p0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingRight:I

    .line 396
    iput p5, p0, Lcom/tencent/qrom/app/AlertController;->mViewSpacingBottom:I

    .line 397
    return-void
.end method
