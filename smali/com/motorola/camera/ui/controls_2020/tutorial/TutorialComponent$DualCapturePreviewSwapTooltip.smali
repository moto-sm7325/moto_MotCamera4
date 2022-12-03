.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;
.source "TutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DualCapturePreviewSwapTooltip"
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
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const v2, 0x7f1204e8

    const v5, 0x7f1201b3

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
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    return-void
.end method

.method public show()V
    .locals 9

    .line 1
    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isDualCaptureNewUISupported()Z

    move-result v0

    const v1, 0x7f0703b1

    const v2, 0x7f0703b0

    const v3, 0x3cf5c28f    # 0.03f

    const v4, 0x3ea8f5c3    # 0.33f

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineCount()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v6, 0x2

    if-ge v0, v6, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->getTextLineWidth()Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 4
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0703a8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    add-float/2addr v6, v0

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x7f0703ac

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    sub-float/2addr v6, v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0703a5

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    :goto_0
    div-float v0, v6, v5

    .line 10
    iget-object v7, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    sub-float/2addr v0, v2

    .line 12
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v0, v1

    .line 14
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 15
    iget v2, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v7, v2

    mul-float/2addr v7, v4

    int-to-float v4, v2

    mul-float/2addr v4, v3

    int-to-float v2, v2

    div-float/2addr v2, v5

    sub-float/2addr v6, v0

    div-float/2addr v6, v5

    sub-float/2addr v2, v6

    div-float/2addr v7, v5

    sub-float/2addr v2, v7

    sub-float/2addr v2, v4

    .line 16
    iget-object v0, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 17
    invoke-interface {v0}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getDualCapturePIPVerticalGuideline()F

    move-result v0

    .line 18
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f070111

    .line 20
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v5

    add-float/2addr v1, v0

    goto :goto_1

    .line 21
    :cond_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 22
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v6, 0x7f0a00ad

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 24
    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 25
    iget v6, v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v7, v6

    mul-float/2addr v7, v4

    int-to-float v4, v6

    mul-float/2addr v4, v3

    .line 26
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 27
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 28
    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float/2addr v1, v5

    add-float/2addr v1, v2

    div-float/2addr v7, v5

    add-float/2addr v7, v4

    sub-float v2, v7, v1

    .line 30
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 31
    iget-object v1, v1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    .line 32
    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;->getDualCapturePIPVerticalGuideline()F

    move-result v1

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    add-float/2addr v1, v0

    .line 34
    :goto_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$DualCapturePreviewSwapTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x33

    goto :goto_2

    :cond_2
    const/16 v0, 0x35

    :goto_2
    move v4, v0

    float-to-int v5, v2

    float-to-int v6, v1

    .line 35
    sget-object v7, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v8, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show(IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;)V

    return-void
.end method
