.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "TutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DualCaptureLayoutTooltip"
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
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const v2, 0x7f1204e5

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
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

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
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineCount()Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 4
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0703a8

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v3, v1

    .line 6
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0703ac

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v3, v1

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0703a5

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :goto_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float v4, v3, v1

    .line 10
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    .line 12
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f0703b1

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    sub-float/2addr v4, v5

    if-eqz v0, :cond_1

    .line 14
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 15
    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    .line 16
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    sub-float/2addr v2, v3

    .line 18
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 19
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 20
    invoke-interface {v3}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v3

    check-cast v3, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v3

    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 21
    iget v5, v5, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v3, v5

    .line 22
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 23
    iget-object v5, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 24
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    .line 25
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    div-float/2addr v4, v1

    sub-float/2addr v3, v4

    float-to-int v1, v3

    :goto_1
    move v6, v1

    goto/16 :goto_4

    .line 27
    :cond_1
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 28
    iget-object v3, v3, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 29
    invoke-virtual {v3}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    const v5, 0x7f0a00ad

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    new-array v5, v2, [I

    if-nez v3, :cond_2

    goto :goto_2

    .line 30
    :cond_2
    invoke-virtual {v3, v5}, Landroid/view/View;->getLocationInWindow([I)V

    .line 31
    :goto_2
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 32
    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 33
    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070067

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    .line 34
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v7

    mul-int/2addr v7, v2

    int-to-float v2, v7

    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 35
    iget-object v7, v7, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 36
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f07010e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    add-float/2addr v7, v2

    .line 37
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureRRSupported()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 38
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 39
    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v9, v2

    div-float/2addr v9, v1

    sub-float/2addr v9, v7

    div-float/2addr v9, v1

    div-float/2addr v6, v1

    cmpg-float v10, v9, v6

    if-gez v10, :cond_3

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v2, v6

    sub-float/2addr v2, v7

    div-float/2addr v2, v1

    .line 40
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v2, v6

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 41
    iget-object v6, v6, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 42
    invoke-virtual {v6}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 43
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v6, v2

    goto :goto_3

    .line 44
    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v9, v2

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 45
    iget-object v2, v2, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 47
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    add-float v6, v2, v9

    goto :goto_3

    .line 48
    :cond_4
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 49
    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 50
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v2, v6

    div-float v6, v2, v1

    .line 51
    :goto_3
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 52
    iget v2, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    sub-float/2addr v2, v6

    .line 53
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v2, v3

    sub-float v2, v4, v2

    const/4 v1, 0x1

    .line 54
    aget v1, v5, v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getShowHeight()I

    move-result v3

    sub-int/2addr v1, v3

    goto/16 :goto_1

    .line 55
    :goto_4
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCaptureLayoutTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    invoke-static {v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)Z

    move-result v1

    if-eqz v1, :cond_5

    neg-float v2, v2

    :cond_5
    if-eqz v0, :cond_6

    .line 56
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    goto :goto_5

    .line 57
    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->TOP_LEFT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    :goto_5
    move-object v7, v0

    const/16 v4, 0x30

    float-to-int v5, v2

    .line 58
    sget-object v8, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;)V

    return-void
.end method
