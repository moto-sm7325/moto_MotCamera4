.class public final Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;
.super Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;
.source "TutorialComponent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SuperSlowMotionTooltip"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

.field public final tooltipMargin:F

.field public view:Landroid/view/View;

.field public final viewUpdatedListener:Landroid/view/View$OnLayoutChangeListener;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    const v0, 0x7f1204f1

    .line 2
    invoke-direct {p0, p2, v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;-><init>(Landroid/content/Context;I)V

    .line 3
    iget-object p2, p1, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0703ad

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->tooltipMargin:F

    .line 5
    new-instance p2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)V

    iput-object p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->viewUpdatedListener:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method


# virtual methods
.method public afterDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->viewUpdatedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    :goto_0
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->FIRST_TIME_SUPER_SLOW_MOTION:Lcom/motorola/camera/settings/SettingsManager$Key;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public afterShown()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->viewUpdatedListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :goto_0
    return-void
.end method

.method public rotate(F)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v1

    sub-int v2, v0, v1

    int-to-float v2, v2

    const/16 v3, 0x9

    int-to-float v3, v3

    .line 3
    iget-object v4, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 4
    iget v4, v4, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    const/4 v2, 0x0

    cmpg-float v4, p1, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    if-eqz v4, :cond_1

    :goto_1
    move v4, v6

    goto :goto_2

    :cond_1
    const/high16 v4, 0x43340000    # 180.0f

    cmpg-float v4, p1, v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_2
    const v7, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x43b40000    # 360.0f

    if-eqz v4, :cond_3

    sub-float/2addr v8, p1

    .line 5
    invoke-virtual {p0, v8, v2, v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    .line 6
    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 7
    iget p1, p1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenDensity:F

    mul-float/2addr p1, v7

    .line 8
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateCross(F)V

    .line 9
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->x:F

    float-to-int p1, p1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->y:F

    float-to-int v0, v0

    const/4 v1, -0x1

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    goto :goto_7

    :cond_3
    const/high16 v2, 0x42b40000    # 90.0f

    cmpg-float v2, p1, v2

    if-nez v2, :cond_4

    move v2, v6

    goto :goto_3

    :cond_4
    move v2, v5

    :goto_3
    if-eqz v2, :cond_5

    :goto_4
    move v5, v6

    goto :goto_5

    :cond_5
    const/high16 v2, 0x43870000    # 270.0f

    cmpg-float v2, p1, v2

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    :goto_5
    if-eqz v5, :cond_8

    .line 10
    sget-object v2, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    .line 11
    invoke-virtual {v2}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v2

    const/high16 v4, 0x40000000    # 2.0f

    if-eqz v2, :cond_7

    neg-int v2, v0

    int-to-float v2, v2

    div-float/2addr v2, v4

    int-to-float v5, v1

    div-float/2addr v5, v4

    add-float/2addr v5, v2

    goto :goto_6

    :cond_7
    int-to-float v2, v0

    div-float/2addr v2, v4

    int-to-float v5, v1

    div-float/2addr v5, v4

    sub-float v5, v2, v5

    .line 12
    :goto_6
    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->y:F

    sub-float/2addr v2, v3

    int-to-float v6, v0

    div-float v9, v6, v4

    int-to-float v1, v1

    div-float/2addr v1, v4

    sub-float/2addr v9, v1

    .line 13
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 14
    iget v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenDensity:F

    mul-float/2addr v1, v7

    sub-float/2addr v9, v1

    .line 15
    iget v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->tooltipMargin:F

    add-float/2addr v6, v1

    float-to-int v1, v6

    sub-float/2addr v8, p1

    .line 16
    invoke-virtual {p0, v8, v5, v9}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateLayout(FFF)V

    .line 17
    invoke-virtual {p0, v3}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->updateCross(F)V

    .line 18
    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->x:F

    float-to-int p1, p1

    float-to-int v2, v2

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->update(IIII)V

    :cond_8
    :goto_7
    return-void
.end method

.method public final updateLocation()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->view:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowHeight()I

    move-result v2

    const/4 v3, 0x2

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->tooltipMargin:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->y:F

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->getShowWidth()I

    move-result v1

    div-int/2addr v1, v3

    int-to-float v1, v1

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->tooltipMargin:F

    add-float/2addr v1, v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    int-to-float v3, v3

    div-float/2addr v0, v3

    add-float/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 6
    iget v3, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->mScreenWidth:I

    int-to-float v3, v3

    sub-float/2addr v3, v1

    sub-float/2addr v3, v0

    .line 7
    iput v3, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->x:F

    .line 8
    invoke-static {v2}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->x:F

    neg-float v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->x:F

    :goto_0
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SuperSlowMotionTooltip;->x:F

    return-void
.end method
