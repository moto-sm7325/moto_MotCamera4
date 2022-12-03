.class public final synthetic Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda3;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageButton;->isSelected()Z

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->reverseColor(Z)V

    :cond_2
    return-void

    .line 4
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->cancelAnimation()V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    .line 8
    :goto_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent$$ExternalSyntheticLambda3;->f$0:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
