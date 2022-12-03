.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    sget v0, Lcom/motorola/camera/editor/DocEditorActivity;->$r8$clinit:I

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    .line 1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object p2, p2, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegUri:Landroid/net/Uri;

    invoke-virtual {p1, p2, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void

    .line 5
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;

    sget p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->$r8$clinit:I

    const-string/jumbo p1, "this$0"

    .line 6
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionActivity;->viewModel:Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;

    if-eqz p0, :cond_1

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->processingStatus:Landroidx/lifecycle/MutableLiveData;

    sget-object p2, Lcom/motorola/camera/superslowmotion/ProcessingStatus;->DONE:Lcom/motorola/camera/superslowmotion/ProcessingStatus;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionViewModel;->superSlowMotionController:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;

    .line 10
    sget-object p1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->SKIP:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController;->processForAnalytics(Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;)V

    return-void

    :cond_1
    const-string/jumbo p0, "viewModel"

    .line 11
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
