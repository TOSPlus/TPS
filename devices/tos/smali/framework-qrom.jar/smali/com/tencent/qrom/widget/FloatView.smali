.class public Lcom/tencent/qrom/widget/FloatView;
.super Ljava/lang/Object;
.source "FloatView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$Callback;
.implements Lcom/tencent/qrom/widget/FloatInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/widget/FloatView$ListenersHandler;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DENSITY_H:F = 1.5f

.field private static final DENSITY_XH:F = 2.0f

.field private static final DENSITY_XXH:F = 3.0f

.field private static final DISMISS:I = 0x43

.field private static final FLOATVIEW_HEIGHT:I = 0x44

.field private static final FLOATVIEW_HIERARCHY_TAG:Ljava/lang/String; = "android:floatviewHierachy"

.field private static final FLOATVIEW_SHOWING_TAG:Ljava/lang/String; = "android:floatviewShowing"

.field private static final SHOW:I = 0x45

.field private static final TAG:Ljava/lang/String; = "FloatView"

.field private static final WIDTH_H:F = 480.0f

.field private static final WIDTH_XH:F = 720.0f

.field private static final WIDTH_XXH:F = 1080.0f


# instance fields
.field private detector:Landroid/view/GestureDetector;

.field private isAnimatorFinish:Z

.field private isClick:Z

.field private isDefaultView:Z

.field private mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

.field private mActionMode:Landroid/view/ActionMode;

.field private mAnimationStyle:I

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mCreated:Z

.field private mCustomFloatView:Landroid/view/View;

.field mDecor:Landroid/view/View;

.field mDecorLp:Landroid/view/WindowManager$LayoutParams;

.field private mDefaultContent:Landroid/view/View;

.field private mDefaultFloatView:Landroid/view/View;

.field private mDefaultIcon:Landroid/widget/ImageView;

.field private mDefaultSubTitle:Landroid/widget/TextView;

.field private mDefaultTime:Landroid/widget/TextView;

.field private mDefaultTitle:Landroid/widget/TextView;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDownPositionX:F

.field private mLastDownPositionY:F

.field private mLastUpPositionX:F

.field private mLastUpPositionY:F

.field private mListenersHandler:Landroid/os/Handler;

.field private mOnContentClickListener:Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;

.field private mOnKeyListener:Lcom/tencent/qrom/widget/FloatInterface$OnKeyListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field private final mUiThread:Ljava/lang/Thread;

.field mWindow:Landroid/view/Window;

.field final mWindowManager:Landroid/view/WindowManager;

.field private showFromTop:Z

.field private statusBarHeight:I

.field private viewHeight:I

.field private viewWidth:I

.field private xDownInScreen:F

.field private xInScreen:F

.field private xInView:F

.field private yDownInScreen:F

.field private yInScreen:F

.field private yInView:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 132
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/widget/FloatView;-><init>(Landroid/content/Context;Z)V

    .line 133
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultView"    # Z

    .prologue
    .line 136
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/tencent/qrom/widget/FloatView;-><init>(Landroid/content/Context;ZZ)V

    .line 137
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLcom/tencent/qrom/widget/FloatInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;

    .prologue
    .line 227
    invoke-direct {p0, p1}, Lcom/tencent/qrom/widget/FloatView;-><init>(Landroid/content/Context;)V

    .line 228
    iput-boolean p2, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelable:Z

    .line 229
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/widget/FloatView;->setOnCancelListener(Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;)V

    .line 230
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isHoloLight"    # Z
    .param p3, "defaultView"    # Z

    .prologue
    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/tencent/qrom/widget/FloatView;-><init>(Landroid/content/Context;ZZZ)V

    .line 141
    return-void
.end method

.method constructor <init>(Landroid/content/Context;ZZZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isHoloLight"    # Z
    .param p3, "createContextThemeWrapper"    # Z
    .param p4, "defaultView"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelable:Z

    .line 78
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/FloatView;->mCreated:Z

    .line 79
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    .line 80
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/FloatView;->mCanceled:Z

    .line 83
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mHandler:Landroid/os/Handler;

    .line 94
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/FloatView;->isDefaultView:Z

    .line 102
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/FloatView;->isClick:Z

    .line 106
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mOnContentClickListener:Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;

    .line 108
    new-instance v2, Lcom/tencent/qrom/widget/FloatView$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/widget/FloatView$1;-><init>(Lcom/tencent/qrom/widget/FloatView;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissAction:Ljava/lang/Runnable;

    .line 119
    const/4 v2, -0x1

    iput v2, p0, Lcom/tencent/qrom/widget/FloatView;->mAnimationStyle:I

    .line 1114
    iput-boolean v3, p0, Lcom/tencent/qrom/widget/FloatView;->isAnimatorFinish:Z

    .line 184
    iput-boolean p4, p0, Lcom/tencent/qrom/widget/FloatView;->isDefaultView:Z

    .line 185
    if-eqz p2, :cond_0

    const v0, 0x7a0f009d

    .line 186
    .local v0, "theme":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 187
    if-eqz p3, :cond_1

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_1
    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    .line 188
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindowManager:Landroid/view/WindowManager;

    .line 189
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .line 190
    .local v1, "w":Landroid/view/Window;
    iput-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    .line 191
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 192
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->getMyLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 194
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mDecorLp:Landroid/view/WindowManager$LayoutParams;

    .line 195
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->getMyLayoutParamsForDecor()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mDecorLp:Landroid/view/WindowManager$LayoutParams;

    .line 197
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->makeDefaultContentView()V

    .line 199
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mUiThread:Ljava/lang/Thread;

    .line 200
    new-instance v2, Lcom/tencent/qrom/widget/FloatView$ListenersHandler;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/widget/FloatView$ListenersHandler;-><init>(Lcom/tencent/qrom/widget/FloatView;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mListenersHandler:Landroid/os/Handler;

    .line 201
    new-instance v2, Landroid/view/GestureDetector;

    invoke-direct {v2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->detector:Landroid/view/GestureDetector;

    .line 202
    return-void

    .line 185
    .end local v0    # "theme":I
    .end local v1    # "w":Landroid/view/Window;
    :cond_0
    const v0, 0x7a0f009c

    goto :goto_0

    .restart local v0    # "theme":I
    :cond_1
    move-object v2, p1

    .line 187
    goto :goto_1
.end method

.method static synthetic access$000(Lcom/tencent/qrom/widget/FloatView;)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionX:F

    return v0
.end method

.method static synthetic access$002(Lcom/tencent/qrom/widget/FloatView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionX:F

    return p1
.end method

.method static synthetic access$100(Lcom/tencent/qrom/widget/FloatView;)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionY:F

    return v0
.end method

.method static synthetic access$102(Lcom/tencent/qrom/widget/FloatView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/tencent/qrom/widget/FloatView;->mLastDownPositionY:F

    return p1
.end method

.method static synthetic access$200(Lcom/tencent/qrom/widget/FloatView;)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionX:F

    return v0
.end method

.method static synthetic access$202(Lcom/tencent/qrom/widget/FloatView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionX:F

    return p1
.end method

.method static synthetic access$300(Lcom/tencent/qrom/widget/FloatView;)F
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget v0, p0, Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionY:F

    return v0
.end method

.method static synthetic access$302(Lcom/tencent/qrom/widget/FloatView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;
    .param p1, "x1"    # F

    .prologue
    .line 61
    iput p1, p0, Lcom/tencent/qrom/widget/FloatView;->mLastUpPositionY:F

    return p1
.end method

.method static synthetic access$400(Lcom/tencent/qrom/widget/FloatView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->isClick:Z

    return v0
.end method

.method static synthetic access$402(Lcom/tencent/qrom/widget/FloatView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;
    .param p1, "x1"    # Z

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/FloatView;->isClick:Z

    return p1
.end method

.method static synthetic access$500(Lcom/tencent/qrom/widget/FloatView;)Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mOnContentClickListener:Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;

    return-object v0
.end method

.method static synthetic access$600(Lcom/tencent/qrom/widget/FloatView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/tencent/qrom/widget/FloatView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/tencent/qrom/widget/FloatView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/widget/FloatView;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultSubTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private computeAnimationResource()I
    .locals 2

    .prologue
    .line 1032
    iget v0, p0, Lcom/tencent/qrom/widget/FloatView;->mAnimationStyle:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1033
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->showFromTop:Z

    if-eqz v0, :cond_0

    const v0, 0x7a0f009e

    .line 1035
    :goto_0
    return v0

    .line 1033
    :cond_0
    const v0, 0x7a0f009f

    goto :goto_0

    .line 1035
    :cond_1
    iget v0, p0, Lcom/tencent/qrom/widget/FloatView;->mAnimationStyle:I

    goto :goto_0
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 875
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mOwnerActivity:Landroid/app/Activity;

    .line 876
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 877
    .local v1, "context":Landroid/content/Context;
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 878
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    .line 879
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    .end local v0    # "activity":Landroid/app/Activity;
    check-cast v0, Landroid/app/Activity;

    .restart local v0    # "activity":Landroid/app/Activity;
    goto :goto_0

    .line 882
    :cond_0
    instance-of v3, v1, Landroid/content/ContextWrapper;

    if-eqz v3, :cond_1

    check-cast v1, Landroid/content/ContextWrapper;

    .end local v1    # "context":Landroid/content/Context;
    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    .restart local v1    # "context":Landroid/content/Context;
    :goto_1
    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_1

    .line 885
    :cond_2
    if-nez v0, :cond_3

    :goto_2
    return-object v2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_2
.end method

.method private getMyLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 145
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e0

    const v4, 0x40128

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 155
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 156
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 157
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 158
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 161
    return-object v0
.end method

.method private getMyLayoutParamsForDecor()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 166
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->getScreenDensity()I

    move-result v2

    mul-int/lit8 v2, v2, 0x44

    const/16 v3, 0x7e0

    const v4, 0x40128

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 175
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 176
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 177
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 178
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 180
    return-object v0
.end method

.method private getScreenDensity()I
    .locals 8

    .prologue
    .line 1180
    const/4 v5, 0x0

    .line 1181
    .local v5, "widthPixels":I
    iget-object v6, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1182
    .local v3, "manager":Landroid/view/WindowManager;
    if-eqz v3, :cond_3

    .line 1183
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1184
    .local v2, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 1185
    .local v1, "display":Landroid/view/Display;
    if-eqz v1, :cond_3

    .line 1186
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1187
    iget v5, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1188
    iget v4, v2, Landroid/util/DisplayMetrics;->density:F

    .line 1189
    .local v4, "originDensity":F
    const/4 v0, 0x0

    .line 1190
    .local v0, "adaptDensity":F
    int-to-float v6, v5

    const/high16 v7, 0x44870000    # 1080.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1

    .line 1191
    const/high16 v0, 0x40400000    # 3.0f

    .line 1200
    :cond_0
    :goto_0
    float-to-int v6, v4

    .line 1203
    .end local v0    # "adaptDensity":F
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "originDensity":F
    :goto_1
    return v6

    .line 1192
    .restart local v0    # "adaptDensity":F
    .restart local v1    # "display":Landroid/view/Display;
    .restart local v2    # "dm":Landroid/util/DisplayMetrics;
    .restart local v4    # "originDensity":F
    :cond_1
    int-to-float v6, v5

    const/high16 v7, 0x44340000    # 720.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2

    .line 1193
    const/high16 v0, 0x40000000    # 2.0f

    goto :goto_0

    .line 1194
    :cond_2
    int-to-float v6, v5

    const/high16 v7, 0x43f00000    # 480.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_0

    .line 1195
    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    .line 1203
    .end local v0    # "adaptDensity":F
    .end local v1    # "display":Landroid/view/Display;
    .end local v2    # "dm":Landroid/util/DisplayMetrics;
    .end local v4    # "originDensity":F
    :cond_3
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private getStatusBarHeight()I
    .locals 1

    .prologue
    .line 590
    const/4 v0, 0x0

    return v0
.end method

.method private initDefaultFloatView()V
    .locals 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultFloatView:Landroid/view/View;

    const v1, 0x7a09014f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultContent:Landroid/view/View;

    .line 447
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultContent:Landroid/view/View;

    new-instance v1, Lcom/tencent/qrom/widget/FloatView$3;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/FloatView$3;-><init>(Lcom/tencent/qrom/widget/FloatView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 474
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultContent:Landroid/view/View;

    new-instance v1, Lcom/tencent/qrom/widget/FloatView$4;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/FloatView$4;-><init>(Lcom/tencent/qrom/widget/FloatView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultFloatView:Landroid/view/View;

    const v1, 0x7a09014c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultIcon:Landroid/widget/ImageView;

    .line 488
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultFloatView:Landroid/view/View;

    const v1, 0x7a09014d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultTitle:Landroid/widget/TextView;

    .line 489
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultFloatView:Landroid/view/View;

    const v1, 0x7a09014e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultSubTitle:Landroid/widget/TextView;

    .line 490
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultFloatView:Landroid/view/View;

    const v1, 0x7a090163

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultTime:Landroid/widget/TextView;

    .line 491
    return-void
.end method

.method private makeDefaultContentView()V
    .locals 3

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->isDefaultView:Z

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 439
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7a030029

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultFloatView:Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultFloatView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/FloatView;->setContentView(Landroid/view/View;)V

    .line 441
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->initDefaultFloatView()V

    .line 443
    :cond_0
    return-void
.end method

.method private sendDismissMessage()V
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 371
    :cond_0
    return-void
.end method

.method private sendShowMessage()V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mShowMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 377
    :cond_0
    return-void
.end method

.method private setFloatViewAnimator()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x7d0

    const/4 v6, 0x2

    .line 1207
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 1208
    .local v2, "set":Landroid/animation/AnimatorSet;
    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mCustomFloatView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 1209
    .local v0, "anim1":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1210
    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mCustomFloatView:Landroid/view/View;

    const-string v4, "alpha"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 1211
    .local v1, "anim2":Landroid/animation/ObjectAnimator;
    invoke-virtual {v1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 1212
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1213
    new-instance v3, Lcom/tencent/qrom/widget/FloatView$7;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/widget/FloatView$7;-><init>(Lcom/tencent/qrom/widget/FloatView;)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1235
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 1237
    return-void

    .line 1208
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 1210
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateFloatViewPosition()V
    .locals 4

    .prologue
    .line 594
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 595
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 596
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, p0, Lcom/tencent/qrom/widget/FloatView;->xInScreen:F

    iget v3, p0, Lcom/tencent/qrom/widget/FloatView;->xInView:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 597
    iget v2, p0, Lcom/tencent/qrom/widget/FloatView;->yInScreen:F

    iget v3, p0, Lcom/tencent/qrom/widget/FloatView;->yInView:F

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 598
    iget v2, p0, Lcom/tencent/qrom/widget/FloatView;->viewWidth:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 599
    iget v2, p0, Lcom/tencent/qrom/widget/FloatView;->viewHeight:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 600
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/FloatView;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 601
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 522
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 523
    return-void
.end method

.method public animatorIsFinish()Z
    .locals 1

    .prologue
    .line 1116
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->isAnimatorFinish:Z

    return v0
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 680
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 681
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCanceled:Z

    .line 682
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 684
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->dismiss()V

    .line 685
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    .line 957
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 958
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 311
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 312
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 319
    :goto_0
    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 317
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public dismissDelayed(J)V
    .locals 4
    .param p1, "delay"    # J

    .prologue
    .line 322
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mUiThread:Ljava/lang/Thread;

    if-eq v2, v3, :cond_0

    .line 323
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 324
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 336
    :goto_0
    return-void

    .line 327
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 328
    new-instance v0, Lcom/tencent/qrom/widget/FloatView$2;

    invoke-direct {v0, p0}, Lcom/tencent/qrom/widget/FloatView$2;-><init>(Lcom/tencent/qrom/widget/FloatView;)V

    .line 333
    .local v0, "dismissTask":Ljava/util/TimerTask;
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    .line 334
    .local v1, "timer":Ljava/util/Timer;
    invoke-virtual {v1, v0, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method dismissFloatView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 339
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    if-nez v0, :cond_1

    .line 359
    :cond_0
    :goto_0
    return-void

    .line 343
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 350
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 352
    :cond_2
    iput-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    .line 353
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 354
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->onStop()V

    .line 355
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    .line 357
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->sendDismissMessage()V

    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_3

    .line 350
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 352
    :cond_3
    iput-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    .line 353
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 354
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->onStop()V

    .line 355
    iput-boolean v2, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    .line 357
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->sendDismissMessage()V

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 752
    const/4 v0, 0x1

    .line 754
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/FloatView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 759
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mOnKeyListener:Lcom/tencent/qrom/widget/FloatInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mOnKeyListener:Lcom/tencent/qrom/widget/FloatInterface$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Lcom/tencent/qrom/widget/FloatInterface$OnKeyListener;->onKey(Lcom/tencent/qrom/widget/FloatInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 765
    :cond_0
    :goto_0
    return v0

    .line 762
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 765
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, p0, v0, p0}, Landroid/view/KeyEvent;->dispatch(Landroid/view/KeyEvent$Callback;Landroid/view/KeyEvent$DispatcherState;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 771
    const/4 v0, 0x1

    .line 773
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qrom/widget/FloatView;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 380
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCreated:Z

    if-nez v0, :cond_0

    .line 381
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/FloatView;->onCreate(Landroid/os/Bundle;)V

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCreated:Z

    .line 384
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 778
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 779
    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 781
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 782
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 783
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 785
    return v2

    .end local v0    # "isFullScreen":Z
    :cond_0
    move v0, v2

    .line 782
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 790
    const/4 v0, 0x1

    .line 792
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/FloatView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 796
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 797
    const/4 v0, 0x1

    .line 799
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/FloatView;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Lcom/tencent/qrom/app/ActionBar;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    return-object v0
.end method

.method public getAlpha()F
    .locals 3

    .prologue
    .line 653
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 654
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 655
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    return v2
.end method

.method public getAnimationStyle()I
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/tencent/qrom/widget/FloatView;->mAnimationStyle:I

    return v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHeight()I
    .locals 3

    .prologue
    .line 640
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 641
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 642
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    return v2
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 913
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWidth()I
    .locals 3

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 635
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 636
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    return v2
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public getX()I
    .locals 3

    .prologue
    .line 612
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 613
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 614
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    return v2
.end method

.method public getY()I
    .locals 3

    .prologue
    .line 618
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 619
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 620
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    return v2
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 961
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 962
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 251
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 803
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_0

    .line 804
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionMode:Landroid/view/ActionMode;

    .line 806
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 809
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView;->mActionMode:Landroid/view/ActionMode;

    .line 810
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 815
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 571
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 572
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->cancel()V

    .line 574
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 820
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 986
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 388
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 966
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 937
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 824
    if-nez p1, :cond_0

    .line 825
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/widget/FloatView;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 827
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 832
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 838
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1040
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/high16 v1, 0x44fa0000    # 2000.0f

    .line 1046
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 1047
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->dismiss()V

    .line 1049
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 663
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 547
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 548
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 549
    const/4 v0, 0x1

    .line 551
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 555
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "count"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 567
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 577
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 559
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->onBackPressed()V

    .line 561
    const/4 v0, 0x1

    .line 563
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1055
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 842
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 847
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 945
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 950
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 0
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 853
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 941
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    .line 857
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 413
    const-string v1, "android:floatviewHierachy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 414
    .local v0, "floatviewHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 422
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/FloatView;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 418
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 419
    const-string v1, "android:floatviewShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/FloatView;->show(Z)V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:floatviewShowing"

    iget-boolean v2, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 406
    iget-boolean v1, p0, Lcom/tencent/qrom/widget/FloatView;->mCreated:Z

    if-eqz v1, :cond_0

    .line 407
    const-string v1, "android:floatviewHierachy"

    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 409
    :cond_0
    return-object v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1060
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1070
    :goto_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_1

    .line 1081
    :cond_0
    :goto_1
    const/4 v1, 0x0

    return v1

    .line 1062
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/FloatView;->xInView:F

    .line 1063
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/FloatView;->yInView:F

    .line 1064
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/FloatView;->xDownInScreen:F

    .line 1065
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->getStatusBarHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/FloatView;->yDownInScreen:F

    .line 1066
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/FloatView;->xInScreen:F

    .line 1067
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->getStatusBarHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/FloatView;->yInScreen:F

    goto :goto_0

    .line 1072
    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/widget/FloatView;->xInScreen:F

    .line 1073
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->getStatusBarHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/tencent/qrom/widget/FloatView;->yInScreen:F

    .line 1074
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->updateFloatViewPosition()V

    .line 1075
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1076
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1077
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_1

    .line 1060
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 1070
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 862
    iget-object v4, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 863
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 864
    .local v3, "appName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v1

    move v5, v2

    .line 865
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 866
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->dismiss()V

    .line 867
    const/4 v2, 0x1

    .line 870
    :cond_0
    return v2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1086
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 1090
    const/4 v0, 0x0

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 392
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 393
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 396
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 398
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 582
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 583
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->cancel()V

    .line 584
    const/4 v0, 0x1

    .line 586
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 659
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 918
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 921
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 926
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 930
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 933
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 977
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 978
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    .line 953
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 954
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 969
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 970
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public setAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 647
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 648
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 649
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/FloatView;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 650
    return-void
.end method

.method public setAnimationStyle(I)V
    .locals 0
    .param p1, "mAnimationStyle"    # I

    .prologue
    .line 1028
    iput p1, p0, Lcom/tencent/qrom/widget/FloatView;->mAnimationStyle:I

    .line 1029
    return-void
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 701
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelMessage:Landroid/os/Message;

    .line 702
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 667
    iput-boolean p1, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelable:Z

    .line 668
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 671
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelable:Z

    if-nez v0, :cond_0

    .line 672
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelable:Z

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 675
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 512
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 513
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/FloatView;->setContentView(Landroid/view/View;)V

    .line 514
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 517
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView;->mCustomFloatView:Landroid/view/View;

    .line 518
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mCustomFloatView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 519
    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 722
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissMessage:Landroid/os/Message;

    .line 723
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 905
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 906
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 909
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 910
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 897
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 898
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 901
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 902
    return-void
.end method

.method public setFloatViewHeight()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 209
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7e0

    const v4, 0x40128

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 218
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 219
    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 220
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 221
    iput v6, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 223
    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDecorLp:Landroid/view/WindowManager$LayoutParams;

    .line 224
    return-void
.end method

.method public setFloatViewWindowBk()V
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x7a0b0000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 206
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 493
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 494
    return-void
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 501
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "resDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 497
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 498
    return-void
.end method

.method public setOnCancelListener(Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;

    .prologue
    .line 688
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 689
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 692
    :cond_0
    if-eqz p1, :cond_1

    .line 693
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelMessage:Landroid/os/Message;

    .line 698
    :goto_0
    return-void

    .line 696
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnContentClickListener(Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;

    .prologue
    .line 706
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView;->mOnContentClickListener:Lcom/tencent/qrom/widget/FloatInterface$OnContentClickListener;

    .line 707
    return-void
.end method

.method public setOnDismissListener(Lcom/tencent/qrom/widget/FloatInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Lcom/tencent/qrom/widget/FloatInterface$OnDismissListener;

    .prologue
    .line 709
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 710
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 713
    :cond_0
    if-eqz p1, :cond_1

    .line 714
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissMessage:Landroid/os/Message;

    .line 719
    :goto_0
    return-void

    .line 717
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnKeyListener(Lcom/tencent/qrom/widget/FloatInterface$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Lcom/tencent/qrom/widget/FloatInterface$OnKeyListener;

    .prologue
    .line 997
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView;->mOnKeyListener:Lcom/tencent/qrom/widget/FloatInterface$OnKeyListener;

    .line 998
    return-void
.end method

.method public setOnShowListener(Lcom/tencent/qrom/widget/FloatInterface$onShowListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/tencent/qrom/widget/FloatInterface$onShowListener;

    .prologue
    .line 726
    if-eqz p1, :cond_0

    .line 727
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mShowMessage:Landroid/os/Message;

    .line 732
    :goto_0
    return-void

    .line 730
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mShowMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 242
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView;->mOwnerActivity:Landroid/app/Activity;

    .line 243
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 244
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 604
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 605
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 606
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 607
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 608
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/FloatView;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 609
    return-void
.end method

.method public setSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 624
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 625
    .local v0, "dialogWindow":Landroid/view/Window;
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 626
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 627
    iput p2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 628
    iput p1, p0, Lcom/tencent/qrom/widget/FloatView;->viewWidth:I

    .line 629
    iput p2, p0, Lcom/tencent/qrom/widget/FloatView;->viewHeight:I

    .line 630
    invoke-virtual {p0, v1}, Lcom/tencent/qrom/widget/FloatView;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 631
    return-void
.end method

.method public setSlideInAnimator()V
    .locals 3

    .prologue
    .line 1156
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    const v2, 0x7a040014

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1157
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/tencent/qrom/widget/FloatView$6;

    invoke-direct {v1, p0}, Lcom/tencent/qrom/widget/FloatView$6;-><init>(Lcom/tencent/qrom/widget/FloatView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1174
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultContent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1175
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1177
    :cond_0
    return-void
.end method

.method public setSlideOutAnimator(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 1120
    const-string v1, "FloatView"

    const-string v2, "setSlideOutAnimator"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1122
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    const v2, 0x7a040016

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1124
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v1, Lcom/tencent/qrom/widget/FloatView$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/tencent/qrom/widget/FloatView$5;-><init>(Lcom/tencent/qrom/widget/FloatView;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1147
    const-string v1, "FloatView"

    const-string v2, "setSlideOutAnimator mCustomFloatView before"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultContent:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1149
    const-string v1, "FloatView"

    const-string v2, "setSlideOutAnimator mCustomFloatView "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultContent:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1152
    :cond_0
    const-string v1, "FloatView"

    const-string v2, "setSlideOutAnimator mCustomFloatView after"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    return-void
.end method

.method public setSubTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 504
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 505
    return-void
.end method

.method public setSubTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .prologue
    .line 508
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method public setTime(I)V
    .locals 1
    .param p1, "timeId"    # I

    .prologue
    .line 543
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 544
    return-void
.end method

.method public setTime(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "time"    # Ljava/lang/CharSequence;

    .prologue
    .line 539
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 535
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/FloatView;->setTitle(Ljava/lang/CharSequence;)V

    .line 536
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 526
    iget-boolean v0, p0, Lcom/tencent/qrom/widget/FloatView;->isDefaultView:Z

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDefaultTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 532
    :goto_0
    return-void

    .line 529
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 989
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 990
    return-void
.end method

.method public show(Z)V
    .locals 5
    .param p1, "isAutoDismiss"    # Z

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 255
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    if-eqz v2, :cond_2

    .line 256
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 257
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 260
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 305
    :cond_1
    :goto_0
    return-void

    .line 265
    :cond_2
    iput-boolean v4, p0, Lcom/tencent/qrom/widget/FloatView;->mCanceled:Z

    .line 267
    iget-boolean v2, p0, Lcom/tencent/qrom/widget/FloatView;->mCreated:Z

    if-nez v2, :cond_3

    .line 268
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/widget/FloatView;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 271
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->onStart()V

    .line 272
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    .line 274
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, v3}, Landroid/view/Window;->hasFeature(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 275
    new-instance v2, Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;-><init>(Lcom/tencent/qrom/widget/FloatView;)V

    iput-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .line 278
    :cond_4
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 279
    .local v0, "l":Landroid/view/WindowManager$LayoutParams;
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v2, v2, 0x100

    if-nez v2, :cond_5

    .line 280
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 281
    .local v1, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 282
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 283
    move-object v0, v1

    .line 284
    const-string v2, "floatview"

    const-string v3, "l.softInputMode SOFT_INPUT_IS_FORWARD_NAVIGATION "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v1    # "nl":Landroid/view/WindowManager$LayoutParams;
    :cond_5
    :try_start_0
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_6

    .line 289
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/FloatView;->showFromTop:Z

    .line 291
    :cond_6
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDecorLp:Landroid/view/WindowManager$LayoutParams;

    .line 292
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->computeAnimationResource()I

    move-result v2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 293
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, p0, Lcom/tencent/qrom/widget/FloatView;->viewWidth:I

    .line 294
    iget v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v2, p0, Lcom/tencent/qrom/widget/FloatView;->viewHeight:I

    .line 296
    iget-object v2, p0, Lcom/tencent/qrom/widget/FloatView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/tencent/qrom/widget/FloatView;->mDecor:Landroid/view/View;

    invoke-interface {v2, v3, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 297
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/tencent/qrom/widget/FloatView;->mShowing:Z

    .line 298
    invoke-direct {p0}, Lcom/tencent/qrom/widget/FloatView;->sendShowMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    if-eqz p1, :cond_1

    .line 303
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v2, v3}, Lcom/tencent/qrom/widget/FloatView;->dismissDelayed(J)V

    goto/16 :goto_0

    .line 299
    :catchall_0
    move-exception v2

    throw v2
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;Lcom/tencent/qrom/widget/FloatInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;
    .param p3, "dismiss"    # Lcom/tencent/qrom/widget/FloatInterface$OnDismissListener;

    .prologue
    .line 736
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 737
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 742
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/widget/FloatView;->setOnCancelListener(Lcom/tencent/qrom/widget/FloatInterface$OnCancelListener;)V

    .line 743
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/widget/FloatView;->setOnDismissListener(Lcom/tencent/qrom/widget/FloatInterface$OnDismissListener;)V

    .line 744
    iput-object p1, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 746
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 739
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 889
    iget-object v0, p0, Lcom/tencent/qrom/widget/FloatView;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 890
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 973
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 974
    return-void
.end method

.method public update(I)V
    .locals 3
    .param p1, "layoutId"    # I

    .prologue
    .line 1104
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 1105
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/FloatView;->update(Landroid/view/View;)V

    .line 1106
    return-void
.end method

.method public update(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/tencent/qrom/widget/FloatView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1096
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v0, p2, p3}, Lcom/tencent/qrom/widget/FloatView;->setSlideOutAnimator(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    return-void
.end method

.method public update(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "subtitle"    # Ljava/lang/String;

    .prologue
    .line 1100
    invoke-virtual {p0, p1, p2, p3}, Lcom/tencent/qrom/widget/FloatView;->setSlideOutAnimator(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;)V

    .line 1101
    return-void
.end method

.method public update(Landroid/view/View;)V
    .locals 1
    .param p1, "customView"    # Landroid/view/View;

    .prologue
    .line 1109
    invoke-virtual {p0}, Lcom/tencent/qrom/widget/FloatView;->dismiss()V

    .line 1110
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/widget/FloatView;->setContentView(Landroid/view/View;)V

    .line 1111
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/widget/FloatView;->show(Z)V

    .line 1112
    return-void
.end method
