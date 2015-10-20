.class public Lcom/tencent/qrom/app/QromDialogFragment;
.super Landroid/app/Fragment;
.source "QromDialogFragment.java"

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

    .line 196
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 185
    iput v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    .line 186
    iput v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mTheme:I

    .line 187
    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mCancelable:Z

    .line 188
    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    .line 189
    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    .line 197
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/QromDialogFragment;->dismissInternal(Z)V

    .line 268
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 1

    .prologue
    .line 277
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/QromDialogFragment;->dismissInternal(Z)V

    .line 278
    return-void
.end method

.method dismissInternal(Z)V
    .locals 4
    .param p1, "allowStateLoss"    # Z

    .prologue
    const/4 v3, 0x1

    .line 281
    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDismissed:Z

    if-eqz v1, :cond_0

    .line 304
    :goto_0
    return-void

    .line 284
    :cond_0
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDismissed:Z

    .line 285
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShownByMe:Z

    .line 286
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v1, :cond_1

    .line 287
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 288
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 290
    :cond_1
    iput-boolean v3, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mViewDestroyed:Z

    .line 291
    iget v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    if-ltz v1, :cond_2

    .line 292
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    invoke-virtual {v1, v2, v3}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 294
    const/4 v1, -0x1

    iput v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    goto :goto_0

    .line 296
    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 297
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 298
    if-eqz p1, :cond_3

    .line 299
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 301
    :cond_3
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .prologue
    .line 555
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Fragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 556
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "DialogFragment:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mStyle="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 558
    const-string v0, " mTheme=0x"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mTheme:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mCancelable="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mCancelable:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 560
    const-string v0, " mShowsDialog="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 561
    const-string v0, " mBackStackId="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 562
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mDialog="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 563
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mViewDestroyed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mViewDestroyed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 564
    const-string v0, " mDismissed="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDismissed:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 565
    const-string v0, " mShownByMe="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShownByMe:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 566
    return-void
.end method

.method public getContainerId()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 570
    :try_start_0
    const-string v3, "android.app.Fragment"

    invoke-static {v3}, Lcom/tencent/qrom/utils/ReflectUtils;->forClassName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 571
    .local v0, "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "mContainerId"

    invoke-static {v3, p0, v0}, Lcom/tencent/qrom/utils/ReflectUtils;->getFieldValue(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 576
    .end local v0    # "clazz1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v4

    .line 573
    :catch_0
    move-exception v1

    .line 574
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 576
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    goto :goto_0
.end method

.method public getDialog()Lcom/tencent/qrom/app/QromDialog;
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    if-nez v0, :cond_0

    .line 404
    invoke-super {p0, p1}, Landroid/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    .line 407
    :cond_0
    invoke-virtual {p0, p1}, Lcom/tencent/qrom/app/QromDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Lcom/tencent/qrom/app/QromDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 408
    iget v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    packed-switch v0, :pswitch_data_0

    .line 418
    :goto_1
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    .line 410
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 416
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tencent/qrom/app/QromDialog;->requestWindowFeature(I)Z

    goto :goto_1

    .line 422
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    goto :goto_0

    .line 408
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
    .line 360
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    return v0
.end method

.method public getTheme()I
    .locals 1

    .prologue
    .line 311
    iget v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mTheme:I

    return v0
.end method

.method public isCancelable()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mCancelable:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 467
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 469
    iget-boolean v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 473
    :cond_1
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialogFragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 474
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_3

    .line 475
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 476
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "DialogFragment can not be attached to a container view"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 478
    :cond_2
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v2, v1}, Lcom/tencent/qrom/app/QromDialog;->setContentView(Landroid/view/View;)V

    .line 480
    :cond_3
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/app/QromDialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 481
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    iget-boolean v3, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mCancelable:Z

    invoke-virtual {v2, v3}, Lcom/tencent/qrom/app/QromDialog;->setCancelable(Z)V

    .line 482
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    const-string v3, "DialogFragment"

    invoke-virtual {v2, v3, p0, p0}, Lcom/tencent/qrom/app/QromDialog;->takeCancelAndDismissListeners(Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;Landroid/content/DialogInterface$OnDismissListener;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 483
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "You can not set Dialog\'s OnCancelListener or OnDismissListener"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 486
    :cond_4
    if-eqz p1, :cond_0

    .line 487
    const-string v2, "android:savedDialogState"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 488
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 489
    iget-object v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v2, v0}, Lcom/tencent/qrom/app/QromDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 365
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 366
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    .line 369
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDismissed:Z

    .line 371
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 453
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 386
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 387
    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialogFragment;->getContainerId()I

    move-result v0

    .line 388
    .local v0, "id":I
    if-nez v0, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    .line 390
    if-eqz p1, :cond_0

    .line 391
    const-string v1, "android:style"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    .line 392
    const-string v1, "android:theme"

    invoke-virtual {p1, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mTheme:I

    .line 393
    const-string v1, "android:cancelable"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mCancelable:Z

    .line 394
    const-string v1, "android:showsDialog"

    iget-boolean v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    .line 395
    const-string v1, "android:backStackId"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    .line 398
    :cond_0
    return-void

    :cond_1
    move v1, v3

    .line 388
    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Lcom/tencent/qrom/app/QromDialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 449
    new-instance v0, Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/tencent/qrom/app/QromDialogFragment;->getTheme()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/tencent/qrom/app/QromDialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 542
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 543
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mViewDestroyed:Z

    .line 548
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->dismiss()V

    .line 549
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    .line 551
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 375
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 376
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShownByMe:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDismissed:Z

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDismissed:Z

    .line 382
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mViewDestroyed:Z

    if-nez v0, :cond_0

    .line 461
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qrom/app/QromDialogFragment;->dismissInternal(Z)V

    .line 463
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 505
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 506
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 508
    .local v0, "dialogState":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 509
    const-string v1, "android:savedDialogState"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 512
    .end local v0    # "dialogState":Landroid/os/Bundle;
    :cond_0
    iget v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    if-eqz v1, :cond_1

    .line 513
    const-string v1, "android:style"

    iget v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 515
    :cond_1
    iget v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mTheme:I

    if-eqz v1, :cond_2

    .line 516
    const-string v1, "android:theme"

    iget v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mTheme:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 518
    :cond_2
    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mCancelable:Z

    if-nez v1, :cond_3

    .line 519
    const-string v1, "android:cancelable"

    iget-boolean v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mCancelable:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 521
    :cond_3
    iget-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    if-nez v1, :cond_4

    .line 522
    const-string v1, "android:showsDialog"

    iget-boolean v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 524
    :cond_4
    iget v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    .line 525
    const-string v1, "android:backStackId"

    iget v2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 527
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 496
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 497
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    .line 498
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mViewDestroyed:Z

    .line 499
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->show()V

    .line 501
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 531
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 532
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0}, Lcom/tencent/qrom/app/QromDialog;->hide()V

    .line 535
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 324
    iput-boolean p1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mCancelable:Z

    .line 325
    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDialog:Lcom/tencent/qrom/app/QromDialog;

    invoke-virtual {v0, p1}, Lcom/tencent/qrom/app/QromDialog;->setCancelable(Z)V

    .line 326
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 0
    .param p1, "showsDialog"    # Z

    .prologue
    .line 353
    iput-boolean p1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShowsDialog:Z

    .line 354
    return-void
.end method

.method public setStyle(II)V
    .locals 2
    .param p1, "style"    # I
    .param p2, "theme"    # I

    .prologue
    .line 214
    iput p1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    .line 215
    iget v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 216
    :cond_0
    const v0, 0x7a0f001d

    iput v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mTheme:I

    .line 218
    :cond_1
    if-eqz p2, :cond_2

    .line 219
    iput p2, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mTheme:I

    .line 221
    :cond_2
    return-void
.end method

.method public show(Landroid/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 2
    .param p1, "transaction"    # Landroid/app/FragmentTransaction;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 252
    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDismissed:Z

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShownByMe:Z

    .line 254
    invoke-virtual {p1, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 255
    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mViewDestroyed:Z

    .line 256
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    move-result v0

    iput v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    .line 257
    iget v0, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mBackStackId:I

    return v0
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 2
    .param p1, "manager"    # Landroid/app/FragmentManager;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mDismissed:Z

    .line 236
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/tencent/qrom/app/QromDialogFragment;->mShownByMe:Z

    .line 237
    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 238
    .local v0, "ft":Landroid/app/FragmentTransaction;
    invoke-virtual {v0, p0, p2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 239
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 240
    return-void
.end method
