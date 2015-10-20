.class Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "QromRingtonePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qrom/app/QromRingtonePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;


# direct methods
.method constructor <init>(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)V
    .locals 0

    .prologue
    .line 708
    iput-object p1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/16 v4, 0x8

    const/4 v8, 0x0

    .line 711
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$400(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 713
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$400(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7a0e00bb

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 717
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bChooseOtherRing:Z
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$500(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 718
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$600(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 719
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$700(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 720
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$400(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 723
    iget-object v7, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    invoke-virtual {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->projection:[Ljava/lang/String;
    invoke-static {}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$800()[Ljava/lang/String;

    move-result-object v2

    const-string v5, "title_key"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    # setter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v7, v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$302(Lcom/tencent/qrom/app/QromRingtonePickerActivity;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 725
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 726
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 727
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    # setter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;
    invoke-static {v1, v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$902(Lcom/tencent/qrom/app/QromRingtonePickerActivity;Landroid/net/Uri;)Landroid/net/Uri;

    .line 729
    :cond_2
    new-instance v0, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    const v2, 0x7a03005f

    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/database/Cursor;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    iget-object v5, v5, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mLabelColumn:Ljava/lang/String;

    aput-object v5, v4, v8

    new-array v5, v9, [I

    const v7, 0x7a090046

    aput v7, v5, v8

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    .line 730
    .local v0, "listAdapter":Landroid/widget/ListAdapter;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$700(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/qrom/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 731
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mRinfTypes:I
    invoke-static {v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$1000(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v6

    .line 732
    .local v6, "mActualUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$1100(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 733
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$900(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mExistingUri:Landroid/net/Uri;
    invoke-static {v4}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$1100(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v4

    # invokes: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getPositionInListview(Landroid/net/Uri;Landroid/net/Uri;)I
    invoke-static {v2, v3, v4}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$1200(Lcom/tencent/qrom/app/QromRingtonePickerActivity;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v2

    # setter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I
    invoke-static {v1, v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$102(Lcom/tencent/qrom/app/QromRingtonePickerActivity;I)I

    .line 736
    :goto_1
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$100(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)I

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_0

    .line 737
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$700(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I
    invoke-static {v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$100(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)I

    move-result v2

    invoke-virtual {v1, v2, v9}, Lcom/tencent/qrom/widget/ListView;->setItemChecked(IZ)V

    .line 738
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$700(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I
    invoke-static {v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$100(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/tencent/qrom/widget/ListView;->setSelection(I)V

    goto/16 :goto_0

    .line 735
    :cond_3
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    iget-object v2, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    iget-object v3, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mBaseUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$900(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/net/Uri;

    move-result-object v3

    # invokes: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->getPositionInListview(Landroid/net/Uri;Landroid/net/Uri;)I
    invoke-static {v2, v3, v6}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$1200(Lcom/tencent/qrom/app/QromRingtonePickerActivity;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v2

    # setter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mClickedPos:I
    invoke-static {v1, v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$102(Lcom/tencent/qrom/app/QromRingtonePickerActivity;I)I

    goto :goto_1

    .line 741
    .end local v0    # "listAdapter":Landroid/widget/ListAdapter;
    .end local v6    # "mActualUri":Landroid/net/Uri;
    :cond_4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 746
    :cond_5
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->bChooseOtherRing:Z
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$500(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 747
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView1:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$600(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 748
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mListView2:Lcom/tencent/qrom/widget/ListView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$700(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/tencent/qrom/widget/ListView;->setVisibility(I)V

    .line 749
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$400(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 750
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    # getter for: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->actionBar:Lcom/tencent/qrom/app/ActionBar;
    invoke-static {v1}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$1300(Lcom/tencent/qrom/app/QromRingtonePickerActivity;)Lcom/tencent/qrom/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/tencent/qrom/app/ActionBar;->setCustomView(Landroid/view/View;)V

    .line 751
    iget-object v1, p0, Lcom/tencent/qrom/app/QromRingtonePickerActivity$5;->this$0:Lcom/tencent/qrom/app/QromRingtonePickerActivity;

    const v2, 0x7a0e00b7

    # invokes: Lcom/tencent/qrom/app/QromRingtonePickerActivity;->setActionBarStyle(I)V
    invoke-static {v1, v2}, Lcom/tencent/qrom/app/QromRingtonePickerActivity;->access$1400(Lcom/tencent/qrom/app/QromRingtonePickerActivity;I)V

    goto/16 :goto_0
.end method
