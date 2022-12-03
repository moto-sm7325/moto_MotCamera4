.class public final synthetic Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;


# direct methods
.method public synthetic constructor <init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V
    .locals 1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    return-void

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;->$r8$classId:I

    const-string/jumbo v1, "this$0"

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 1
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->isModesMenuOpen:Z

    .line 3
    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;->updateIcons()V

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda4;-><init>(Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;I)V

    invoke-virtual {p0, v1}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    .line 5
    :pswitch_1
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    .line 6
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->hide()V

    return-void

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent$$ExternalSyntheticLambda7;->f$0:Lcom/motorola/camera/ui/controls_2020/indicatorbar/IndicatorBarComponent;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->animateShow()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
