.class public final synthetic Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    const-string/jumbo v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x3

    const v0, 0x7f110479

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->showToast$enumunboxing$(II)V

    return-void

    .line 3
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;

    .line 4
    iget-object p1, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderGeneric;->this$0:Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;

    .line 5
    iget-object p1, p1, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter;->mFragment:Lcom/motorola/camera/fragments/SettingsManagerFragment;

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->getKeySimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolder;->mKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p1, v0, p0}, Lcom/motorola/camera/fragments/SettingsManagerFragment;->showSettingDialog(Ljava/lang/String;Lcom/motorola/camera/settings/SettingsManager$Key;)V

    return-void

    .line 7
    :pswitch_2
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 8
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz p1, :cond_7

    .line 9
    iget-object v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 10
    iget-boolean v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    if-eqz v1, :cond_0

    goto :goto_3

    .line 11
    :cond_0
    iget v1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/16 v2, 0x5a

    int-to-float v2, v2

    add-float v3, v1, v2

    .line 12
    iput v3, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/4 v4, 0x0

    cmpg-float v5, v3, v4

    const/high16 v6, 0x43b40000    # 360.0f

    if-gez v5, :cond_1

    add-float/2addr v3, v6

    .line 13
    iput v3, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    goto :goto_0

    :cond_1
    cmpl-float v5, v3, v6

    if-ltz v5, :cond_2

    sub-float/2addr v3, v6

    .line 14
    iput v3, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 15
    :cond_2
    :goto_0
    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 16
    sget-boolean v3, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 17
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v3

    if-nez v3, :cond_4

    .line 18
    iget-boolean v3, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    if-eqz v3, :cond_3

    .line 19
    iput v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_1

    :cond_3
    sub-float/2addr v1, p1

    add-float/2addr v1, v6

    rem-float/2addr v1, v6

    .line 20
    iput v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    :cond_4
    :goto_1
    cmpg-float p1, v2, v4

    const/4 v1, 0x1

    if-gez p1, :cond_5

    const/4 v3, -0x1

    goto :goto_2

    :cond_5
    move v3, v1

    .line 21
    :goto_2
    iput v3, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v5, 0x0

    aput v4, v3, v5

    if-gez p1, :cond_6

    neg-float v2, v2

    :cond_6
    aput v2, v3, v1

    .line 22
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v2, 0xc8

    .line 23
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 24
    iput-boolean v1, v0, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    .line 25
    new-instance v2, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;)V

    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 26
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 27
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 28
    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    .line 29
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_7
    :goto_3
    return-void

    .line 30
    :goto_4
    iget-object p0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    sget-object p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->INFLATION_STATES:Ljava/util/List;

    .line 31
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->completeTutorial()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
