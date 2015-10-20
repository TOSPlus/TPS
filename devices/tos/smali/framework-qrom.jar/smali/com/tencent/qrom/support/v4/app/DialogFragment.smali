.class public Lcom/tencent/qrom/support/v4/app/DialogFragment;
.super Lcom/tencent/qrom/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Lcom/tencent/qrom/app/QromDialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0}, Lcom/tencent/qrom/support/v4/app/Fragment;-><init>()V

    .line 75
    iput v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mStyle:I

    .line 76
    iput v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mTheme:I

    .line 77
    iput-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mCancelable:Z

    .line 78
    iput-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 79
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    .line 87
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 157
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 158
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 168
    return-void
.end method

.method dismissInternal(Z)V
    .locals 4
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v3, 0x1

    .line 171
    iget-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDismissed:Z

    if-eqz v1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 174
    :cond_0
    iput-boolean v3, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDismissed:Z

    .line 175
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 176
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 178
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 180
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 181
    iget v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    if-ltz v1, :cond_2

    .line 182
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->getFragmentManager()Lcom/tencent/qrom/support/v4/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v3}, Lcom/tencent/qrom/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 184
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->getFragmentManager()Lcom/tencent/qrom/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/qrom/support/v4/app/FragmentManager;->beginTransaction()Lcom/tencent/qrom/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 187
    .local v0, "ft":Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Lcom/tencent/qrom/support/v4/app/FragmentTransaction;->remove(Lcom/tencent/qrom/support/v4/app/Fragment;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;

    .line 188
    if-eqz p1, :cond_3

    .line 189
    invoke-virtual {v0}, Lcom/tencent/qrom/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 191
    :cond_3
    invoke-virtual {v0}, Lcom/tencent/qrom/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public getDialog()Lcom/tencent/qrom/app/QromDialog;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 294
    invoke-super {p0, p1}, Lcom/tencent/qrom/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 312
    :goto_0
    return-object v0

    .line 297
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcom/tencent/qrom/app/QromDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 298
    iget v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 308
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    .line 300
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 306
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromDialog;->requestWindowFeature(I)Z

    goto :goto_1

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mActivity:Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    .line 298
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 357
    invoke-super {p0, p1}, Lcom/tencent/qrom/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 359
    iget-boolean v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_1

    .line 380
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 364
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 365
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 366
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DialogFragment can not be attached to a container view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 368
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/app/QromDialog;->setContentView(Landroid/view/View;)V

    .line 370
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->getActivity()Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/app/QromDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 371
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    iget-boolean v3, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/app/QromDialog;->setCancelable(Z)V

    .line 372
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v2, p0}, Lcom/tencent/qrom/app/QromDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 373
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v2, p0}, Lcom/tencent/qrom/app/QromDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 374
    if-eqz p1, :cond_0

    .line 375
    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 376
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 377
    iget-object v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/app/QromDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 255
    invoke-super {p0, p1}, Lcom/tencent/qrom/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 256
    iget-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDismissed:Z

    .line 261
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 343
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 276
    invoke-super {p0, p1}, Lcom/tencent/qrom/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 278
    iget v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mContainerId:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 280
    if-eqz p1, :cond_0

    .line 281
    const-string v0, "android:style"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mStyle:I

    .line 282
    const-string v0, "android:theme"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mTheme:I

    .line 283
    const-string v0, "android:cancelable"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mCancelable:Z

    .line 284
    const-string v0, "android:showsDialog"

    iget-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 285
    const-string v0, "android:backStackId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    .line 288
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 278
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcom/tencent/qrom/app/QromDialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 339
    new-instance v0, Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->getActivity()Lcom/tencent/qrom/support/v4/app/QromFragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 430
    invoke-super {p0}, Lcom/tencent/qrom/support/v4/app/Fragment;->onDestroyView()V

    .line 431
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    .line 435
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 436
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 437
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 439
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Lcom/tencent/qrom/support/v4/app/Fragment;->onDetach()V

    .line 266
    iget-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDismissed:Z

    .line 272
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 346
    iget-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_0

    .line 351
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 353
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 393
    invoke-super {p0, p1}, Lcom/tencent/qrom/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 394
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v1, :cond_0

    .line 395
    iget-object v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 396
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 397
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 400
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mStyle:I

    if-eqz v1, :cond_1

    .line 401
    const-string v1, "android:style"

    iget v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mTheme:I

    if-eqz v1, :cond_2

    .line 404
    const-string v1, "android:theme"

    iget v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mTheme:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mCancelable:Z

    if-nez v1, :cond_3

    .line 407
    const-string v1, "android:cancelable"

    iget-boolean v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 409
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v1, :cond_4

    .line 410
    const-string v1, "android:showsDialog"

    iget-boolean v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 412
    :cond_4
    iget v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 413
    const-string v1, "android:backStackId"

    iget v2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 415
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 384
    invoke-super {p0}, Lcom/tencent/qrom/support/v4/app/Fragment;->onStart()V

    .line 385
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 387
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->show()V

    .line 389
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 419
    invoke-super {p0}, Lcom/tencent/qrom/support/v4/app/Fragment;->onStop()V

    .line 420
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->hide()V

    .line 423
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 214
    iput-boolean p1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mCancelable:Z

    .line 215
    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/QromDialog;->setCancelable(Z)V

    .line 216
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 244
    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "theme"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mStyle:I

    .line 105
    iget v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 106
    :cond_0
    const v0, 0x1030059

    iput v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mTheme:I

    .line 108
    :cond_1
    if-eqz p2, :cond_2

    .line 109
    iput p2, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mTheme:I

    .line 111
    :cond_2
    return-void
.end method

.method public show(Lcom/tencent/qrom/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 142
    iput-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDismissed:Z

    .line 143
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 144
    invoke-virtual {p1, p0, p2}, Lcom/tencent/qrom/support/v4/app/FragmentTransaction;->add(Lcom/tencent/qrom/support/v4/app/Fragment;Ljava/lang/String;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;

    .line 145
    iput-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 146
    invoke-virtual {p1}, Lcom/tencent/qrom/support/v4/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    .line 147
    iget v0, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Lcom/tencent/qrom/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Lcom/tencent/qrom/support/v4/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 125
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mDismissed:Z

    .line 126
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 127
    invoke-virtual {p1}, Lcom/tencent/qrom/support/v4/app/FragmentManager;->beginTransaction()Lcom/tencent/qrom/support/v4/app/FragmentTransaction;

    move-result-object v0

    .line 128
    .local v0, "ft":Lcom/tencent/qrom/support/v4/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Lcom/tencent/qrom/support/v4/app/FragmentTransaction;->add(Lcom/tencent/qrom/support/v4/app/Fragment;Ljava/lang/String;)Lcom/tencent/qrom/support/v4/app/FragmentTransaction;

    .line 129
    invoke-virtual {v0}, Lcom/tencent/qrom/support/v4/app/FragmentTransaction;->commit()I

    .line 130
    return-void
.end method
