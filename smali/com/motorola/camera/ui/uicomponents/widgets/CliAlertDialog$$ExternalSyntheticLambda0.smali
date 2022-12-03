.class public final synthetic Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/DialogInterface$OnClickListener;Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/ImageButton;Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->$r8$classId:I

    const-string/jumbo v0, "this$0"

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Landroid/content/DialogInterface$OnClickListener;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x3

    .line 2
    invoke-interface {p1, p0, v0}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog;->dismiss()V

    return-void

    .line 4
    :goto_1
    iget-object p1, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    check-cast p1, Landroid/widget/ImageButton;

    iget-object p0, p0, Lcom/motorola/camera/ui/uicomponents/widgets/CliAlertDialog$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    check-cast p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;

    sget-object v1, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->LISTENED_STATES:Ljava/util/Collection;

    const-string v1, "$this_apply"

    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->toggleBarsStateHelper:Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;

    .line 7
    invoke-virtual {v0}, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarStateHelper;->isOtherViewCollapseState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/sliderbar/ToggleBarComponent;->buttonControl:Landroid/widget/ImageButton;

    .line 9
    invoke-virtual {p1}, Landroid/widget/ImageButton;->isSelected()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/motorola/camera/ui/controls_2020/sliderbar/FilterMeisheComponent;->selectButtonAction(Landroid/widget/ImageButton;Z)V

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
