.class public final synthetic Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Z

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;IZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$2:I

    iput-boolean p3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;IZ)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$2:I

    iput-boolean p3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;IZ)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$2:I

    iput-boolean p3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$1:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;ZI)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$1:Z

    iput p3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->$r8$classId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "this$0"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$2:I

    iget-boolean p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$1:Z

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->HIDE_STATES:Ljava/util/Collection;

    .line 1
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterComponent;->getShutterUI()Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;

    move-result-object v0

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/motorola/camera/ui/controls_2020/capturebar/shutter/CaptureBarShutterUI;->showTimer(JZ)V

    return-void

    .line 3
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;

    iget v3, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$2:I

    iget-boolean p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$1:Z

    sget-object v4, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->CHANGE_CALLBACK_TRACE:Ljava/lang/String;

    .line 4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 6
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    .line 7
    invoke-virtual {v0, p0}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->notifyVisibilityChange(Z)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 9
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->visibleIndexes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 10
    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/controls_2020/MultiVisibilitySubject;->notifyVisibilityChange(Z)V

    :cond_2
    :goto_0
    return-void

    .line 11
    :pswitch_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;

    iget-boolean v2, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$1:Z

    iget p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$2:I

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v1, p0

    .line 12
    :goto_1
    iput v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mOrientation:I

    .line 13
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    if-eqz p0, :cond_4

    .line 14
    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/widgets/RotateLayout;->setOrientation(I)V

    .line 15
    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->mFrame:Lcom/motorola/camera/ui/widgets/RotateLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent;->updateLayoutParams(Landroid/widget/RelativeLayout$LayoutParams;)Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    return-void

    .line 16
    :goto_2
    iget-object v0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;

    iget v1, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$2:I

    iget-boolean p0, p0, Lcom/motorola/camera/ui/uicomponents/ToastUIComponent$$ExternalSyntheticLambda5;->f$1:Z

    sget-object v3, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->INFLATION_STATES:Ljava/util/List;

    .line 17
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v2, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->tooltips:Ljava/util/List;

    if-nez v2, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    :goto_3
    iput-object v1, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez v1, :cond_6

    goto :goto_4

    .line 19
    :cond_6
    iget-object v2, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p0}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 20
    iget-object v1, v1, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->mPopWindow:Landroid/widget/PopupWindow;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 21
    :goto_4
    iget-object p0, v0, Lcom/motorola/camera/ui/controls_2020/tutorial/TutorialComponent;->currentTip:Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;

    if-nez p0, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/tutorial/SequentialTooltip;->show()V

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
