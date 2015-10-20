.class Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;
.super Landroid/app/ProgressDialog;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager$21;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mMessageView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager$21;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 4817
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->this$1:Lcom/android/internal/policy/impl/PhoneWindowManager$21;

    invoke-direct {p0, p2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4856
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4844
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 4847
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 4860
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4850
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 4853
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 4823
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->onCreate(Landroid/os/Bundle;)V

    .line 4824
    const v1, 0x7a030013

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->setContentView(I)V

    .line 4825
    const v1, 0x102000b

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->mMessageView:Landroid/widget/TextView;

    .line 4826
    const v1, 0x102000d

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 4827
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 4828
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4830
    :cond_0
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 4834
    invoke-super {p0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4835
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 4836
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$21$1;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4839
    :cond_0
    return-void
.end method
