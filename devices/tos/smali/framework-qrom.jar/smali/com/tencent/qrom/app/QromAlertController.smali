.class public Lcom/tencent/qrom/app/QromAlertController;
.super Lcom/android/internal/app/AlertController;
.source "QromAlertController.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/QromAlertController$2;,
        Lcom/tencent/qrom/app/QromAlertController$QromAlertParams;,
        Lcom/tencent/qrom/app/QromAlertController$RecycleListView;,
        Lcom/tencent/qrom/app/QromAlertController$ButtonHandler;,
        Lcom/tencent/qrom/app/QromAlertController$ButtonColor;
    }
.end annotation


# static fields
.field private static final DEFAULT_LISTITEM_COUNT:I = 0x6

.field private static final TAG:Ljava/lang/String; = "QromAlertController"

.field public static sIsBlackTheme:Z

.field public static sIsContextMenu:Z


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mAlertDialogLayout:I

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

.field public mIsContextMenu:Z

.field private mListItemLayout:I

.field private mListLayout:I

.field private mListView:Landroid/widget/ListView;

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mMsgSpacer:Landroid/view/View;

.field private mMultiChoiceItemLayout:I

.field private mNegativeColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

.field private mNeutralColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

.field mOldNegativeVisibility:I

.field mOldNeutralVisibility:I

.field mOldPositiveVisibility:I

.field private mPositiveColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

.field private mScrollView:Landroid/widget/ScrollView;

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
    const/4 v0, 0x0

    .line 147
    sput-boolean v0, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    .line 148
    sput-boolean v0, Lcom/tencent/qrom/app/QromAlertController;->sIsContextMenu:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "di"    # Landroid/content/DialogInterface;
    .param p3, "window"    # Landroid/view/Window;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v3, -0x1

    .line 217
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 100
    iput-boolean v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingSpecified:Z

    .line 128
    iput v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconId:I

    .line 145
    iput-boolean v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mIsContextMenu:Z

    .line 152
    iput v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mCheckedItem:I

    .line 163
    new-instance v2, Lcom/tencent/qrom/app/QromAlertController$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/app/QromAlertController$1;-><init>(Lcom/tencent/qrom/app/QromAlertController;)V

    iput-object v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    .line 940
    iput v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldPositiveVisibility:I

    .line 941
    iput v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldNegativeVisibility:I

    .line 942
    iput v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldNeutralVisibility:I

    .line 218
    const-string v2, "QromAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "QromAlertController|mContext="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object p2, p0, Lcom/tencent/qrom/app/QromAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 220
    iput-object p3, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    .line 221
    new-instance v2, Lcom/tencent/qrom/app/QromAlertController$ButtonHandler;

    invoke-direct {v2, p2}, Lcom/tencent/qrom/app/QromAlertController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mHandler:Landroid/os/Handler;

    .line 229
    const v2, 0x7a030010

    iput v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mAlertDialogLayout:I

    .line 230
    const v2, 0x7a030084

    iput v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mListLayout:I

    .line 231
    const v2, 0x7a030067

    iput v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mMultiChoiceItemLayout:I

    .line 232
    const v2, 0x7a030068

    iput v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mSingleChoiceItemLayout:I

    .line 233
    const v2, 0x7a030069

    iput v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mListItemLayout:I

    .line 236
    const-string v2, "QromAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alertcontrol-------1--context.getThemeResId() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const-class v2, Landroid/app/AlertDialog;

    const-string v3, "resolveDialogTheme"

    new-array v4, v8, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/tencent/qrom/utils/ReflectUtils;->getDeclaredMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 238
    .local v1, "resolveDialogTheme":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    new-array v3, v8, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-virtual {p1}, Landroid/content/Context;->getThemeResId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v2, v3}, Lcom/tencent/qrom/utils/ReflectUtils;->invoke(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 240
    .local v0, "resolve":I
    const-string v2, "QromAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alertcontrol-------2--resolveDialogTheme = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 242
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    .line 243
    const-string v2, "QromAlertController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "alertcontrol-------3--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getThemeResId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-boolean v2, Lcom/tencent/qrom/app/QromAlertController;->sIsContextMenu:Z

    iput-boolean v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mIsContextMenu:Z

    .line 266
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/QromAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$100(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/view/View;IIZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/view/View;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 74
    invoke-static {p0, p1, p2, p3, p4}, Lcom/tencent/qrom/app/QromAlertController;->setListBackground(Landroid/view/View;IIZZ)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tencent/qrom/app/QromAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mSingleChoiceItemLayout:I

    return v0
.end method

.method static synthetic access$1200(Lcom/tencent/qrom/app/QromAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mListItemLayout:I

    return v0
.end method

.method static synthetic access$1302(Lcom/tencent/qrom/app/QromAlertController;Landroid/widget/ListAdapter;)Landroid/widget/ListAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;
    .param p1, "x1"    # Landroid/widget/ListAdapter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mAdapter:Landroid/widget/ListAdapter;

    return-object p1
.end method

.method static synthetic access$1402(Lcom/tencent/qrom/app/QromAlertController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;
    .param p1, "x1"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mCheckedItem:I

    return p1
.end method

.method static synthetic access$1502(Lcom/tencent/qrom/app/QromAlertController;Landroid/widget/ListView;)Landroid/widget/ListView;
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;
    .param p1, "x1"    # Landroid/widget/ListView;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/tencent/qrom/app/QromAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$400(Lcom/tencent/qrom/app/QromAlertController;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Message;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/app/QromAlertController;)Landroid/content/DialogInterface;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/app/QromAlertController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/app/QromAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mListLayout:I

    return v0
.end method

.method static synthetic access$900(Lcom/tencent/qrom/app/QromAlertController;)I
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/QromAlertController;

    .prologue
    .line 74
    iget v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mMultiChoiceItemLayout:I

    return v0
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    :goto_0
    return v2

    .line 273
    :cond_0
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    move v2, v3

    .line 274
    goto :goto_0

    :cond_1
    move-object v1, p0

    .line 277
    check-cast v1, Landroid/view/ViewGroup;

    .line 278
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 279
    .local v0, "i":I
    :cond_2
    if-lez v0, :cond_3

    .line 280
    add-int/lit8 v0, v0, -0x1

    .line 281
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .line 282
    invoke-static {p0}, Lcom/tencent/qrom/app/QromAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_3
    move v2, v3

    .line 287
    goto :goto_0
.end method

.method private centerButton(Landroid/widget/Button;)V
    .locals 6
    .param p1, "button"    # Landroid/widget/Button;

    .prologue
    const/4 v5, 0x0

    .line 969
    invoke-virtual {p1}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 970
    .local v1, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v3, 0x1

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 971
    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 972
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 973
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7a09009c

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 974
    .local v0, "leftSpacer":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 975
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 977
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x7a09009d

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 978
    .local v2, "rightSpacer":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 979
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 981
    :cond_1
    return-void
.end method

.method private qromSetTextViewColor(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1488
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7a0b000c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1490
    .local v5, "textColor":I
    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_0

    .line 1491
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7a0b0014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 1495
    :cond_0
    :try_start_0
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_4

    .line 1496
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 1497
    .local v1, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v1, :cond_3

    .line 1498
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    move-object v6, v0

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1499
    .local v2, "childView":Landroid/view/View;
    instance-of v6, v2, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 1500
    invoke-direct {p0, v2}, Lcom/tencent/qrom/app/QromAlertController;->qromSetTextViewColor(Landroid/view/View;)V

    .line 1497
    .end local v2    # "childView":Landroid/view/View;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1501
    .restart local v2    # "childView":Landroid/view/View;
    :cond_2
    instance-of v6, v2, Landroid/widget/TextView;

    if-eqz v6, :cond_1

    .line 1502
    check-cast v2, Landroid/widget/TextView;

    .end local v2    # "childView":Landroid/view/View;
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1508
    .end local v1    # "childCount":I
    .end local v4    # "i":I
    .end local p1    # "view":Landroid/view/View;
    :catch_0
    move-exception v3

    .line 1509
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1511
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_2
    return-void

    .line 1505
    .restart local p1    # "view":Landroid/view/View;
    :cond_4
    :try_start_1
    instance-of v6, p1, Landroid/widget/TextView;

    if-eqz v6, :cond_3

    .line 1506
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "view":Landroid/view/View;
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private responseGlobalLayout()V
    .locals 5

    .prologue
    .line 945
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x1020019

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 946
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102001a

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 947
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v4, 0x102001b

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 948
    const/4 v2, -0x1

    .line 949
    .local v2, "positiveVisibility":I
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v3, :cond_0

    .line 950
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v2

    .line 952
    :cond_0
    const/4 v0, -0x1

    .line 953
    .local v0, "negativeVisibility":I
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v3, :cond_1

    .line 954
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    .line 956
    :cond_1
    const/4 v1, -0x1

    .line 957
    .local v1, "neutralVisibility":I
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v3, :cond_2

    .line 958
    iget-object v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    .line 960
    :cond_2
    iget v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldPositiveVisibility:I

    if-ne v3, v2, :cond_3

    iget v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldNegativeVisibility:I

    if-ne v3, v0, :cond_3

    iget v3, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldNeutralVisibility:I

    if-eq v3, v1, :cond_4

    .line 961
    :cond_3
    iput v2, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldPositiveVisibility:I

    .line 962
    iput v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldNegativeVisibility:I

    .line 963
    iput v1, p0, Lcom/tencent/qrom/app/QromAlertController;->mOldNeutralVisibility:I

    .line 964
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lcom/tencent/qrom/app/QromAlertController;->setupButtons(Z)Z

    .line 966
    :cond_4
    return-void
.end method

.method private setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V
    .locals 27
    .param p1, "topPanel"    # Landroid/widget/LinearLayout;
    .param p2, "contentPanel"    # Landroid/widget/LinearLayout;
    .param p3, "customPanel"    # Landroid/view/View;
    .param p4, "hasButtons"    # Z
    .param p5, "a"    # Landroid/content/res/TypedArray;
    .param p6, "hasTitle"    # Z
    .param p7, "buttonPanel"    # Landroid/view/View;

    .prologue
    .line 988
    const/16 v24, 0x0

    const v25, 0x7a0200ca

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 990
    .local v9, "fullDark":I
    const/16 v24, 0x1

    const v25, 0x7a0200ce

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v19

    .line 992
    .local v19, "topDark":I
    const/16 v24, 0x2

    const v25, 0x7a0200cc

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    .line 994
    .local v7, "centerDark":I
    const/16 v24, 0x3

    const v25, 0x7a0200b8

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 996
    .local v4, "bottomDark":I
    const/16 v24, 0x4

    const v25, 0x7a0200cb

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    .line 998
    .local v8, "fullBright":I
    const/16 v24, 0x5

    const v25, 0x7a0200cf

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v18

    .line 1000
    .local v18, "topBright":I
    const/16 v24, 0x6

    const v25, 0x7a0200cd

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 1002
    .local v6, "centerBright":I
    const/16 v24, 0x7

    const v25, 0x7a0200b9

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 1004
    .local v3, "bottomBright":I
    const/16 v24, 0x8

    const v25, 0x7a0200cd

    move-object/from16 v0, p5

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 1007
    .local v5, "bottomMedium":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mIsContextMenu:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    .line 1008
    const v18, 0x7a0200b7

    .line 1009
    move/from16 v19, v18

    .line 1012
    :cond_0
    const/16 v24, 0x9

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v20, v0

    const/16 v24, 0x0

    aput v9, v20, v24

    const/16 v24, 0x1

    aput v19, v20, v24

    const/16 v24, 0x2

    aput v7, v20, v24

    const/16 v24, 0x3

    aput v4, v20, v24

    const/16 v24, 0x4

    aput v8, v20, v24

    const/16 v24, 0x5

    aput v18, v20, v24

    const/16 v24, 0x6

    aput v6, v20, v24

    const/16 v24, 0x7

    aput v3, v20, v24

    const/16 v24, 0x8

    aput v5, v20, v24

    .line 1013
    .local v20, "typeArray":[I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1015
    .local v21, "typeArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_1

    .line 1016
    aget v24, v20, v10

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1015
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 1019
    :cond_1
    const-string v24, "QromAlertController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setBackground|typeArray="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1020
    const-string v24, "QromAlertController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setBackground|hasButtons="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",hasTitle="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, ",mIsContextMenu="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mIsContextMenu:Z

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v0, v0, [Landroid/view/View;

    move-object/from16 v23, v0

    .line 1033
    .local v23, "views":[Landroid/view/View;
    const/16 v24, 0x4

    move/from16 v0, v24

    new-array v13, v0, [Z

    .line 1034
    .local v13, "light":[Z
    const/4 v12, 0x0

    .line 1035
    .local v12, "lastView":Landroid/view/View;
    const/4 v11, 0x0

    .line 1037
    .local v11, "lastLight":Z
    const/4 v15, 0x0

    .line 1038
    .local v15, "pos":I
    if-eqz p6, :cond_2

    .line 1039
    aput-object p1, v23, v15

    .line 1040
    const/16 v24, 0x1

    aput-boolean v24, v13, v15

    .line 1041
    add-int/lit8 v15, v15, 0x1

    .line 1049
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    const/16 p2, 0x0

    .end local p2    # "contentPanel":Landroid/widget/LinearLayout;
    :cond_3
    aput-object p2, v23, v15

    .line 1050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_6

    const/16 v24, 0x1

    :goto_1
    aput-boolean v24, v13, v15

    .line 1051
    add-int/lit8 v15, v15, 0x1

    .line 1052
    if-eqz p3, :cond_4

    .line 1053
    aput-object p3, v23, v15

    .line 1054
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mForceInverseBackground:Z

    move/from16 v24, v0

    aput-boolean v24, v13, v15

    .line 1055
    add-int/lit8 v15, v15, 0x1

    .line 1057
    :cond_4
    if-eqz p4, :cond_5

    .line 1058
    aput-object p7, v23, v15

    .line 1059
    const/16 v24, 0x1

    aput-boolean v24, v13, v15

    .line 1062
    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    .local v14, "lightArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    const/4 v10, 0x0

    :goto_2
    array-length v0, v13

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v10, v0, :cond_7

    .line 1065
    aget-boolean v24, v13, v10

    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 1050
    .end local v14    # "lightArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_6
    const/16 v24, 0x0

    goto :goto_1

    .line 1068
    .restart local v14    # "lightArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    :cond_7
    const-string v24, "QromAlertController"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "setBackground|lightArrayList="

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual {v14}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    const/16 v17, 0x0

    .line 1071
    .local v17, "setView":Z
    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v15, v0, :cond_d

    .line 1072
    aget-object v22, v23, v15

    .line 1073
    .local v22, "v":Landroid/view/View;
    if-nez v22, :cond_8

    .line 1071
    :goto_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 1076
    :cond_8
    if-eqz v12, :cond_9

    .line 1077
    if-nez v17, :cond_b

    .line 1078
    if-eqz v11, :cond_a

    move/from16 v24, v18

    :goto_5
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1082
    :goto_6
    const/16 v17, 0x1

    .line 1084
    :cond_9
    move-object/from16 v12, v22

    .line 1085
    aget-boolean v11, v13, v15

    goto :goto_4

    :cond_a
    move/from16 v24, v19

    .line 1078
    goto :goto_5

    .line 1080
    :cond_b
    if-eqz v11, :cond_c

    move/from16 v24, v6

    :goto_7
    move/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_6

    :cond_c
    move/from16 v24, v7

    goto :goto_7

    .line 1088
    .end local v22    # "v":Landroid/view/View;
    :cond_d
    if-eqz v12, :cond_f

    .line 1089
    if-eqz v17, :cond_13

    .line 1093
    if-eqz v11, :cond_12

    if-eqz p4, :cond_11

    move/from16 v16, v5

    .line 1094
    .local v16, "resId":I
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mIsContextMenu:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    const v16, 0x7a0200b6

    .line 1095
    :cond_e
    move/from16 v0, v16

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1096
    if-eqz p4, :cond_f

    .line 1097
    const/16 v24, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1131
    .end local v8    # "fullBright":I
    .end local v16    # "resId":I
    :cond_f
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v24, v0

    if-eqz v24, :cond_10

    .line 1132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1133
    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mCheckedItem:I

    move/from16 v24, v0

    const/16 v25, -0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_10

    .line 1134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mCheckedItem:I

    move/from16 v25, v0

    const/16 v26, 0x1

    invoke-virtual/range {v24 .. v26}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 1135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mCheckedItem:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Landroid/widget/ListView;->setSelection(I)V

    .line 1138
    :cond_10
    return-void

    .restart local v8    # "fullBright":I
    :cond_11
    move/from16 v16, v3

    .line 1093
    goto :goto_8

    :cond_12
    move/from16 v16, v4

    goto :goto_8

    .line 1102
    :cond_13
    if-eqz v11, :cond_14

    .end local v8    # "fullBright":I
    :goto_a
    invoke-virtual {v12, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_9

    .restart local v8    # "fullBright":I
    :cond_14
    move v8, v9

    goto :goto_a
.end method

.method private static setListBackground(Landroid/view/View;IIZZ)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "index"    # I
    .param p2, "count"    # I
    .param p3, "hasTitle"    # Z
    .param p4, "hasButton"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1424
    sget-boolean v0, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v0, :cond_3

    .line 1425
    if-eqz p3, :cond_1

    if-nez p4, :cond_1

    .line 1426
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    .line 1483
    :cond_0
    :goto_0
    return-void

    .line 1431
    :cond_1
    if-nez p3, :cond_2

    if-eqz p4, :cond_2

    .line 1432
    if-nez p1, :cond_0

    goto :goto_0

    .line 1437
    :cond_2
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1438
    if-le p2, v1, :cond_0

    .line 1439
    if-eqz p1, :cond_0

    .line 1441
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1455
    :cond_3
    if-eqz p3, :cond_4

    if-nez p4, :cond_4

    .line 1456
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1461
    :cond_4
    if-nez p3, :cond_5

    if-eqz p4, :cond_5

    .line 1462
    if-nez p1, :cond_0

    goto :goto_0

    .line 1467
    :cond_5
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 1468
    if-le p2, v1, :cond_0

    .line 1469
    if-eqz p1, :cond_0

    .line 1471
    add-int/lit8 v0, p2, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method private setupButtons(Z)Z
    .locals 13
    .param p1, "isUpdate"    # Z

    .prologue
    const v12, 0x7a020209

    const v11, 0x7a020206

    const v10, 0x7a020205

    const/4 v7, 0x0

    const/16 v9, 0x8

    .line 757
    const/4 v2, 0x1

    .line 758
    .local v2, "BIT_BUTTON_POSITIVE":I
    const/4 v0, 0x2

    .line 759
    .local v0, "BIT_BUTTON_NEGATIVE":I
    const/4 v1, 0x4

    .line 760
    .local v1, "BIT_BUTTON_NEUTRAL":I
    const/4 v5, 0x0

    .line 761
    .local v5, "whichButtons":I
    const/4 v3, 0x0

    .line 762
    .local v3, "buttonCount":I
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x1020019

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 763
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    if-eqz v6, :cond_a

    .line 764
    if-nez p1, :cond_0

    .line 765
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 768
    :cond_0
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_1

    .line 769
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 771
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 773
    const-string v6, "QromAlertController"

    const-string v8, "setupButtons|mButtonPositive gone"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x102001a

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    .line 791
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    if-eqz v6, :cond_d

    .line 792
    if-nez p1, :cond_2

    .line 793
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 796
    :cond_2
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_3

    .line 797
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 799
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 801
    const-string v6, "QromAlertController"

    const-string v8, "setupButtons|mButtonNegative gone"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_3
    :goto_1
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x102001b

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 819
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    if-eqz v6, :cond_f

    .line 820
    if-nez p1, :cond_4

    .line 821
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 824
    :cond_4
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getVisibility()I

    move-result v6

    if-eq v6, v9, :cond_5

    .line 825
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 827
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 829
    const-string v6, "QromAlertController"

    const-string v8, "setupButtons|mButtonNeutral gone"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    :cond_5
    :goto_2
    const-string v6, "QromAlertController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setupButtons|buttonCount="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/tencent/qrom/app/QromAlertController;->shouldCenterSingleButton(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 851
    if-ne v5, v2, :cond_10

    .line 852
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/tencent/qrom/app/QromAlertController;->centerButton(Landroid/widget/Button;)V

    .line 859
    :cond_6
    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 937
    :cond_7
    :goto_4
    if-eqz v5, :cond_21

    const/4 v6, 0x1

    :goto_5
    return v6

    .line 775
    :cond_8
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 776
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 778
    :cond_9
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 779
    or-int/2addr v5, v2

    .line 780
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 787
    :cond_a
    const-string v6, "QromAlertController"

    const-string v8, "setupButtons|mButtonPositive null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 803
    :cond_b
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 804
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 806
    :cond_c
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 808
    or-int/2addr v5, v0

    .line 809
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 815
    :cond_d
    const-string v6, "QromAlertController"

    const-string v8, "setupButtons|mButtonNegative null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 831
    :cond_e
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 834
    or-int/2addr v5, v1

    .line 835
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_2

    .line 841
    :cond_f
    const-string v6, "QromAlertController"

    const-string v8, "setupButtons|mButtonNeutral null"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 853
    :cond_10
    if-ne v5, v0, :cond_11

    .line 854
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/tencent/qrom/app/QromAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 855
    :cond_11
    if-ne v5, v1, :cond_6

    .line 856
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    invoke-direct {p0, v6}, Lcom/tencent/qrom/app/QromAlertController;->centerButton(Landroid/widget/Button;)V

    goto :goto_3

    .line 861
    :pswitch_0
    const/4 v4, 0x0

    .line 862
    .local v4, "onlyBtn":Landroid/widget/Button;
    if-ne v5, v2, :cond_13

    .line 863
    iget-object v4, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    .line 869
    :cond_12
    :goto_6
    if-eqz v4, :cond_7

    .line 872
    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_15

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const v8, 0x7a020204

    invoke-static {v6, v8}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_7
    invoke-virtual {v4, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 864
    :cond_13
    if-ne v5, v0, :cond_14

    .line 865
    iget-object v4, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_6

    .line 866
    :cond_14
    if-ne v5, v1, :cond_12

    .line 867
    iget-object v4, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_6

    .line 872
    :cond_15
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const v8, 0x7a020203

    invoke-static {v6, v8}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_7

    .line 877
    .end local v4    # "onlyBtn":Landroid/widget/Button;
    :pswitch_1
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_18

    .line 885
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_16

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a02020a

    invoke-static {v6, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_8
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 887
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_17

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_9
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 885
    :cond_16
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v12}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_8

    .line 887
    :cond_17
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_9

    .line 889
    :cond_18
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 897
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_19

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a02020a

    invoke-static {v6, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_a
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 899
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_b
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 897
    :cond_19
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v12}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_a

    .line 899
    :cond_1a
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_b

    .line 901
    :cond_1b
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 909
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_1c

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a02020a

    invoke-static {v6, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_c
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 911
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_1d

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_d
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 909
    :cond_1c
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v12}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_c

    .line 911
    :cond_1d
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_d

    .line 926
    :pswitch_2
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_1e

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a02020a

    invoke-static {v6, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_e
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 928
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_1f

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a020208

    invoke-static {v6, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_f
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 930
    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    sget-boolean v6, Lcom/tencent/qrom/app/QromAlertController;->sIsBlackTheme:Z

    if-eqz v6, :cond_20

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v11}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    :goto_10
    invoke-virtual {v8, v6}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 926
    :cond_1e
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v12}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_e

    .line 928
    :cond_1f
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const v9, 0x7a020207

    invoke-static {v6, v9}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_f

    .line 930
    :cond_20
    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-static {v6, v10}, Lcom/tencent/qrom/utils/QromRippleUtils;->getHasContentDrawable(Landroid/content/Context;I)Lcom/tencent/qrom/drawable/QromRippleDrawable;

    move-result-object v6

    goto :goto_10

    :cond_21
    move v6, v7

    .line 937
    goto/16 :goto_5

    .line 859
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

    .line 677
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a090065

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    .line 678
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-nez v7, :cond_1

    .line 739
    :cond_0
    :goto_0
    return-void

    .line 681
    :cond_1
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v10}, Landroid/widget/ScrollView;->setFocusable(Z)V

    .line 684
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x102000b

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    .line 687
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a0900fc

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mMsgSpacer:Landroid/view/View;

    .line 689
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 693
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessage:Ljava/lang/CharSequence;

    if-eqz v7, :cond_3

    .line 694
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 697
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v7, 0x11

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 698
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    .line 699
    .local v1, "lineCount":I
    const/4 v7, 0x1

    if-le v1, v7, :cond_2

    .line 700
    const/4 v7, 0x3

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 702
    :cond_2
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 704
    .end local v1    # "lineCount":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 705
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a09010f

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 706
    .local v4, "massageLayout":Landroid/view/View;
    if-eqz v4, :cond_4

    .line 707
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v7, v4}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    .line 713
    :goto_1
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_7

    .line 714
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v8, 0x7a090065

    invoke-virtual {v7, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 716
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 718
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v9, v10, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 719
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v7, :cond_6

    .line 720
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v7}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 721
    .local v5, "num":I
    if-le v5, v13, :cond_0

    .line 722
    const/4 v6, 0x0

    .line 723
    .local v6, "totalHeight":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    if-ge v0, v13, :cond_5

    .line 724
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mAdapter:Landroid/widget/ListAdapter;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    invoke-interface {v7, v0, v8, v9}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 725
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v10, v10}, Landroid/view/View;->measure(II)V

    .line 726
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    .line 723
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 710
    .end local v0    # "i":I
    .end local v2    # "listItem":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v5    # "num":I
    .end local v6    # "totalHeight":I
    :cond_4
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    iget-object v8, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v7, v8}, Landroid/widget/ScrollView;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 728
    .restart local v0    # "i":I
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .restart local v5    # "num":I
    .restart local v6    # "totalHeight":I
    :cond_5
    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v7, v6

    iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 729
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 732
    .end local v0    # "i":I
    .end local v5    # "num":I
    .end local v6    # "totalHeight":I
    :cond_6
    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 736
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_7
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

    .line 597
    const/4 v1, 0x1

    .line 600
    .local v1, "hasTitle":Z
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7a090060

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 603
    .local v4, "titleTemplate":Landroid/view/View;
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mCustomTitleView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 605
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 608
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mCustomTitleView:Landroid/view/View;

    invoke-virtual {p1, v5, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 610
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 673
    :goto_0
    return v1

    .line 612
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_0
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v6

    .line 614
    .local v0, "hasTextTitle":Z
    :cond_1
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7a090035

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    .line 617
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v7, 0x7a090062

    invoke-virtual {v5, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitleView:Landroid/widget/TextView;

    .line 620
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 621
    if-eqz v0, :cond_3

    .line 623
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitleView:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 624
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 626
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 627
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    .line 628
    .local v2, "lineCount":I
    if-le v2, v6, :cond_2

    .line 629
    const/4 v5, 0x3

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 631
    :cond_2
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 653
    .end local v2    # "lineCount":I
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    :cond_3
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 654
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 656
    .restart local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v5, 0x11

    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 658
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 659
    iget v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconId:I

    if-lez v5, :cond_4

    .line 660
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    iget v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconId:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 661
    :cond_4
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_5

    .line 662
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/tencent/qrom/app/QromAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 665
    :cond_5
    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 666
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v6, 0x7a09010a

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 667
    iget-object v5, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 668
    invoke-virtual {p1, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 669
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method private setupView()V
    .locals 30

    .prologue
    .line 463
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v26, 0x7a090064

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 464
    .local v6, "contentPanel":Landroid/widget/LinearLayout;
    if-nez v6, :cond_0

    .line 594
    :goto_0
    return-void

    .line 467
    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/tencent/qrom/app/QromAlertController;->setupContent(Landroid/widget/LinearLayout;)V

    .line 468
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/qrom/app/QromAlertController;->setupButtons(Z)Z

    move-result v8

    .line 470
    .local v8, "hasButtons":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v26, 0x7a09005e

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 471
    .local v5, "topPanel":Landroid/widget/LinearLayout;
    const-string v4, "QromAlertController"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "setupView|mContext="

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    const/16 v26, 0x0

    sget-object v27, Lcom/android/internal/R$styleable;->AlertDialog:[I

    const v28, 0x101005d

    const/16 v29, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-virtual {v4, v0, v1, v2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    .line 474
    .local v9, "a":Landroid/content/res/TypedArray;
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/tencent/qrom/app/QromAlertController;->setupTitle(Landroid/widget/LinearLayout;)Z

    move-result v10

    .line 476
    .local v10, "hasTitle":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v26, 0x7a090068

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 477
    .local v11, "buttonPanel":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v25

    .line 478
    .local v25, "vto":Landroid/view/ViewTreeObserver;
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 480
    if-nez v8, :cond_2

    .line 481
    const/16 v4, 0x8

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const/16 v26, 0x1

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 488
    :goto_1
    const/4 v7, 0x0

    .line 489
    .local v7, "customPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    if-eqz v4, :cond_c

    .line 491
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/tencent/qrom/app/QromAlertController;->qromSetTextViewColor(Landroid/view/View;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v26, 0x7a090067

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .end local v7    # "customPanel":Landroid/widget/LinearLayout;
    check-cast v7, Landroid/widget/LinearLayout;

    .line 496
    .restart local v7    # "customPanel":Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v26, 0x7a090094

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 499
    .local v13, "custom":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    new-instance v26, Landroid/view/ViewGroup$LayoutParams;

    const/16 v27, -0x1

    const/16 v28, -0x1

    invoke-direct/range {v26 .. v28}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    move-object/from16 v0, v26

    invoke-virtual {v13, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 500
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingSpecified:Z

    if-eqz v4, :cond_1

    .line 501
    move-object/from16 v0, p0

    iget v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingLeft:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingTop:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingRight:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingBottom:I

    move/from16 v28, v0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v13, v4, v0, v1, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 504
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    instance-of v4, v4, Landroid/widget/ListView;

    if-eqz v4, :cond_b

    .line 505
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 506
    .local v20, "lp":Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v12

    .line 507
    .local v12, "adapter":Landroid/widget/ListAdapter;
    if-eqz v12, :cond_4

    .line 508
    invoke-interface {v12}, Landroid/widget/ListAdapter;->getCount()I

    move-result v22

    .line 509
    .local v22, "num":I
    const/4 v4, 0x6

    move/from16 v0, v22

    if-le v0, v4, :cond_4

    .line 510
    const/16 v24, 0x0

    .line 511
    .local v24, "totalHeight":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    const/4 v4, 0x6

    move/from16 v0, v18

    if-ge v0, v4, :cond_3

    .line 512
    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    check-cast v4, Landroid/widget/ListView;

    move/from16 v0, v18

    move-object/from16 v1, v26

    invoke-interface {v12, v0, v1, v4}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v19

    .line 513
    .local v19, "listItem":Landroid/view/View;
    const/4 v4, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v26

    invoke-virtual {v0, v4, v1}, Landroid/view/View;->measure(II)V

    .line 514
    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int v24, v24, v4

    .line 511
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 484
    .end local v7    # "customPanel":Landroid/widget/LinearLayout;
    .end local v12    # "adapter":Landroid/widget/ListAdapter;
    .end local v13    # "custom":Landroid/widget/FrameLayout;
    .end local v18    # "i":I
    .end local v19    # "listItem":Landroid/view/View;
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "num":I
    .end local v24    # "totalHeight":I
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v11, v4}, Landroid/view/View;->setVisibility(I)V

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    goto/16 :goto_1

    .line 516
    .restart local v7    # "customPanel":Landroid/widget/LinearLayout;
    .restart local v12    # "adapter":Landroid/widget/ListAdapter;
    .restart local v13    # "custom":Landroid/widget/FrameLayout;
    .restart local v18    # "i":I
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v22    # "num":I
    .restart local v24    # "totalHeight":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x5

    add-int v4, v4, v24

    move-object/from16 v0, v20

    iput v4, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 517
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    .end local v12    # "adapter":Landroid/widget/ListAdapter;
    .end local v18    # "i":I
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v22    # "num":I
    .end local v24    # "totalHeight":I
    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_5

    .line 534
    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v26, 0x0

    move/from16 v0, v26

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 545
    .end local v13    # "custom":Landroid/widget/FrameLayout;
    :cond_5
    :goto_4
    if-eqz v10, :cond_10

    .line 546
    const/4 v14, 0x0

    .line 547
    .local v14, "divider":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mMessage:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    if-eqz v4, :cond_7

    .line 548
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v26, 0x7a090063

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v14

    .line 555
    :cond_7
    if-eqz v14, :cond_8

    .line 557
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    const/16 v16, 0x1

    .line 558
    .local v16, "hasTextTitle":Z
    :goto_5
    if-eqz v16, :cond_e

    .line 559
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    .line 566
    .end local v16    # "hasTextTitle":Z
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    if-nez v4, :cond_f

    .line 568
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 570
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v26, 0x7a09010b

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v23

    .line 573
    .local v23, "titleSpacer":Landroid/view/View;
    if-eqz v23, :cond_9

    .line 574
    const/4 v4, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .end local v14    # "divider":Landroid/view/View;
    .end local v23    # "titleSpacer":Landroid/view/View;
    :cond_9
    :goto_7
    move-object/from16 v4, p0

    .line 589
    invoke-direct/range {v4 .. v11}, Lcom/tencent/qrom/app/QromAlertController;->setBackground(Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/view/View;ZLandroid/content/res/TypedArray;ZLandroid/view/View;)V

    .line 590
    if-eqz v8, :cond_a

    .line 591
    const/4 v4, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v11, v4, v0, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 593
    :cond_a
    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    goto/16 :goto_0

    .line 522
    .restart local v13    # "custom":Landroid/widget/FrameLayout;
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 523
    .local v15, "h":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v26, 0x7a0d0063

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v0, v4

    move/from16 v21, v0

    .line 526
    .local v21, "mMaxHeight":I
    move/from16 v0, v21

    if-le v15, v0, :cond_4

    .line 527
    invoke-virtual {v13}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 528
    .restart local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 529
    move-object/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    .line 537
    .end local v13    # "custom":Landroid/widget/FrameLayout;
    .end local v15    # "h":I
    .end local v20    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v21    # "mMaxHeight":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const v26, 0x7a090067

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v26, 0x8

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 557
    .restart local v14    # "divider":Landroid/view/View;
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_5

    .line 561
    .restart local v16    # "hasTextTitle":Z
    :cond_e
    const/16 v4, 0x8

    invoke-virtual {v14, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 578
    .end local v16    # "hasTextTitle":Z
    :cond_f
    invoke-virtual {v14}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v17

    .line 579
    .local v17, "height":I
    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/view/View;->setMinimumHeight(I)V

    goto :goto_7

    .line 584
    .end local v14    # "divider":Landroid/view/View;
    .end local v17    # "height":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    if-nez v4, :cond_9

    .line 585
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/tencent/qrom/app/QromAlertController;->mMsgSpacer:Landroid/view/View;

    const/16 v26, 0x0

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_7
.end method

.method private static shouldCenterSingleButton(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 213
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 440
    packed-switch p1, :pswitch_data_0

    .line 448
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 442
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositive:Landroid/widget/Button;

    goto :goto_0

    .line 444
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegative:Landroid/widget/Button;

    goto :goto_0

    .line 446
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutral:Landroid/widget/Button;

    goto :goto_0

    .line 440
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIconAttributeResId(I)I
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 426
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 427
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 428
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 436
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public installContent()V
    .locals 3

    .prologue
    const/high16 v2, 0x20000

    .line 292
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 294
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    invoke-static {v0}, Lcom/tencent/qrom/app/QromAlertController;->canTextInput(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mWindow:Landroid/view/Window;

    iget v1, p0, Lcom/tencent/qrom/app/QromAlertController;->mAlertDialogLayout:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    .line 299
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromAlertController;->setupView()V

    .line 300
    return-void
.end method

.method public onGlobalLayout()V
    .locals 2

    .prologue
    .line 1516
    const-string v0, "AlertController"

    const-string v1, "onGlobalLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromAlertController;->responseGlobalLayout()V

    .line 1518
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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
    .line 459
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, p2}, Landroid/widget/ScrollView;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 6
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 360
    sget-object v1, Lcom/tencent/qrom/app/QromAlertController$ButtonColor;->BTN_NORMAL:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/QromAlertController;->setButton(Lcom/tencent/qrom/app/QromAlertController$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 361
    return-void
.end method

.method public setButton(Lcom/tencent/qrom/app/QromAlertController$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 2
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/QromAlertController$ButtonColor;
    .param p2, "whichButton"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "msg"    # Landroid/os/Message;

    .prologue
    .line 366
    if-nez p5, :cond_0

    if-eqz p4, :cond_0

    .line 367
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p2, p4}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p5

    .line 370
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 391
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Button does not exist"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 373
    :pswitch_0
    iput-object p3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 374
    iput-object p5, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 375
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mPositiveColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    .line 393
    :goto_0
    return-void

    .line 379
    :pswitch_1
    iput-object p3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 380
    iput-object p5, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 381
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mNegativeColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    goto :goto_0

    .line 385
    :pswitch_2
    iput-object p3, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 386
    iput-object p5, p0, Lcom/tencent/qrom/app/QromAlertController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 387
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mNeutralColor:Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    goto :goto_0

    .line 370
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setButtonColor(Landroid/widget/Button;Lcom/tencent/qrom/app/QromAlertController$ButtonColor;)V
    .locals 2
    .param p1, "button"    # Landroid/widget/Button;
    .param p2, "buttonColor"    # Lcom/tencent/qrom/app/QromAlertController$ButtonColor;

    .prologue
    .line 742
    sget-object v0, Lcom/tencent/qrom/app/QromAlertController$2;->$SwitchMap$com$tencent$qrom$app$QromAlertController$ButtonColor:[I

    invoke-virtual {p2}, Lcom/tencent/qrom/app/QromAlertController$ButtonColor;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 750
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    .line 754
    :goto_0
    return-void

    .line 744
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0b0038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 747
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7a0b002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 742
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
    .line 313
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mCustomTitleView:Landroid/view/View;

    .line 314
    return-void
.end method

.method public setIcon(I)V
    .locals 2
    .param p1, "resId"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconId:I

    .line 403
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 404
    if-lez p1, :cond_1

    .line 405
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    iget v1, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    if-nez p1, :cond_0

    .line 407
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 413
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 414
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 417
    :cond_0
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mForceInverseBackground:Z

    .line 433
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessage:Ljava/lang/CharSequence;

    .line 318
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 321
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitle:Ljava/lang/CharSequence;

    .line 304
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    :cond_0
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingSpecified:Z

    .line 329
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
    .line 336
    iput-object p1, p0, Lcom/tencent/qrom/app/QromAlertController;->mView:Landroid/view/View;

    .line 337
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingSpecified:Z

    .line 338
    iput p2, p0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingLeft:I

    .line 339
    iput p3, p0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingTop:I

    .line 340
    iput p4, p0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingRight:I

    .line 341
    iput p5, p0, Lcom/tencent/qrom/app/QromAlertController;->mViewSpacingBottom:I

    .line 342
    return-void
.end method
