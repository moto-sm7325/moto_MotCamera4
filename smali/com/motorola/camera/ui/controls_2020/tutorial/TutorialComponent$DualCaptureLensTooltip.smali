.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "TutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DualCaptureLensTooltip"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const v2, 0x7f1204e7

    const v5, 0x7f1201bf

    move-object v0, p0

    move-object v1, p2

    move v3, p3

    move v4, p4

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;-><init>(Landroid/content/Context;IIII)V

    return-void
.end method


# virtual methods
.method public clickControl()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 2
    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mIndex:I

    const/4 v1, 0x1

    add-int/2addr p0, v1

    .line 3
    new-instance v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda3;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;II)V

    invoke-virtual {v0, v2}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public show()V
    .locals 11

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsManager;->isDualCaptureCameraGroupRF()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1204e7

    goto :goto_0

    :cond_0
    const v0, 0x7f1204e6

    .line 2
    :goto_0
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    .line 3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentText:Landroid/widget/TextView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContentRes:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mParentView:Landroid/view/View;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 5
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 6
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00af

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [I

    if-nez v0, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 9
    :goto_1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineCount()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const v4, 0x7f0703a5

    if-ge v3, v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    .line 11
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    add-float/2addr v4, v3

    .line 13
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0703a4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v4, v3

    goto :goto_2

    .line 15
    :cond_2
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    :goto_2
    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v4, v3

    .line 17
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 18
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    .line 19
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 20
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    .line 21
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 22
    iget-object v5, v5, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 23
    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070067

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    mul-int/2addr v6, v1

    int-to-float v1, v6

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 25
    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 26
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f07010e

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v6, v1

    .line 27
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 28
    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v1, v6

    div-float/2addr v1, v3

    .line 29
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 31
    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 32
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    :goto_3
    div-float/2addr v1, v3

    goto :goto_4

    :cond_3
    div-float/2addr v5, v3

    cmpg-float v7, v1, v5

    if-gez v7, :cond_4

    .line 33
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 34
    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    sub-float/2addr v1, v5

    sub-float/2addr v1, v6

    goto :goto_3

    .line 35
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 36
    iget v5, v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v3

    sub-float/2addr v5, v1

    .line 37
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float/2addr v5, v0

    sub-float/2addr v4, v5

    const/4 v0, 0x1

    .line 38
    aget v0, v2, v0

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v1

    sub-int v8, v0, v1

    .line 39
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLensTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)Z

    move-result v0

    if-eqz v0, :cond_5

    neg-float v4, v4

    :cond_5
    const/16 v6, 0x30

    float-to-int v7, v4

    .line 40
    sget-object v9, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v10, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    move-object v5, p0

    invoke-virtual/range {v5 .. v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;)V

    return-void
.end method
