.class public Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
.super Ljava/lang/Object;
.source "ImmersiveModeConfirmation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;,
        Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_SHOW_EVERY_TIME:Z = false

.field private static final TAG:Ljava/lang/String; = "ImmersiveModeConfirmation"


# instance fields
.field private mClingWindow:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

.field private final mConfirmedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;

.field private mLastPackage:Ljava/lang/String;

.field private mPanicPackage:Ljava/lang/String;

.field private final mPanicThresholdMs:J

.field private mPanicTime:J

.field private mPromptPackage:Ljava/lang/String;

.field private final mShowDelayMs:J

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;

    .line 74
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    .line 75
    new-instance v0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mHandler:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;

    .line 76
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->getNavBarExitDuration()J

    move-result-wide v0

    const-wide/16 v2, 0x3

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mShowDelayMs:J

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    .line 81
    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)Landroid/util/ArraySet;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->saveSetting()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleHide()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->handleShow(Ljava/lang/String;)V

    return-void
.end method

.method private confirmAction(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 317
    new-instance v0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$1;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNavBarExitDuration()J
    .locals 3

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    const v2, 0x10a0015

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 85
    .local v0, "exit":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v1

    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method private handleHide()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    .line 168
    :cond_0
    return-void
.end method

.method private handleShow(Ljava/lang/String;)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPromptPackage:Ljava/lang/String;

    .line 304
    new-instance v1, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmAction(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;-><init>(Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;Landroid/content/Context;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    .line 307
    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    const/16 v2, 0x300

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;->setSystemUiVisibility(I)V

    .line 312
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 313
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mClingWindow:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$ClingWindowView;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 314
    return-void
.end method

.method private saveSetting()V
    .locals 5

    .prologue
    .line 108
    :try_start_0
    const-string v2, ","

    iget-object v3, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "packages":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "immersive_mode_confirmations"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v0    # "packages":Ljava/lang/String;
    :goto_0
    return-void

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving confirmations, mConfirmedPackages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private unconfirmPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 155
    if-eqz p1, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 158
    invoke-direct {p0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->saveSetting()V

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public confirmCurrentPrompt()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mHandler:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPromptPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->confirmAction(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void
.end method

.method public getBubbleLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 4

    .prologue
    .line 189
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x105007d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x2

    const/16 v3, 0x31

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    return-object v0
.end method

.method public getClingWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 6

    .prologue
    const/4 v1, -0x1

    .line 171
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d5

    const v4, 0x1000108

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 181
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 182
    const-string v1, "ImmersiveModeConfirmation"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 183
    const v1, 0x10301f5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 184
    const/16 v1, 0x77

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 185
    return-object v0
.end method

.method public immersiveModeChanged(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "isImmersiveMode"    # Z

    .prologue
    const/4 v2, 0x0

    .line 120
    if-nez p1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mHandler:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->removeMessages(I)V

    .line 124
    if-eqz p2, :cond_2

    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mLastPackage:Ljava/lang/String;

    .line 126
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mHandler:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;

    iget-object v1, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mHandler:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mShowDelayMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 130
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mLastPackage:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mHandler:Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation$H;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public loadSetting()V
    .locals 5

    .prologue
    .line 90
    iget-object v2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 91
    const/4 v0, 0x0

    .line 93
    .local v0, "packages":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "immersive_mode_confirmations"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mConfirmedPackages:Landroid/util/ArraySet;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v1

    .line 101
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "ImmersiveModeConfirmation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading confirmations, packages="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onPowerKeyDown(ZJZ)V
    .locals 4
    .param p1, "isScreenOn"    # Z
    .param p2, "time"    # J
    .param p4, "inImmersiveMode"    # Z

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    iget-wide v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicTime:J

    sub-long v0, p2, v0

    iget-wide v2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicThresholdMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicPackage:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->unconfirmPackage(Ljava/lang/String;)V

    .line 140
    :cond_0
    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    .line 142
    iput-wide p2, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicTime:J

    .line 143
    iget-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mLastPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicPackage:Ljava/lang/String;

    .line 148
    :goto_0
    return-void

    .line 145
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicTime:J

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/ImmersiveModeConfirmation;->mPanicPackage:Ljava/lang/String;

    goto :goto_0
.end method
