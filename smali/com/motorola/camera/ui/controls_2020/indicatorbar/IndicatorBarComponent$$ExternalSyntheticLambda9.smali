.class public final synthetic Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->show()V

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getSettingsBtn()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->ACTIVE:F

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_0
    return-void

    .line 5
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isModesMenuOpen:Z

    .line 8
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateIcons()V

    .line 9
    new-instance v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda5;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda5;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 10
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda9;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 11
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    sget-object v0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->Companion:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$Companion;

    .line 13
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->getTutorialButton()Landroid/widget/ImageButton;

    move-result-object v3

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x6

    move-object v2, p0

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->fadeOutIcon$default(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;Landroid/view/View;ZJI)V

    .line 15
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateSettingsButton()V

    .line 16
    iget-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isControlPanelOpen:Z

    .line 17
    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateIndicatorIcons(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
