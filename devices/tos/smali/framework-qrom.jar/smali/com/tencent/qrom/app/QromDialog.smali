.class public Lcom/tencent/qrom/app/QromDialog;
.super Ljava/lang/Object;
.source "QromDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;
.implements Landroid/view/KeyEvent$Callback;
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/QromDialog$ListenersHandler;
    }
.end annotation


# static fields
.field private static final CANCEL:I = 0x44

.field private static final DIALOG_HIERARCHY_TAG:Ljava/lang/String; = "android:dialogHierarchy"

.field private static final DIALOG_SHOWING_TAG:Ljava/lang/String; = "android:dialogShowing"

.field private static final DISMISS:I = 0x43

.field private static final SHOW:I = 0x45

.field private static final TAG:Ljava/lang/String; = "Dialog"


# instance fields
.field private bQromDismissDialog:Z

.field private mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

.field private mActionMode:Landroid/view/ActionMode;

.field private mCancelAndDismissTaken:Ljava/lang/String;

.field private mCancelMessage:Landroid/os/Message;

.field protected mCancelable:Z

.field private mCanceled:Z

.field mContentParent:Landroid/view/ViewGroup;

.field final mContext:Landroid/content/Context;

.field private mCreated:Z

.field mDecor:Landroid/view/View;

.field mDialogView:Landroid/view/View;

.field private final mDismissAction:Ljava/lang/Runnable;

.field private mDismissMessage:Landroid/os/Message;

.field private final mHandler:Landroid/os/Handler;

.field private mListenersHandler:Landroid/os/Handler;

.field private mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field private mOwnerActivity:Landroid/app/Activity;

.field mPhoneWindowContent:Landroid/view/ViewGroup;

.field mShowActionbar:Z

.field private mShowMessage:Landroid/os/Message;

.field private mShowing:Z

.field mTitle:Ljava/lang/CharSequence;

.field private final mUiThread:Ljava/lang/Thread;

.field mWindow:Landroid/view/Window;

.field final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 156
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;IZ)V

    .line 157
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 172
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;IZ)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createContextWrapper"    # Z

    .prologue
    .line 177
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createContextWrapper"    # Z
    .param p4, "isBottomDialog"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-boolean v5, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelable:Z

    .line 109
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromDialog;->mCreated:Z

    .line 110
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    .line 111
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromDialog;->mCanceled:Z

    .line 114
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mHandler:Landroid/os/Handler;

    .line 122
    iput-boolean v5, p0, Lcom/tencent/qrom/app/QromDialog;->bQromDismissDialog:Z

    .line 132
    iput-object v4, p0, Lcom/tencent/qrom/app/QromDialog;->mPhoneWindowContent:Landroid/view/ViewGroup;

    .line 133
    iput-object v4, p0, Lcom/tencent/qrom/app/QromDialog;->mDialogView:Landroid/view/View;

    .line 134
    iput-object v4, p0, Lcom/tencent/qrom/app/QromDialog;->mContentParent:Landroid/view/ViewGroup;

    .line 135
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromDialog;->mShowActionbar:Z

    .line 142
    new-instance v2, Lcom/tencent/qrom/app/QromDialog$1;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/app/QromDialog$1;-><init>(Lcom/tencent/qrom/app/QromDialog;)V

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissAction:Ljava/lang/Runnable;

    .line 181
    if-nez p2, :cond_0

    .line 182
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 183
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010308

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 184
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 186
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_0
    if-eqz p4, :cond_1

    .line 187
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 188
    .restart local v0    # "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x7a0101f3

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 189
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 192
    .end local v0    # "outValue":Landroid/util/TypedValue;
    :cond_1
    if-eqz p3, :cond_2

    new-instance v2, Landroid/view/ContextThemeWrapper;

    invoke-direct {v2, p1, p2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    :goto_0
    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    .line 193
    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mWindowManager:Landroid/view/WindowManager;

    .line 194
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/policy/PolicyManager;->makeNewWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v1

    .line 195
    .local v1, "w":Landroid/view/Window;
    iput-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    .line 196
    invoke-virtual {v1, p0}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 197
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {v1, v2, v4, v4}, Landroid/view/Window;->setWindowManager(Landroid/view/WindowManager;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 198
    if-eqz p4, :cond_3

    .line 199
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 203
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mUiThread:Ljava/lang/Thread;

    .line 204
    new-instance v2, Lcom/tencent/qrom/app/QromDialog$ListenersHandler;

    invoke-direct {v2, p0}, Lcom/tencent/qrom/app/QromDialog$ListenersHandler;-><init>(Lcom/tencent/qrom/app/QromDialog;)V

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mListenersHandler:Landroid/os/Handler;

    .line 205
    return-void

    .end local v1    # "w":Landroid/view/Window;
    :cond_2
    move-object v2, p1

    .line 192
    goto :goto_0

    .line 201
    .restart local v1    # "w":Landroid/view/Window;
    :cond_3
    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBottomDialog"    # Z

    .prologue
    .line 208
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 209
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;)V

    .line 231
    iput-boolean p2, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelable:Z

    .line 232
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/app/QromDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 233
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/os/Message;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelCallback"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 224
    invoke-direct {p0, p1}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;)V

    .line 225
    iput-boolean p2, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelable:Z

    .line 226
    iput-object p3, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelMessage:Landroid/os/Message;

    .line 227
    return-void
.end method

.method private getAssociatedActivity()Landroid/content/ComponentName;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1076
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mOwnerActivity:Landroid/app/Activity;

    .line 1077
    .local v0, "activity":Landroid/app/Activity;
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1078
    .local v1, "context":Landroid/content/Context;
    :goto_0
    if-nez v0, :cond_2

    if-eqz v1, :cond_2

    .line 1079
    instance-of v3, v1, Landroid/app/Activity;

    if-eqz v3, :cond_0

    move-object v0, v1

    .line 1080
    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    .line 1082
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

    .line 1088
    :cond_2
    if-nez v0, :cond_3

    :goto_2
    return-object v2

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    goto :goto_2
.end method

.method private sendDismissMessage()V
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 384
    :cond_0
    return-void
.end method

.method private sendShowMessage()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mShowMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mShowMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 391
    :cond_0
    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 589
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 590
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 1176
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCanceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCanceled:Z

    .line 1179
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelMessage:Landroid/os/Message;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Message;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1181
    :cond_0
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 1182
    return-void
.end method

.method public closeOptionsMenu()V
    .locals 2

    .prologue
    .line 976
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->closePanel(I)V

    .line 977
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 346
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mUiThread:Ljava/lang/Thread;

    if-eq v0, v1, :cond_0

    .line 347
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 352
    :goto_0
    return-void

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 350
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method dismissDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 355
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->bQromDismissDialog:Z

    if-nez v0, :cond_1

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 359
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 360
    const-string v0, "Dialog"

    const-string v1, "Tried to dismissDialog() but the Dialog\'s window was already destroyed!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 365
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_3

    .line 368
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 370
    :cond_3
    iput-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    .line 371
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->closeAllPanels()V

    .line 372
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->onStop()V

    .line 373
    iput-boolean v2, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    .line 375
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromDialog;->sendDismissMessage()V

    goto :goto_0

    .line 367
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mActionMode:Landroid/view/ActionMode;

    if-eqz v1, :cond_4

    .line 368
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 370
    :cond_4
    iput-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    .line 371
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->closeAllPanels()V

    .line 372
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->onStop()V

    .line 373
    iput-boolean v2, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    .line 375
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromDialog;->sendDismissMessage()V

    throw v0
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 857
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    const/4 v0, 0x1

    .line 860
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/QromDialog;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 787
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-interface {v1, p0, v2, p1}, Landroid/content/DialogInterface$OnKeyListener;->onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    :cond_0
    :goto_0
    return v0

    .line 790
    :cond_1
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, p1}, Landroid/view/Window;->superDispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 793
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

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
    .line 806
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 807
    const/4 v0, 0x1

    .line 809
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/tencent/qrom/app/QromDialog;->onKeyShortcut(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchOnCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 396
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCreated:Z

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/QromDialog;->onCreate(Landroid/os/Bundle;)V

    .line 398
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCreated:Z

    .line 400
    :cond_0
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 864
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 867
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 868
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v3, v4, :cond_0

    const/4 v0, 0x1

    .line 870
    .local v0, "isFullScreen":Z
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFullScreen(Z)V

    .line 872
    return v2

    .end local v0    # "isFullScreen":Z
    :cond_0
    move v0, v2

    .line 868
    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 823
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 824
    const/4 v0, 0x1

    .line 826
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/QromDialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->superDispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    const/4 v0, 0x1

    .line 843
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/QromDialog;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getActionBar()Lcom/tencent/qrom/app/ActionBar;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCurrentFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 1146
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final getOwnerActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mOwnerActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public getQromDismissDialog()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->bQromDismissDialog:Z

    return v0
.end method

.method public final getVolumeControlStream()I
    .locals 1

    .prologue
    .line 1288
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getVolumeControlStream()I

    move-result v0

    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    return-object v0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 335
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :cond_0
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 2

    .prologue
    .line 983
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 984
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    return v0
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1067
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionMode:Landroid/view/ActionMode;

    if-ne p1, v0, :cond_0

    .line 1068
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionMode:Landroid/view/ActionMode;

    .line 1070
    :cond_0
    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;

    .prologue
    .line 1057
    iput-object p1, p0, Lcom/tencent/qrom/app/QromDialog;->mActionMode:Landroid/view/ActionMode;

    .line 1058
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .prologue
    .line 771
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 674
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelable:Z

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->cancel()V

    .line 677
    :cond_0
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 765
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1017
    const/4 v0, 0x0

    return v0
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 1024
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 412
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    .line 990
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 938
    const/4 v0, 0x1

    return v0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/app/QromDialog;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 890
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
    .line 879
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 755
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 628
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 629
    invoke-virtual {p2}, Landroid/view/KeyEvent;->startTracking()V

    .line 630
    const/4 v0, 0x1

    .line 633
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
    .line 641
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "repeatCount"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 666
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 691
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 654
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 655
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->onBackPressed()V

    .line 656
    const/4 v0, 0x1

    .line 658
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 918
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 908
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 909
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    .line 911
    :cond_0
    return v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 956
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 963
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 925
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    .line 926
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->dispatchMenuVisibilityChanged(Z)V

    .line 928
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 949
    const/4 v0, 0x1

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 3
    .param p1, "featureId"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x1

    .line 897
    if-nez p1, :cond_0

    if-eqz p3, :cond_0

    .line 898
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/app/QromDialog;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 899
    .local v0, "goforit":Z
    if-eqz v0, :cond_1

    invoke-interface {p3}, Landroid/view/Menu;->hasVisibleItems()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 901
    .end local v0    # "goforit":Z
    :cond_0
    :goto_0
    return v1

    .line 899
    .restart local v0    # "goforit":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 461
    const-string v1, "android:dialogHierarchy"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 462
    .local v0, "dialogHierarchyState":Landroid/os/Bundle;
    if-nez v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/QromDialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 467
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v1, v0}, Landroid/view/Window;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 468
    const-string v1, "android:dialogShowing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->show()V

    goto :goto_0
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "android:dialogShowing"

    iget-boolean v2, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 444
    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromDialog;->mCreated:Z

    if-eqz v1, :cond_0

    .line 445
    const-string v1, "android:dialogHierarchy"

    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->saveHierarchyState()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 447
    :cond_0
    return-object v0
.end method

.method public onSearchRequested()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1030
    iget-object v4, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    const-string v5, "search"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 1033
    .local v0, "searchManager":Landroid/app/SearchManager;
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromDialog;->getAssociatedActivity()Landroid/content/ComponentName;

    move-result-object v3

    .line 1034
    .local v3, "appName":Landroid/content/ComponentName;
    if-eqz v3, :cond_0

    invoke-virtual {v0, v3}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    move-object v4, v1

    move v5, v2

    .line 1035
    invoke-virtual/range {v0 .. v5}, Landroid/app/SearchManager;->startSearch(Ljava/lang/String;ZLandroid/content/ComponentName;Landroid/os/Bundle;Z)V

    .line 1036
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 1037
    const/4 v2, 0x1

    .line 1039
    :cond_0
    return v2
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 420
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 427
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setShowHideAnimationEnabled(Z)V

    .line 428
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 704
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 706
    .local v0, "b":Z
    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelable:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/view/Window;->shouldCloseOnTouch(Landroid/content/Context;Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 707
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->cancel()V

    .line 708
    const/4 v1, 0x1

    .line 711
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 728
    const/4 v0, 0x0

    return v0
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2
    .param p1, "params"    # Landroid/view/WindowManager$LayoutParams;

    .prologue
    .line 759
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 760
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    invoke-interface {v0, v1, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 762
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 768
    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    .line 1044
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-eqz v0, :cond_0

    .line 1045
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    .line 1047
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
    .line 1010
    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    .line 1011
    return-void
.end method

.method public openOptionsMenu()V
    .locals 3

    .prologue
    .line 969
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->openPanel(ILandroid/view/KeyEvent;)V

    .line 970
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 996
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 997
    return-void
.end method

.method public final requestWindowFeature(I)Z
    .locals 1
    .param p1, "featureId"    # I

    .prologue
    .line 1114
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result v0

    return v0
.end method

.method public setBottomButtonsStartAnimation(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 1323
    return-void
.end method

.method public setCancelMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelMessage:Landroid/os/Message;

    .line 1214
    return-void
.end method

.method public setCancelable(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 1153
    iput-boolean p1, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelable:Z

    .line 1154
    return-void
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 1
    .param p1, "cancel"    # Z

    .prologue
    .line 1164
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelable:Z

    if-nez v0, :cond_0

    .line 1165
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelable:Z

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setCloseOnTouchOutside(Z)V

    .line 1169
    return-void
.end method

.method public setContentView(I)V
    .locals 5
    .param p1, "layoutResID"    # I

    .prologue
    const/4 v4, -0x2

    .line 516
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 517
    .local v0, "layoutinflate":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDialogView:Landroid/view/View;

    .line 518
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 519
    .local v1, "vlp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v2, 0x11

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 520
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mDialogView:Landroid/view/View;

    invoke-virtual {v2, v3, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 521
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v5, -0x1

    .line 531
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/tencent/qrom/app/QromDialog;->requestWindowFeature(I)Z

    .line 532
    iget-boolean v2, p0, Lcom/tencent/qrom/app/QromDialog;->mShowActionbar:Z

    if-eqz v2, :cond_3

    .line 533
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 535
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    .line 536
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 537
    .local v0, "layoutinflater":Landroid/view/LayoutInflater;
    const v2, 0x7a03001e

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDialogView:Landroid/view/View;

    .line 538
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDialogView:Landroid/view/View;

    const v3, 0x7a0900e6

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/tencent/qrom/internal/widget/ActionBarView;

    .line 539
    .local v1, "mActionBarView":Lcom/tencent/qrom/internal/widget/ActionBarView;
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setContentHeight(I)V

    .line 540
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7a0d0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v4, v2, v4, v4}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setPadding(IIII)V

    .line 541
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDialogView:Landroid/view/View;

    if-nez v2, :cond_0

    .line 544
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "qromAddContentView qromActionbar creat fail"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 546
    :cond_0
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDialogView:Landroid/view/View;

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContentParent:Landroid/view/ViewGroup;

    .line 548
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContentParent:Landroid/view/ViewGroup;

    if-nez v2, :cond_2

    .line 550
    new-instance v2, Landroid/util/AndroidRuntimeException;

    const-string v3, "qromAddContentView no contenParent"

    invoke-direct {v2, v3}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    .end local v0    # "layoutinflater":Landroid/view/LayoutInflater;
    .end local v1    # "mActionBarView":Lcom/tencent/qrom/internal/widget/ActionBarView;
    :cond_1
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContentParent:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 556
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mContentParent:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 557
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 558
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mDialogView:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 564
    :goto_0
    return-void

    .line 562
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v2, p1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 576
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 577
    return-void
.end method

.method public setDialogDimAmount(F)V
    .locals 1
    .param p1, "amount"    # F

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setDimAmount(F)V

    .line 215
    :cond_0
    return-void
.end method

.method public setDismissMessage(Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1255
    iput-object p1, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissMessage:Landroid/os/Message;

    .line 1256
    return-void
.end method

.method public final setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1135
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 1136
    return-void
.end method

.method public final setFeatureDrawableAlpha(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 1142
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableAlpha(II)V

    .line 1143
    return-void
.end method

.method public final setFeatureDrawableResource(II)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "resId"    # I

    .prologue
    .line 1121
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableResource(II)V

    .line 1122
    return-void
.end method

.method public final setFeatureDrawableUri(ILandroid/net/Uri;)V
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1128
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/view/Window;->setFeatureDrawableUri(ILandroid/net/Uri;)V

    .line 1129
    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1195
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnCancelListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1198
    :cond_0
    if-eqz p1, :cond_1

    .line 1199
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelMessage:Landroid/os/Message;

    .line 1203
    :goto_0
    return-void

    .line 1201
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1224
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OnDismissListener is already taken by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelAndDismissTaken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and can not be replaced."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1227
    :cond_0
    if-eqz p1, :cond_1

    .line 1228
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissMessage:Landroid/os/Message;

    .line 1232
    :goto_0
    return-void

    .line 1230
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 1295
    iput-object p1, p0, Lcom/tencent/qrom/app/QromDialog;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 1296
    return-void
.end method

.method public setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/content/DialogInterface$OnShowListener;

    .prologue
    .line 1241
    if-eqz p1, :cond_0

    .line 1242
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mListenersHandler:Landroid/os/Handler;

    const/16 v1, 0x45

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mShowMessage:Landroid/os/Message;

    .line 1246
    :goto_0
    return-void

    .line 1244
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mShowMessage:Landroid/os/Message;

    goto :goto_0
.end method

.method public final setOwnerActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/tencent/qrom/app/QromDialog;->mOwnerActivity:Landroid/app/Activity;

    .line 263
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialog;->mOwnerActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getVolumeControlStream()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 264
    return-void
.end method

.method public setQromDismissDialog(Z)Z
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 129
    iput-boolean p1, p0, Lcom/tencent/qrom/app/QromDialog;->bQromDismissDialog:Z

    return p1
.end method

.method public setShowActionbar(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 1325
    iput-boolean p1, p0, Lcom/tencent/qrom/app/QromDialog;->mShowActionbar:Z

    .line 1326
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleId"    # I

    .prologue
    .line 612
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/QromDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 613
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 599
    iput-object p1, p0, Lcom/tencent/qrom/app/QromDialog;->mTitle:Ljava/lang/CharSequence;

    .line 600
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->setTitle(Ljava/lang/CharSequence;)V

    .line 601
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 602
    return-void
.end method

.method public final setVolumeControlStream(I)V
    .locals 1
    .param p1, "streamType"    # I

    .prologue
    .line 1281
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/Window;->setVolumeControlStream(I)V

    .line 1282
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x8

    .line 290
    iget-boolean v3, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    if-eqz v3, :cond_2

    .line 291
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 292
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->invalidatePanelMenu(I)V

    .line 295
    :cond_0
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 329
    :cond_1
    :goto_0
    return-void

    .line 300
    :cond_2
    iput-boolean v5, p0, Lcom/tencent/qrom/app/QromDialog;->mCanceled:Z

    .line 302
    iget-boolean v3, p0, Lcom/tencent/qrom/app/QromDialog;->mCreated:Z

    if-nez v3, :cond_3

    .line 303
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/tencent/qrom/app/QromDialog;->dispatchOnCreate(Landroid/os/Bundle;)V

    .line 306
    :cond_3
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialog;->onStart()V

    .line 307
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    .line 308
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v0

    .line 309
    .local v0, "b":Z
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, p0, Lcom/tencent/qrom/app/QromDialog;->mShowActionbar:Z

    if-eqz v3, :cond_5

    .line 310
    :cond_4
    new-instance v3, Lcom/tencent/qrom/internal/app/ActionBarImpl;

    invoke-direct {v3, p0}, Lcom/tencent/qrom/internal/app/ActionBarImpl;-><init>(Lcom/tencent/qrom/app/QromDialog;)V

    iput-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    .line 311
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mActionBar:Lcom/tencent/qrom/internal/app/ActionBarImpl;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromDialog;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Lcom/tencent/qrom/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 314
    :cond_5
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 315
    .local v1, "l":Landroid/view/WindowManager$LayoutParams;
    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit16 v3, v3, 0x100

    if-nez v3, :cond_6

    .line 316
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 317
    .local v2, "nl":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v2, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 318
    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 319
    move-object v1, v2

    .line 323
    .end local v2    # "nl":Landroid/view/WindowManager$LayoutParams;
    :cond_6
    :try_start_0
    iget-object v3, p0, Lcom/tencent/qrom/app/QromDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/tencent/qrom/app/QromDialog;->mDecor:Landroid/view/View;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 324
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromDialog;->mShowing:Z

    .line 326
    invoke-direct {p0}, Lcom/tencent/qrom/app/QromDialog;->sendShowMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 327
    :catchall_0
    move-exception v3

    throw v3
.end method

.method public takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cancel"    # Landroid/content/DialogInterface$OnCancelListener;
    .param p3, "dismiss"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 1261
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelAndDismissTaken:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1262
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1267
    :cond_0
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/app/QromDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 1268
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/app/QromDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1269
    iput-object p1, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelAndDismissTaken:Ljava/lang/String;

    .line 1271
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 1263
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mCancelMessage:Landroid/os/Message;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mDismissMessage:Landroid/os/Message;

    if-eqz v0, :cond_0

    .line 1264
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public takeKeyEvents(Z)V
    .locals 1
    .param p1, "get"    # Z

    .prologue
    .line 1100
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialog;->mWindow:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->takeKeyEvents(Z)V

    .line 1101
    return-void
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1003
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1004
    return-void
.end method
