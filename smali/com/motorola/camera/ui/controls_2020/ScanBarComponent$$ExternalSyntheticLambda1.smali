.class public final synthetic Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V
    .locals 0

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 20

    move-object/from16 v0, p0

    iget v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->$r8$classId:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    const-string/jumbo v5, "this$0"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 1
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :goto_0
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->qrIcon:Landroid/widget/ImageView;

    const/4 v4, 0x0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 4
    :goto_1
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    const v5, 0x7f080085

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 5
    :goto_2
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 6
    :goto_3
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->scanBar:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-nez v1, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7
    :goto_4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    invoke-direct {v1, v4, v4, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 8
    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v5, :cond_5

    goto :goto_5

    .line 9
    :cond_5
    iget-object v5, v5, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mImageRect:Landroid/graphics/Rect;

    if-nez v5, :cond_6

    :goto_5
    move-object v6, v1

    move v1, v4

    goto :goto_6

    .line 10
    :cond_6
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    iget-object v1, v1, Lcom/motorola/camera/CameraApp;->mViewSize:Lcom/motorola/camera/PreviewSize;

    .line 12
    new-instance v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    iget v7, v1, Lcom/motorola/camera/PreviewSize;->width:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v9

    sub-float/2addr v7, v9

    .line 13
    iget v1, v1, Lcom/motorola/camera/PreviewSize;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v8

    sub-float/2addr v1, v8

    .line 14
    invoke-direct {v6, v7, v1, v4}, Lcom/motorola/camera/ui/widgets/gl/Vector3F;-><init>(FFF)V

    .line 15
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    .line 16
    iget-object v5, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f07034a

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    div-float/2addr v1, v5

    :goto_6
    cmpg-float v5, v1, v4

    if-gez v5, :cond_7

    neg-float v1, v1

    :cond_7
    move v10, v1

    .line 17
    iget v1, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    sub-float/2addr v1, v4

    .line 18
    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    sub-float/2addr v5, v4

    .line 19
    iget v7, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->z:F

    sub-float/2addr v7, v4

    mul-float/2addr v1, v1

    mul-float/2addr v5, v5

    add-float/2addr v5, v1

    mul-float/2addr v7, v7

    add-float/2addr v7, v5

    float-to-double v4, v7

    .line 20
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 21
    sget v4, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->FLY_ANIM_SPEED:F

    div-float/2addr v1, v4

    .line 22
    new-instance v4, Landroid/view/animation/TranslateAnimation;

    const/4 v12, 0x0

    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->x:F

    neg-float v13, v5

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 23
    iget v5, v6, Lcom/motorola/camera/ui/widgets/gl/Vector3F;->y:F

    neg-float v5, v5

    const/16 v18, 0x2

    const/16 v19, 0x0

    move-object v11, v4

    move/from16 v17, v5

    .line 24
    invoke-direct/range {v11 .. v19}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    float-to-long v5, v1

    .line 25
    invoke-virtual {v4, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 26
    invoke-virtual {v4, v3}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 27
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    sget v11, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->FLY_ANIM_SIZE:F

    const/4 v12, 0x1

    const/high16 v13, 0x3f000000    # 0.5f

    const/4 v14, 0x1

    const/high16 v15, 0x3f000000    # 0.5f

    move-object v7, v1

    move v8, v10

    move v9, v11

    invoke-direct/range {v7 .. v15}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 28
    invoke-virtual {v1, v5, v6}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 29
    invoke-virtual {v1, v3}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    .line 30
    new-instance v3, Landroid/view/animation/AnimationSet;

    invoke-direct {v3, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 31
    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 32
    invoke-virtual {v3, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 33
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;

    invoke-direct {v1, v0}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$flyAnimation$2;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;)V

    invoke-virtual {v3, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 34
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    if-nez v0, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {v0, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_7
    return-void

    .line 35
    :goto_8
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda1;->f$0:Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;

    .line 36
    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->actionText:Landroid/widget/TextView;

    const-string v5, "it.mData.titleString"

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, -0x1

    const-string v9, ""

    if-nez v1, :cond_9

    goto :goto_b

    .line 38
    :cond_9
    iget-object v10, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v10, :cond_a

    move-object v10, v9

    goto :goto_a

    .line 39
    :cond_a
    iget-object v11, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v11}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v11

    if-nez v11, :cond_b

    move v11, v8

    goto :goto_9

    :cond_b
    sget-object v12, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v12, v11

    :goto_9
    if-eq v11, v2, :cond_e

    if-eq v11, v7, :cond_d

    if-eq v11, v6, :cond_c

    .line 40
    iget-object v10, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v10}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getTitleString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 41
    :cond_c
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f1202f7

    .line 42
    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "getInstance().getString(\u2026r_code_bar_contact_title)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 43
    :cond_d
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f1202fc

    .line 44
    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "getInstance().getString(\u2026g.qr_code_bar_wifi_title)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_a

    .line 45
    :cond_e
    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    const v11, 0x7f1202fb

    .line 46
    invoke-virtual {v10, v11}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "getInstance().getString(\u2026ng.qr_code_bar_url_title)"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    :goto_a
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :goto_b
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-nez v1, :cond_f

    goto :goto_f

    .line 49
    :cond_f
    iget-object v10, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v10, :cond_10

    goto :goto_e

    .line 50
    :cond_10
    iget-object v11, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v11}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getKind()Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData$Kind;

    move-result-object v11

    if-nez v11, :cond_11

    goto :goto_c

    :cond_11
    sget-object v8, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v8, v8, v11

    :goto_c
    const-string v11, "it.mData.detailsString"

    if-eq v8, v2, :cond_14

    if-eq v8, v7, :cond_13

    if-eq v8, v6, :cond_12

    if-eq v8, v4, :cond_15

    .line 51
    iget-object v4, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getDetailsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_d

    .line 52
    :cond_12
    iget-object v4, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getTitleString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_e

    .line 53
    :cond_13
    iget-object v4, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getDetailsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/text/StringsKt__StringsKt;->lines(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    goto :goto_d

    .line 54
    :cond_14
    iget-object v4, v10, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->mData:Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;

    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/BaseTidbitData;->getDetailsString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_d
    move-object v9, v4

    .line 55
    :cond_15
    :goto_e
    invoke-virtual {v1, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    :goto_f
    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->setInternalElementsVisibility(I)V

    .line 57
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-nez v1, :cond_16

    const/4 v1, 0x0

    goto :goto_10

    :cond_16
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    .line 58
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->lastResult:Lcom/motorola/camera/detector/results/tidbit/Tidbit;

    if-nez v4, :cond_17

    move v4, v3

    goto :goto_11

    :cond_17
    invoke-virtual {v4}, Lcom/motorola/camera/detector/results/tidbit/Tidbit;->getAllActions()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_11
    if-gt v4, v2, :cond_19

    if-eqz v1, :cond_18

    goto :goto_12

    :cond_18
    move v4, v3

    goto :goto_13

    :cond_19
    :goto_12
    move v4, v2

    .line 59
    :goto_13
    iget-object v5, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->moreButton:Landroid/widget/ImageButton;

    const/16 v6, 0x8

    if-nez v5, :cond_1a

    goto :goto_15

    :cond_1a
    if-eqz v4, :cond_1b

    move v4, v3

    goto :goto_14

    :cond_1b
    move v4, v6

    :goto_14
    invoke-virtual {v5, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 60
    :goto_15
    iget-object v4, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->descriptionText:Landroid/widget/TextView;

    if-nez v4, :cond_1c

    goto :goto_17

    :cond_1c
    if-eqz v1, :cond_1d

    goto :goto_16

    :cond_1d
    move v3, v6

    :goto_16
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_17
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 62
    iget-object v1, v0, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->handler:Landroid/os/Handler;

    new-instance v3, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;

    invoke-direct {v3, v0, v2}, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent$$ExternalSyntheticLambda2;-><init>(Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;I)V

    sget-wide v4, Lcom/motorola/camera/ui/controls_2020/ScanBarComponent;->TEXT_WAIT_TIME:J

    invoke-virtual {v1, v3, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
