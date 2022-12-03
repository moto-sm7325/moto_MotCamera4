.class public final synthetic Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:F


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;FI)V
    .locals 1

    iput p3, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    return-void

    :cond_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;F)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_4

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    .line 1
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_0
    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    .line 4
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->controlBarGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_1
    return-void

    .line 6
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    .line 7
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v1}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->getToggleBarGuideLine()F

    move-result v1

    const/high16 v2, 0x42880000    # 68.0f

    sub-float/2addr v1, v2

    const/high16 v2, 0x41c00000    # 24.0f

    sub-float/2addr v1, v2

    sub-float/2addr v1, v2

    .line 10
    iget-object v2, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mEventHandler:Lcom/motorola/camera/EventListener;

    invoke-interface {v2}, Lcom/motorola/camera/EventListener;->getLayoutManager()Lcom/motorola/camera/ui/layoutmanager/ILayoutManager;

    move-result-object v2

    check-cast v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;

    .line 11
    iget v2, v2, Lcom/motorola/camera/ui/layoutmanager/LayoutManager;->mSurfaceDensity:F

    mul-float/2addr v1, v2

    sub-float/2addr v1, p0

    .line 12
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->aboveToggleBarComponentsGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    float-to-int v0, v1

    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_2
    return-void

    .line 13
    :pswitch_3
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    .line 14
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent;->viewFinderTopGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    :goto_3
    return-void

    .line 16
    :goto_4
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/UIGuidelinesComponent$$ExternalSyntheticLambda3;->f$1:F

    .line 17
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, v0, Lcom/motorola/camera/ui/controls_2020/capturebar/photo/GalleryThumbnailUI;->parentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
