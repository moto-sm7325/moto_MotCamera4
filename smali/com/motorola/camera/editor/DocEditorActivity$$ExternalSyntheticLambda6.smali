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

.method public synthetic constructor <init>(Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->$r8$classId:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string/jumbo v6, "this$0"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->INFLATION_STATES:Ljava/util/List;

    .line 1
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    invoke-virtual {v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->notifyFaceBeauty(Z)V

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->showSliderBar()V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v5}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FaceBeautySliderBar;->showToggle(Z)V

    :cond_1
    :goto_0
    return-void

    .line 8
    :pswitch_1
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;

    sget-object v2, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->Companion:Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController$Companion;

    .line 9
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v2

    xor-int/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/scan/SlideScanController;->enableCaptureToggle(Z)V

    return-void

    .line 12
    :pswitch_2
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/capturebar/video/VideoInCaptureComponent;->INFLATION_STATES:Ljava/util/List;

    .line 13
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {}, Lcom/motorola/camera/VideoHelper;->isSnapshotSupportInConfigurations()Z

    move-result v1

    if-nez v1, :cond_b

    .line 15
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isCodecVideoMode()Z

    move-result v1

    if-nez v1, :cond_b

    .line 16
    sget-object v1, Lcom/motorola/camera/Notifier;->sNotifier:Lcom/motorola/camera/Notifier;

    .line 17
    sget-object v2, Lcom/motorola/camera/Notifier$TYPE;->SHOW_TOAST:Lcom/motorola/camera/Notifier$TYPE;

    const/16 v16, 0x0

    const/4 v15, 0x0

    const/4 v9, 0x0

    const v10, 0x7f1204d6

    const/4 v13, 0x1

    const/4 v14, 0x3

    const/16 v17, 0x0

    const/16 v6, 0xfa0

    .line 18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 19
    invoke-static {v14}, Landroidx/constraintlayout/core/SolverVariable$Type$r8$EnumUnboxingUtility;->$enumboxing$ordinal(I)I

    move-result v8

    const/16 v11, 0x7d0

    .line 20
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    if-eqz v8, :cond_7

    const/4 v12, 0x3

    if-eq v8, v12, :cond_6

    const/4 v3, 0x4

    if-eq v8, v3, :cond_3

    const/4 v3, 0x5

    if-eq v8, v3, :cond_2

    goto :goto_1

    :cond_2
    if-nez v7, :cond_9

    const/16 v3, 0xbb8

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v7, :cond_4

    move-object v7, v11

    :cond_4
    move v12, v4

    goto :goto_2

    .line 23
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Text Description is empty for Setting Confirmation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    move v12, v3

    goto :goto_2

    :cond_7
    if-nez v7, :cond_8

    move v12, v5

    move-object v7, v11

    goto :goto_2

    :cond_8
    :goto_1
    move v12, v5

    :cond_9
    :goto_2
    if-nez v7, :cond_a

    .line 24
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 25
    :cond_a
    new-instance v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    const/4 v4, 0x1

    .line 26
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v18, 0x0

    move-object v6, v3

    move v7, v4

    move v8, v13

    invoke-direct/range {v6 .. v18}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;-><init>(ZZLjava/lang/String;IIIZILjava/lang/String;Ljava/lang/String;ZLcom/motorola/camera/ui/uicomponents/ToastUIComponent$1;)V

    .line 27
    sput-object v3, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mLastToastFeature:Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$ToastFeature;

    .line 28
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    invoke-static {v2, v3}, Lcom/motorola/camera/Notifier$TYPE;->access$100(Lcom/motorola/camera/Notifier$TYPE;Ljava/lang/Object;)V

    .line 30
    new-instance v1, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$Event;->NO_RESULTS:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    goto :goto_3

    .line 31
    :cond_b
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 32
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-string v4, "ON_DOWN"

    .line 33
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v4, "ON_UP"

    .line 34
    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 35
    sget-object v2, Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;->SHUTTER_BTN:Lcom/motorola/camera/fsm/camera/Trigger$TriggerType;

    const-string v3, "CAPTURE_TRIGGER"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 36
    new-instance v2, Lcom/motorola/camera/fsm/camera/Trigger;

    sget-object v3, Lcom/motorola/camera/fsm/camera/Trigger$Event;->SHUTTER_BUTTON_CLICKED:Lcom/motorola/camera/fsm/camera/Trigger$Event;

    invoke-direct {v2, v3, v1}, Lcom/motorola/camera/fsm/camera/Trigger;-><init>(Lcom/motorola/camera/fsm/camera/Trigger$Event;Ljava/lang/Object;)V

    move-object v1, v2

    .line 37
    :goto_3
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v0, v1}, Lcom/motorola/camera/EventListener;->dispatchEvent(Lcom/motorola/camera/fsm/camera/Trigger;)Z

    return-void

    .line 38
    :pswitch_3
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->INFLATION_STATES:Ljava/util/List;

    .line 39
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;

    invoke-direct {v1, v0, v4}, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent$$ExternalSyntheticLambda1;-><init>(Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;I)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 41
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UpdatePromptComponent;->inAppUpdateUtils:Lcom/motorola/camera/utility/InAppUpdateUtils;

    invoke-virtual {v0}, Lcom/motorola/camera/utility/InAppUpdateUtils;->startForInAppUpdate()V

    return-void

    .line 42
    :pswitch_4
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;

    .line 43
    iget-object v2, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;->mValueSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;->mValueSwitch:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 44
    iget-object v0, v0, Lcom/motorola/camera/fragments/SettingsManagerFragment$SettingsManagerAdapter$ViewHolderBoolean;->mValueSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    :cond_c
    return-void

    .line 45
    :pswitch_5
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/editor/DocEditorActivity;

    .line 46
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    if-eqz v1, :cond_14

    .line 47
    iget-object v2, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    .line 48
    iget-boolean v6, v2, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    if-eqz v6, :cond_d

    goto/16 :goto_7

    .line 49
    :cond_d
    iget v6, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/16 v7, 0x5a

    int-to-float v7, v7

    add-float v8, v6, v7

    .line 50
    iput v8, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    const/4 v9, 0x0

    cmpg-float v10, v8, v9

    const/high16 v11, 0x43b40000    # 360.0f

    if-gez v10, :cond_e

    add-float/2addr v8, v11

    .line 51
    iput v8, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    goto :goto_4

    :cond_e
    cmpl-float v10, v8, v11

    if-ltz v10, :cond_f

    sub-float/2addr v8, v11

    .line 52
    iput v8, v1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    .line 53
    :cond_f
    :goto_4
    iget v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    .line 54
    sget-boolean v8, Lcom/motorola/camera/Util;->TEST_BUILD:Z

    .line 55
    invoke-static {}, Lcom/motorola/camera/shared/Util;->isPrcBuild()Z

    move-result v8

    if-nez v8, :cond_11

    .line 56
    iget-boolean v8, v2, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsAfterReview:Z

    if-eqz v8, :cond_10

    .line 57
    iput v6, v2, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    goto :goto_5

    :cond_10
    sub-float/2addr v6, v1

    add-float/2addr v6, v11

    rem-float/2addr v6, v11

    .line 58
    iput v6, v2, Lcom/motorola/camera/editor/ui/ScaleImageView;->mLastRotate:F

    :cond_11
    :goto_5
    cmpg-float v1, v7, v9

    if-gez v1, :cond_12

    const/4 v6, -0x1

    goto :goto_6

    :cond_12
    move v6, v4

    .line 59
    :goto_6
    iput v6, v2, Lcom/motorola/camera/editor/ui/ScaleImageView;->mRotateDirection:I

    new-array v3, v3, [F

    aput v9, v3, v5

    if-gez v1, :cond_13

    neg-float v7, v7

    :cond_13
    aput v7, v3, v4

    .line 60
    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    .line 61
    invoke-virtual {v1, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 62
    iput-boolean v4, v2, Lcom/motorola/camera/editor/ui/ScaleImageView;->mIsRotateAnimation:Z

    .line 63
    new-instance v3, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2}, Lcom/motorola/camera/editor/ui/ScaleImageView$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/editor/ui/ScaleImageView;)V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 64
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 65
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->requestLayout()V

    .line 66
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mReviewImage:Lcom/motorola/camera/editor/ui/ScaleImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->invalidate()V

    .line 67
    iget-object v1, v0, Lcom/motorola/camera/editor/DocEditorActivity;->mSaveButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 68
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 69
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mAnalytics:Lcom/motorola/camera/analytics/AnalyticsHelper;

    .line 70
    iget-object v1, v1, Lcom/motorola/camera/analytics/AnalyticsHelper;->mDocEditValues:Lcom/google/android/gms/common/api/internal/zaz;

    const-string v2, "ANALYTICS_DOC_EDITOR_ROTATE"

    invoke-virtual {v1, v2, v4}, Lcom/google/android/gms/common/api/internal/zaz;->putBoolean(Ljava/lang/String;Z)V

    .line 71
    iput-boolean v4, v0, Lcom/motorola/camera/editor/DocEditorActivity;->hasRotated:Z

    :cond_14
    :goto_7
    return-void

    .line 72
    :goto_8
    iget-object v0, v0, Lcom/motorola/camera/editor/DocEditorActivity$$ExternalSyntheticLambda6;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    sget v1, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->$r8$clinit:I

    .line 73
    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-virtual {v0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
