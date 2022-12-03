.class public final synthetic Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->remove()V

    return-void

    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->dismiss()V

    :goto_0
    return-void

    .line 3
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$$ExternalSyntheticLambda2;->f$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 4
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->settingSingleTooltip:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;

    if-nez v2, :cond_1

    goto :goto_4

    .line 6
    :cond_1
    iget-object p0, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 7
    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a020b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 9
    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    invoke-static {v0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    .line 12
    iget-object v0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_2
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 15
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v3, 0x1

    .line 16
    aget v1, v1, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int v5, p0, v1

    .line 17
    iget-object p0, v2, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent$SettingSingleTooltip;->this$0:Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    invoke-static {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->access$isRtl(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/16 p0, 0x33

    goto :goto_3

    :cond_3
    const/16 p0, 0x35

    :goto_3
    move v3, p0

    float-to-int v4, v0

    .line 18
    sget-object v6, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;->BOTTOM_RIGHT:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;

    sget-object v7, Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;->PRIMARY:Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;

    const/4 v8, 0x0

    const/16 v9, 0x20

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;->show$default(Lcom/motorola/camera/ui/controls_2020/tutorial/SingleTooltip;IIILcom/motorola/camera/ui/controls_2020/tutorial/TooltipLocation;Lcom/motorola/camera/ui/controls_2020/tutorial/TooltipStyle;Landroid/view/View;ILjava/lang/Object;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
