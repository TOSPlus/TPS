.class public Lcom/tencent/qrom/app/AlertDialog;
.super Lcom/tencent/qrom/app/QromDialog;
.source "AlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qrom/app/AlertDialog$Builder;,
        Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    }
.end annotation


# static fields
.field public static final BOTTOM_BUTTON_COLOR_BLACK:I = 0x0

.field public static final BOTTOM_BUTTON_COLOR_BLUE:I = 0x2

.field public static final BOTTOM_BUTTON_COLOR_DEFAULT:I = 0x0

.field public static final BOTTOM_BUTTON_COLOR_RED:I = 0x1

.field public static final THEME_DEVICE_DEFAULT_DARK:I = 0x4

.field public static final THEME_DEVICE_DEFAULT_LIGHT:I = 0x5

.field public static final THEME_HOLO_DARK:I = 0x2

.field public static final THEME_HOLO_LIGHT:I = 0x3

.field public static final THEME_TRADITIONAL:I = 0x1

.field private static mIsContextMenu:Z


# instance fields
.field private mAlert:Lcom/tencent/qrom/app/AlertController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qrom/app/AlertDialog;->mIsContextMenu:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/qrom/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 114
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 123
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 124
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createContextWrapper"    # Z

    .prologue
    .line 127
    invoke-static {p1, p2}, Lcom/tencent/qrom/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;IZ)V

    .line 128
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 129
    new-instance v0, Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/tencent/qrom/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    .line 130
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    sget-boolean v1, Lcom/tencent/qrom/app/AlertDialog;->mIsContextMenu:Z

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController;->mIsContextMenu:Z

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createContextWrapper"    # Z
    .param p4, "isBottomDialog"    # Z

    .prologue
    .line 144
    invoke-static {p1, p2}, Lcom/tencent/qrom/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 145
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 146
    new-instance v0, Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1, p4}, Lcom/tencent/qrom/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;Z)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    .line 147
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    sget-boolean v1, Lcom/tencent/qrom/app/AlertDialog;->mIsContextMenu:Z

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController;->mIsContextMenu:Z

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isBottomDialog"    # Z

    .prologue
    .line 151
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/tencent/qrom/app/AlertDialog;-><init>(Landroid/content/Context;IZZ)V

    .line 152
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/tencent/qrom/app/AlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;I)V

    .line 135
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->alwaysReadCloseOnTouchAttr()V

    .line 136
    invoke-virtual {p0, p2}, Lcom/tencent/qrom/app/AlertDialog;->setCancelable(Z)V

    .line 137
    invoke-virtual {p0, p3}, Lcom/tencent/qrom/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 138
    new-instance v0, Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/tencent/qrom/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    .line 139
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    sget-boolean v1, Lcom/tencent/qrom/app/AlertDialog;->mIsContextMenu:Z

    iput-boolean v1, v0, Lcom/tencent/qrom/app/AlertController;->mIsContextMenu:Z

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/tencent/qrom/app/AlertDialog;)Lcom/tencent/qrom/app/AlertController;
    .locals 1
    .param p0, "x0"    # Lcom/tencent/qrom/app/AlertDialog;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resid"    # I

    .prologue
    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/qrom/app/AlertDialog;->mIsContextMenu:Z

    .line 159
    const v0, 0x7a0f001f

    if-ne p1, v0, :cond_1

    .line 160
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/qrom/app/AlertDialog;->mIsContextMenu:Z

    .line 175
    .end local p1    # "resid":I
    :cond_0
    :goto_0
    return p1

    .line 162
    .restart local p1    # "resid":I
    :cond_1
    const v0, 0x7a0f001a

    if-eq p1, v0, :cond_0

    .line 164
    const v0, 0x7a0f001b

    if-eq p1, v0, :cond_0

    .line 166
    const v0, 0x7a0f0020

    if-eq p1, v0, :cond_0

    .line 170
    const v0, 0x7a0f0018

    if-eq p1, v0, :cond_0

    .line 175
    const p1, 0x7a0f001d

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 190
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Lcom/tencent/qrom/widget/ListView;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertController;->getListView()Lcom/tencent/qrom/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 416
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/QromDialog;->onCreate(Landroid/os/Bundle;)V

    .line 417
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/AlertController;->installContent()V

    .line 418
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 422
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/app/AlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/app/QromDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/app/AlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 430
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/tencent/qrom/app/QromDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setBottomButtonVisible(Z)V
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 380
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setBottomButtonVisible(Z)V

    .line 381
    return-void
.end method

.method public setBottomButtons(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "bottomButtonItemsId"    # I
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 362
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/app/AlertController;->setBottomButtons(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 363
    return-void
.end method

.method public setBottomButtons(I[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "bottomButtonItemsId"    # I
    .param p2, "bottomButtonColorItems"    # [I
    .param p3, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 371
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/app/AlertController;->setBottomButtons(I[ILandroid/content/DialogInterface$OnClickListener;)V

    .line 372
    return-void
.end method

.method public setBottomButtons([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "bottomButtonItems"    # [Ljava/lang/CharSequence;
    .param p2, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 366
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/tencent/qrom/app/AlertController;->setBottomButtons([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 367
    return-void
.end method

.method public setBottomButtons([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "bottomButtonItems"    # [Ljava/lang/CharSequence;
    .param p2, "bottomButtonColorItems"    # [I
    .param p3, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 376
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/tencent/qrom/app/AlertController;->setBottomButtons([Ljava/lang/CharSequence;[ILandroid/content/DialogInterface$OnClickListener;)V

    .line 377
    return-void
.end method

.method public setBottomButtonsStartAnimation(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setBottomButtonsStartAnimation(Z)V

    .line 1183
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/tencent/qrom/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 285
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 286
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 257
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/tencent/qrom/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 258
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 259
    return-void
.end method

.method public setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 6
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "whichButton"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    const/4 v5, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/AlertController;->setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 269
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 270
    return-void
.end method

.method public setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 6
    .param p1, "buttonColor"    # Lcom/tencent/qrom/app/AlertDialog$ButtonColor;
    .param p2, "whichButton"    # I
    .param p3, "text"    # Ljava/lang/CharSequence;
    .param p4, "msg"    # Landroid/os/Message;

    .prologue
    .line 262
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    const/4 v4, 0x0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/AlertController;->setButton(Lcom/tencent/qrom/app/AlertDialog$ButtonColor;ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 263
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 264
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 327
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 328
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 294
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 295
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 342
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 343
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 303
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 304
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 357
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 358
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 312
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/tencent/qrom/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 313
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    .line 213
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 391
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setIcon(I)V

    .line 392
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 396
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 405
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 406
    .local v0, "out":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/tencent/qrom/app/AlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 407
    iget-object v1, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/app/AlertController;->setIcon(I)V

    .line 408
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 411
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setInverseBackgroundForced(Z)V

    .line 412
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 217
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/tencent/qrom/app/QromDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 206
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/AlertController;->setView(Landroid/view/View;)V

    .line 224
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 242
    iget-object v0, p0, Lcom/tencent/qrom/app/AlertDialog;->mAlert:Lcom/tencent/qrom/app/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/qrom/app/AlertController;->setView(Landroid/view/View;IIII)V

    .line 243
    return-void
.end method
